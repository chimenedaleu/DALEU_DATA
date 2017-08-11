 SUBROUTINE WTG_CALCULATIONS (nlevs,ZFLD,THFLD_other,THFLD,WFLD)

!This subroutine calculates the WTG-derived large-scale vertical velocities 

! THFLD, THFLD_other: domain-mean profiles of theta in this column and from the other column
! WFLD: profile of large-scale vertical velocity: 1d field

! ZFLD: Heights at TH and qv levels
! denFLD: density

!nlevs: number of model levels in the vertical
! the subscript “other” refers to the other column.

 IMPLICIT NONE
  REAL, PARAMETER :: THO_WTG=7200.0  ! the WTG timescale (s)
  REAL, PARAMETER :: HBL_WTG=1500.0   ! boundary layer height for tapering off w_wtg (m)
  REAL, PARAMETER :: HTOP_WTG=15250.0   ! boundary layer height for tapering off w_wtg (m)
  REAL, PARAMETER :: gra=9.81 
  REAL :: deno       ! denominator of WTG calculations
 

 INTEGER, INTENT (IN) :: nlevs !number of vertical levels
 REAL, INTENT(IN), DIMENSION(nlevs) :: THFLD_other !theta from the other column
 REAL, INTENT(IN), DIMENSION(nlevs) :: THFLD       !theta from this column
 REAL, INTENT(IN), DIMENSION(nlevs) :: ZFLD        !model levels

 REAL, INTENT(OUT), DIMENSION(nlevs) :: WFLD !large-scale vertical velocity
 
 INTEGER:: kbl_first_wtg! first model level above the nominal boundary layer
 INTEGER:: ktop_first_wtg ! first model level above 15.25 km
 REAL,DIMENSION(nlevs):: DZFLD ! Difference between two consecutives model levels
 INTEGER:: k

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
      ktop_first_wtg=nlevs
      DO K=2,nlevs
         IF (ZFLD(k) .GT. HTOP_WTG) THEN
            ktop_first_wtg=k
            EXIT
          END IF
      END DO
      DO k=ktop_first_wtg,nlevs
         wWTG(k)=0.
      END DO
! Decay the top of BL value down to zero within the boundary layer
! First find the level index for the first level is more than HBL_WTG high
      kbl_first_wtg=nlevs
      DO k=2,nlevs
	IF (ZFLD(k) .GT. HBL_WTG) THEN
	  kbl_first_wtg=k
	  EXIT
        END IF
      END DO  
      DO k=1,kbl_first_wtg
	wWTG(k)=wWTG(kbl_first_wtg)*ZFLD(k)/ZFLD(kbl_first_wtg)
      END DO  

 RETURN
 END SUBROUTINE
