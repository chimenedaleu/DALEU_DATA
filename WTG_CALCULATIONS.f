 SUBROUTINE WTG_CALCULATIONS (nlevs,ZFLD,denFLD,QFLD_other,&
 QFLD,THFLD_other,THFLD,WFLD,SQFLD,STHFLD)

!This subroutine calculates the WTG/DGW-derived large-scale vertical velocities and the associated
!heat and moisture tendencies.
!The WTG/DGW-derived large-scale vertical velocities are at the same levels as qv

! QFLD, TFLD, THFLD, TvFLD : domain-mean profiles of qv, temperature, potential temperature and
!virtual temperature respectively.
! WFLD: domain-mean profile of large-scale vertical velocity
! SQFLD_h: Lateral drawing (domain-mean) of qv by the diagnosed large-scale vertical velocity
! SQFLD_v: Vertical advection (domain-mean) of qv by the diagnosed large-scale vertical velocity
! STHFLD: Vertical advection (domain-mean) of potential temperature by the diagnosed large-scale vertical velocity (no lateral drawing of TH)
! ZFLD: Heights at TH and qv levels
! denFLD: density
!wtg_dgw_flag ! flag for large scale dynamics: 1 for WTG and 2 for DGW
!nlevs: number of model levels in the vertical
! the subscript “ref” refer to the reference column.

 IMPLICIT NONE

  REAL, PARAMETER :: eps=0.5  ! frcational area of col1 
  REAL, PARAMETER :: THO_WTG=7200.0  ! the WTG timescale (s)
  REAL, PARAMETER :: HBL_WTG=1500.0   ! boundary layer height for tapering off w_wtg (m)
  REAL, PARAMETER :: HTOP_WTG=15250.0   ! boundary layer height for tapering off w_wtg (m)
  REAL, PARAMETER :: gra=9.81 & 
  REAL, PARAMETER ::  Pre_o=100000.0 
  INTEGER :: kbl_wtg   ! level identifier for top of boundary layer
  INTEGER :: ktop_wtg   !
  INTEGER :: nt        ! loop variable   
  REAL :: deno       ! denominator of WTG calculations
 

 INTEGER, INTENT (IN) :: nlevs !number of vertical levels
 REAL, INTENT(IN), DIMENSION(nlevs) :: THFLD_other !theta from the other column
 REAL, INTENT(IN), DIMENSION(nlevs) :: THFLD       !theta from this column
 REAL, INTENT(IN), DIMENSION(nlevs) ::  QFLD_other !qv from the other column
 REAL, INTENT(IN), DIMENSION(nlevs) :: QFLD        !qv from this column
 REAL, INTENT(IN), DIMENSION(nlevs) :: ZFLD        !model levels
 REAL, INTENT(IN), DIMENSION(nlevs) :: denFLD      !density

 REAL, INTENT(OUT), DIMENSION(nlevs) :: WFLD !large-scale vertical velocity
 REAL, INTENT(OUT), DIMENSION(nlevs) :: STHFLD,SQFLD !tendencies of theta and qv due to the large-scale vertical velocities
 INTEGER:: izWTG_first_aboveBL! first model level above the nominal boundary layer
 INTEGER:: iz_first_aboveTOP ! first model level above 15.25 km
 REAL,DIMENSION(nlevs):: DZFLD ! Difference between two consecutives model levels
 INTEGER:: k
 REAL :: dz, denFLDbar

! Local variables
   INTEGER :: i,j,k, & ! loop variables
  &           otherj ! labels the other region (assumes points 1,1 and 1,2)
 
   REAL, DIMENSION(nlevs):: THSV,THSH,THSOURCE,QSV,QSH,QSOURSE,vfmin! vertical and horizontal source term!
!

 DZFLD(1)=0.
 DO k=2,nlevs
      DZFLD(k)=ZFLD(k)-ZFLD(k-1)
 ENDDO
    
      DO k=1,nlevs-1
	deno=(THFLD_other(k+1)-THFLD_other(k))/DZFLD(k+1)+ &
              (THFLD(k+1)-THFLD(k))/DZFLD(k+1)
        IF (deno.GT.0.0) THEN
          deno=MAX(deno,1.0e-3)
        END IF
        IF (deno .LT. 0.0) THEN
          deno=MIN(deno,-1.0e-3)
        END IF
        wWTG(k)=0.5*(THFLD(k+1)+THFLD(k)    &
                -THFLD_other(k+1)-THFLD_other(k))/(THO_WTG*ABS(deno))
      END DO
! Set to zero at model top
      ktop_wtg=nlevs
      DO K=2,nlevs
         IF (ZFLD(k) .GT. HTOP_WTG) THEN
            ktop_wtg=k
            EXIT
          END IF
      END DO
      DO k=ktop_wtg,nlevs
         wWTG(k)=0.
      END DO
