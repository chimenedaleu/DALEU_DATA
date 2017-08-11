 SUBROUTINE WTG_CALCULATIONS (nlevs,ZFLD,denFLD,FLD_other, FLD,WFLD,SFLD)

!This subroutine calculates the WTG/DGW-derived large-scale vertical velocities and the associated
!heat and moisture tendencies.
!The WTG/DGW-derived large-scale vertical velocities are at the same levels as qv

! FLD: the field to be advected by the large-scale circulaton. It is theta and qv only

! WFLD: profile of large-scale vertical velocity:1D field

! SFLD: total advection (vertical + horizontal) advection
! ZFLD: Heights at TH and qv levels
! denFLD: density
!wtg_dgw_flag ! flag for large scale dynamics: 1 for WTG and 2 for DGW
!nlevs: number of model levels in the vertical
! the subscript “other” refer to the other column.

 IMPLICIT NONE
  REAL, PARAMETER :: THO_WTG=7200.0  ! the WTG timescale (s)
  REAL, PARAMETER :: HBL_WTG=1500.0   ! boundary layer height for tapering off w_wtg (m)
  REAL, PARAMETER :: HTOP_WTG=15250.0   ! boundary layer height for tapering off w_wtg (m)
  REAL, PARAMETER :: gra=9.81 
  REAL :: deno       ! denominator of WTG calculations
 

 INTEGER, INTENT (IN) :: nlevs !number of vertical levels
 REAL, INTENT(IN), DIMENSION(nlevs) :: FLD_other !theta from the other column
 REAL, INTENT(IN), DIMENSION(nlevs) :: FLD       !theta from this column
 REAL, INTENT(IN), DIMENSION(nlevs) :: ZFLD        !model levels
 REAL, INTENT(IN), DIMENSION(nlevs) :: denFLD      !density

 REAL, INTENT(IN), DIMENSION(nlevs) :: WFLD !large-scale vertical velocity
 REAL, INTENT(OUT), DIMENSION(nlevs) :: SFLD !tendencies of FLD due to the large-scale vertical velocities
 INTEGER:: kbl_first_wtg! first model level above the nominal boundary layer
 INTEGER:: ktop_first_wtg ! first model level above 15.25 km
 REAL,DIMENSION(nlevs):: DZFLD ! Difference between two consecutives model levels
 INTEGER:: k
 REAL :: denFLDbar
   REAL, DIMENSION(nlevs):: FLDSV,FLDSH ! vertical and horizontal source term!
   REAL, DIMENSION(nlevs):: FLDSOURCE  ! total (vertical + horizontal) source term!

 DZFLD(1)=0.
 DO k=2,nlevs
      DZFLD(k)=ZFLD(k)-ZFLD(k-1)
 ENDDO
 
      ktop_first_wtg=nlevs
      DO K=2,nlevs
         IF (ZFLD(k) .GT. HTOP_WTG) THEN
            ktop_first_wtg=k
            EXIT
          END IF
      END DO

       DO k=2,ktop_first_wtg
         IF (wWTG(k).LT.0.0.AND.wWTG(k-1).LT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
             FLDSV(k)=(wWTG(k-1)*denFLD(k-1)*FLD(k)- &
                     wWTG(k)*denFLD(k)*FLD(k+1))/       &
                    (denFLDbar*DZFLD(k))
             IF (vmfin(k).LT.0.0) THEN
                FLDSH(k)=-vmfin(k)*FLD_other(k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).GT.0.0) THEN
                FLDSH(k)=-vmfin(k)*FLD(k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).EQ.0.0) THEN
                FLDSH(k)=0.0
	     END IF
  	     FLDSOURCE(k)=FLDSV(k)+FLDSH(k)
	 END IF
         IF (wWTG(k).GT.0.0.AND.wWTG(k-1).GT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
             FLDSV(k)=(wWTG(k-1)*denFLD(k-1)*FLD(k-1)- &
                     wWTG(k)*denFLD(k)*FLD(k))/       &
                    (denFLDbar*DZFLD(k))
             IF (vmfin(k).LT.0.0) THEN
                FLDSH(k)=-vmfin(k)*FLD_other(k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).GT.0.0) THEN
                FLDSH(k)=-vmfin(k)*FLD(k)/(denFLDbar*DZFLD(k))
	     END IF
             IF (vmfin(k).EQ.0.0) THEN
                FLDSH(k)=0.0
	     END IF
  	     FLDSOURCE(k)=FLDSV(k)+FLDSH(k)
	 END IF
         IF (wWTG(k).GT.0.0.AND.wWTG(k-1).LT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
             FLDSV(k)=(wWTG(k-1)*denFLD(k-1)*FLD(k)- &
                     wWTG(k)*denFLD(k)*FLD(k))/       &
                    (denFLDbar*DZFLD(k))
                FLDSH(k)=-vmfin(k)*FLD_other(k)/(denFLDbar*DZFLD(k))
  	     FLDSOURCE(k)=FLDSV(k)+FLDSH(k)
	 END IF
         IF (wWTG(k).LT.0.0.AND.wWTG(k-1).GT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k))
	     DZFLD(k)=r_theta_levs(k)-r_theta_levs(k-1)
             FLDSV(k)=(wWTG(k-1)*denFLD(k-1)*FLD(k-1)- &
                     wWTG(k)*denFLD(k)*FLD(k+1))/       &
                    (denFLDbar*DZFLD(k))
                FLDSH(k)=-vmfin(k)*FLD(k)/(denFLDbar*DZFLD(k))
  	     FLDSOURCE(k)=FLDSV(k)+FLDSH(k)
	 END IF
         IF (wWTG(k).GT.0.0.AND.wWTG(k-1).EQ.0.0) THEN
 	     vmfin(k)=-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             FLDSV(k)=(- wWTG(k)*denFLD(k)*FLD(k))/       &
                   (denFLDbar*DZFLD(k))
                FLDSH(k)=-vmfin(k)*FLD_other(k)/(denFLDbar*DZFLD(k))
  	     FLDSOURCE(k)=FLDSV(k)+FLDSH(k)
	 END IF
         IF (wWTG(k).LT.0.0.AND.wWTG(k-1).EQ.0.0) THEN
 	     vmfin(k)=-wWTG(k)*denFLD(k)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             FLDSV(k)=(- wWTG(k)*denFLD(k)*FLD(k+1))/       &
                    (denFLDbar*DZFLD(k))
                FLDSH(k)=-vmfin(k)*FLD(k)/(denFLDbar*DZFLD(k))
  	     FLDSOURCE(k)=FLDSV(k)+FLDSH(k)
	 END IF
         IF (wWTG(k).EQ.0.0.AND.wWTG(k-1).LT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             FLDSV(k)=(wWTG(k-1)*denFLD(k-1)*FLD(k))/       &
                    (denFLDbar*DZFLD(k))
                FLDSH(k)=-vmfin(k)*FLD_other(k)/(denFLDbar*DZFLD(k))
  	     FLDSOURCE(k)=FLDSV(k)+FLDSH(k)
	 END IF
         IF (wWTG(k).EQ.0.0.AND.wWTG(k-1).GT.0.0) THEN
 	     vmfin(k)=wWTG(k-1)*denFLD(k-1)
 	     denFLDbar=0.5*(denFLD(k-1)+denFLD(k)
             FLDSV(k)=(wWTG(k-1)*denFLD(k-1)*FLD(k-1))/       &
                    (denFLDbar*DZFLD(k))
                FLDSH(k)=-vmfin(k)*FLD(k)/(denFLDbar*DZFLD(k))
  	     FLDSOURCE(k)=FLDSV(k)+FLDSH(k)
	 END IF
      END DO

 RETURN
 END SUBROUTINE