! Decay the top of BL value down to zero within the boundary layer
! First find the level index for the first level is more than HBL_WTG high
      kbl_wtg=nlevs
      DO k=2,nlevs
	IF (ZFLD(k) .GT. HBL_WTG) THEN
	  kbl_wtg=k
	  EXIT
        END IF
      END DO  
      DO k=1,kbl_wtg
	wWTG(1,1,k)=wWTG(1,1,kbl_wtg)*ZFLD(k)/ZFLD(kbl_wtg)
      END DO  


 ! Tendencies of theta due to the large-scale circulation
!LS forcing arising from WTG calculations
!

       DO k=2,ktop_wtg
         IF (wWTG(k).LT.0.0.AND.wWTG(k-1).LT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
             THSV(k)=(wWTG(k-1)*denFLD(k-1)*THFLD(k)- &
                     wWTG(k)*denFLD(k)*THFLD(k+1))/       &
                    (denFLDbar*DZFLD(k))
             IF (vmfin(k).LT.0.0) THEN
                THSH(k)=-vmfin(k)*THFLD(i,2,k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).GT.0.0) THEN
                THSH(k)=-vmfin(k)*THFLD(k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).EQ.0.0) THEN
                THSH(k)=0.0
	     END IF
  	     THSOURCE(k)=THSV(k)+THSH(k)
	 END IF
         IF (wWTG(k).GT.0.0.AND.wWTG(k-1).GT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
             THSV(k)=(wWTG(k-1)*denFLD(k-1)*THFLD(k-1)- &
                     wWTG(k)*denFLD(k)*THFLD(k))/       &
                    (denFLDbar*DZFLD(k))
             IF (vmfin(k).LT.0.0) THEN
                THSH(k)=-vmfin(k)*THFLD(i,2,k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).GT.0.0) THEN
                THSH(k)=-vmfin(k)*THFLD(k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).EQ.0.0) THEN
                THSH(k)=0.0
	     END IF
  	     THSOURCE(k)=THSV(k)+THSH(k)
	 END IF
         IF (wWTG(k).GT.0.0.AND.wWTG(k-1).LT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
             THSV(k)=(wWTG(k-1)*denFLD(k-1)*THFLD(k)- &
                     wWTG(k)*denFLD(k)*THFLD(k))/       &
                    (denFLDbar*DZFLD(k))
                THSH(k)=-vmfin(k)*THFLD(i,2,k)/(denFLDbar*DZFLD(k))
  	     THSOURCE(k)=THSV(k)+THSH(k)
	 END IF
         IF (wWTG(k).LT.0.0.AND.wWTG(k-1).GT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
	     DZFLD(k)=r_theta_levs(k)-r_theta_levs(k-1)
             THSV(k)=(wWTG(k-1)*denFLD(k-1)*THFLD(k-1)- &
                     wWTG(k)*denFLD(k)*THFLD(k+1))/       &
                    (denFLDbar*DZFLD(k))
                THSH(k)=-vmfin(k)*THFLD(k)/(denFLDbar*DZFLD(k))
  	     THSOURCE(k)=THSV(k)+THSH(k)
	 END IF
         IF (wWTG(k).GT.0.0.AND.wWTG(k-1).EQ.0.0) THEN
 	     vmfin(k)=-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             THSV(k)=(- wWTG(k)*denFLD(k)*THFLD(k))/       &
                   (denFLDbar*DZFLD(k))
                THSH(k)=-vmfin(k)*THFLD(i,2,k)/(denFLDbar*DZFLD(k))
  	     THSOURCE(k)=THSV(k)+THSH(k)
	 END IF
         IF (wWTG(k).LT.0.0.AND.wWTG(k-1).EQ.0.0) THEN
 	     vmfin(k)=-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             THSV(k)=(- wWTG(k)*denFLD(k)*THFLD(k+1))/       &
                    (denFLDbar*DZFLD(k))
                THSH(k)=-vmfin(k)*THFLD(k)/(denFLDbar*DZFLD(k))
  	     THSOURCE(k)=THSV(k)+THSH(k)
	 END IF
         IF (wWTG(k).EQ.0.0.AND.wWTG(k-1).LT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             THSV(k)=(wWTG(k-1)*denFLD(k-1)*THFLD(k))/       &
                    (denFLDbar*DZFLD(k))
                THSH(k)=-vmfin(k)*THFLD(i,2,k)/(denFLDbar*DZFLD(k))
  	     THSOURCE(k)=THSV(k)+THSH(k)
	 END IF
         IF (wWTG(k).EQ.0.0.AND.wWTG(k-1).GT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             THSV(k)=(wWTG(k-1)*denFLD(k-1)*THFLD(k-1))/       &
                    (denFLDbar*DZFLD(k))
                THSH(k)=-vmfin(k)*THFLD(k)/(denFLDbar*DZFLD(k))
  	     THSOURCE(k)=THSV(k)+THSH(k)
	 END IF
      END DO



 ! Tendencies of qv due to the large-scale circulation
!LS forcing arising from WTG calculations
!

       DO k=2,ktop_wtg-1
         IF (wWTG(k).LT.0.0.AND.wWTG(k-1).LT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
             QSV(k)=(wWTG(k-1)*denFLD(k-1)*QFLD(k)- &
                     wWTG(k)*denFLD(k)*QFLD(k+1))/       &
                    (denFLDbar*DZFLD(k))
             IF (vmfin(k).LT.0.0) THEN
                QSH(k)=-vmfin(k)*QFLD(i,2,k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).GT.0.0) THEN
                QSH(k)=-vmfin(k)*QFLD(k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).EQ.0.0) THEN
                QSH(k)=0.0
	     END IF
  	     QSOURCE(k)=QSV(k)+QSH(k)
	 END IF
         IF (wWTG(k).GT.0.0.AND.wWTG(k-1).GT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
             QSV(k)=(wWTG(k-1)*denFLD(k-1)*QFLD(k-1)- &
                     wWTG(k)*denFLD(k)*QFLD(k))/       &
                    (denFLDbar*DZFLD(k))
             IF (vmfin(k).LT.0.0) THEN
                QSH(k)=-vmfin(k)*QFLD(i,2,k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).GT.0.0) THEN
                QSH(k)=-vmfin(k)*QFLD(k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).EQ.0.0) THEN
                QSH(k)=0.0
	     END IF
  	     QSOURCE(k)=QSV(k)+QSH(k)
	 END IF
         IF (wWTG(k).GT.0.0.AND.wWTG(k-1).LT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
             QSV(k)=(wWTG(k-1)*denFLD(k-1)*QFLD(k)- &
                    wWTG(k)*denFLD(k)*QFLD(k))/       &
                    (denFLDbar*DZFLD(k))
                QSH(k)=-vmfin(k)*QFLD(i,2,k)/(denFLDbar*DZFLD(k))
  	     QSOURCE(k)=QSV(k)+QSH(k)
	 END IF
         IF (wWTG(k).LT.0.0.AND.wWTG(k-1).GT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
	     DZFLD(k)=r_theta_levs(k)-r_theta_levs(k-1)
             QSV(k)=(wWTG(k-1)*denFLD(k-1)*QFLD(k-1)- &
                     wWTG(k)*denFLD(k)*QFLD(k+1))/       &
                    (denFLDbar*DZFLD(k))
                QSH(k)=-vmfin(k)*QFLD(k)/(denFLDbar*DZFLD(k))
  	     QSOURCE(k)=QSV(k)+QSH(k)
	 END IF
         IF (wWTG(k).GT.0.0.AND.wWTG(k-1).EQ.0.0) THEN
 	     vmfin(k)=-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             QSV(k)=(- wWTG(k)*denFLD(k)*QFLD(k))/       &
                    (denFLDbar*DZFLD(k))
                QSH(k)=-vmfin(k)*QFLD(i,2,k)/(denFLDbar*DZFLD(k))
  	     QSOURCE(k)=QSV(k)+QSH(k)
	 END IF
         IF (wWTG(k).LT.0.0.AND.wWTG(k-1).EQ.0.0) THEN
 	     vmfin(k)=-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             QSV(k)=(- wWTG(k)*denFLD(k)*QFLD(k+1))/       &
                    (denFLDbar*DZFLD(k))
                QSH(k)=-vmfin(k)*QFLD(k)/(denFLDbar*DZFLD(k))
  	     QSOURCE(k)=QSV(k)+QSH(k)
	 END IF
         IF (wWTG(k).EQ.0.0.AND.wWTG(k-1).LT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             QSV(k)=(wWTG(k-1)*denFLD(k-1)*QFLD(k))/       &
                    (denFLDbar*DZFLD(k))
                QSH(k)=-vmfin(k)*QFLD(i,2,k)/(denFLDbar*DZFLD(k))
  	     QSOURCE(k)=QSV(k)+QSH(k)
	 END IF
         IF (wWTG(k).EQ.0.0.AND.wWTG(k-1).GT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             QSV(k)=(wWTG(k-1)*denFLD(k-1)*QFLD(k-1))/       &
                    (denFLDbar*DZFLD(k))
                QSH(k)=-vmfin(k)*QFLD(k)/(denFLDbar*DZFLD(k))
  	     QSOURCE(k)=QSV(k)+QH(k)
	 END IF
      END DO
 RETURN
 END SUBROUTINE
