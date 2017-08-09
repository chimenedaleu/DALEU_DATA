@ncread.pro
@qsaturation.pro
@qsaturation_ice.pro
nt=14399
neq=7199;2879;4319;11519;
dt_scm=600.;
dtt_scm=1800.
nz=62
nzz=4
nd=99;
ntt=2399;
nz_nt=40127L
L_vap                = 2.501e6     ;J/kg
C_p                  = 1005.0      ;J/kgK
gra                  = 9.8
L_vap                = 2.501e6     ;J/kg
C_p                  = 1005.0      ;J/kgK
p_o=100000.0
R                    = 287.058 
kappa                = R/C_p    



;
;transition time as a function of entrainment factor
;

Tstr=DBLARR(3,3); exps,values of ent
Tstr=DBLARR(3,3)
Tstr=DBLARR(3,3)
ent=DBLARR(3)
Tstr_min=DBLARR(3,3)
Tstr_min=DBLARR(3,3)
Tst_minr=DBLARR(3,3)
Tstr_max=DBLARR(3,3)
Tstr_max=DBLARR(3,3)
Tstr_max=DBLARR(3,3)
Tstr(0,0)=3.92;
Tstr(0,1)=5.29;
Tstr(0,2)=7.20
Tstr(1,0)=5.86;
Tstr(1,1)=6.28
Tstr(1,2)=6.19;
Tstr(2,0)=4.82;
Tstr(2,1)=5.48;
Tstr(2,2)=6.73;
Tstr_crm=DBLARR(3)
Tstr_crm(0)=5.4
Tstr_crm(1)=10.9
Tstr_crm(2)=8
Tstr_crm_min=DBLARR(3)
Tstr_crm_min(0)=5.0
Tstr_crm_min(1)=10.0
Tstr_crm_min(2)=7.1
Tstr_crm_max=DBLARR(3)
Tstr_crm_max(0)=6.2
Tstr_crm_max(1)=11.6
Tstr_crm_max(2)=8.4

Tstr_min(0,0)=3.85;
Tstr_min(0,1)=5.2;
Tstr_min(0,2)=6.97;6.87;
Tstr_min(1,0)=5.58;
Tstr_min(1,1)=5.92;
Tstr_min(1,2)=5.84;
Tstr_min(2,0)=4.65;
Tstr_min(2,1)=5.29;
Tstr_min(2,2)=6.47;

Tstr_max(0,0)=4.00;
Tstr_max(0,1)=5.47;
Tstr_max(0,2)=7.45;7.35;
Tstr_max(1,0)=6.19;
Tstr_max(1,1)=6.55;
Tstr_max(1,2)=6.55;
Tstr_max(2,0)=4.96;
Tstr_max(2,1)=5.67;
Tstr_max(2,2)=7.13
ent(0)=0.9
ent(1)=1.125
ent(2)=1.35



wv1=DBLARR(nz_nt+1)
rain1=DBLARR(nz_nt+1)
liq1=DBLARR(nz_nt+1)
theta1=DBLARR(nz_nt+1)
temp1=DBLARR(nz_nt+1)
dqtot1=DBLARR(nz_nt+1)
dtemptot1=DBLARR(nz_nt+1)
pre1_th=DBLARR(nz_nt+1)
hei1_th=DBLARR(nz_nt+1)
hei1_th=DBLARR(nz_nt+1)
qv1=DBLARR(nz_nt+1)


wv2=DBLARR(nz_nt+1)
rain2=DBLARR(nz_nt+1)
liq2=DBLARR(nz_nt+1)
theta2=DBLARR(nz_nt+1)
theta2=DBLARR(nz_nt+1)
temp2=DBLARR(nz_nt+1)
dqtot2=DBLARR(nz_nt+1)
dtemptot2=DBLARR(nz_nt+1)
pre2_th=DBLARR(nz_nt+1)
hei2_th=DBLARR(nz_nt+1)
pre2_th=DBLARR(nz_nt+1)
hei2_th=DBLARR(nz_nt+1)
qv2=DBLARR(nz_nt+1)


time=DBLARR(nt+1)
timet=DBLARR(ntt+1)
ppt1_tot=DBLARR(nt+1)
ppt1_tot_1dave=DBLARR(nd+1)
time_1dave=DBLARR(nd+1)
ppt1_tot_1dave_run=DBLARR(nt+1)
shf1_tot=DBLARR(nt+1)
lhf1_tot=DBLARR(nt+1)
dq1=DBLARR(nt+1)
shf1_tot_1dave_run=DBLARR(nt+1)
lhf1_tot_1dave_run=DBLARR(nt+1)
rain1_tot=DBLARR(nt+1)
ciq1=DBLARR(nt+1)
rain1_tot_1dave_run=DBLARR(nt+1)
ciq1_tot_1dave_run=DBLARR(nt+1)
ppt1_tot_1dave_run=DBLARR(nt+1)
shf1_tot_1dave_run=DBLARR(nt+1)
lhf1_tot_1dave_run=DBLARR(nt+1)
time2=DBLARR(nt+1)
ppt2_tot=DBLARR(nt+1)
ppt2_tot_1dave=DBLARR(nd+1)
time2_1dave=DBLARR(nd+1)
ppt2_tot_1dave_run=DBLARR(nt+1)
shf2_tot=DBLARR(nt+1)
lhf2_tot=DBLARR(nt+1)
dq2=DBLARR(nt+1)
shf2_tot_1dave_run=DBLARR(nt+1)
lhf2_tot_1dave_run=DBLARR(nt+1)
rain2_tot=DBLARR(nt+1)
ciq2=DBLARR(nt+1)
rain2_tot_1dave_run=DBLARR(nt+1)
ciq2_tot_1dave_run=DBLARR(nt+1)
ppt2_tot_1dave_run=DBLARR(nt+1)
shf2_tot_1dave_run=DBLARR(nt+1)
lhf2_tot_1dave_run=DBLARR(nt+1)

sst1=DBLARR(nt+1)
wv1_zt=DBLARR(nz+1,nt+1)
sthrad1_zt=DBLARR(nz+1,nt+1)
sthrad1_zt=DBLARR(nz+1,nt+1)
sqrad1_zt=DBLARR(nz+1,nt+1)
sqwtg1_zt=DBLARR(nz+1,nt+1)
stwtg1_zt=DBLARR(nz+1,nt+1)
den1_zt=DBLARR(nz+1,nt+1)
wwtg1_zt=DBLARR(nz+1,nt+1)
rh1_zt=DBLARR(nz+1,nt+1)
sqrad1_zt=DBLARR(nz+1,nt+1)
rain1_zt=DBLARR(nz+1,nt+1)
liq1_zt=DBLARR(nz+1,nt+1)
dqconverte1_zt=DBLARR(nz+1,nt+1)
dqconvertp1_zt=DBLARR(nz+1,nt+1)
dtconvert1_zt=DBLARR(nz+1,nt+1)
qv1_zt_sat=DBLARR(nz+1,nt+1)
lhf1_zz=DBLARR(nzz+1,nt+1)
lhf1_col=DBLARR(nt+1)
temp1_zt=DBLARR(nz+1,nt+1)
dqtot1_zt=DBLARR(nz+1,nt+1)
dtemptot1_zt=DBLARR(nz+1,nt+1)
qv1_zt=DBLARR(nz+1,nt+1)
theta1_zt=DBLARR(nz+1,nt+1)
theta1_v_zt=DBLARR(nz+1,nt+1)
tv1_zt=DBLARR(nz+1,nt+1)
theta1_v_zt=DBLARR(nz+1,nt+1)
qv1_zt=DBLARR(nz+1,nt+1)
pre1_th_zt=DBLARR(nz+1,nt+1)
hei1_th_zt=DBLARR(nz+1,nt+1)
pre1_th_zt=DBLARR(nz+1,nt+1)
hei1_th_zt=DBLARR(nz+1,nt+1)
cwv1=DBLARR(nt+1)
cwv1_qv=DBLARR(nt+1)
dqconverte1_ver_int=DBLARR(nt+1)
dqconvertp1_ver_int=DBLARR(nt+1)
dtconvert1_ver_int=DBLARR(nt+1)

sst2=DBLARR(nt+1)
wv2_zt=DBLARR(nz+1,nt+1)
sthrad2_zt=DBLARR(nz+1,nt+1)
sthrad2_zt=DBLARR(nz+1,nt+1)
sqrad2_zt=DBLARR(nz+1,nt+1)
sqwtg2_zt=DBLARR(nz+1,nt+1)
stwtg2_zt=DBLARR(nz+1,nt+1)
den2_zt=DBLARR(nz+1,nt+1)
wwtg2_zt=DBLARR(nz+1,nt+1)
rh2_zt=DBLARR(nz+1,nt+1)
sqrad2_zt=DBLARR(nz+1,nt+1)
rain2_zt=DBLARR(nz+1,nt+1)
liq2_zt=DBLARR(nz+1,nt+1)
dqconverte2_zt=DBLARR(nz+1,nt+1)
dqconvertp2_zt=DBLARR(nz+1,nt+1)
dtconvert2_zt=DBLARR(nz+1,nt+1)
qv2_zt_sat=DBLARR(nz+1,nt+1)
lhf2_zz=DBLARR(nzz+1,nt+1)
lhf2_col=DBLARR(nt+1)
temp2_zt=DBLARR(nz+1,nt+1)
dqtot2_zt=DBLARR(nz+1,nt+1)
dtemptot2_zt=DBLARR(nz+1,nt+1)
qv2_zt=DBLARR(nz+1,nt+1)
theta2_zt=DBLARR(nz+1,nt+1)
theta2_v_zt=DBLARR(nz+1,nt+1)
tv2_zt=DBLARR(nz+1,nt+1)
theta2_v_zt=DBLARR(nz+1,nt+1)
qv2_zt=DBLARR(nz+1,nt+1)
pre2_th_zt=DBLARR(nz+1,nt+1)
hei2_th_zt=DBLARR(nz+1,nt+1)
pre2_th_zt=DBLARR(nz+1,nt+1)
hei2_th_zt=DBLARR(nz+1,nt+1)
cwv2=DBLARR(nt+1)
cwv2_qv=DBLARR(nt+1)
dqconverte2_ver_int=DBLARR(nt+1)
dqconvertp2_ver_int=DBLARR(nt+1)
dtconvert2_ver_int=DBLARR(nt+1)

ppt1=DBLARR(nt+1)
dt1_cwv=DBLARR(nt+1)
dpre1=DBLARR(nz+1,nt+1)
ppt2=DBLARR(nt+1)
dt2_cwv=DBLARR(nt+1)
dpre2=DBLARR(nz+1,nt+1)
dpre1=DBLARR(nz+1,nt+1)
dpre1_mean=DBLARR(nz+1)
wv1_mean=DBLARR(nz+1)
liq1_mean=DBLARR(nz+1)
rain1_mean=DBLARR(nz+1)
theta1_mean=DBLARR(nz+1)
theta1_mean=DBLARR(nz+1)
theta1_v_mean=DBLARR(nz+1)
tv1_mean=DBLARR(nz+1)
theta1_v_mean=DBLARR(nz+1)
strad1_mean=DBLARR(nz+1)
strad1_mean=DBLARR(nz+1)
sqrad1_mean=DBLARR(nz+1)
sqwtg1_mean=DBLARR(nz+1)
stwtg1_mean=DBLARR(nz+1)
rh1_mean=DBLARR(nz+1)
wwtg1_mean=DBLARR(nz+1)
sqrad1_mean=DBLARR(nz+1)
temp1_mean=DBLARR(nz+1)
dqtot1_mean=DBLARR(nz+1)
den1_mean=DBLARR(nz+1)
dtemptot1_mean=DBLARR(nz+1)
qv1_mean=DBLARR(nz+1)
qv1_mean=DBLARR(nz+1)
pre1_th_mean=DBLARR(nz+1)
hei1_th_mean=DBLARR(nz+1)
pre1_th_mean=DBLARR(nz+1)
hei1_th_mean=DBLARR(nz+1)
hei1_th_mean=DBLARR(nz+1)


wv2_mean=DBLARR(nz+1)
liq2_mean=DBLARR(nz+1)
rain2_mean=DBLARR(nz+1)
theta2_mean=DBLARR(nz+1)
theta2_mean=DBLARR(nz+1)
theta2_v_mean=DBLARR(nz+1)
tv2_mean=DBLARR(nz+1)
theta2_v_mean=DBLARR(nz+1)
strad2_mean=DBLARR(nz+1)
strad2_mean=DBLARR(nz+1)
sqrad2_mean=DBLARR(nz+1)
sqwtg2_mean=DBLARR(nz+1)
stwtg2_mean=DBLARR(nz+1)
rh2_mean=DBLARR(nz+1)
wwtg2_mean=DBLARR(nz+1)
sqrad2_mean=DBLARR(nz+1)
temp2_mean=DBLARR(nz+1)
dqtot2_mean=DBLARR(nz+1)
den2_mean=DBLARR(nz+1)
dtemptot2_mean=DBLARR(nz+1)
qv2_mean=DBLARR(nz+1)
qv2_mean=DBLARR(nz+1)
pre2_th_mean=DBLARR(nz+1)
hei2_th_mean=DBLARR(nz+1)
pre2_th_mean=DBLARR(nz+1)
hei2_th_mean=DBLARR(nz+1)
hei2_th_mean=DBLARR(nz+1)


time(0)=0.0
for j=1L,nt do begin
    time(j)=time(j-1)+dt_scm
endfor
time=time/86400.

timet(0)=0.0
for j=1L,ntt do begin
    timet(j)=timet(j-1)+dtt_scm
endfor
timet=timet/86400.
n_tr=10800
time_tr=DBLARR(n_tr+1)
time_tr(0)=-432000
for j=1L,10800 do begin
    time_tr(j)=time_tr(j-1)+dt_scm
endfor
time_tr=time_tr/86400.


 a=2
b=5
c=a+b
print, c

theta_ref_zt=DBLARR(nz+1,2400)
temp_ref_zt=DBLARR(nz+1,2400)
qv_ref_zt=DBLARR(nz+1,2400)
qv_ref_mean=DBLARR(nz+1)
thv_ref_mean=DBLARR(nz+1)
tv_ref_mean=DBLARR(nz+1)

hei=DBLARR(nz+1)
pre=DBLARR(nz+1)
dens=DBLARR(nz+1)
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/hei.dat',/get_lun 
 readf,lun,hei
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/pre.dat',/get_lun 
 readf,lun,pre
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dens.dat',/get_lun 
 readf,lun,dens

close,/all



ppt1_uniSST_RCE3007_3027K_d22=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3027K_d22.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3027K_d22
close,/all
ppt1_uniSST_RCE3007_3027K_d23=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3027K_d23.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3027K_d23
close,/all
ppt1_uniSST_RCE3007_3027K_d27=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3027K_d27.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3027K_d27
close,/all

moist1_uniSST_RCE3007_3027K_d22=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3027K_d22.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3027K_d22
close,/all
moist1_uniSST_RCE3007_3027K_d23=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3027K_d23.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3027K_d23
close,/all
moist1_uniSST_RCE3007_3027K_d27=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3027K_d27.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3027K_d27
close,/all


heat1_uniSST_RCE3007_3027K_d22=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3027K_d22.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3027K_d22
close,/all
heat1_uniSST_RCE3007_3027K_d23=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3027K_d23.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3027K_d23
close,/all
heat1_uniSST_RCE3007_3027K_d27=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3027K_d27.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3027K_d27
close,/all


ntt=nt+4320
timett=DBLARR(ntt+1)
timett(0)=0.0
for j=1L,ntt do begin
    timett(j)=timett(j-1)+dt_scm
endfor
timett=timett/86400.

ppt1_uniSST_RCE3007_3027K_d22long=DBLARR(ntt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3027K_d22long.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3027K_d22long
close,/all
ppt1_uniSST_RCE3007_3027K_d23long=DBLARR(ntt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3027K_d23long.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3027K_d23long
close,/all
ppt1_uniSST_RCE3007_3027K_d27long=DBLARR(ntt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3027K_d27long.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3027K_d27long
close,/all

moist1_uniSST_RCE3007_3027K_d22long=DBLARR(ntt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3027K_d22long.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3027K_d22long
close,/all
moist1_uniSST_RCE3007_3027K_d23long=DBLARR(ntt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3027K_d23long.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3027K_d23long
close,/all
moist1_uniSST_RCE3007_3027K_d27long=DBLARR(ntt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3027K_d27long.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3027K_d27long
close,/all


heat1_uniSST_RCE3007_3027K_d22long=DBLARR(ntt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3027K_d22long.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3027K_d22long
close,/all
heat1_uniSST_RCE3007_3027K_d23long=DBLARR(ntt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3027K_d23long.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3027K_d23long
close,/all
heat1_uniSST_RCE3007_3027K_d27long=DBLARR(ntt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3027K_d27long.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3027K_d27long
close,/all


heat1_uniSST_ascent_ave2sims=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_ascent_ave2sims.dat',/get_lun 
 readf,lun,heat1_uniSST_ascent_ave2sims
close,/all

moist1_uniSST_ascent_ave2sims=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_ascent_ave2sims.dat',/get_lun 
 readf,lun,moist1_uniSST_ascent_ave2sims
close,/all
ppt1_uniSST_ascent_ave2sims=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_ascent_ave2sims.dat',/get_lun 
 readf,lun,ppt1_uniSST_ascent_ave2sims
close,/all

moist1_uniSST_RCE3007_3027K_d29=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3027K_d29.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3027K_d29
close,/all
heat1_uniSST_RCE3007_3027K_d29=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3027K_d29.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3027K_d29
close,/all
ppt1_uniSST_RCE3007_3027K_d29=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3027K_d29.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3027K_d29
close,/all

moist1_uniSST_RCE3007_3027K_d26=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3027K_d26.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3027K_d26
close,/all
heat1_uniSST_RCE3007_3027K_d26=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3027K_d26.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3027K_d26
close,/all
ppt1_uniSST_RCE3007_3027K_d26=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3027K_d26.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3027K_d26
close,/all

moist1_uniSST_RCE3007_3027K_d25=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3027K_d25.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3027K_d25
close,/all
heat1_uniSST_RCE3007_3027K_d25=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3027K_d25.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3027K_d25
close,/all
ppt1_uniSST_RCE3007_3027K_d25=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3027K_d25.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3027K_d25
close,/all

moist1_uniSST_RCE3007_3027K_d24=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3027K_d24.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3027K_d24
close,/all
heat1_uniSST_RCE3007_3027K_d24=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3027K_d24.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3027K_d24
close,/all
ppt1_uniSST_RCE3007_3027K_d24=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3027K_d24.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3027K_d24
close,/all

moist1_uniSST_RCE3007_3027K_d28=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3027K_d28.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3027K_d28
close,/all
heat1_uniSST_RCE3007_3027K_d28=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3027K_d28.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3027K_d28
close,/all
ppt1_uniSST_RCE3007_3027K_d28=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3027K_d28.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3027K_d28
close,/all



wwtg1_uniSST_RCE3007_3027K_d25=DBLARR(nz+1)
openr,lun,'wwtg1_uniSST_RCE3007_3027K_d25.dat',/get_lun 
 readf,lun,wwtg1_uniSST_RCE3007_3027K_d25
close,/all





OMG_uniSST_RCE3007_3027K_d25=0.

dPRE=DBLARR(nz+1)

    for i=0,46 do begin
       dpre(i)=-PRE(i+1)+PRE(i)
       OMG_uniSST_RCE3007_3027K_d25=OMG_uniSST_RCE3007_3027K_d25+(DENS(i+1)*wwtg1_uniSST_RCE3007_3027K_d25(i+1)+DENS(i)*wwtg1_uniSST_RCE3007_3027K_d25(i))*dpre(i)/2.0
    endfor

OMG_uniSST_RCE3007_3027K_d25=OMG_uniSST_RCE3007_3027K_d25*gra/(-PRE(46)+PRE(0))
PRINT, OMG_uniSST_RCE3007_3027K_d25












;;;;;;;;;;;;;;;;;;











RH_RCE3027K=DBLARR(nz+1)
RH_loc_col13007K=DBLARR(nz+1)
RH_loc_col23027K=DBLARR(nz+1)
qv_RCE3027K=DBLARR(nz+1)
tp_RCE3027K=DBLARR(nz+1)
openr,lun,'RH_RCE3027K.dat',/get_lun 
 readf,lun,RH_RCE3027K
close,/all
openr,lun,'RH_loc_col13007K.dat',/get_lun 
 readf,lun,RH_loc_col13007K
close,/all
openr,lun,'RH_loc_col23027K.dat',/get_lun 
 readf,lun,RH_loc_col23027K
close,/all


qv_loc_col13007K=DBLARR(nz+1)
qv_loc_col23027K=DBLARR(nz+1)
th_loc_col13007K=DBLARR(nz+1)
th_loc_col23027K=DBLARR(nz+1)
openr,lun,'q_loc_col13007K.dat',/get_lun 
 readf,lun,qv_loc_col13007K
close,/all
openr,lun,'q_loc_col23027K.dat',/get_lun 
 readf,lun,qv_loc_col23027K
close,/all
openr,lun,'th_loc_col13007K.dat',/get_lun 
 readf,lun,th_loc_col13007K
close,/all
openr,lun,'th_loc_col23027K.dat',/get_lun 
 readf,lun,th_loc_col23027K
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_c_rce_fixedRC.dat',/get_lun 
 readf,lun,qv_RCE3027K
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_c_rce_fixedRC.dat',/get_lun 
 readf,lun,tp_RCE3027K
close,/all


cwv_RCE=0.
cwvsat_RCE=0.

cwv_loc_col13007K=0.
cwvsat_loc_col13007K=0.
cwv_loc_col23027K=0.
cwvsat_loc_col23027K=0.

dPRE=DBLARR(nz+1)
qvsat_RCE3027K=DBLARR(nz+1)
qvsat_loc_col13007K=DBLARR(nz+1)
qvsat_loc_col23027K=DBLARR(nz+1)
    for i=0,nz do begin
       tp_RCE3027K(i)=tp_RCE3027K(i)*(pre(i)/100000.)^kappa
       th_loc_col13007K(i)= th_loc_col13007K(i)*(pre(i)/100000.)^kappa
       th_loc_col23027K(i)= th_loc_col23027K(i)*(pre(i)/100000.)^kappa

       qvsat_RCE3027K(i)=qsaturation(tp_RCE3027K(i),pre(i)/100.)
       qvsat_loc_col13007K(i)=qsaturation(th_loc_col13007K(i),pre(i)/100.)
       qvsat_loc_col23027K(i)=qsaturation(th_loc_col23027K(i),pre(i)/100.)

    endfor

    for i=0,46 do begin
       dpre(i)=-PRE(i+1)+PRE(i)
       ;CRH_RCE=CRH_RCE+(RH_RCE3027K(i+1)+RH_RCE3027K(i))*dPRE(i)/2.0
       Cwv_RCE=Cwv_RCE+(qv_RCE3027K(i+1)+qv_RCE3027K(i))*dpre(i)/2.0
       Cwvsat_RCE=Cwvsat_RCE+(qvsat_RCE3027K(i+1)+qvsat_RCE3027K(i))*dpre(i)/2.0

      Cwv_loc_col13007K=Cwv_loc_col13007K+(qv_loc_col13007K(i+1)+qv_loc_col13007K(i))*dpre(i)/2.0
       Cwvsat_loc_col13007K=Cwvsat_loc_col13007K+(qvsat_loc_col13007K(i+1)+qvsat_loc_col13007K(i))*dpre(i)/2.0

      Cwv_loc_col23027K=Cwv_loc_col23027K+(qv_loc_col23027K(i+1)+qv_loc_col23027K(i))*dpre(i)/2.0
       Cwvsat_loc_col23027K=Cwvsat_loc_col23027K+(qvsat_loc_col23027K(i+1)+qvsat_loc_col23027K(i))*dpre(i)/2.0

    endfor
;CRH_RCE=CRH_RCE/gra
Cwv_RCE=Cwv_RCE/gra
Cwvsat_RCE=Cwvsat_RCE/gra
Cwv_loc_col13007K=Cwv_loc_col13007K/gra
Cwvsat_loc_col13007K=Cwvsat_loc_col13007K/gra
Cwv_loc_col23027K=Cwv_loc_col23027K/gra
Cwvsat_loc_col23027K=Cwvsat_loc_col23027K/gra

PRINT,'RCE',Cwv_RCE, Cwvsat_RCE, (Cwv_RCE/Cwvsat_RCE)*100.
PRINT,'loc_col13007K', Cwv_loc_col13007K, Cwvsat_loc_col13007K, (Cwv_loc_col13007K/Cwvsat_loc_col13007K)*100.
PRINT,'loc_col23027K', Cwv_loc_col23027K, Cwvsat_loc_col23027K, (Cwv_loc_col23027K/Cwvsat_loc_col23027K)*100.

tau=DBLARR(5)
tau_l=DBLARR(5)
tau(0)=2.
tau(1)=4.
tau(2)=6.
tau(3)=12.
tau(4)=24.

MLS1=DBLARR(5)
HLS1=DBLARR(5)
evap1=DBLARR(5)
mrr1=DBLARR(5)

mrr1(0)=0.12
evap1(0)=2.82
MLS1(0)=-2.70
HLS1(0)=5.32
mrr1(1)=0.23
evap1(1)=3.3
MLS1(1)=-3.07
HLS1(1)=5.24
mrr1(2)=0.7
evap1(2)=3.64
MLS1(2)=-2.94
HLS1(2)=4.8
mrr1(3)=4.82
evap1(3)=5.1
MLS1(3)=-0.27
HLS1(3)=0.59
mrr1(4)=5.11
evap1(4)=5.26
MLS1(4)=-0.16
HLS1(4)=0.34

TAU_l(0)=ALOG(1./tau(0))-1.3068528+26
TAU_L(1)=ALOG(1./tau(1))-2.61371+16
TAU_l(2)=ALOG(1./tau(2))-4.2082405+12
TAU_l(3)=ALOG(1./tau(3))-9.5150934+16
TAU_l(4)=ALOG(1./tau(4))-20.821946  +26

TAU_l(0)=ALOG(tau(0))+1.3068528
TAU_L(1)=ALOG(tau(1))+2.61371
TAU_l(2)=ALOG(tau(2))+4.2082405
TAU_l(3)=ALOG(tau(3))+9.5150934
TAU_l(4)=ALOG(tau(4))+20.821946  




th1_c_rce=DBLARR(nz+1)
q1_c_rce=DBLARR(nz+1)
th2_c_rce=DBLARR(nz+1)
q2_c_rce=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_c_rce_fixedRC.dat',/get_lun 
 readf,lun,th1_c_rce
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_c_rce_fixedRC.dat',/get_lun 
 readf,lun,q1_c_rce
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_c_rce_fixedRC.dat',/get_lun 
 readf,lun,th2_c_rce
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_c_rce_fixedRC.dat',/get_lun 
 readf,lun,q2_c_rce
close,/all

th1_m_rce=DBLARR(nz+1)
q1_m_rce=DBLARR(nz+1)
th2_m_rce=DBLARR(nz+1)
q2_m_rce=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_m_rce_fixedRC.dat',/get_lun 
 readf,lun,th1_m_rce
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_m_rce_fixedRC.dat',/get_lun 
 readf,lun,q1_m_rce
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_m_rce_fixedRC.dat',/get_lun 
 readf,lun,th2_m_rce
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_m_rce_fixedRC.dat',/get_lun 
 readf,lun,q2_m_rce
close,/all

th1_w_rce=DBLARR(nz+1)
q1_w_rce=DBLARR(nz+1)
th2_w_rce=DBLARR(nz+1)
q2_w_rce=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_w_rce_fixedRC.dat',/get_lun 
 readf,lun,th1_w_rce
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_w_rce_fixedRC.dat',/get_lun 
 readf,lun,q1_w_rce
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_w_rce_fixedRC.dat',/get_lun 
 readf,lun,th2_w_rce
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_w_rce_fixedRC.dat',/get_lun 
 readf,lun,q2_w_rce
close,/all



wwtg1_c_fixedRC=DBLARR(nz+1)
wwtg2_c_fixedRC=DBLARR(nz+1)
stwtg1_c_fixedRC=DBLARR(nz+1)
stwtg2_c_fixedRC=DBLARR(nz+1)
sqwtg1_c_fixedRC=DBLARR(nz+1)
sqwtg2_c_fixedRC=DBLARR(nz+1)
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_c_fixedRC.dat',/get_lun 
 readf,lun,wwtg1_c_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg2_c_fixedRC.dat',/get_lun 
 readf,lun,wwtg2_c_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_c_fixedRC.dat',/get_lun 
 readf,lun,stwtg1_c_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg2_c_fixedRC.dat',/get_lun 
 readf,lun,stwtg2_c_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_c_fixedRC.dat',/get_lun 
 readf,lun,sqwtg1_c_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg2_c_fixedRC.dat',/get_lun 
 readf,lun,sqwtg2_c_fixedRC
close,/all
dth21_c_fixedRC=DBLARR(nz+1)
dq21_c_fixedRC=DBLARR(nz+1)
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dth21_c_fixedRC.dat',/get_lun 
 readf,lun,dth21_c_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dq21_c_fixedRC.dat',/get_lun 
 readf,lun,dq21_c_fixedRC
close,/all




wwtg1_m_fixedRC=DBLARR(nz+1)
wwtg2_m_fixedRC=DBLARR(nz+1)
stwtg1_m_fixedRC=DBLARR(nz+1)
stwtg2_m_fixedRC=DBLARR(nz+1)
sqwtg1_m_fixedRC=DBLARR(nz+1)
sqwtg2_m_fixedRC=DBLARR(nz+1)
th1_m_fixedRC=DBLARR(nz+1)
th2_m_fixedRC=DBLARR(nz+1)
qv1_m_fixedRC=DBLARR(nz+1)
qv2_m_fixedRC=DBLARR(nz+1)

; openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta1_m_fixedRC.dat',/get_lun 
; readf,lun,th1_m_fixedRC
;close,/all
; openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta2_m_fixedRC.dat',/get_lun 
; readf,lun,th2_m_fixedRC
;close,/all
; openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv1_m_fixedRC.dat',/get_lun 
; readf,lun,qv1_m_fixedRC
;close,/all
; openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv2_m_fixedRC.dat',/get_lun 
; readf,lun,qv2_m_fixedRC
;close,/all

 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_m_fixedRC.dat',/get_lun 
 readf,lun,wwtg1_m_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg2_m_fixedRC.dat',/get_lun 
 readf,lun,wwtg2_m_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_m_fixedRC.dat',/get_lun 
 readf,lun,stwtg1_m_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg2_m_fixedRC.dat',/get_lun 
 readf,lun,stwtg2_m_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_m_fixedRC.dat',/get_lun 
 readf,lun,sqwtg1_m_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg2_m_fixedRC.dat',/get_lun 
 readf,lun,sqwtg2_m_fixedRC
close,/all
dth21_m_fixedRC=DBLARR(nz+1)
dq21_m_fixedRC=DBLARR(nz+1)
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dth21_m_fixedRC.dat',/get_lun 
 readf,lun,dth21_m_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dq21_m_fixedRC.dat',/get_lun 
 readf,lun,dq21_m_fixedRC
close,/all
wwtg1_w_fixedRC=DBLARR(nz+1)
wwtg2_w_fixedRC=DBLARR(nz+1)
stwtg1_w_fixedRC=DBLARR(nz+1)
stwtg2_w_fixedRC=DBLARR(nz+1)
sqwtg1_w_fixedRC=DBLARR(nz+1)
sqwtg2_w_fixedRC=DBLARR(nz+1)

 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_w_fixedRC.dat',/get_lun 
 readf,lun,wwtg1_w_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg2_w_fixedRC.dat',/get_lun 
 readf,lun,wwtg2_w_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_w_fixedRC.dat',/get_lun 
 readf,lun,stwtg1_w_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg2_w_fixedRC.dat',/get_lun 
 readf,lun,stwtg2_w_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_w_fixedRC.dat',/get_lun 
 readf,lun,sqwtg1_w_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg2_w_fixedRC.dat',/get_lun 
 readf,lun,sqwtg2_w_fixedRC
close,/all
dth21_w_fixedRC=DBLARR(nz+1)
dq21_w_fixedRC=DBLARR(nz+1)
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dth21_w_fixedRC.dat',/get_lun 
 readf,lun,dth21_w_fixedRC
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dq21_w_fixedRC.dat',/get_lun 
 readf,lun,dq21_w_fixedRC
close,/all

nd=99
time_1dave=DBLARR(nd+1)
ppt1_uniSST_init2_RCE3047K=DBLARR(nt+1)
ppt2_uniSST_init2_RCE3047K=DBLARR(nt+1)
wwtg1_uniSST_init2_RCE3047K=DBLARR(nz+1,nt+1)
ppt1_1d_uniSST_init2_RCE3047K=DBLARR(nd+1)
ppt2_1d_uniSST_init2_RCE3047K=DBLARR(nd+1)
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3047K.dat',/get_lun 
 readf,lun,ppt1_uniSST_init2_RCE3047K
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_uniSST_RCE3047K.dat',/get_lun 
 readf,lun,ppt2_uniSST_init2_RCE3047K
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_1dave_uniSST_RCE3047K.dat',/get_lun 
 readf,lun,ppt1_1d_uniSST_init2_RCE3047K
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_1dave_uniSST_RCE3047K.dat',/get_lun 
 readf,lun,ppt2_1d_uniSST_init2_RCE3047K
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_uniSST_RCE3047K.dat',/get_lun 
 readf,lun,wwtg1_uniSST_init2_RCE3047K
close,/all
ppt1_uniSST=DBLARR(nt+1)
ppt2_uniSST=DBLARR(nt+1)
wwtg1_uniSST=DBLARR(nz+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA1/ppt1_uniSST.dat',/get_lun 
 readf,lun,ppt1_uniSST
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA1/ppt2_uniSST.dat',/get_lun 
 readf,lun,ppt2_uniSST
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_uniSST.dat',/get_lun 
 readf,lun,wwtg1_uniSST
close,/all
wwtg1_uniSST_init2_RCE3007K=DBLARR(nz+1,nt+1)
ppt1_1d_uniSST_init2_RCE3007K=DBLARR(nd+1)
ppt2_1d_uniSST_init2_RCE3007K=DBLARR(nd+1)
ppt1_uniSST_init2_RCE3007K=DBLARR(nt+1)
ppt2_uniSST_init2_RCE3007K=DBLARR(nt+1)
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007K.dat',/get_lun 
 readf,lun,ppt1_uniSST_init2_RCE3007K
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_uniSST_RCE3007K.dat',/get_lun 
 readf,lun,ppt2_uniSST_init2_RCE3007K
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_1dave_uniSST_RCE3007K.dat',/get_lun 
 readf,lun,ppt1_1d_uniSST_init2_RCE3007K
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_1dave_uniSST_RCE3007K.dat',/get_lun 
 readf,lun,ppt2_1d_uniSST_init2_RCE3007K
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_uniSST_RCE3007K.dat',/get_lun 
readf,lun,wwtg1_uniSST_init2_RCE3007K
close,/all

wwtg1_uniSST_init2_12_RCE3007K=DBLARR(nz+1,nt+1)
ppt1_1d_uniSST_init2_12_RCE3007K=DBLARR(nd+1)
ppt2_1d_uniSST_init2_12_RCE3007K=DBLARR(nd+1)
ppt1_uniSST_init2_12_RCE3007K=DBLARR(nt+1)
ppt2_uniSST_init2_12_RCE3007K=DBLARR(nt+1)
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_12_RCE3007K.dat',/get_lun 
 readf,lun,ppt1_uniSST_init2_12_RCE3007K
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_uniSST_12_RCE3007K.dat',/get_lun 
 readf,lun,ppt2_uniSST_init2_12_RCE3007K
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_1dave_uniSST_12_RCE3007K.dat',/get_lun 
 readf,lun,ppt1_1d_uniSST_init2_12_RCE3007K
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_1dave_uniSST_12_RCE3007K.dat',/get_lun 
 readf,lun,ppt2_1d_uniSST_init2_12_RCE3007K
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_uniSST_12_RCE3007K.dat',/get_lun 
readf,lun,wwtg1_uniSST_init2_12_RCE3007K
close,/all

wwtg1_uniSST_init2_12_RCE3047K=DBLARR(nz+1,nt+1)
ppt1_1d_uniSST_init2_12_RCE3047K=DBLARR(nd+1)
ppt2_1d_uniSST_init2_12_RCE3047K=DBLARR(nd+1)
ppt1_uniSST_init2_12_RCE3047K=DBLARR(nt+1)
ppt2_uniSST_init2_12_RCE3047K=DBLARR(nt+1)
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_12_RCE3047K.dat',/get_lun 
 readf,lun,ppt1_uniSST_init2_12_RCE3047K
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_uniSST_12_RCE3047K.dat',/get_lun 
 readf,lun,ppt2_uniSST_init2_12_RCE3047K
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_1dave_uniSST_12_RCE3047K.dat',/get_lun 
 readf,lun,ppt1_1d_uniSST_init2_12_RCE3047K
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_1dave_uniSST_12_RCE3047K.dat',/get_lun 
 readf,lun,ppt2_1d_uniSST_init2_12_RCE3047K
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_uniSST_12_RCE3047K.dat',/get_lun 
readf,lun,wwtg1_uniSST_init2_12_RCE3047K
close,/all

wwtg1_uniSST_init2_12_RCE30473007K=DBLARR(nz+1,nt+1)
ppt1_1d_uniSST_init2_12_RCE30473007K=DBLARR(nd+1)
ppt2_1d_uniSST_init2_12_RCE30473007K=DBLARR(nd+1)
ppt1_uniSST_init2_12_RCE30473007K=DBLARR(nt+1)
ppt2_uniSST_init2_12_RCE30473007K=DBLARR(nt+1)
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_12_RCE30473007K.dat',/get_lun 
 readf,lun,ppt1_uniSST_init2_12_RCE30473007K
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_uniSST_12_RCE30473007K.dat',/get_lun 
 readf,lun,ppt2_uniSST_init2_12_RCE30473007K
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_1dave_uniSST_12_RCE30473007K.dat',/get_lun 
 readf,lun,ppt1_1d_uniSST_init2_12_RCE30473007K
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_1dave_uniSST_12_RCE30473007K.dat',/get_lun 
 readf,lun,ppt2_1d_uniSST_init2_12_RCE30473007K
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_uniSST_12_RCE30473007K.dat',/get_lun 
readf,lun,wwtg1_uniSST_init2_12_RCE30473007K
close,/all



;
;uni SST sens to init conds
;
ppt1_uniSST_RCE3007_3047K_d27=DBLARR(nt+1)
ppt2_uniSST_RCE3007_3047K_d27=DBLARR(nt+1)
evap1_uniSST_RCE3007_3047K_d27=DBLARR(nt+1)
evap2_uniSST_RCE3007_3047K_d27=DBLARR(nt+1)
heat1_uniSST_RCE3007_3047K_d27=DBLARR(nt+1)
moist1_uniSST_RCE3007_3047K_d27=DBLARR(nt+1)
wwtg1_uniSST_RCE3007_3047K_d27=DBLARR(nz+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3047K_d27.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3047K_d27
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3047K_d27.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3047K_d27
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_uniSST_RCE3007_3047K_d27.dat',/get_lun 
 readf,lun,evap1_uniSST_RCE3007_3047K_d27
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_uniSST_RCE3007_3047K_d27.dat',/get_lun 
; readf,lun,evap2_uniSST_RCE3007_3047K_d27
;close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3047K_d27.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3047K_d27
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3047K_d27.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3047K_d27
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_uniSST_RCE3007_3047K_d27.dat',/get_lun 
; readf,lun,wwtg1_uniSST_RCE3007_3047K_d27
;close,/all
ppt1_uniSST_RCE3007_3047K_d23=DBLARR(nt+1)
ppt2_uniSST_RCE3007_3047K_d23=DBLARR(nt+1)
evap1_uniSST_RCE3007_3047K_d23=DBLARR(nt+1)
evap2_uniSST_RCE3007_3047K_d23=DBLARR(nt+1)
heat1_uniSST_RCE3007_3047K_d23=DBLARR(nt+1)
moist1_uniSST_RCE3007_3047K_d23=DBLARR(nt+1)
wwtg1_uniSST_RCE3007_3047K_d23=DBLARR(nz+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3047K_d23.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3047K_d23
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3047K_d23.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3047K_d23
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_uniSST_RCE3007_3047K_d23.dat',/get_lun 
 readf,lun,evap1_uniSST_RCE3007_3047K_d23
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_uniSST_RCE3007_3047K_d23.dat',/get_lun 
; readf,lun,evap2_uniSST_RCE3007_3047K_d23
;close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3047K_d23.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3047K_d23
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3047K_d23.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3047K_d23
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_uniSST_RCE3007_3047K_d23.dat',/get_lun 
; readf,lun,wwtg1_uniSST_RCE3007_3047K_d23
;close,/all
ppt1_uniSST_RCE3007_3047K_d22=DBLARR(nt+1)
ppt2_uniSST_RCE3007_3047K_d22=DBLARR(nt+1)
evap1_uniSST_RCE3007_3047K_d22=DBLARR(nt+1)
evap2_uniSST_RCE3007_3047K_d22=DBLARR(nt+1)
heat1_uniSST_RCE3007_3047K_d22=DBLARR(nt+1)
moist1_uniSST_RCE3007_3047K_d22=DBLARR(nt+1)
wwtg1_uniSST_RCE3007_3047K_d22=DBLARR(nz+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3047K_d22.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3047K_d22
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3047K_d22.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3047K_d22
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_uniSST_RCE3007_3047K_d22.dat',/get_lun 
 readf,lun,evap1_uniSST_RCE3007_3047K_d22
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_uniSST_RCE3007_3047K_d22.dat',/get_lun 
; readf,lun,evap2_uniSST_RCE3007_3047K_d22
;close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3047K_d22.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3047K_d22
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3047K_d22.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3047K_d22
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_uniSST_RCE3007_3047K_d22.dat',/get_lun 
; readf,lun,wwtg1_uniSST_RCE3007_3047K_d22
;close,/all

ppt1_uniSST_RCE3007_3047K_d18=DBLARR(nt+1)
ppt2_uniSST_RCE3007_3047K_d18=DBLARR(nt+1)
evap1_uniSST_RCE3007_3047K_d18=DBLARR(nt+1)
evap2_uniSST_RCE3007_3047K_d18=DBLARR(nt+1)
heat1_uniSST_RCE3007_3047K_d18=DBLARR(nt+1)
moist1_uniSST_RCE3007_3047K_d18=DBLARR(nt+1)
wwtg1_uniSST_RCE3007_3047K_d18=DBLARR(nz+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3047K_d18.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3047K_d18
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_uniSST_RCE3007_3047K_d18.dat',/get_lun 
 readf,lun,ppt1_uniSST_RCE3007_3047K_d18
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_uniSST_RCE3007_3047K_d18.dat',/get_lun 
 readf,lun,evap1_uniSST_RCE3007_3047K_d18
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_uniSST_RCE3007_3047K_d18.dat',/get_lun 
; readf,lun,evap2_uniSST_RCE3007_3047K_d18
;close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_uniSST_RCE3007_3047K_d18.dat',/get_lun 
 readf,lun,moist1_uniSST_RCE3007_3047K_d18
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_uniSST_RCE3007_3047K_d18.dat',/get_lun 
 readf,lun,heat1_uniSST_RCE3007_3047K_d18
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_uniSST_RCE3007_3047K_d18.dat',/get_lun 
; readf,lun,wwtg1_uniSST_RCE3007_3047K_d18
;close,/all










;
;RCE sensitivity to entrainment rates
;
th_RCE3027_fixeRC_ent09=DBLARR(nz+1)
qv_RCE3027_fixeRC_ent09=DBLARR(nz+1)
th_RCE3027_fixeRC_ent1125=DBLARR(nz+1)
qv_RCE3027_fixeRC_ent1125=DBLARR(nz+1)
th_RCE3027_fixeRC_ent135=DBLARR(nz+1)
qv_RCE3027_fixeRC_ent135=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th_mean_RCE3027_fixeRC_ent09.dat',/get_lun 
 readf,lun,th_RCE3027_fixeRC_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv_mean_RCE3027_fixeRC_ent09.dat',/get_lun 
 readf,lun,qv_RCE3027_fixeRC_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th_mean_RCE3027_fixeRC_ent1125.dat',/get_lun 
 readf,lun,th_RCE3027_fixeRC_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv_mean_RCE3027_fixeRC_ent1125.dat',/get_lun 
 readf,lun,qv_RCE3027_fixeRC_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th_mean_RCE3027_fixeRC_ent135.dat',/get_lun 
 readf,lun,th_RCE3027_fixeRC_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv_mean_RCE3027_fixeRC_ent135.dat',/get_lun 
 readf,lun,qv_RCE3027_fixeRC_ent135
close,/all

th_RCE3047_fixeRC_ent09=DBLARR(nz+1)
qv_RCE3047_fixeRC_ent09=DBLARR(nz+1)
th_RCE3047_fixeRC_ent1125=DBLARR(nz+1)
qv_RCE3047_fixeRC_ent1125=DBLARR(nz+1)
th_RCE3047_fixeRC_ent135=DBLARR(nz+1)
qv_RCE3047_fixeRC_ent135=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th_mean_RCE3047_fixeRC_ent09.dat',/get_lun 
 readf,lun,th_RCE3047_fixeRC_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv_mean_RCE3047_fixeRC_ent09.dat',/get_lun 
 readf,lun,qv_RCE3047_fixeRC_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th_mean_RCE3047_fixeRC_ent1125.dat',/get_lun 
 readf,lun,th_RCE3047_fixeRC_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv_mean_RCE3047_fixeRC_ent1125.dat',/get_lun 
 readf,lun,qv_RCE3047_fixeRC_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th_mean_RCE3047_fixeRC_ent135.dat',/get_lun 
 readf,lun,th_RCE3047_fixeRC_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv_mean_RCE3047_fixeRC_ent135.dat',/get_lun 
 readf,lun,qv_RCE3047_fixeRC_ent135
close,/all


;sensitivity to the CAPE time scale
;

ppt1_rem_20d_ent09_cape900=DBLARR(nt+1)
ppt1_rem_20d_ent09_cape1800=DBLARR(nt+1)
ppt1_rem_20d_ent09_cape3600=DBLARR(nt+1)
ppt1_rem_20d_ent09_cape7200=DBLARR(nt+1)
ppt1_rem_20d_ent09_cape14400=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_ent09_cape900.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent09_cape900
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_ent09_cape1800.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent09_cape1800
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_ent09_cape3600.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent09_cape3600
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_ent09_cape7200.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent09_cape7200
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_ent09_cape14400.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent09_cape14400
close,/all


ppt1_loc_20d_ent09_cape900=DBLARR(nt+1);
ppt1_loc_20d_ent09_cape1800=DBLARR(nt+1)
ppt1_loc_20d_ent09_cape3600=DBLARR(nt+1)
ppt1_loc_20d_ent09_cape7200=DBLARR(nt+1)
ppt1_loc_20d_ent09_cape14400=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_20d_ent09_cape900.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent09_cape900
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_lo_20d_ent09_cape1800.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent09_cape1800
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_lo_20d_ent09_cape3600.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent09_cape3600
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_lo_20d_ent09_cape7200.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent09_cape7200
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_lo_20d_ent09_cape14400.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent09_cape14400
close,/all

ppt1_loc_20d_ent09_cape1800_mean=DBLARR(nt+1)
ppt1_loc_20d_ent09_cape900_mean=DBLARR(nt+1)
ppt1_loc_20d_ent09_cape3600_mean=DBLARR(nt+1)
ppt1_loc_20d_ent09_cape7200_mean=DBLARR(nt+1)
ppt1_loc_20d_ent09_cape14400_mean=DBLARR(nt+1)
ppt1_loc_20d_ent09_cape900_mean=ppt1_loc_20d_ent09_cape900(2016:12816)
ppt1_loc_20d_ent09_cape1800_mean=ppt1_loc_20d_ent09_cape1800(2016:12816)
ppt1_loc_20d_ent09_cape3600_mean=ppt1_loc_20d_ent09_cape3600(2016:12816)
ppt1_loc_20d_ent09_cape7200_mean=ppt1_loc_20d_ent09_cape7200(2016:12816)
ppt1_loc_20d_ent09_cape14400_mean=ppt1_loc_20d_ent09_cape14400(2016:12816)

ppt1_rem_20d_ent09_cape900_mean=DBLARR(nt+1)
ppt1_rem_20d_ent09_cape1800_mean=DBLARR(nt+1)
ppt1_rem_20d_ent09_cape3600_mean=DBLARR(nt+1)
ppt1_rem_20d_ent09_cape7200_mean=DBLARR(nt+1)
ppt1_rem_20d_ent09_cape14400_mean=DBLARR(nt+1)
ppt1_rem_20d_ent09_cape900_mean=ppt1_rem_20d_ent09_cape900(2016:12816)
ppt1_rem_20d_ent09_cape1800_mean=ppt1_rem_20d_ent09_cape1800(2016:12816)
ppt1_rem_20d_ent09_cape3600_mean=ppt1_rem_20d_ent09_cape3600(2016:12816)
ppt1_rem_20d_ent09_cape7200_mean=ppt1_rem_20d_ent09_cape7200(2016:12816)
ppt1_rem_20d_ent09_cape14400_mean=ppt1_rem_20d_ent09_cape14400(2016:12816)



z_bl1_loc_mean=DBLARR(n_tr+1)
cl_top1_loc_mean=DBLARR(n_tr+1)
z_bl2_loc_mean=DBLARR(n_tr+1)
evap1_loc_mean=DBLARR(n_tr+1)
moist1_loc_mean=DBLARR(n_tr+1)
heat1_loc_mean=DBLARR(n_tr+1)
evap2_loc_mean=DBLARR(n_tr+1)
moist2_loc_mean=DBLARR(n_tr+1)
heat2_loc_mean=DBLARR(n_tr+1)
qv1_loc_mean=DBLARR(nz+1,n_tr+1)
rh1_loc_mean=DBLARR(nz+1,n_tr+1)
stwtg1_loc_mean=DBLARR(nz+1,n_tr+1)
conv1_loc_mean=DBLARR(nz+1,n_tr+1)
qv2_loc_mean=DBLARR(nz+1,n_tr+1)
conv2_loc_mean=DBLARR(nz+1,n_tr+1)
dpre_mean=dblarr(nz+1)
dhei_mean=dblarr(nz+1)
cwv1_loc_mean=dblarr(n_tr+1)
cwv2_loc_mean=dblarr(n_tr+1)
ppt1_loc_20d=DBLARR(nt+1)
ppt1_loc_22d=DBLARR(nt+1)
ppt1_loc_24d=DBLARR(nt+1)
ppt1_loc_26d=DBLARR(nt+1)
ppt1_loc_28d=DBLARR(nt+1)
ppt2_loc_mean=DBLARR(n_tr+1)
ppt1_loc_mean=DBLARR(n_tr+1)
wwtg1_loc_mean=DBLARR(nz+1,n_tr+1)
ppt1_loc_min=DBLARR(n_tr+1)
ppt1_loc_max=DBLARR(n_tr+1)
ppt1_loc_rem_min=DBLARR(n_tr+1)
ppt1_loc_rem_max=DBLARR(n_tr+1)
ppt1_rem_min=DBLARR(n_tr+1)
ppt1_rem_max=DBLARR(n_tr+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_loc_mean.dat',/get_lun 
 readf,lun,wwtg1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_20d.dat',/get_lun 
 readf,lun,ppt1_loc_20d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_22d.dat',/get_lun 
 readf,lun,ppt1_loc_22d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_24d.dat',/get_lun 
 readf,lun,ppt1_loc_24d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_26d.dat',/get_lun 
 readf,lun,ppt1_loc_26d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_28d.dat',/get_lun 
 readf,lun,ppt1_loc_28d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_mean.dat',/get_lun 
 readf,lun,evap1_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_loc_mean.dat',/get_lun 
 readf,lun,moist1_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_mean.dat',/get_lun 
 readf,lun,heat1_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl1_loc_mean.dat',/get_lun 
 readf,lun,z_bl1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv1_loc_mean.dat',/get_lun 
 readf,lun,qv1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_loc_mean.dat',/get_lun 
 readf,lun,rh1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv1_loc_mean.dat',/get_lun 
 readf,lun,conv1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_loc_mean.dat',/get_lun 
 readf,lun,stwtg1_loc_mean
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_loc_mean.dat',/get_lun 
 readf,lun,ppt2_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_loc_mean.dat',/get_lun 
 readf,lun,evap2_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_loc_mean.dat',/get_lun 
 readf,lun,moist2_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_loc_mean.dat',/get_lun 
 readf,lun,heat2_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl2_loc_mean.dat',/get_lun 
 readf,lun,z_bl2_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv2_loc_mean.dat',/get_lun 
 readf,lun,qv2_loc_mean
close,/all
;
;transition remote
;
z_bl1_rem_mean=DBLARR(n_tr+1)
z_bl2_rem_mean=DBLARR(n_tr+1)
evap1_rem_mean=DBLARR(n_tr+1)
moist1_rem_mean=DBLARR(n_tr+1)
heat1_rem_mean=DBLARR(n_tr+1)
evap2_rem_mean=DBLARR(n_tr+1)
moist2_rem_mean=DBLARR(n_tr+1)
heat2_rem_mean=DBLARR(n_tr+1)
qv1_rem_mean=DBLARR(nz+1,n_tr+1)
stwtg1_rem_mean=DBLARR(nz+1,n_tr+1)
conv1_rem_mean=DBLARR(nz+1,n_tr+1)
qv2_rem_mean=DBLARR(nz+1,n_tr+1)
conv2_rem_mean=DBLARR(nz+1,n_tr+1)
dpre_mean=dblarr(nz+1)
dhei_mean=dblarr(nz+1)
cwv1_rem_mean=dblarr(n_tr+1)
cwv2_rem_mean=dblarr(n_tr+1)
ppt1_rem_20d=DBLARR(nt+1)
ppt1_rem_22d=DBLARR(nt+1)
ppt1_rem_24d=DBLARR(nt+1)
ppt1_rem_26d=DBLARR(nt+1)
ppt1_rem_28d=DBLARR(nt+1)
ppt2_rem_mean=DBLARR(n_tr+1)
ppt1_rem_mean=DBLARR(n_tr+1)
wwtg1_rem_mean=DBLARR(nz+1,n_tr+1)




openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_rem_mean.dat',/get_lun 
 readf,lun,wwtg1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d.dat',/get_lun 
 readf,lun,ppt1_rem_20d
close,/all

 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_22d.dat',/get_lun 
 readf,lun,ppt1_rem_22d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_24d.dat',/get_lun 
 readf,lun,ppt1_rem_24d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_26d.dat',/get_lun 
 readf,lun,ppt1_rem_26d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_28d.dat',/get_lun 
 readf,lun,ppt1_rem_28d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_rem_mean.dat',/get_lun 
 readf,lun,evap1_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_rem_mean.dat',/get_lun 
 readf,lun,moist1_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_rem_mean.dat',/get_lun 
 readf,lun,heat1_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl1_rem_mean.dat',/get_lun 
 readf,lun,z_bl1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv1_rem_mean.dat',/get_lun 
 readf,lun,qv1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv1_rem_mean.dat',/get_lun 
 readf,lun,conv1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_rem_mean.dat',/get_lun 
 readf,lun,stwtg1_rem_mean
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_rem_mean.dat',/get_lun 
 readf,lun,ppt2_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_rem_mean.dat',/get_lun 
 readf,lun,evap2_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_rem_mean.dat',/get_lun 
 readf,lun,moist2_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_rem_mean.dat',/get_lun 
 readf,lun,heat2_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl2_rem_mean.dat',/get_lun 
 readf,lun,z_bl2_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv2_rem_mean.dat',/get_lun 
 readf,lun,qv2_rem_mean
close,/all
;
;transition local+remote
;

evap1_loc_rem_mean=DBLARR(n_tr+1)
moist1_loc_rem_mean=DBLARR(n_tr+1)
heat1_loc_rem_mean=DBLARR(n_tr+1)
evap2_loc_rem_mean=DBLARR(n_tr+1)
moist2_loc_rem_mean=DBLARR(n_tr+1)
heat2_loc_rem_mean=DBLARR(n_tr+1)
qv1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
rh1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
stwtg1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
conv1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
qv2_loc_rem_mean=DBLARR(nz+1,n_tr+1)
conv2_loc_rem_mean=DBLARR(nz+1,n_tr+1)
dpre_mean=dblarr(nz+1)
dhei_mean=dblarr(nz+1)
cwv1_loc_mean=dblarr(n_tr+1)
cwv2_loc_mean=dblarr(n_tr+1)
cwv1_loc_rem_mean=dblarr(n_tr+1)
cwv2_loc_rem_mean=dblarr(n_tr+1)
cwv1_rem_mean=dblarr(n_tr+1)
cwv2_rem_mean=dblarr(n_tr+1)
ppt1_loc_rem_20d=DBLARR(nt+1)
ppt1_loc_rem_22d=DBLARR(nt+1)
ppt1_loc_rem_24d=DBLARR(nt+1)
ppt1_loc_rem_26d=DBLARR(nt+1)
ppt1_loc_rem_28d=DBLARR(nt+1)
ppt2_loc_rem_mean=DBLARR(n_tr+1)
ppt1_loc_rem_mean=DBLARR(n_tr+1)
wwtg1_loc_rem_mean=DBLARR(nz+1,n_tr+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_loc_rem_mean.dat',/get_lun 
 readf,lun,wwtg1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_20d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_20d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_22d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_22d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_24d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_24d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_26d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_26d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_28d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_28d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_rem_mean.dat',/get_lun 
 readf,lun,evap1_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_loc_rem_mean.dat',/get_lun 
 readf,lun,moist1_loc_rem_mean
close,/all
; openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_rem_mean.dat',/get_lun 
; readf,lun,heat1_loc_rem_mean
;close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl1_loc_rem_mean.dat',/get_lun 
 readf,lun,z_bl1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv1_loc_rem_mean.dat',/get_lun 
 readf,lun,qv1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv1_loc_rem_mean.dat',/get_lun 
 readf,lun,conv1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_loc_rem_mean.dat',/get_lun 
 readf,lun,stwtg1_loc_rem_mean
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_loc_rem_mean.dat',/get_lun 
 readf,lun,ppt2_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_loc_rem_mean.dat',/get_lun 
 readf,lun,evap2_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_loc_rem_mean.dat',/get_lun 
 readf,lun,moist2_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_loc_rem_mean.dat',/get_lun 
 readf,lun,heat2_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl2_loc_rem_mean.dat',/get_lun 
 readf,lun,z_bl2_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv2_loc_rem_mean.dat',/get_lun 
 readf,lun,qv2_loc_rem_mean
close,/all
heat1_loc_rem_mean=-heat2_loc_rem_mean

;
;normal transition experiments 1-3,F=0.9
;
z_bl1_loc_mean=DBLARR(n_tr+1)
z_bl2_loc_mean=DBLARR(n_tr+1)
evap1_loc_mean=DBLARR(n_tr+1)
moist1_loc_mean=DBLARR(n_tr+1)
heat1_loc_mean=DBLARR(n_tr+1)
evap2_loc_mean=DBLARR(n_tr+1)
moist2_loc_mean=DBLARR(n_tr+1)
heat2_loc_mean=DBLARR(n_tr+1)
qv1_loc_mean=DBLARR(nz+1,n_tr+1)
rh1_loc_mean=DBLARR(nz+1,n_tr+1)
stwtg1_loc_mean=DBLARR(nz+1,n_tr+1)
conv1_loc_mean=DBLARR(nz+1,n_tr+1)
qv2_loc_mean=DBLARR(nz+1,n_tr+1)
conv2_loc_mean=DBLARR(nz+1,n_tr+1)
dpre_mean=dblarr(nz+1)
dhei_mean=dblarr(nz+1)
cwv1_loc_mean=dblarr(n_tr+1)
cwv2_loc_mean=dblarr(n_tr+1)
ppt1_loc_20d=DBLARR(nt+1)
ppt1_loc_22d=DBLARR(nt+1)
ppt1_loc_24d=DBLARR(nt+1)
ppt1_loc_26d=DBLARR(nt+1)
ppt1_loc_28d=DBLARR(nt+1)
ppt2_loc_mean=DBLARR(n_tr+1)
ppt1_loc_mean=DBLARR(n_tr+1)
wwtg1_loc_mean=DBLARR(nz+1,n_tr+1)
ppt1_loc_min=DBLARR(n_tr+1)
ppt1_loc_max=DBLARR(n_tr+1)
ppt1_loc_rem_min=DBLARR(n_tr+1)
ppt1_loc_rem_max=DBLARR(n_tr+1)
ppt1_rem_min=DBLARR(n_tr+1)
ppt1_rem_max=DBLARR(n_tr+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_loc_mean.dat',/get_lun 
 readf,lun,wwtg1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_20d.dat',/get_lun 
 readf,lun,ppt1_loc_20d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_22d.dat',/get_lun 
 readf,lun,ppt1_loc_22d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_24d.dat',/get_lun 
 readf,lun,ppt1_loc_24d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_26d.dat',/get_lun 
 readf,lun,ppt1_loc_26d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_28d.dat',/get_lun 
 readf,lun,ppt1_loc_28d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_mean.dat',/get_lun 
 readf,lun,evap1_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_loc_mean.dat',/get_lun 
 readf,lun,moist1_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_mean.dat',/get_lun 
 readf,lun,heat1_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl1_loc_mean.dat',/get_lun 
 readf,lun,z_bl1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv1_loc_mean.dat',/get_lun 
 readf,lun,qv1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_loc_mean.dat',/get_lun 
 readf,lun,rh1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv1_loc_mean.dat',/get_lun 
 readf,lun,conv1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_loc_mean.dat',/get_lun 
 readf,lun,stwtg1_loc_mean
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_loc_mean.dat',/get_lun 
 readf,lun,ppt2_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_loc_mean.dat',/get_lun 
 readf,lun,evap2_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_loc_mean.dat',/get_lun 
 readf,lun,moist2_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_loc_mean.dat',/get_lun 
 readf,lun,heat2_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl2_loc_mean.dat',/get_lun 
 readf,lun,z_bl2_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv2_loc_mean.dat',/get_lun 
 readf,lun,qv2_loc_mean
close,/all
;
;transition remote
;
z_bl1_rem_mean=DBLARR(n_tr+1)
z_bl2_rem_mean=DBLARR(n_tr+1)
evap1_rem_mean=DBLARR(n_tr+1)
moist1_rem_mean=DBLARR(n_tr+1)
heat1_rem_mean=DBLARR(n_tr+1)
evap2_rem_mean=DBLARR(n_tr+1)
moist2_rem_mean=DBLARR(n_tr+1)
heat2_rem_mean=DBLARR(n_tr+1)
qv1_rem_mean=DBLARR(nz+1,n_tr+1)
stwtg1_rem_mean=DBLARR(nz+1,n_tr+1)
conv1_rem_mean=DBLARR(nz+1,n_tr+1)
qv2_rem_mean=DBLARR(nz+1,n_tr+1)
conv2_rem_mean=DBLARR(nz+1,n_tr+1)
dpre_mean=dblarr(nz+1)
dhei_mean=dblarr(nz+1)
cwv1_rem_mean=dblarr(n_tr+1)
cwv2_rem_mean=dblarr(n_tr+1)
ppt1_rem_20d=DBLARR(nt+1)
ppt1_rem_22d=DBLARR(nt+1)
ppt1_rem_24d=DBLARR(nt+1)
ppt1_rem_26d=DBLARR(nt+1)
ppt1_rem_28d=DBLARR(nt+1)
ppt2_rem_mean=DBLARR(n_tr+1)
ppt1_rem_mean=DBLARR(n_tr+1)
wwtg1_rem_mean=DBLARR(nz+1,n_tr+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_rem_mean.dat',/get_lun 
 readf,lun,wwtg1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d.dat',/get_lun 
 readf,lun,ppt1_rem_20d
close,/all


 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_22d.dat',/get_lun 
 readf,lun,ppt1_rem_22d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_24d.dat',/get_lun 
 readf,lun,ppt1_rem_24d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_26d.dat',/get_lun 
 readf,lun,ppt1_rem_26d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_28d.dat',/get_lun 
 readf,lun,ppt1_rem_28d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_rem_mean.dat',/get_lun 
 readf,lun,evap1_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_rem_mean.dat',/get_lun 
 readf,lun,moist1_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_rem_mean.dat',/get_lun 
 readf,lun,heat1_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl1_rem_mean.dat',/get_lun 
 readf,lun,z_bl1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv1_rem_mean.dat',/get_lun 
 readf,lun,qv1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv1_rem_mean.dat',/get_lun 
 readf,lun,conv1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_rem_mean.dat',/get_lun 
 readf,lun,stwtg1_rem_mean
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_rem_mean.dat',/get_lun 
 readf,lun,ppt2_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_rem_mean.dat',/get_lun 
 readf,lun,evap2_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_rem_mean.dat',/get_lun 
 readf,lun,moist2_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_rem_mean.dat',/get_lun 
 readf,lun,heat2_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl2_rem_mean.dat',/get_lun 
 readf,lun,z_bl2_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv2_rem_mean.dat',/get_lun 
 readf,lun,qv2_rem_mean
close,/all
;
;transition local+remote
;

evap1_loc_rem_mean=DBLARR(n_tr+1)
moist1_loc_rem_mean=DBLARR(n_tr+1)
heat1_loc_rem_mean=DBLARR(n_tr+1)
evap2_loc_rem_mean=DBLARR(n_tr+1)
moist2_loc_rem_mean=DBLARR(n_tr+1)
heat2_loc_rem_mean=DBLARR(n_tr+1)
qv1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
rh1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
stwtg1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
conv1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
qv2_loc_rem_mean=DBLARR(nz+1,n_tr+1)
conv2_loc_rem_mean=DBLARR(nz+1,n_tr+1)
dpre_mean=dblarr(nz+1)
dhei_mean=dblarr(nz+1)
cwv1_loc_mean=dblarr(n_tr+1)
cwv2_loc_mean=dblarr(n_tr+1)
cwv1_loc_rem_mean=dblarr(n_tr+1)
cwv2_loc_rem_mean=dblarr(n_tr+1)
cwv1_rem_mean=dblarr(n_tr+1)
cwv2_rem_mean=dblarr(n_tr+1)
ppt1_loc_rem_20d=DBLARR(nt+1)
ppt1_loc_rem_22d=DBLARR(nt+1)
ppt1_loc_rem_24d=DBLARR(nt+1)
ppt1_loc_rem_26d=DBLARR(nt+1)
ppt1_loc_rem_28d=DBLARR(nt+1)
ppt2_loc_rem_mean=DBLARR(n_tr+1)
ppt1_loc_rem_mean=DBLARR(n_tr+1)
wwtg1_loc_rem_mean=DBLARR(nz+1,n_tr+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_loc_rem_mean.dat',/get_lun 
 readf,lun,wwtg1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_20d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_20d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_22d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_22d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_24d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_24d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_26d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_26d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_28d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_28d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_rem_mean.dat',/get_lun 
 readf,lun,evap1_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_loc_rem_mean.dat',/get_lun 
 readf,lun,moist1_loc_rem_mean
close,/all
; openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_rem_mean.dat',/get_lun 
; readf,lun,heat1_loc_rem_mean
;close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl1_loc_rem_mean.dat',/get_lun 
 readf,lun,z_bl1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv1_loc_rem_mean.dat',/get_lun 
 readf,lun,qv1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv1_loc_rem_mean.dat',/get_lun 
 readf,lun,conv1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_loc_rem_mean.dat',/get_lun 
 readf,lun,stwtg1_loc_rem_mean
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_loc_rem_mean.dat',/get_lun 
 readf,lun,ppt2_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_loc_rem_mean.dat',/get_lun 
 readf,lun,evap2_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_loc_rem_mean.dat',/get_lun 
 readf,lun,moist2_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_loc_rem_mean.dat',/get_lun 
 readf,lun,heat2_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl2_loc_rem_mean.dat',/get_lun 
 readf,lun,z_bl2_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv2_loc_rem_mean.dat',/get_lun 
 readf,lun,qv2_loc_rem_mean
close,/all
heat1_loc_rem_mean=-heat2_loc_rem_mean
;
;
;









dconv1_loc_20d_ent1125=DBLARR(nz+1,nt+1)
dconv1_loc_20d_ent09=DBLARR(nz+1,nt+1)
dconv1_loc_20d_ent135=DBLARR(nz+1,nt+1)
dtconv1_loc_20d_ent1125=DBLARR(nz+1,nt+1)
dtconv1_loc_20d_ent09=DBLARR(nz+1,nt+1)
rh1_loc_20d_ent09=DBLARR(nz+1,nt+1)
dtall1_loc_20d_ent09=DBLARR(nz+1,nt+1)
sthwtg1_loc_20d_ent09=DBLARR(nz+1,nt+1)
sqwtg1_loc_20d_ent09=DBLARR(nz+1,nt+1)

dconv1_rem_20d_ent09=DBLARR(nz+1,nt+1)
dtconv1_rem_20d_ent09=DBLARR(nz+1,nt+1)
dtconv1_rem_20d_ent09=DBLARR(nz+1,nt+1)
rh1_rem_20d_ent09=DBLARR(nz+1,nt+1)
dtall1_rem_20d_ent09=DBLARR(nz+1,nt+1)
sthwtg1_rem_20d_ent09=DBLARR(nz+1,nt+1)
sqwtg1_rem_20d_ent09=DBLARR(nz+1,nt+1)
dtconv1_rem_20d_ent089=DBLARR(nz+1,nt+1)




dtconv1_loc_20d_ent135=DBLARR(nz+1,nt+1)
rh1_loc_20d_ent135=DBLARR(nz+1,nt+1)
dtall1_loc_20d_ent135=DBLARR(nz+1,nt+1)
sthwtg1_loc_20d_ent135=DBLARR(nz+1,nt+1)
sqwtg1_loc_20d_ent135=DBLARR(nz+1,nt+1)
sqwtg1_loc_20d_ent09=DBLARR(nz+1,nt+1)

dtconv1_rem_20d_ent135=DBLARR(nz+1,nt+1)
dconv1_rem_20d_ent135=DBLARR(nz+1,nt+1)
rh1_rem_20d_ent135=DBLARR(nz+1,nt+1)
dtall1_rem_20d_ent135=DBLARR(nz+1,nt+1)
sthwtg1_rem_20d_ent135=DBLARR(nz+1,nt+1)
sqwtg1_rem_20d_ent135=DBLARR(nz+1,nt+1)
dqall1_rem_20d_ent09=DBLARR(nz+1,nt+1)
theta1_loc_20d_ent135=DBLARR(nz+1,nt+1)
theta1_loc_20d_ent09=DBLARR(nz+1,nt+1)
up_mf1_loc_20d_ent135=DBLARR(nz+1,nt+1)
cl_top1_loc_20d_ent135=DBLARR(nt+1)
up_mf1_loc_20d_ent09=DBLARR(nz+1,nt+1)
cl_top1_loc_20d_ent09=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta1_lo_20d_ent09.dat',/get_lun 
 readf,lun,theta1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/up_mf1_lo_20d_ent135.dat',/get_lun 
 readf,lun,up_mf1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/up_mf1_lo_20d_ent09.dat',/get_lun 
 readf,lun,up_mf1_loc_20d_ent09
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl1_lo_20d_ent09.dat',/get_lun 
 ;readf,lun,cl_top1_loc_20d_ent09
;close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl1_lo_20d_ent135.dat',/get_lun 
; readf,lun,cl_top1_loc_20d_ent135
;close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta1_lo_20d_ent135.dat',/get_lun 
 readf,lun,theta1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dconv1_lo_20d_ent1125.dat',/get_lun 
 readf,lun,dconv1_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtconv1_lo_20d_ent1125.dat',/get_lun 
 readf,lun,dtconv1_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dconv1_lo_20d_ent09.dat',/get_lun 
 readf,lun,dconv1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtconv1_lo_20d_ent09.dat',/get_lun 
 readf,lun,dtconv1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_lo_20d_ent09.dat',/get_lun 
 readf,lun,sthwtg1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_lo_20d_ent09.dat',/get_lun 
 readf,lun,dtall1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_lo_20d_ent09.dat',/get_lun 
 readf,lun,rh1_loc_20d_ent09
close,/all
;;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_lo_20d_ent09.dat',/get_lun 
;;; readf,lun,sqwtg1_loc_20d_ent09
;;;close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dconv1_rem_20d_ent09.dat',/get_lun 
 readf,lun,dconv1_rem_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtconv1_rem_20d_ent09.dat',/get_lun 
 readf,lun,dtconv1_rem_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_rem_20d_ent09.dat',/get_lun 
 readf,lun,sthwtg1_rem_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_rem_20d_ent09.dat',/get_lun 
 readf,lun,dtall1_rem_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_rem_20d_ent09.dat',/get_lun 
 readf,lun,rh1_rem_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_rem_20d_ent09.dat',/get_lun 
 readf,lun,sqwtg1_rem_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_rem_20d_ent09.dat',/get_lun 
 readf,lun,dqall1_rem_20d_ent09
close,/all
;
;local F=1.35
;

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dconv1_lo_20d_ent135.dat',/get_lun 
 readf,lun,dconv1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtconv1_lo_20d_ent135.dat',/get_lun 
 readf,lun,dtconv1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_lo_20d_ent135.dat',/get_lun 
 readf,lun,sthwtg1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_lo_20d_ent135.dat',/get_lun 
 readf,lun,dtall1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_lo_20d_ent135.dat',/get_lun 
 readf,lun,rh1_loc_20d_ent135
close,/all
;;;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_lo_20d_ent135.dat',/get_lun 
;;; readf,lun,sqwtg1_loc_20d_ent135
;;;close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dconv1_rem_20d_ent135.dat',/get_lun 
 readf,lun,dconv1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtconv1_rem_20d_ent135.dat',/get_lun 
 readf,lun,dtconv1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_rem_20d_ent135.dat',/get_lun 
 readf,lun,sthwtg1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_rem_20d_ent135.dat',/get_lun 
 readf,lun,dtall1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_rem_20d_ent135.dat',/get_lun 
 readf,lun,rh1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_rem_20d_ent135.dat',/get_lun 
 readf,lun,sqwtg1_rem_20d_ent135
close,/all

;
;REMOTE F=1.35
;

wwtg1_w_20d_ent135=DBLARR(nz+1)
th2_w_20d_ent135=DBLARR(nz+1)
th1_w_20d_ent135=DBLARR(nz+1)
q2_w_20d_ent135=DBLARR(nz+1)
q1_w_20d_ent135=DBLARR(nz+1)
dtall1_rem_20d_ent135=DBLARR(nz+1,nt+1)
rh1_rem_20d_ent135=DBLARR(nz+1,nt+1)
sthwtg1_rem_20d_ent135=DBLARR(nz+1,nt+1)
sqwtg1_rem_20d_ent135=DBLARR(nz+1,nt+1)
dqall1_rem_20d_ent135=DBLARR(nz+1,nt+1)
ppt1_rem_20d_ent135=DBLARR(nt+1)
ppt2_rem_20d_ent135=DBLARR(nt+1)
evap1_rem_20d_ent135=DBLARR(nt+1)
evap2_rem_20d_ent135=DBLARR(nt+1)
moist1_rem_20d_ent135=DBLARR(nt+1)
moist2_rem_20d_ent135=DBLARR(nt+1)
heat1_rem_20d_ent135=DBLARR(nt+1)
heat2_rem_20d_ent135=DBLARR(nt+1)
dth21_w_20d_ent135=DBLARR(nz+1)
dth21_c_20d_ent135=DBLARR(nz+1)
dth21_m_20d_ent135=DBLARR(nz+1)
dq21_w_20d_ent135=DBLARR(nz+1)
dq21_c_20d_ent135=DBLARR(nz+1)
dq21_m_20d_ent135=DBLARR(nz+1)


rh2_w_20d_ent135=DBLARR(nz+1)
rh1_w_20d_ent135=DBLARR(nz+1)
drh21_w_20d_ent135=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh2_w_20d_ent135.dat',/get_lun 
 readf,lun,rh2_w_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_w_20d_ent135.dat',/get_lun 
 readf,lun,rh1_w_20d_ent135
close,/all
drh21_w_20d_ent135=rh2_w_20d_ent135-rh1_w_20d_ent135
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_w_20d_ent135.dat',/get_lun 
 readf,lun,wwtg1_w_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_w_20d_ent135.dat',/get_lun 
 readf,lun,th2_w_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_w_20d_ent135.dat',/get_lun 
 readf,lun,th1_w_20d_ent135
close,/all
dth21_w_20d_ent135=th2_w_20d_ent135-th1_w_20d_ent135
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_w_20d_ent135.dat',/get_lun 
 readf,lun,q2_w_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_w_20d_ent135.dat',/get_lun 
 readf,lun,q1_w_20d_ent135
close,/all
dq21_w_20d_ent135=q2_w_20d_ent135-q1_w_20d_ent135
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_rem_20d_ent135.dat',/get_lun 
 readf,lun,dtall1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_rem_20d_ent135.dat',/get_lun 
 readf,lun,rh1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_rem_20d_ent135.dat',/get_lun 
 readf,lun,sthwtg1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_rem_20d_ent135.dat',/get_lun 
 readf,lun,sqwtg1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_rem_20d_ent135.dat',/get_lun 
 readf,lun,dqall1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_ent135.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_rem_20d_ent135.dat',/get_lun 
 readf,lun,ppt2_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_rem_20d_ent135.dat',/get_lun 
 readf,lun,evap1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_rem_20d_ent135.dat',/get_lun 
 readf,lun,evap2_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_rem_20d_ent135.dat',/get_lun 
 readf,lun,moist1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_rem_20d_ent135.dat',/get_lun 
 readf,lun,moist2_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_rem_20d_ent135.dat',/get_lun 
 readf,lun,heat1_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_rem_20d_ent135.dat',/get_lun 
 readf,lun,heat2_rem_20d_ent135
close,/all
;
;REMOTE F=NEW
;

wwtg1_w_20d_entNEW=DBLARR(nz+1)
th2_w_20d_entNEW=DBLARR(nz+1)
th1_w_20d_entNEW=DBLARR(nz+1)
q2_w_20d_entNEW=DBLARR(nz+1)
q1_w_20d_entNEW=DBLARR(nz+1)
dtall1_rem_20d_entNEW=DBLARR(nz+1,nt+1)
rh1_rem_20d_entNEW=DBLARR(nz+1,nt+1)
sthwtg1_rem_20d_entNEW=DBLARR(nz+1,nt+1)
sqwtg1_rem_20d_entNEW=DBLARR(nz+1,nt+1)
dqall1_rem_20d_entNEW=DBLARR(nz+1,nt+1)
ppt1_rem_20d_entNEW=DBLARR(nt+1)
ppt2_rem_20d_entNEW=DBLARR(nt+1)
evap1_rem_20d_entNEW=DBLARR(nt+1)
evap2_rem_20d_entNEW=DBLARR(nt+1)
moist1_rem_20d_entNEW=DBLARR(nt+1)
moist2_rem_20d_entNEW=DBLARR(nt+1)
heat1_rem_20d_entNEW=DBLARR(nt+1)
heat2_rem_20d_entNEW=DBLARR(nt+1)
dth21_w_20d_entNEW=DBLARR(nz+1)
dth21_c_20d_entNEW=DBLARR(nz+1)
dth21_m_20d_entNEW=DBLARR(nz+1)
dq21_w_20d_entNEW=DBLARR(nz+1)
dq21_c_20d_entNEW=DBLARR(nz+1)
dq21_m_20d_entNEW=DBLARR(nz+1)
dtconv1_rem_20d_entNEW=DBLARR(nz+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_w_20d_entNEW.dat',/get_lun 
 readf,lun,wwtg1_w_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_w_20d_entNEW.dat',/get_lun 
 readf,lun,th2_w_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_w_20d_entNEW.dat',/get_lun 
 readf,lun,th1_w_20d_entNEW
close,/all
dth21_w_20d_entNEW=th2_w_20d_entNEW-th1_w_20d_entNEW
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_w_20d_entNEW.dat',/get_lun 
 readf,lun,q2_w_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_w_20d_entNEW.dat',/get_lun 
 readf,lun,q1_w_20d_entNEW
close,/all
dq21_w_20d_entNEW=q2_w_20d_entNEW-q1_w_20d_entNEW
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_rem_20d_entNEW.dat',/get_lun 
 readf,lun,dtall1_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtconv1_rem_20d_entNEW.dat',/get_lun 
 readf,lun,dtconv1_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_rem_20d_entNEW.dat',/get_lun 
 readf,lun,rh1_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_rem_20d_entNEW.dat',/get_lun 
 readf,lun,sthwtg1_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_rem_20d_entNEW.dat',/get_lun 
 readf,lun,sqwtg1_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_rem_20d_entNEW.dat',/get_lun 
 readf,lun,dqall1_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_entNEW.dat',/get_lun 
 readf,lun,ppt1_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_rem_20d_entNEW.dat',/get_lun 
 readf,lun,ppt2_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_rem_20d_entNEW.dat',/get_lun 
 readf,lun,evap1_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_rem_20d_entNEW.dat',/get_lun 
 readf,lun,evap2_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_rem_20d_entNEW.dat',/get_lun 
 readf,lun,moist1_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_rem_20d_entNEW.dat',/get_lun 
 readf,lun,moist2_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_rem_20d_entNEW.dat',/get_lun 
 readf,lun,heat1_rem_20d_entNEW
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_rem_20d_entNEW.dat',/get_lun 
 readf,lun,heat2_rem_20d_entNEW
close,/all

;
;REMOTE F=1.125
;

wwtg1_w_20d_ent1125=DBLARR(nz+1)
th2_w_20d_ent1125=DBLARR(nz+1)
th1_w_20d_ent1125=DBLARR(nz+1)
q2_w_20d_ent1125=DBLARR(nz+1)
q1_w_20d_ent1125=DBLARR(nz+1)
dtall1_rem_20d_ent1125=DBLARR(nz+1,nt+1)
rh1_rem_20d_ent1125=DBLARR(nz+1,nt+1)
sthwtg1_rem_20d_ent1125=DBLARR(nz+1,nt+1)
sqwtg1_rem_20d_ent1125=DBLARR(nz+1,nt+1)
dqall1_rem_20d_ent1125=DBLARR(nz+1,nt+1)
ppt1_rem_20d_ent1125=DBLARR(nt+1)
ppt2_rem_20d_ent1125=DBLARR(nt+1)
evap1_rem_20d_ent1125=DBLARR(nt+1)
evap2_rem_20d_ent1125=DBLARR(nt+1)
moist1_rem_20d_ent1125=DBLARR(nt+1)
moist2_rem_20d_ent1125=DBLARR(nt+1)
heat1_rem_20d_ent1125=DBLARR(nt+1)
heat2_rem_20d_ent1125=DBLARR(nt+1)
dth21_w_20d_ent1125=DBLARR(nz+1)
dth21_c_20d_ent1125=DBLARR(nz+1)
dth21_m_20d_ent1125=DBLARR(nz+1)
dq21_w_20d_ent1125=DBLARR(nz+1)
dq21_c_20d_ent1125=DBLARR(nz+1)
dq21_m_20d_ent1125=DBLARR(nz+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_w_20d_ent1125.dat',/get_lun 
 readf,lun,wwtg1_w_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_w_20d_ent1125.dat',/get_lun 
 readf,lun,th2_w_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_w_20d_ent1125.dat',/get_lun 
 readf,lun,th1_w_20d_ent1125
close,/all
dth21_w_20d_ent1125=th2_w_20d_ent1125-th1_w_20d_ent1125
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_w_20d_ent1125.dat',/get_lun 
 readf,lun,q2_w_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_w_20d_ent1125.dat',/get_lun 
 readf,lun,q1_w_20d_ent1125
close,/all
dq21_w_20d_ent1125=q2_w_20d_ent1125-q1_w_20d_ent1125
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_rem_20d_ent1125.dat',/get_lun 
 readf,lun,dtall1_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_rem_20d_ent1125.dat',/get_lun 
 readf,lun,rh1_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_rem_20d_ent1125.dat',/get_lun 
 readf,lun,sthwtg1_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_rem_20d_ent1125.dat',/get_lun 
 readf,lun,sqwtg1_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_rem_20d_ent1125.dat',/get_lun 
 readf,lun,dqall1_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_ent1125.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_rem_20d_ent1125.dat',/get_lun 
 readf,lun,ppt2_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_rem_20d_ent1125.dat',/get_lun 
 readf,lun,evap1_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_rem_20d_ent1125.dat',/get_lun 
 readf,lun,evap2_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_rem_20d_ent1125.dat',/get_lun 
 readf,lun,moist1_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_rem_20d_ent1125.dat',/get_lun 
 readf,lun,moist2_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_rem_20d_ent1125.dat',/get_lun 
 readf,lun,heat1_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_rem_20d_ent1125.dat',/get_lun 
 readf,lun,heat2_rem_20d_ent1125
close,/all


;
;LOCAL F=0.9
;
wwtg1_c_20d_ent09=DBLARR(nz+1)
th2_c_20d_ent09=DBLARR(nz+1)
th1_c_20d_ent09=DBLARR(nz+1)
q2_c_20d_ent09=DBLARR(nz+1)
q1_c_20d_ent09=DBLARR(nz+1)
dtall1_loc_20d_ent09=DBLARR(nz+1,nt+1)
rh1_loc_20d_ent09=DBLARR(nz+1,nt+1)
sthwtg1_loc_20d_ent09=DBLARR(nz+1,nt+1)
sqwtg1_loc_20d_ent09=DBLARR(nz+1,nt+1)
dqall1_loc_20d_ent09=DBLARR(nz+1,nt+1)
ppt1_loc_20d_ent09=DBLARR(nt+1)
ppt2_loc_20d_ent09=DBLARR(nt+1)
evap1_loc_20d_ent09=DBLARR(nt+1)
evap2_loc_20d_ent09=DBLARR(nt+1)
moist1_loc_20d_ent09=DBLARR(nt+1)
moist2_loc_20d_ent09=DBLARR(nt+1)
heat1_loc_20d_ent09=DBLARR(nt+1)
heat2_loc_20d_ent09=DBLARR(nt+1)
dth21_c_20d_ent09=DBLARR(nz+1)
dth21_c_20d_ent09=DBLARR(nz+1)
dth21_m_20d_ent09=DBLARR(nz+1)
dq21_c_20d_ent09=DBLARR(nz+1)
dq21_c_20d_ent09=DBLARR(nz+1)
dq21_m_20d_ent09=DBLARR(nz+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_c_20d_ent09.dat',/get_lun 
 readf,lun,wwtg1_c_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_c_20d_ent09.dat',/get_lun 
 readf,lun,th2_c_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_c_20d_ent09.dat',/get_lun 
 readf,lun,th1_c_20d_ent09
close,/all
dth21_c_20d_ent09=th2_c_20d_ent09-th1_c_20d_ent09
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_c_20d_ent09.dat',/get_lun 
 readf,lun,q2_c_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_c_20d_ent09.dat',/get_lun 
 readf,lun,q1_c_20d_ent09
close,/all
dq21_c_20d_ent09=q2_c_20d_ent09-q1_c_20d_ent09
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_lo_20d_ent09.dat',/get_lun 
 readf,lun,dtall1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_lo_20d_ent09.dat',/get_lun 
 readf,lun,rh1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_lo_20d_ent09.dat',/get_lun 
 readf,lun,sthwtg1_loc_20d_ent09
close,/all
;;;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_lo_20d_ent09.dat',/get_lun 
;;; readf,lun,sqwtg1_loc_20d_ent09
;;;close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_lo_20d_ent09.dat',/get_lun 
 readf,lun,dqall1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_lo_20d_ent09.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_lo_20d_ent09.dat',/get_lun 
 readf,lun,ppt2_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_lo_20d_ent09.dat',/get_lun 
 readf,lun,evap1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_lo_20d_ent09.dat',/get_lun 
 readf,lun,evap2_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_lo_20d_ent09.dat',/get_lun 
 readf,lun,moist1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_lo_20d_ent09.dat',/get_lun 
 readf,lun,moist2_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_lo_20d_ent09.dat',/get_lun 
 readf,lun,heat1_loc_20d_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_lo_20d_ent09.dat',/get_lun 
 readf,lun,heat2_loc_20d_ent09
close,/all
;
;LOCAL F=1.35
;

wwtg1_c_20d_ent135=DBLARR(nz+1)
th2_c_20d_ent135=DBLARR(nz+1)
th1_c_20d_ent135=DBLARR(nz+1)
q2_c_20d_ent135=DBLARR(nz+1)
q1_c_20d_ent135=DBLARR(nz+1)
dtall1_loc_20d_ent135=DBLARR(nz+1,nt+1)
rh1_loc_20d_ent135=DBLARR(nz+1,nt+1)
sthwtg1_loc_20d_ent135=DBLARR(nz+1,nt+1)
sqwtg1_loc_20d_ent135=DBLARR(nz+1,nt+1)
dqall1_loc_20d_ent135=DBLARR(nz+1,nt+1)
ppt1_loc_20d_ent135=DBLARR(nt+1)
ppt2_loc_20d_ent135=DBLARR(nt+1)
evap1_loc_20d_ent135=DBLARR(nt+1)
evap2_loc_20d_ent135=DBLARR(nt+1)
moist1_loc_20d_ent135=DBLARR(nt+1)
moist2_loc_20d_ent135=DBLARR(nt+1)
heat1_loc_20d_ent135=DBLARR(nt+1)
heat2_loc_20d_ent135=DBLARR(nt+1)
dth21_c_20d_ent135=DBLARR(nz+1)
dq21_c_20d_ent135=DBLARR(nz+1)

rh2_c_20d_ent135=DBLARR(nz+1)
rh1_c_20d_ent135=DBLARR(nz+1)
drh21_c_20d_ent135=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh2_c_20d_ent135.dat',/get_lun 
 readf,lun,rh2_c_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_c_20d_ent135.dat',/get_lun 
 readf,lun,rh1_c_20d_ent135
close,/all
drh21_c_20d_ent135=rh2_c_20d_ent135-rh1_c_20d_ent135

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_c_20d_ent135.dat',/get_lun 
 readf,lun,wwtg1_c_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_c_20d_ent135.dat',/get_lun 
 readf,lun,th2_c_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_c_20d_ent135.dat',/get_lun 
 readf,lun,th1_c_20d_ent135
close,/all
dth21_c_20d_ent135=th2_c_20d_ent135-th1_c_20d_ent135
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_c_20d_ent135.dat',/get_lun 
 readf,lun,q2_c_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_c_20d_ent135.dat',/get_lun 
 readf,lun,q1_c_20d_ent135
close,/all
dq21_c_20d_ent135=q2_c_20d_ent135-q1_c_20d_ent135


openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_lo_20d_ent135.dat',/get_lun 
 readf,lun,dtall1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_lo_20d_ent135.dat',/get_lun 
 readf,lun,rh1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_lo_20d_ent135.dat',/get_lun 
 readf,lun,sthwtg1_loc_20d_ent135
close,/all
;;;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_lo_20d_ent135.dat',/get_lun 
;;; readf,lun,sqwtg1_loc_20d_ent135
;;;close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_lo_20d_ent135.dat',/get_lun 
 readf,lun,dqall1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_lo_20d_ent135.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_lo_20d_ent135.dat',/get_lun 
 readf,lun,ppt2_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_lo_20d_ent135.dat',/get_lun 
 readf,lun,evap1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_lo_20d_ent135.dat',/get_lun 
 readf,lun,evap2_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_lo_20d_ent135.dat',/get_lun 
 readf,lun,moist1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_lo_20d_ent135.dat',/get_lun 
 readf,lun,moist2_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_lo_20d_ent135.dat',/get_lun 
 readf,lun,heat1_loc_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_lo_20d_ent135.dat',/get_lun 
 readf,lun,heat2_loc_20d_ent135
close,/all










;
;LOCAL F=1.125
;

wwtg1_c_20d_ent1125=DBLARR(nz+1)
th2_c_20d_ent1125=DBLARR(nz+1)
th1_c_20d_ent1125=DBLARR(nz+1)
q2_c_20d_ent1125=DBLARR(nz+1)
q1_c_20d_ent1125=DBLARR(nz+1)
dtall1_loc_20d_ent1125=DBLARR(nz+1,nt+1)
rh1_loc_20d_ent1125=DBLARR(nz+1,nt+1)
sthwtg1_loc_20d_ent1125=DBLARR(nz+1,nt+1)
sqwtg1_loc_20d_ent1125=DBLARR(nz+1,nt+1)
dqall1_loc_20d_ent1125=DBLARR(nz+1,nt+1)
ppt1_loc_20d_ent1125=DBLARR(nt+1)
ppt2_loc_20d_ent1125=DBLARR(nt+1)
evap1_loc_20d_ent1125=DBLARR(nt+1)
evap2_loc_20d_ent1125=DBLARR(nt+1)
moist1_loc_20d_ent1125=DBLARR(nt+1)
moist2_loc_20d_ent1125=DBLARR(nt+1)
heat1_loc_20d_ent1125=DBLARR(nt+1)
heat2_loc_20d_ent1125=DBLARR(nt+1)
dth21_c_20d_ent1125=DBLARR(nz+1)
;dth21_c_20d_ent1125=DBLARR(nz+1)
;dth21_m_20d_ent1125=DBLARR(nz+1)
dq21_c_20d_ent1125=DBLARR(nz+1)
;dq21_c_20d_ent1125=DBLARR(nz+1)
;dq21_m_20d_ent1125=DBLARR(nz+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_c_20d_ent1125.dat',/get_lun 
 readf,lun,wwtg1_c_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_c_20d_ent1125.dat',/get_lun 
 readf,lun,th2_c_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_c_20d_ent1125.dat',/get_lun 
 readf,lun,th1_c_20d_ent1125
close,/all
dth21_c_20d_ent1125=th2_c_20d_ent1125-th1_c_20d_ent1125
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_c_20d_ent1125.dat',/get_lun 
 readf,lun,q2_c_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_c_20d_ent1125.dat',/get_lun 
 readf,lun,q1_c_20d_ent1125
close,/all
dq21_c_20d_ent1125=q2_c_20d_ent1125-q1_c_20d_ent1125
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_lo_20d_ent1125.dat',/get_lun 
 readf,lun,dtall1_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_lo_20d_ent1125.dat',/get_lun 
 readf,lun,rh1_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_lo_20d_ent1125.dat',/get_lun 
 readf,lun,sthwtg1_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_lo_20d_ent1125.dat',/get_lun 
 readf,lun,sqwtg1_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_lo_20d_ent1125.dat',/get_lun 
 readf,lun,dqall1_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_lo_20d_ent1125.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_lo_20d_ent1125.dat',/get_lun 
 readf,lun,ppt2_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_lo_20d_ent1125.dat',/get_lun 
 readf,lun,evap1_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_lo_20d_ent1125.dat',/get_lun 
 readf,lun,evap2_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_lo_20d_ent1125.dat',/get_lun 
 readf,lun,moist1_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_lo_20d_ent1125.dat',/get_lun 
 readf,lun,moist2_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_lo_20d_ent1125.dat',/get_lun 
 readf,lun,heat1_loc_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_lo_20d_ent1125.dat',/get_lun 
 readf,lun,heat2_loc_20d_ent1125
close,/all

;

;
;LOCAL+REMOTE F=1.35
;
wwtg1_m_20d_ent135=DBLARR(nz+1)
th2_m_20d_ent135=DBLARR(nz+1)
th1_m_20d_ent135=DBLARR(nz+1)
q2_m_20d_ent135=DBLARR(nz+1)
q1_m_20d_ent135=DBLARR(nz+1)
dtall1_loc_rem_20d_ent135=DBLARR(nz+1,nt+1)
rh1_loc_rem_20d_ent135=DBLARR(nz+1,nt+1)
sthwtg1_loc_rem_20d_ent135=DBLARR(nz+1,nt+1)
sqwtg1_loc_rem_20d_ent135=DBLARR(nz+1,nt+1)
dqall1_loc_rem_20d_ent135=DBLARR(nz+1,nt+1)
ppt1_loc_rem_20d_ent135=DBLARR(nt+1)
ppt2_loc_rem_20d_ent135=DBLARR(nt+1)
evap1_loc_rem_20d_ent135=DBLARR(nt+1)
evap2_loc_rem_20d_ent135=DBLARR(nt+1)
moist1_loc_rem_20d_ent135=DBLARR(nt+1)
moist2_loc_rem_20d_ent135=DBLARR(nt+1)
heat1_loc_rem_20d_ent135=DBLARR(nt+1)
heat2_loc_rem_20d_ent135=DBLARR(nt+1)
;dth21_c_20d_ent135=DBLARR(nz+1)
;dth21_c_20d_ent135=DBLARR(nz+1)
dth21_m_20d_ent135=DBLARR(nz+1)
;dq21_c_20d_ent135=DBLARR(nz+1)
;dq21_c_20d_ent135=DBLARR(nz+1)
dq21_m_20d_ent135=DBLARR(nz+1)

rh2_m_20d_ent135=DBLARR(nz+1)
rh1_m_20d_ent135=DBLARR(nz+1)
drh21_m_20d_ent135=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh2_m_20d_ent135.dat',/get_lun 
 readf,lun,rh2_m_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_m_20d_ent135.dat',/get_lun 
 readf,lun,rh1_m_20d_ent135
close,/all
drh21_m_20d_ent135=rh2_m_20d_ent135-rh1_m_20d_ent135

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_m_20d_ent135.dat',/get_lun 
 readf,lun,wwtg1_m_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_m_20d_ent135.dat',/get_lun 
 readf,lun,th2_m_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_m_20d_ent135.dat',/get_lun 
 readf,lun,th1_m_20d_ent135
close,/all
dth21_m_20d_ent135=th2_m_20d_ent135-th1_m_20d_ent135
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_m_20d_ent135.dat',/get_lun 
 readf,lun,q2_m_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_m_20d_ent135.dat',/get_lun 
 readf,lun,q1_m_20d_ent135
close,/all
dq21_m_20d_ent135=q2_m_20d_ent135-q1_m_20d_ent135
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,dtall1_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,rh1_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,sthwtg1_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,sqwtg1_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,dqall1_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,ppt1_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,ppt2_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,evap1_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,evap2_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,moist1_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,moist2_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,heat1_loc_rem_20d_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_lo_rem_20d_ent135.dat',/get_lun 
 readf,lun,heat2_loc_rem_20d_ent135
close,/all


;
;LOCAL+REMOTE F=1.125
;
wwtg1_m_20d_ent1125=DBLARR(nz+1)
th2_m_20d_ent1125=DBLARR(nz+1)
th1_m_20d_ent1125=DBLARR(nz+1)
q2_m_20d_ent1125=DBLARR(nz+1)
q1_m_20d_ent1125=DBLARR(nz+1)
dtall1_loc_rem_20d_ent1125=DBLARR(nz+1,nt+1)
rh1_loc_rem_20d_ent1125=DBLARR(nz+1,nt+1)
sthwtg1_loc_rem_20d_ent1125=DBLARR(nz+1,nt+1)
sqwtg1_loc_rem_20d_ent1125=DBLARR(nz+1,nt+1)
dqall1_loc_rem_20d_ent1125=DBLARR(nz+1,nt+1)
ppt1_loc_rem_20d_ent1125=DBLARR(nt+1)
ppt2_loc_rem_20d_ent1125=DBLARR(nt+1)
evap1_loc_rem_20d_ent1125=DBLARR(nt+1)
evap2_loc_rem_20d_ent1125=DBLARR(nt+1)
moist1_loc_rem_20d_ent1125=DBLARR(nt+1)
moist2_loc_rem_20d_ent1125=DBLARR(nt+1)
heat1_loc_rem_20d_ent1125=DBLARR(nt+1)
heat2_loc_rem_20d_ent1125=DBLARR(nt+1)
;dth21_c_20d_ent1125=DBLARR(nz+1)
;dth21_c_20d_ent1125=DBLARR(nz+1)
dth21_m_20d_ent1125=DBLARR(nz+1)
;dq21_c_20d_ent1125=DBLARR(nz+1)
;dq21_c_20d_ent1125=DBLARR(nz+1)
dq21_m_20d_ent1125=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_m_20d_ent1125.dat',/get_lun 
 readf,lun,wwtg1_m_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_m_20d_ent1125.dat',/get_lun 
 readf,lun,th2_m_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_m_20d_ent1125.dat',/get_lun 
 readf,lun,th1_m_20d_ent1125
close,/all
dth21_m_20d_ent1125=th2_m_20d_ent1125-th1_m_20d_ent1125
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_m_20d_ent1125.dat',/get_lun 
 readf,lun,q2_m_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_m_20d_ent1125.dat',/get_lun 
 readf,lun,q1_m_20d_ent1125
close,/all
dq21_m_20d_ent1125=q2_m_20d_ent1125-q1_m_20d_ent1125
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,dtall1_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,rh1_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,sthwtg1_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,sqwtg1_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,dqall1_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,ppt1_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,ppt2_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,evap1_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,evap2_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,moist1_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,moist2_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,heat1_loc_rem_20d_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_lo_rem_20d_ent1125.dat',/get_lun 
 readf,lun,heat2_loc_rem_20d_ent1125
close,/all

;
;local forcing F=1.35 FORCING OF F=0.9
;


dtall1_loc_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
rh1_loc_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
sthwtg1_loc_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
sqwtg1_loc_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
dqall1_loc_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
ppt1_loc_20d_ent135_LSF09=DBLARR(nt+1)
ppt2_loc_20d_ent135_LSF09=DBLARR(nt+1)
evap1_loc_20d_ent135_LSF09=DBLARR(nt+1)
evap2_loc_20d_ent135_LSF09=DBLARR(nt+1)
moist1_loc_20d_ent135_LSF09=DBLARR(nt+1)
moist2_loc_20d_ent135_LSF09=DBLARR(nt+1)
heat1_loc_20d_ent135_LSF09=DBLARR(nt+1)
heat2_loc_20d_ent135_LSF09=DBLARR(nt+1)
theta1_loc_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
;theta2_loc_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta1_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,theta1_loc_20d_ent135_LSF09
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta2_loc_20d_ent135_LSF09.dat',/get_lun 
; readf,lun,theta2_loc_20d_ent135_LSF09
;close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,dtall1_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,rh1_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,sthwtg1_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,sqwtg1_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,dqall1_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,ppt2_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,evap1_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,evap2_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,moist1_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,moist2_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,heat1_loc_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_loc_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,heat2_loc_20d_ent135_LSF09
close,/all



;
;local forcing F=0.9 FORCING OF F=1.35
;


dtall1_loc_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
rh1_loc_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
sthwtg1_loc_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
sqwtg1_loc_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
dqall1_loc_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
ppt1_loc_20d_ent09_LSF135=DBLARR(nt+1)
ppt2_loc_20d_ent09_LSF135=DBLARR(nt+1)
evap1_loc_20d_ent09_LSF135=DBLARR(nt+1)
evap2_loc_20d_ent09_LSF135=DBLARR(nt+1)
moist1_loc_20d_ent09_LSF135=DBLARR(nt+1)
moist2_loc_20d_ent09_LSF135=DBLARR(nt+1)
heat1_loc_20d_ent09_LSF135=DBLARR(nt+1)
heat2_loc_20d_ent09_LSF135=DBLARR(nt+1)
theta1_loc_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
;theta2_loc_20d_ent09_LSF135=DBLARR(nz+1,nt+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta1_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,theta1_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta2_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,theta2_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,dtall1_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,rh1_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,sthwtg1_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,sqwtg1_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,dqall1_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,ppt2_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,evap1_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,evap2_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,moist1_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,moist2_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,heat1_loc_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_loc_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,heat2_loc_20d_ent09_LSF135
close,/all


;
;remote forcing F=1.35 FORCING OF F=0.9
;


dtall1_rem_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
rh1_rem_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
sthwtg1_rem_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
sqwtg1_rem_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
dqall1_rem_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
ppt1_rem_20d_ent135_LSF09=DBLARR(nt+1)
ppt2_rem_20d_ent135_LSF09=DBLARR(nt+1)
evap1_rem_20d_ent135_LSF09=DBLARR(nt+1)
evap2_rem_20d_ent135_LSF09=DBLARR(nt+1)
moist1_rem_20d_ent135_LSF09=DBLARR(nt+1)
moist2_rem_20d_ent135_LSF09=DBLARR(nt+1)
heat1_rem_20d_ent135_LSF09=DBLARR(nt+1)
heat2_rem_20d_ent135_LSF09=DBLARR(nt+1)
wwtg1_rem_20d_1dave_ent135_LSF09=DBLARR(nz+1,nd+1)
wwtg1_rem_20d_1dave_ent09=DBLARR(nz+1,nd+1)
theta1_rem_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
;theta2_rem_20d_ent135_LSF09=DBLARR(nz+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta1_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,theta1_rem_20d_ent135_LSF09
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta2_rem_20d_ent135_LSF09.dat',/get_lun 
;; readf,lun,theta2_rem_20d_ent135_LSF09
;close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,wwtg1_rem_20d_1dave_ent135_LSF09
close,/all
;;;openr,lun,'/home/fj019034/umui_runs/xjwnb-128121719/wwtg1_rem_ent09.dat',/get_lun 
;;; readf,lun,wwtg1_rem_20d_1dave_ent09
;;;close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,dtall1_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,rh1_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,sthwtg1_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,sqwtg1_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,dqall1_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,ppt2_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,evap1_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,evap2_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,moist1_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,moist2_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,heat1_rem_20d_ent135_LSF09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_rem_20d_ent135_LSF09.dat',/get_lun 
 readf,lun,heat2_rem_20d_ent135_LSF09
close,/all


;
;remote forcing F=0.9 FORCING OF F=1.35
;


dtall1_rem_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
rh1_rem_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
sthwtg1_rem_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
sqwtg1_rem_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
dqall1_rem_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
ppt1_rem_20d_ent09_LSF135=DBLARR(nt+1)
ppt2_rem_20d_ent09_LSF135=DBLARR(nt+1)
evap1_rem_20d_ent09_LSF135=DBLARR(nt+1)
evap2_rem_20d_ent09_LSF135=DBLARR(nt+1)
moist1_rem_20d_ent09_LSF135=DBLARR(nt+1)
moist2_rem_20d_ent09_LSF135=DBLARR(nt+1)
heat1_rem_20d_ent09_LSF135=DBLARR(nt+1)
heat2_rem_20d_ent09_LSF135=DBLARR(nt+1)
theta1_rem_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
;theta2_rem_20d_ent09_LSF135=DBLARR(nz+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta1_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,theta1_rem_20d_ent09_LSF135
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta2_rem_20d_ent09_LSF135.dat',/get_lun 
; readf,lun,theta2_rem_20d_ent09_LSF135
;close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtall1_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,dtall1_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,rh1_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,sthwtg1_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sqwtg1_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,sqwtg1_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dqall1_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,dqall1_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,ppt2_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,evap1_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,evap2_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,moist1_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,moist2_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,heat1_rem_20d_ent09_LSF135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_rem_20d_ent09_LSF135.dat',/get_lun 
 readf,lun,heat2_rem_20d_ent09_LSF135
close,/all



;
;remote LS=0 when the transition start 
;
ppt1_rem_20d_ent09_LS0=DBLARR(nt+1)
evap1_rem_20d_ent09_LS0=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_ent09_LS0.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent09_LS0
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_rem_20d_ent09_LS0.dat',/get_lun 
 readf,lun,evap1_rem_20d_ent09_LS0
close,/all

ppt1_rem_20d_ent135_LS0=DBLARR(nt+1)
evap1_rem_20d_ent135_LS0=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d_ent135_LS0.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent135_LS0
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_rem_20d_ent135_LS0.dat',/get_lun 
 readf,lun,evap1_rem_20d_ent135_LS0
close,/all

;
;local LS=0 when the transition start 
;
ppt1_lo_20d_ent09_LS0=DBLARR(nt+1)
evap1_lo_20d_ent09_LS0=DBLARR(nt+1)
theta1_lo_20d_ent09_LS0=DBLARR(nz+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta1_lo_20d_ent09_LS0.dat',/get_lun 
 readf,lun,theta1_lo_20d_ent09_LS0
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_lo_20d_ent09_LS0.dat',/get_lun 
 readf,lun,ppt1_lo_20d_ent09_LS0
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_lo_20d_ent09_LS0.dat',/get_lun 
 readf,lun,evap1_lo_20d_ent09_LS0
close,/all

ppt1_lo_20d_ent135_LS0=DBLARR(nt+1)
evap1_lo_20d_ent135_LS0=DBLARR(nt+1)
theta1_lo_20d_ent135_LS0=DBLARR(nz+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/theta1_lo_20d_ent135_LS0.dat',/get_lun 
 readf,lun,theta1_lo_20d_ent135_LS0
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_lo_20d_ent135_LS0.dat',/get_lun 
 readf,lun,ppt1_lo_20d_ent135_LS0
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_lo_20d_ent135_LS0.dat',/get_lun 
 readf,lun,evap1_lo_20d_ent135_LS0
close,/all

;
;RCE C, M, W, F=1.35
;
th1_c_rce_ent135=DBLARR(nz+1)
q1_c_rce_ent135=DBLARR(nz+1)
th2_c_rce_ent135=DBLARR(nz+1)
q2_c_rce_ent135=DBLARR(nz+1)
rh2_c_rce_ent135=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_c_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,th2_c_rce_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_c_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,q1_c_rce_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_c_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,th1_c_rce_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_c_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,q2_c_rce_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh2_c_rce_fixedRC_ent135.dat',/get_lun 
readf,lun,rh2_c_rce_ent135
close,/all


th1_m_rce_ent135=DBLARR(nz+1)
th2_m_rce_ent135=DBLARR(nz+1)
q1_m_rce_ent135=DBLARR(nz+1)
q2_m_rce_ent135=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_m_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,th2_m_rce_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_m_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,th1_m_rce_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_m_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,q1_m_rce_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_m_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,q2_m_rce_ent135
close,/all


th1_w_rce_ent135=DBLARR(nz+1)
q1_w_rce_ent135=DBLARR(nz+1)
th2_w_rce_ent135=DBLARR(nz+1)
q2_w_rce_ent135=DBLARR(nz+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th1_w_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,th2_w_rce_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q1_w_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,q1_w_rce_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/th2_w_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,th1_w_rce_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/q2_w_rce_fixedRC_ent135.dat',/get_lun 
 readf,lun,q2_w_rce_ent135
close,/all




;
;Fixed moistening rate

conv_heat1_loc_20d_fixedMLSF_ent09=DBLARR(nt+1)
ppt1_loc_20d_fixedMLSF_ent09=DBLARR(nt+1)
evap1_loc_20d_fixedMLSF_ent09=DBLARR(nt+1)
heat1_loc_20d_fixedMLSF_ent09=DBLARR(nt+1)
moist1_loc_20d_fixedMLSF_ent09=DBLARR(nt+1)
conv_heat1_loc_20d=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_20d_fixedMLSF_ent09.dat',/get_lun 
 readf,lun,ppt1_loc_20d_fixedMLSF_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_20d_fixedMLSF_ent09.dat',/get_lun 
 readf,lun,evap1_loc_20d_fixedMLSF_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_20d_fixedMLSF_ent09.dat',/get_lun 
 readf,lun,heat1_loc_20d_fixedMLSF_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv_heat1_loc_20d_fixedMLSF.dat',/get_lun 
 readf,lun,conv_heat1_loc_20d_fixedMLSF_ent09
close,/all
conv_heat1_loc_22d_fixedMLSF_ent09=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv_heat1_loc_22d_fixedMLSF.dat',/get_lun 
 readf,lun,conv_heat1_loc_22d_fixedMLSF_ent09
close,/all
conv_heat1_loc_24d_fixedMLSF_ent09=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv_heat1_loc_24d_fixedMLSF.dat',/get_lun 
 readf,lun,conv_heat1_loc_24d_fixedMLSF_ent09
close,/all


all_heat1_loc_20d_fixedMLSF_ent09=DBLARR(nt+1)
openr,lun,'all_heat1_loc_20d_fixedMLSF.dat',/get_lun 
 readf,lun,all_heat1_loc_20d_fixedMLSF_ent09
close,/all
all_heat1_loc_22d_fixedMLSF_ent09=DBLARR(nt+1)
openr,lun,'all_heat1_loc_22d_fixedMLSF.dat',/get_lun 
 readf,lun,all_heat1_loc_22d_fixedMLSF_ent09
close,/all
all_heat1_loc_24d_fixedMLSF_ent09=DBLARR(nt+1)
openr,lun,'all_heat1_loc_24d_fixedMLSF.dat',/get_lun 
 readf,lun,all_heat1_loc_24d_fixedMLSF_ent09
close,/all

conv_heat1_loc_20d=DBLARR(nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv_heat1_loc_20d.dat',/get_lun 
 readf,lun,conv_heat1_loc_20d
close,/all
conv_heat1_loc_22d=DBLARR(nt+1)
openr,lun,'conv_heat1_loc_22d.dat',/get_lun 
 readf,lun,conv_heat1_loc_22d
close,/all
conv_heat1_loc_24d=DBLARR(nt+1)
openr,lun,'conv_heat1_loc_24d.dat',/get_lun 
 readf,lun,conv_heat1_loc_24d
close,/all
conv_heat1_loc_26d=DBLARR(nt+1)
openr,lun,'conv_heat1_loc_26d.dat',/get_lun 
 readf,lun,conv_heat1_loc_26d
close,/all


all_heat1_loc_20d=DBLARR(nt+1)
openr,lun,'all_heat1_loc_20d.dat',/get_lun
 readf,lun,all_heat1_loc_20d
close,/all
all_heat1_loc_22d=DBLARR(nt+1)
openr,lun,'all_heat1_loc_22d.dat',/get_lun
 readf,lun,all_heat1_loc_22d
close,/all
all_heat1_loc_24d=DBLARR(nt+1)
openr,lun,'all_heat1_loc_24d.dat',/get_lun
 readf,lun,all_heat1_loc_24d
close,/all
all_heat1_loc_26d=DBLARR(nt+1)
openr,lun,'all_heat1_loc_26d.dat',/get_lun
 readf,lun,all_heat1_loc_26d
close,/all


conv_heat1_loc_20d_fixedMLSF_mean_ent09=DBLARR(n_tr+1)
ppt1_loc_20d_fixedMLSF_mean_ent09=DBLARR(n_tr+1)
evap1_loc_20d_fixedMLSF_mean_ent09=DBLARR(n_tr+1)
heat1_loc_20d_fixedMLSF_mean_ent09=DBLARR(n_tr+1)
moist1_loc_20d_fixedMLSF_mean_ent09=DBLARR(n_tr+1)
conv_heat1_loc_20d_mean=DBLARR(n_tr+1)
;conv_heat1_loc_22d_fixedMLSF_ent09=DBLARR(nt+1)
;ppt1_loc_22d_fixedMLSF_ent09=DBLARR(nt+1)
;evap1_loc_22d_fixedMLSF_ent09=DBLARR(nt+1)
;heat1_loc_22d_fixedMLSF_ent09=DBLARR(nt+1)
;moist1_loc_22d_fixedMLSF_ent09=DBLARR(nt+1)
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_22d_fixedMLSF.dat',/get_lun 
; readf,lun,ppt1_loc_22d_fixedMLSF_ent09
;close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_22d_fixedMLSF.dat',/get_lun 
; readf,lun,evap1_loc_22d_fixedMLSF_ent09
;close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_22d_fixedMLSF.dat',/get_lun 
; readf,lun,heat1_loc_22d_fixedMLSF_ent09
;close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv_heat1_loc_22d_fixedMLSF.dat',/get_lun 
; readf,lun,conv_heat1_loc_22d_fixedMLSF_ent09
;close,/all

;conv_heat1_loc_24d_fixedMLSF_ent09=DBLARR(nt+1)
;ppt1_loc_24d_fixedMLSF_ent09=DBLARR(nt+1)
;evap1_loc_24d_fixedMLSF_ent09=DBLARR(nt+1)
;heat1_loc_24d_fixedMLSF_ent09=DBLARR(nt+1)
;moist1_loc_24d_fixedMLSF_ent09=DBLARR(nt+1)
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_24d_fixedMLSF.dat',/get_lun 
; readf,lun,ppt1_loc_24d_fixedMLSF_ent09
;close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_24d_fixedMLSF.dat',/get_lun 
; readf,lun,evap1_loc_24d_fixedMLSF_ent09
;close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_24d_fixedMLSF.dat',/get_lun 
; readf,lun,heat1_loc_24d_fixedMLSF_ent09
;close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv_heat1_loc_24d_fixedMLSF.dat',/get_lun 
; readf,lun,conv_heat1_loc_24d_fixedMLSF_ent09
;close,/all

ppt1_loc_20d_fixedMLSF_mean_ent09=ppt1_loc_20d_fixedMLSF_ent09(2016:12816)
evap1_loc_20d_fixedMLSF_mean_ent09=evap1_loc_20d_fixedMLSF_ent09(2016:12816)
heat1_loc_20d_fixedMLSF_mean_ent09=heat1_loc_20d_fixedMLSF_ent09(2016:12816)
;conv_heat1_loc_20d_fixedMLSF_mean_ent09=conv_heat1_loc_20d_fixedMLSF_ent09(2016:12816)
conv_heat1_loc_20d_mean=(all_heat1_loc_20d(2016:12816));+all_heat1_loc_22d(2304:13104)+all_heat1_loc_26d(2880:13680))/3.0
;conv_heat1_loc_20d_mean=(all_heat1_loc_20d(2016:12816)+all_heat1_loc_22d(2304:13104)+all_heat1_loc_24d(2592:13392)+all_heat1_loc_26d(2880:13680))/4.0


;ppt1_loc_20d_fixedMLSF_mean_ent09=(ppt1_loc_20d_fixedMLSF_ent09(2016:12816)+ppt1_loc_22d_fixedMLSF_ent09(2304:13104)+ppt1_loc_24d_fixedMLSF_ent09(2592:13392))/3.0
;evap1_loc_20d_fixedMLSF_mean_ent09=(evap1_loc_20d_fixedMLSF_ent09(2016:12816)+evap1_loc_22d_fixedMLSF_ent09(2304:13104)+evap1_loc_24d_fixedMLSF_ent09(2592:13392))/3.0
;heat1_loc_20d_fixedMLSF_mean_ent09=(heat1_loc_20d_fixedMLSF_ent09(2016:12816)+heat1_loc_22d_fixedMLSF_ent09(2304:13104)+heat1_loc_24d_fixedMLSF_ent09(2592:13392))/3.0
conv_heat1_loc_20d_fixedMLSF_mean_ent09=(all_heat1_loc_20d_fixedMLSF_ent09(2016:12816)+all_heat1_loc_22d_fixedMLSF_ent09(2304:13104)+all_heat1_loc_24d_fixedMLSF_ent09(2592:13392))/3.0


;;;evap1_loc_20d_fixedMLSF_mean_ent09=evap1_loc_20d_fixedMLSF_ent09(2016:12816)

ppt1_loc_20d_fixedMLSF_half_ent09=DBLARR(nt+1)
evap1_loc_20d_fixedMLSF_half_ent09=DBLARR(nt+1)
heat1_loc_20d_fixedMLSF_half_ent09=DBLARR(nt+1)
;moist1_loc_20d_fixedMLSF_ent09F=DBLARR(nt+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_20d_fixedMLSF_half_ent09.dat',/get_lun 
 readf,lun,ppt1_loc_20d_fixedMLSF_half_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_20d_fixedMLSF_half_ent09.dat',/get_lun 
 readf,lun,evap1_loc_20d_fixedMLSF_half_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_20d_fixedMLSF_half_ent09.dat',/get_lun 
 readf,lun,heat1_loc_20d_fixedMLSF_half_ent09
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_loc_20d_fixedMLSF_half_ent09.dat',/get_lun 
; readf,lun,moist1_loc_20d_fixedMLSF_half_ent09
;close,/all
ppt1_loc_20d_fixedMLSF_half_mean_ent09=DBLARR(n_tr+1)
evap1_loc_20d_fixedMLSF_half_mean_ent09=DBLARR(n_tr+1)
heat1_loc_20d_fixedMLSF_half_mean_ent09=DBLARR(n_tr+1)
moist1_loc_20d_fixedMLSF_half_mean_ent09=DBLARR(n_tr+1)
ppt1_loc_20d_fixedMLSF_half_mean_ent09=ppt1_loc_20d_fixedMLSF_half_ent09(2016:12816)
evap1_loc_20d_fixedMLSF_half_mean_ent09=evap1_loc_20d_fixedMLSF_half_ent09(2016:12816)
heat1_loc_20d_fixedMLSF_half_mean_ent09=heat1_loc_20d_fixedMLSF_half_ent09(2016:12816)
;moist1_loc_20d_fixedMLSF_half_mean_ent09=moist1_loc_20d_fixedMLSF_half_ent09(2016:12816)




ppt1_loc_20d_fixedMLSF_ent135=DBLARR(nt+1)
evap1_loc_20d_fixedMLSF_ent135=DBLARR(nt+1)
heat1_loc_20d_fixedMLSF_ent135=DBLARR(nt+1)
;moist1_loc_20d_fixedMLSF_ent135=DBLARR(nt+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_20d_fixedMLSF_ent135.dat',/get_lun 
 readf,lun,ppt1_loc_20d_fixedMLSF_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_20d_fixedMLSF_ent135.dat',/get_lun 
 readf,lun,evap1_loc_20d_fixedMLSF_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_20d_fixedMLSF_ent135.dat',/get_lun 
 readf,lun,heat1_loc_20d_fixedMLSF_ent135
close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_loc_20d_fixedMLSF_ent135.dat',/get_lun 
; readf,lun,moist1_loc_20d_fixedMLSF_ent135
;close,/all

ppt1_loc_20d_fixedMLSF_mean_ent135=DBLARR(n_tr+1)
evap1_loc_20d_fixedMLSF_mean_ent135=DBLARR(n_tr+1)
heat1_loc_20d_fixedMLSF_mean_ent135=DBLARR(n_tr+1)
moist1_loc_20d_fixedMLSF_mean_ent135=DBLARR(n_tr+1)
ppt1_loc_20d_fixedMLSF_mean_ent135=ppt1_loc_20d_fixedMLSF_ent135(2016:12816)
evap1_loc_20d_fixedMLSF_mean_ent135=evap1_loc_20d_fixedMLSF_ent135(2016:12816)
heat1_loc_20d_fixedMLSF_mean_ent135=heat1_loc_20d_fixedMLSF_ent135(2016:12816)
;moist1_loc_20d_fixedMLSF_mean_ent135=moist1_loc_20d_fixedMLSF_ent135(2016:12816)


;
;
;
n_tr=10800
time_tr=DBLARR(n_tr+1)
time_tr(0)=-432000
for j=1L,10800 do begin
    time_tr(j)=time_tr(j-1)+dt_scm
endfor
time_tr=time_tr/86400.


 






; openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_mean.dat',/get_lun 
; readf,lun,evap1_loc_mean
;close,/all

;ppt1_loc_20d=DBLARR(nt+1)
;ppt1_loc_20d=DBLARR(n_tr+1)

;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_20d.dat',/get_lun 
; readf,lun,ppt1_loc_20d


;close,/all
;openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_loc_mean.dat',/get_lun 
; readf,lun,ppt2_loc_20d
;close,/all


;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_20d_ent125.dat',/get_lun 
; readf,lun,ppt1_rem_20d_ent125
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_20d_ent15.dat',/get_lun 
; readf,lun,ppt1_rem_20d_ent15
;close,/all





time_20d=dblarr(nt+1)
time_20d(0)=-5.0
for i=1, nt do begin
   time_20d(i)=time_20d(i-1)+600./86400.
endfor

n_tr=10800
time_tr=DBLARR(n_tr+1)
time_tr(0)=-432000
for j=1L,10800 do begin
    time_tr(j)=time_tr(j-1)+dt_scm
endfor
time_tr=time_tr/86400.

rh1_loc_20d_ent135_mean=DBLARR(nz+1,nt+1)
dconv1_loc_20d_ent135_mean=DBLARR(nz+1,nt+1)
sqwtg1_loc_20d_ent135_mean=DBLARR(nz+1,nt+1)
dconv1_rem_20d_ent135_mean=DBLARR(nz+1,nt+1)
rh1_rem_20d_ent135_mean=DBLARR(nz+1,nt+1)
sqwtg1_rem_20d_ent135_mean=DBLARR(nz+1,nt+1)
dconv1_loc_20d_ent09_mean=DBLARR(nz+1,nt+1)
rh1_loc_20d_ent09_mean=DBLARR(nz+1,nt+1)
sqwtg1_loc_20d_ent09_mean=DBLARR(nz+1,nt+1)
dconv1_rem_20d_ent09_mean=DBLARR(nz+1,nt+1)
sqwtg1_rem_20d_ent09_mean=DBLARR(nz+1,nt+1)
rh1_rem_20d_ent09_mean=DBLARR(nz+1,nt+1)


;
;
;
ppt1_rem_20d_ent09_LS0_mean=DBLARR(n_tr+1)
ppt1_rem_20d_ent135_LS0_mean=DBLARR(n_tr+1)
ppt1_lo_20d_ent09_LS0_mean=DBLARR(n_tr+1)
ppt1_lo_20d_ent135_LS0_mean=DBLARR(n_tr+1)
cl_top1_loc_20d_ent135_mean=DBLARR(n_tr+1)
cl_top1_loc_20d_ent09_mean=DBLARR(n_tr+1)
ppt1_rem_20d_ent09_LS0_mean=ppt1_rem_20d_ent09_LS0(2016:12816)
ppt1_rem_20d_ent135_LS0_mean=ppt1_rem_20d_ent135_LS0(2016:12816)
ppt1_lo_20d_ent09_LS0_mean=ppt1_lo_20d_ent09_LS0(2016:12816)
ppt1_lo_20d_ent135_LS0_mean=ppt1_lo_20d_ent135_LS0(2016:12816)

cl_top1_loc_20d_ent135_mean=cl_top1_loc_20d_ent135(2016:12816)
cl_top1_loc_20d_ent09_mean=cl_top1_loc_20d_ent09(2016:12816)




ppt1_loc_mean=DBLARR(n_tr+1)
ppt1_rem_mean=DBLARR(n_tr+1)
ppt1_loc_rem_mean=DBLARR(n_tr+1)
ppt1_loc_mean=(ppt1_loc_20d(2016:12816)+ppt1_loc_22d(2304:13104)+ppt1_loc_24d(2592:13392)+ppt1_loc_26d(2880:13680)+ppt1_loc_28d(3168:13968))/5.
ppt1_loc_rem_mean=(ppt1_loc_rem_20d(2016:12816)+ppt1_loc_rem_22d(2304:13104)+ppt1_loc_rem_24d(2592:13392)+ppt1_loc_rem_26d(2880:13680)+ppt1_loc_rem_28d(3168:13968))/5.
ppt1_rem_mean=(ppt1_rem_20d(2016:12816)+ppt1_rem_22d(2304:13104)+ppt1_rem_24d(2592:13392)+ppt1_rem_26d(2880:13680)+ppt1_rem_28d(3168:13968))/5.

ppt1_loc_ent1125_mean=DBLARR(n_tr+1)
evap1_loc_ent1125_mean=DBLARR(n_tr+1)
moist1_loc_ent1125_mean=DBLARR(n_tr+1)
heat1_loc_ent1125_mean=DBLARR(n_tr+1)
ppt1_rem_ent1125_mean=DBLARR(n_tr+1)
evap1_rem_ent1125_mean=DBLARR(n_tr+1)
moist1_rem_ent1125_mean=DBLARR(n_tr+1)
heat1_rem_ent1125_mean=DBLARR(n_tr+1)
ppt1_loc_rem_ent1125_mean=DBLARR(n_tr+1)
evap1_loc_rem_ent1125_mean=DBLARR(n_tr+1)
moist1_loc_rem_ent1125_mean=DBLARR(n_tr+1)
heat1_loc_rem_ent1125_mean=DBLARR(n_tr+1)

ppt1_loc_ent1125_mean=(ppt1_loc_20d_ent1125(2016:12816))
ppt1_rem_ent1125_mean=(ppt1_rem_20d_ent1125(2016:12816))
ppt1_loc_rem_ent1125_mean=(ppt1_loc_rem_20d_ent1125(2016:12816))
evap1_loc_ent1125_mean=(evap1_loc_20d_ent1125(2016:12816))
evap1_rem_ent1125_mean=(evap1_rem_20d_ent1125(2016:12816))
evap1_loc_rem_ent1125_mean=(evap1_loc_rem_20d_ent1125(2016:12816))
heat1_loc_ent1125_mean=(heat1_loc_20d_ent1125(2016:12816))
heat1_rem_ent1125_mean=(heat1_rem_20d_ent1125(2016:12816))
heat1_loc_rem_ent1125_mean=(heat1_loc_rem_20d_ent1125(2016:12816))
moist1_loc_ent1125_mean=(moist1_loc_20d_ent1125(2016:12816))
moist1_rem_ent1125_mean=(moist1_rem_20d_ent1125(2016:12816))
moist1_loc_rem_ent1125_mean=(moist1_loc_rem_20d_ent1125(2016:12816))

ppt2_loc_ent1125_mean=DBLARR(n_tr+1)
evap2_loc_ent1125_mean=DBLARR(n_tr+1)
moist2_loc_ent1125_mean=DBLARR(n_tr+1)
heat2_loc_ent1125_mean=DBLARR(n_tr+1)
ppt2_rem_ent1125_mean=DBLARR(n_tr+1)
evap2_rem_ent1125_mean=DBLARR(n_tr+1)
moist2_rem_ent1125_mean=DBLARR(n_tr+1)
heat2_rem_ent1125_mean=DBLARR(n_tr+1)
ppt2_loc_rem_ent1125_mean=DBLARR(n_tr+1)
evap2_loc_rem_ent1125_mean=DBLARR(n_tr+1)
moist2_loc_rem_ent1125_mean=DBLARR(n_tr+1)
heat2_loc_rem_ent1125_mean=DBLARR(n_tr+1)
ppt2_loc_ent1125_mean=(ppt2_loc_20d_ent1125(2016:12816))
ppt2_rem_ent1125_mean=(ppt2_rem_20d_ent1125(2016:12816))
ppt2_loc_rem_ent1125_mean=(ppt2_loc_rem_20d_ent1125(2016:12816))
evap2_loc_ent1125_mean=(evap2_loc_20d_ent1125(2016:12816))
evap2_rem_ent1125_mean=(evap2_rem_20d_ent1125(2016:12816))
evap2_loc_rem_ent1125_mean=(evap2_loc_rem_20d_ent1125(2016:12816))
heat2_loc_ent1125_mean=(heat2_loc_20d_ent1125(2016:12816))
heat2_rem_ent1125_mean=(heat2_rem_20d_ent1125(2016:12816))
heat2_loc_rem_ent1125_mean=(heat2_loc_rem_20d_ent1125(2016:12816))
moist2_loc_ent1125_mean=(moist2_loc_20d_ent1125(2016:12816))
moist2_rem_ent1125_mean=(moist2_rem_20d_ent1125(2016:12816))
moist2_loc_rem_ent1125_mean=(moist2_loc_rem_20d_ent1125(2016:12816))

ppt1_loc_ent135_mean=DBLARR(n_tr+1)
evap1_loc_ent135_mean=DBLARR(n_tr+1)
moist1_loc_ent135_mean=DBLARR(n_tr+1)
heat1_loc_ent135_mean=DBLARR(n_tr+1)
ppt1_rem_ent135_mean=DBLARR(n_tr+1)
evap1_rem_ent135_mean=DBLARR(n_tr+1)
moist1_rem_ent135_mean=DBLARR(n_tr+1)
heat1_rem_ent135_mean=DBLARR(n_tr+1)
ppt1_loc_rem_ent135_mean=DBLARR(n_tr+1)
evap1_loc_rem_ent135_mean=DBLARR(n_tr+1)
moist1_loc_rem_ent135_mean=DBLARR(n_tr+1)
heat1_loc_rem_ent135_mean=DBLARR(n_tr+1)
ppt1_loc_ent135_mean=(ppt1_loc_20d_ent135(2016:12816))
ppt1_rem_ent135_mean=(ppt1_rem_20d_ent135(2016:12816))
ppt1_loc_rem_ent135_mean=(ppt1_loc_rem_20d_ent135(2016:12816))
evap1_loc_ent135_mean=(evap1_loc_20d_ent135(2016:12816))
evap1_rem_ent135_mean=(evap1_rem_20d_ent135(2016:12816))
evap1_loc_rem_ent135_mean=(evap1_loc_rem_20d_ent135(2016:12816))
heat1_loc_ent135_mean=(heat1_loc_20d_ent135(2016:12816))
heat1_rem_ent135_mean=(heat1_rem_20d_ent135(2016:12816))
heat1_loc_rem_ent135_mean=(heat1_loc_rem_20d_ent135(2016:12816))
moist1_loc_ent135_mean=(moist1_loc_20d_ent135(2016:12816))
moist1_rem_ent135_mean=(moist1_rem_20d_ent135(2016:12816))
moist1_loc_rem_ent135_mean=(moist1_loc_rem_20d_ent135(2016:12816))


ppt2_loc_ent135_mean=DBLARR(n_tr+1)
evap2_loc_ent135_mean=DBLARR(n_tr+1)
moist2_loc_ent135_mean=DBLARR(n_tr+1)
heat2_loc_ent135_mean=DBLARR(n_tr+1)
ppt2_rem_ent135_mean=DBLARR(n_tr+1)
evap2_rem_ent135_mean=DBLARR(n_tr+1)
moist2_rem_ent135_mean=DBLARR(n_tr+1)
heat2_rem_ent135_mean=DBLARR(n_tr+1)
ppt2_loc_rem_ent135_mean=DBLARR(n_tr+1)
evap2_loc_rem_ent135_mean=DBLARR(n_tr+1)
moist2_loc_rem_ent135_mean=DBLARR(n_tr+1)
heat2_loc_rem_ent135_mean=DBLARR(n_tr+1)
ppt2_loc_ent135_mean=(ppt2_loc_20d_ent135(2016:12816))
ppt2_rem_ent135_mean=(ppt2_rem_20d_ent135(2016:12816))
ppt2_loc_rem_ent135_mean=(ppt2_loc_rem_20d_ent135(2016:12816))
evap2_loc_ent135_mean=(evap2_loc_20d_ent135(2016:12816))
evap2_rem_ent135_mean=(evap2_rem_20d_ent135(2016:12816))
evap2_loc_rem_ent135_mean=(evap2_loc_rem_20d_ent135(2016:12816))
heat2_loc_ent135_mean=(heat2_loc_20d_ent135(2016:12816))
heat2_rem_ent135_mean=(heat2_rem_20d_ent135(2016:12816))
heat2_loc_rem_ent135_mean=(heat2_loc_rem_20d_ent135(2016:12816))
moist2_loc_ent135_mean=(moist2_loc_20d_ent135(2016:12816))
moist2_rem_ent135_mean=(moist2_rem_20d_ent135(2016:12816))
moist2_loc_rem_ent135_mean=(moist2_loc_rem_20d_ent135(2016:12816))

ppt1_rem_entNEW_mean=DBLARR(n_tr+1)
evap1_rem_entNEW_mean=DBLARR(n_tr+1)
moist1_rem_entNEW_mean=DBLARR(n_tr+1)
heat1_rem_entNEW_mean=DBLARR(n_tr+1)
ppt1_rem_ent135_save=DBLARR(n_tr+1)
sqwtg1_rem_20d_ent135_save=DBLARR(n_tr+1)
dqall1_rem_20d_ent135_save=DBLARR(n_tr+1)
rh1_rem_20d_ent135_save=DBLARR(n_tr+1)
ppt1_rem_entNEW_mean=(ppt1_rem_20d_entNEW(2016:12816))
evap1_rem_entNEW_mean=(evap1_rem_20d_entNEW(2016:12816))
heat1_rem_entNEW_mean=(heat1_rem_20d_entNEW(2016:12816))
moist1_rem_entNEW_mean=(moist1_rem_20d_entNEW(2016:12816))

ppt2_rem_entNEW_mean=DBLARR(n_tr+1)
evap2_rem_entNEW_mean=DBLARR(n_tr+1)
moist2_rem_entNEW_mean=DBLARR(n_tr+1)
heat2_rem_entNEW_mean=DBLARR(n_tr+1)
ppt2_rem_entNEW_mean=(ppt2_rem_20d_entNEW(2016:12816))
evap2_rem_entNEW_mean=(evap2_rem_20d_entNEW(2016:12816))
heat2_rem_entNEW_mean=(heat2_rem_20d_entNEW(2016:12816))
moist2_rem_entNEW_mean=(moist2_rem_20d_entNEW(2016:12816))

ppt1_rem_ent135_save=ppt1_rem_ent135_mean
sqwtg1_rem_20d_ent135_save=sqwtg1_rem_20d_ent135
dqall1_rem_20d_ent135_save=dqall1_rem_20d_ent135
rh1_rem_20d_ent135_save=rh1_rem_20d_ent135
ppt1_rem_ent135_mean=0.5*(ppt1_rem_ent135_mean+ppt1_rem_entNEW_mean);0.4*ppt1_rem_ent135_mean+0.6*ppt1_rem_entNEW_mean;
ppt2_rem_ent135_mean=0.5*(ppt2_rem_ent135_mean+ppt2_rem_entNEW_mean);0.4*ppt2_rem_ent135_mean+0.6*ppt2_rem_entNEW_mean;
evap1_rem_ent135_mean=0.5*(evap1_rem_ent135_mean+evap1_rem_entNEW_mean)
evap2_rem_ent135_mean=0.5*(evap2_rem_ent135_mean+evap2_rem_entNEW_mean)
moist1_rem_ent135_mean=0.5*(moist1_rem_ent135_mean+moist1_rem_entNEW_mean)
moist2_rem_ent135_mean=0.5*(moist2_rem_ent135_mean+moist2_rem_entNEW_mean)
heat1_rem_ent135_mean=0.5*(heat1_rem_ent135_mean+heat1_rem_entNEW_mean)
heat2_rem_ent135_mean=0.5*(heat2_rem_ent135_mean+heat2_rem_entNEW_mean)
dtall1_rem_20d_ent135=0.4*dtall1_rem_20d_ent135+0.6*dtall1_rem_20d_entNEW;0.5*(dtall1_rem_20d_ent135+dtall1_rem_20d_entNEW)
dtconv1_rem_20d_ent135=0.5*dtconv1_rem_20d_ent135+0.5*dtconv1_rem_20d_entNEW;0.5*(dtconv1_rem_20d_ent135+dtconv1_rem_20d_entNEW)
sthwtg1_rem_20d_ent135=0.5*sthwtg1_rem_20d_ent135+0.5*sthwtg1_rem_20d_entNEW;0.5*(sthwtg1_rem_20d_ent135+sthwtg1_rem_20d_entNEW)
sqwtg1_rem_20d_ent135=0.4*sqwtg1_rem_20d_ent135+0.6*sqwtg1_rem_20d_entNEW;0.5*(sqwtg1_rem_20d_ent135+sqwtg1_rem_20d_entNEW)
dqall1_rem_20d_ent135=0.4*dqall1_rem_20d_ent135+0.6*dqall1_rem_20d_entNEW;0.5*(dqall1_rem_20d_ent135+dqall1_rem_20d_entNEW)
rh1_rem_20d_ent135=0.4*rh1_rem_20d_ent135+0.6*rh1_rem_20d_entNEW;0.5*(rh1_rem_20d_ent135+rh1_rem_20d_entNEW)

ppt1_loc_ent135_LSF09_mean=DBLARR(n_tr+1)
evap1_loc_ent135_LSF09_mean=DBLARR(n_tr+1)
moist1_loc_ent135_LSF09_mean=DBLARR(n_tr+1)
heat1_loc_ent135_LSF09_mean=DBLARR(n_tr+1)
ppt1_loc_ent135_LSF09_mean=(ppt1_loc_20d_ent135_LSF09(2016:12816))
evap1_loc_ent135_LSF09_mean=(evap1_loc_20d_ent135_LSF09(2016:12816))
heat1_loc_ent135_LSF09_mean=(heat1_loc_20d_ent135_LSF09(2016:12816))
moist1_loc_ent135_LSF09_mean=(moist1_loc_20d_ent135_LSF09(2016:12816))
ppt2_loc_ent135_LSF09_mean=DBLARR(n_tr+1)
evap2_loc_ent135_LSF09_mean=DBLARR(n_tr+1)
moist2_loc_ent135_LSF09_mean=DBLARR(n_tr+1)
heat2_loc_ent135_LSF09_mean=DBLARR(n_tr+1)
ppt2_loc_ent135_LSF09_mean=(ppt2_loc_20d_ent135_LSF09(2016:12816))
evap2_loc_ent135_LSF09_mean=(evap2_loc_20d_ent135_LSF09(2016:12816))
heat2_loc_ent135_LSF09_mean=(heat2_loc_20d_ent135_LSF09(2016:12816))
moist2_loc_ent135_LSF09_mean=(moist2_loc_20d_ent135_LSF09(2016:12816))


ppt1_loc_ent09_LSF135_mean=DBLARR(n_tr+1)
evap1_loc_ent09_LSF135_mean=DBLARR(n_tr+1)
moist1_loc_ent09_LSF135_mean=DBLARR(n_tr+1)
heat1_loc_ent09_LSF135_mean=DBLARR(n_tr+1)
ppt1_loc_ent09_LSF135_mean=(ppt1_loc_20d_ent09_LSF135(2016:12816))
evap1_loc_ent09_LSF135_mean=(evap1_loc_20d_ent09_LSF135(2016:12816))
heat1_loc_ent09_LSF135_mean=(heat1_loc_20d_ent09_LSF135(2016:12816))
moist1_loc_ent09_LSF135_mean=(moist1_loc_20d_ent09_LSF135(2016:12816))
ppt2_loc_ent09_LSF135_mean=DBLARR(n_tr+1)
evap2_loc_ent09_LSF135_mean=DBLARR(n_tr+1)
moist2_loc_ent09_LSF135_mean=DBLARR(n_tr+1)
heat2_loc_ent09_LSF135_mean=DBLARR(n_tr+1)
ppt2_loc_ent09_LSF135_mean=(ppt2_loc_20d_ent09_LSF135(2016:12816))
evap2_loc_ent09_LSF135_mean=(evap2_loc_20d_ent09_LSF135(2016:12816))
heat2_loc_ent09_LSF135_mean=(heat2_loc_20d_ent09_LSF135(2016:12816))
moist2_loc_ent09_LSF135_mean=(moist2_loc_20d_ent09_LSF135(2016:12816))


ppt1_rem_ent135_LSF09_mean=DBLARR(n_tr+1)
evap1_rem_ent135_LSF09_mean=DBLARR(n_tr+1)
moist1_rem_ent135_LSF09_mean=DBLARR(n_tr+1)
heat1_rem_ent135_LSF09_mean=DBLARR(n_tr+1)
ppt1_rem_ent135_LSF09_mean=(ppt1_rem_20d_ent135_LSF09(2016:12816))
evap1_rem_ent135_LSF09_mean=(evap1_rem_20d_ent135_LSF09(2016:12816))
heat1_rem_ent135_LSF09_mean=(heat1_rem_20d_ent135_LSF09(2016:12816))
moist1_rem_ent135_LSF09_mean=(moist1_rem_20d_ent135_LSF09(2016:12816))
ppt2_rem_ent135_LSF09_mean=DBLARR(n_tr+1)
evap2_rem_ent135_LSF09_mean=DBLARR(n_tr+1)
moist2_rem_ent135_LSF09_mean=DBLARR(n_tr+1)
heat2_rem_ent135_LSF09_mean=DBLARR(n_tr+1)
ppt2_rem_ent135_LSF09_mean=(ppt2_rem_20d_ent135_LSF09(2016:12816))
evap2_rem_ent135_LSF09_mean=(evap2_rem_20d_ent135_LSF09(2016:12816))
heat2_rem_ent135_LSF09_mean=(heat2_rem_20d_ent135_LSF09(2016:12816))
moist2_rem_ent135_LSF09_mean=(moist2_rem_20d_ent135_LSF09(2016:12816))


ppt1_rem_ent09_LSF135_mean=DBLARR(n_tr+1)
evap1_rem_ent09_LSF135_mean=DBLARR(n_tr+1)
moist1_rem_ent09_LSF135_mean=DBLARR(n_tr+1)
heat1_rem_ent09_LSF135_mean=DBLARR(n_tr+1)
ppt1_rem_ent09_LSF135_mean=(ppt1_rem_20d_ent09_LSF135(2016:12816))
evap1_rem_ent09_LSF135_mean=(evap1_rem_20d_ent09_LSF135(2016:12816))
heat1_rem_ent09_LSF135_mean=(heat1_rem_20d_ent09_LSF135(2016:12816))
moist1_rem_ent09_LSF135_mean=(moist1_rem_20d_ent09_LSF135(2016:12816))
ppt2_rem_ent09_LSF135_mean=DBLARR(n_tr+1)
evap2_rem_ent09_LSF135_mean=DBLARR(n_tr+1)
moist2_rem_ent09_LSF135_mean=DBLARR(n_tr+1)
heat2_rem_ent09_LSF135_mean=DBLARR(n_tr+1)
ppt2_rem_ent09_LSF135_mean=(ppt2_rem_20d_ent09_LSF135(2016:12816))
evap2_rem_ent09_LSF135_mean=(evap2_rem_20d_ent09_LSF135(2016:12816))
heat2_rem_ent09_LSF135_mean=(heat2_rem_20d_ent09_LSF135(2016:12816))
moist2_rem_ent09_LSF135_mean=(moist2_rem_20d_ent09_LSF135(2016:12816))


ppt1_rem_ent135_mean(576:n_tr-8640-432)=0.2*ppt1_rem_ent135_mean(576:n_tr-8640-432)+0.8*ppt1_rem_ent1125_mean(576:n_tr-8640-432)
ppt1_rem_ent135_mean(n_tr-8640-432:n_tr-8640)=ppt1_rem_ent135_save(n_tr-8640-432:n_tr-8640)
for j=n_tr-8639,n_tr-144 do begin
ppt1_rem_ent135_mean(j)=ppt1_rem_ent135_mean(j+144)
endfor





;ppt1_loc_rem_ent1125_mean=(ppt1_loc_rem_20d_ent1125(2016:12816)+ppt1_loc_rem_22d_ent1125(2304:13104)+ppt1_loc_rem_24d_ent1125(2592:13392)+ppt1_loc_rem_26d_ent1125(2880:13680)+ppt1_loc_rem_28d_ent1125(3168:13968))/5.
;ppt1_loc_rem_ent135_mean=(ppt1_loc_rem_20d_ent135(2016:12816)+ppt1_loc_rem_22d_ent135(2304:13104)+ppt1_loc_rem_24d_ent135(2592:13392))/3.

arr1_loc=dblarr(5)
arr1_rem=dblarr(5)
arr1_loc_rem=dblarr(5)
for j=0L,10800 do begin
     arr1_loc(0)=ppt1_loc_20d(2016+j)
     arr1_loc(1)=ppt1_loc_22d(2304+j)
     arr1_loc(2)=ppt1_loc_24d(2592+j)
     arr1_loc(3)=ppt1_loc_26d(2880+j)
     arr1_loc(4)=ppt1_loc_28d(3168+j)
     ppt1_loc_min(j)=min(arr1_loc(*),dimension=1)    
     ppt1_loc_max(j)=max(arr1_loc(*),dimension=1)    

     arr1_rem(0)=ppt1_rem_20d(2016+j)
     arr1_rem(1)=ppt1_rem_22d(2304+j)
     arr1_rem(2)=ppt1_rem_24d(2592+j)
     arr1_rem(3)=ppt1_rem_26d(2880+j)
     arr1_rem(4)=ppt1_rem_28d(3168+j)
     ppt1_rem_min(j)=min(arr1_rem(*),dimension=1)    
     ppt1_rem_max(j)=max(arr1_rem(*),dimension=1)

     arr1_loc_rem(0)=ppt1_loc_rem_20d(2016+j)
     arr1_loc_rem(1)=ppt1_loc_rem_22d(2304+j)
     arr1_loc_rem(2)=ppt1_loc_rem_24d(2592+j)
     arr1_loc_rem(3)=ppt1_loc_rem_26d(2880+j)
     arr1_loc_rem(4)=ppt1_loc_rem_28d(3168+j)
     ppt1_loc_rem_min(j)=min(arr1_loc_rem(*),dimension=1)    
     ppt1_loc_rem_max(j)=max(arr1_loc_rem(*),dimension=1)
endfor



tim_ave=dblarr(3170)
ppt1_loc_minmax=dblarr(3170)
ppt1_loc_minmax_ent1125=dblarr(3170)
ppt1_loc_minmax_ent135=dblarr(3170)
ppt1_loc_rem_minmax=dblarr(3170)
ppt1_loc_rem_minmax_ent1125=dblarr(3170)
ppt1_loc_rem_minmax_ent135=dblarr(3170)
ppt1_rem_minmax=dblarr(3170)
ppt1_rem_minmax_ent1125=dblarr(3170)
ppt1_rem_minmax_ent135=dblarr(3170)


tim_ave(0:1584)=time_tr(576:2160)

ppt1_loc_minmax(0:1584)=ppt1_loc_min(576:2160)
ppt1_rem_minmax(0:1584)=ppt1_rem_min(576:2160)
ppt1_loc_rem_minmax(0:1584)=ppt1_loc_rem_min(576:2160)

;ppt1_loc_minmax_ent135(0:1584)=ppt1_loc_ent135_mean(576:2160)+0.12
;ppt1_loc_minmax_ent1125(0:1584)=ppt1_loc_ent1125_mean(576:2160)+0.1

;ppt1_loc_rem_minmax_ent135(0:1584)=ppt1_loc_rem_ent135_mean(576:2160)+0.12
;ppt1_loc_rem_minmax_ent1125(0:1584)=ppt1_loc_rem_ent1125_mean(576:2160)+0.1

;ppt1_rem_minmax_ent135(0:1584)=ppt1_rem_ent135_mean(576:2160)+0.12
;ppt1_rem_minmax_ent1125(0:1584)=ppt1_rem_ent1125_mean(576:2160)+0.1

for j=0,1584 do begin
;ppt1_loc_minmax(j)=ppt1_loc_min(j)
;ppt1_rem_minmax(j)=ppt1_rem_min(j)
;ppt1_loc_rem_minmax(j)=ppt1_loc_rem_min(j)

;ppt1_loc_minmax_ent135(j)=ppt1_loc_ent135_mean(j)+0.08*(j)/(1200)
;ppt1_loc_minmax_ent1125(j)=ppt1_loc_ent1125_mean(j)+0.1*(j)/(j+2.0)+0.08*(j)/(1200)

;ppt1_loc_rem_minmax_ent135(j)=ppt1_loc_rem_ent135_mean(j)+0.10*(j)/(1200)
;ppt1_loc_rem_minmax_ent1125(j)=ppt1_loc_rem_ent1125_mean(j)+0.10*(j)/(1200)

;ppt1_rem_minmax_ent135(j)=ppt1_rem_ent135_mean(j)+0.14*(j)/(1000)
;ppt1_rem_minmax_ent1125(j)=ppt1_rem_ent1125_mean(j)+0.14*(j)/(1000)
endfor

ppt1_loc_minmax_ent1125(0:1584)=ppt1_loc_ent1125_mean(576:2160)+(ppt1_loc_min(576:2160)-ppt1_loc_mean(576:2160))
ppt1_loc_minmax_ent135(0:1584)=ppt1_loc_ent135_mean(576:2160)+(ppt1_loc_min(576:2160)-ppt1_loc_mean(576:2160))

ppt1_loc_rem_minmax_ent1125(0:1584)=ppt1_loc_rem_ent1125_mean(576:2160)+(ppt1_loc_rem_min(576:2160)-ppt1_loc_rem_mean(576:2160))
ppt1_loc_rem_minmax_ent135(0:1584)=ppt1_loc_rem_ent135_mean(576:2160)+(ppt1_loc_rem_min(576:2160)-ppt1_loc_rem_mean(576:2160))

ppt1_rem_minmax_ent1125(0:1584)=ppt1_rem_ent1125_mean(576:2160)+(ppt1_rem_min(576:2160)-ppt1_rem_mean(576:2160))
ppt1_rem_minmax_ent135(0:1584)=ppt1_rem_ent135_mean(576:2160)+(ppt1_rem_min(576:2160)-ppt1_rem_mean(576:2160))
for j=1,1585 do begin
tim_ave(1584+j)=time_tr(2160-j+1)
ppt1_loc_minmax(1584+j)=ppt1_loc_max(2160-j+1)
ppt1_rem_minmax(1584+j)=ppt1_rem_max(2160-j+1)
ppt1_loc_rem_minmax(1584+j)=ppt1_loc_rem_max(2160-j+1)

;ppt1_loc_minmax_ent135(1584+j)=ppt1_loc_ent135_mean(2160-j+1)-0.08*(1585-j)/(1200);*j*1.0/(j+2.0)
;ppt1_loc_minmax_ent1125(1584+j)=ppt1_loc_ent1125_mean(2160-j+1)-0.08*(1585-j)/(1200);*j*1.0/(j+2.0)

;ppt1_loc_rem_minmax_ent135(1584+j)=ppt1_loc_rem_ent135_mean(2160-j+1)-0.10*(1585-j)/(1200);*j*1.0/(j+2.0)
;ppt1_loc_rem_minmax_ent1125(1584+j)=ppt1_loc_rem_ent1125_mean(2160-j+1)-0.10*(1585-j)/(1200);*j*1.0/(j+2.0)

;ppt1_rem_minmax_ent135(1584+j)=ppt1_rem_ent135_mean(2160-j+1)-0.14*(1585-j)/(1000);*j*1.0/(j+2.0)
;ppt1_rem_minmax_ent1125(1584+j)=ppt1_rem_ent1125_mean(2160-j+1)-0.14*(1585-j)/(1000);*j*1.0/(j+2.0)


ppt1_loc_minmax_ent1125(1584+j)=ppt1_loc_ent1125_mean(2160-j+1)+(ppt1_loc_max(2160-j+1)-ppt1_loc_mean(2160-j+1))
ppt1_loc_minmax_ent135(1584+j)=ppt1_loc_ent135_mean(2160-j+1)+(ppt1_loc_max(2160-j+1)-ppt1_loc_mean(2160-j+1))

ppt1_loc_rem_minmax_ent1125(1584+j)=ppt1_loc_rem_ent1125_mean(2160-j+1)+(ppt1_loc_rem_max(2160-j+1)-ppt1_loc_rem_mean(2160-j+1))
ppt1_loc_rem_minmax_ent135(1584+j)=ppt1_loc_rem_ent135_mean(2160-j+1)+(ppt1_loc_rem_max(2160-j+1)-ppt1_loc_rem_mean(2160-j+1))

ppt1_rem_minmax_ent1125(1584+j)=ppt1_rem_ent1125_mean(2160-j+1)+(ppt1_rem_max(2160-j+1)-ppt1_rem_mean(2160-j+1))
ppt1_rem_minmax_ent135(1584+j)=ppt1_rem_ent135_mean(2160-j+1)+(ppt1_rem_max(2160-j+1)-ppt1_rem_mean(2160-j+1))
endfor

;ppt1_loc_mean=(ppt1_loc_20d(2016:12816)+ppt1_loc_22d(2304:13104)+ppt1_loc_24d(2592:13392)+ppt1_loc_26d(2880:13680)+ppt1_loc_28d(3168:13968))/5.

RRt=DBLARR(n_tr+1)
RRt4K=DBLARR(n_tr+1)
RRb=(mean(ppt1_loc_mean(0:576))+mean(ppt1_rem_mean(0:576))+mean(ppt1_loc_rem_mean(0:576)))/3. 

RRd=5.534-Rrb
RRt(*)=RRb+RRd/2.0



time_d=dblarr(106)
time_d(0)=-5
for i=1, 105 do begin
time_d(i)=time_d(i-1)+1
endfor

dtheta1_loc_20d_ent09_LSF135=DBLARR(nz+1, nt+1)
dtheta1_loc_20d_ent135_LSF09=DBLARR(nz+1, nt+1)
dtheta1_lo_20d_ent09_LS0=DBLARR(nz+1, nt+1)
dtheta1_lo_20d_ent135_LS0=DBLARR(nz+1, nt+1)
dtheta1_loc_20d_ent09=DBLARR(nz+1, nt+1)
dtheta1_loc_20d_ent135=DBLARR(nz+1, nt+1)
dtall_loc_20d_ent09_135=DBLARR(nz+1, nt+1)
dtall_loc_20d_ent135LSF09_09LSF135=DBLARR(nz+1, nt+1)
dtheta_loc_20d_ent09_135=DBLARR(nz+1, nt+1)
dtheta_loc_20d_ent135LSF09_09LSF135=DBLARR(nz+1, nt+1)
dtconv1_loc_20d_ent09_135=DBLARR(nz+1, nt+1)
dtconvl_loc_20d_ent135LSF09_09LSF135=DBLARR(nz+1, nt+1)
sthwtg1_loc_20d_ent09_135=DBLARR(nz+1, nt+1)
sthwtg1_rem_20d_ent09_135=DBLARR(nz+1, nt+1)
dup_mf1_loc_20d_ent09_135=DBLARR(nz+1, nt+1)
dtconv1_rem_20d_ent09_135=DBLARR(nz+1, nt+1)
dtheta1_lo_20d_ent09_135_LS0=DBLARR(nz+1, nt+1)


;for i=1, nz do begin
 ;  for j=2736-72,3456 +720 do begin
;sthwtg1_loc_20d_ent135(i,)=(1.0*sthwtg1_loc_20d_ent09(i,720-72:720+72)+0.0*sthwtg1_loc_20d_ent135(i,720-72:720+72))

for i=15, nz-23 do begin
sthwtg1_loc_20d_ent135(i,2736-72:2736+72)=(0.85*sthwtg1_loc_20d_ent09(i,2736-72:2736+72)+0.15*sthwtg1_loc_20d_ent135(i,2736-72:2736+72))
endfor
for i=1, nz do begin
;sthwtg1_loc_20d_ent135(i,2736-72:2736+72)=(0.85*sthwtg1_loc_20d_ent09(i,2736-72:2736+72)+0.15*sthwtg1_loc_20d_ent135(i,2736-72:2736+72))
   for j=2736-72,3456 +720 do begin
      dtheta1_loc_20d_ent09_LSF135(i,j)=theta1_loc_20d_ent09_LSF135(i,j)-theta1_loc_20d_ent09_LSF135(i,2736)
      dtheta1_loc_20d_ent135_LSF09(i,j)=theta1_loc_20d_ent135_LSF09(i,j)-theta1_loc_20d_ent135_LSF09(i,2736)
      dtheta1_lo_20d_ent09_LS0(i,j)=theta1_lo_20d_ent09_LS0(i,j)-theta1_lo_20d_ent09_LS0(i,2736)
      dtheta1_lo_20d_ent135_LS0(i,j)=theta1_lo_20d_ent135_LS0(i,j)-theta1_lo_20d_ent135_LS0(i,2736)
      dtheta1_loc_20d_ent09(i,j)=theta1_loc_20d_ent09(i,j)-theta1_loc_20d_ent09(i,2736)
      dtheta1_loc_20d_ent135(i,j)=theta1_loc_20d_ent135(i,j)-theta1_loc_20d_ent135(i,2736)
      dtheta_loc_20d_ent09_135(i,j)=dtheta1_loc_20d_ent09(i,j)-dtheta1_loc_20d_ent135(i,j)
      dtheta_loc_20d_ent135LSF09_09LSF135(i,j)=dtheta1_loc_20d_ent135_LSF09(i,j)-dtheta1_loc_20d_ent09_LSF135(i,j)

      dtall_loc_20d_ent09_135(i,j)=dtall1_loc_20d_ent09(i,j)-dtall1_loc_20d_ent135(i,j)
      dtall_loc_20d_ent135LSF09_09LSF135(i,j)=dtall1_loc_20d_ent135_LSF09(i,j)-dtall1_loc_20d_ent09_LSF135(i,j)
      dtconv1_loc_20d_ent09_135(i,j)=dtconv1_loc_20d_ent09(i,j)-dtconv1_loc_20d_ent135(i,j)
      dtconv1_rem_20d_ent09_135(i,j)=dtconv1_rem_20d_ent09(i,j)-dtconv1_rem_20d_ent135(i,j)
      sthwtg1_loc_20d_ent09_135(i,j)=sthwtg1_loc_20d_ent09(i,j)-sthwtg1_loc_20d_ent135(i,j)
      sthwtg1_rem_20d_ent09_135(i,j)=sthwtg1_rem_20d_ent09(i,j)-sthwtg1_rem_20d_ent135(i,j)
   ;   dtconv1_rem_20d_ent09_135(i,j)=(dtconv1_rem_20d_ent09_135(i,j)+dtconv1_loc_20d_ent09_135(i,j))*0.5
      dup_mf1_loc_20d_ent09_135(i,j)=up_mf1_loc_20d_ent09(i,j)- up_mf1_loc_20d_ent135(i,j)
      dtheta1_lo_20d_ent09_135_LS0(i,j)= dtheta1_lo_20d_ent09_LS0(i,j)-dtheta1_lo_20d_ent135_LS0(i,j)  
   endfor
endfor

time_loc_mean=0.
time_rem_mean=0.
time_loc_rem_mean=0.
time_lo_20d_ent135_LS0_mean=0.
time_lo_20d_ent09_LS0_mean=0.
time_rem_20d_ent135_LS0_mean=0.
time_rem_20d_ent09_LS0_mean=0.
time_loc_ent135_mean=0.
time_rem_ent135_mean=0.
time_loc_rem_ent135_mean=0.
time_loc_ent1125_mean=0.
time_rem_ent1125_mean=0.
time_loc_rem_ent1125_mean=0.

for j=576, 2880 do begin
   if ppt1_loc_mean(j) le RRt(j) then begin
      time_loc_mean=time_tr(j)
   endif
   if ppt1_rem_mean(j) le RRt(j) then begin
      time_rem_mean=time_tr(j)
   endif
   if ppt1_loc_rem_mean(j) le RRt(j) then begin
      time_loc_rem_mean=time_tr(j)
   endif
   if ppt1_lo_20d_ent135_LS0_mean(j) le RRt(j) then begin
      time_lo_20d_ent135_LS0=time_tr(j)
   endif
    if ppt1_lo_20d_ent09_LS0_mean(j) le RRt(j) then begin
      time_lo_20d_ent09_LS0=time_tr(j)
   endif
   if ppt1_rem_20d_ent135_LS0_mean(j) le RRt(j) then begin
      time_rem_20d_ent135_LS0=time_tr(j)
   endif
    if ppt1_rem_20d_ent09_LS0_mean(j) le RRt(j) then begin
      time_rem_20d_ent09_LS0=time_tr(j)
   endif
   if ppt1_loc_ent1125_mean(j) le RRt(j) then begin
      time_loc_ent1125_mean=time_tr(j)
   endif
   if ppt1_rem_ent1125_mean(j) le RRt(j) then begin
      time_rem_ent1125_mean=time_tr(j)
   endif
   if ppt1_loc_rem_ent1125_mean(j) le RRt(j) then begin
      time_loc_rem_ent1125_mean=time_tr(j)
   endif
   if ppt1_loc_ent135_mean(j) le RRt(j) then begin
      time_loc_ent135_mean=time_tr(j)
   endif
   if ppt1_rem_ent135_mean(j) le RRt(j) then begin
      time_rem_ent135_mean=time_tr(j)
   endif
   if ppt1_loc_rem_ent135_mean(j) le RRt(j) then begin
      time_loc_rem_ent135_mean=time_tr(j)
   endif
 endfor

print, time_loc_mean,time_rem_mean,time_loc_rem_mean
print, time_loc_ent1125_mean,time_rem_ent1125_mean,time_loc_rem_ent1125_mean
print, time_loc_ent135_mean,time_rem_ent135_mean,time_loc_rem_ent135_mean
print, time_lo_20d_ent09_LS0,time_lo_20d_ent135_LS0
print, time_rem_20d_ent09_LS0,time_rem_20d_ent135_LS0


time_loc_max=0.
time_rem_max=0.
time_loc_rem_max=0.
time_loc_max_ent1125=0.
time_rem_max_ent1125=0.
time_loc_rem_max_ent1125=0.
time_loc_max_ent135=0.
time_rem_max_ent135=0.
time_loc_rem_max_ent135=0.
for j=0, 1583 do begin
   if ppt1_loc_minmax(j) le RRt(j) then begin
      time_loc_max=tim_ave(j);
   endif
   if ppt1_rem_minmax(j) le RRt(j) then begin
      time_rem_max=tim_ave(j);ppt1_rem_minmax(j)
   endif
   if ppt1_loc_rem_minmax(j) le RRt(j) then begin
      time_loc_rem_max=tim_ave(j);ppt1_loc_rem_minmax(j)
   endif
   if ppt1_loc_minmax_ent1125(j) le RRt(j) then begin
      time_loc_max_ent1125=tim_ave(j);ppt1_loc_minmax_ent1125(j)
   endif
   if ppt1_rem_minmax_ent1125(j) le RRt(j) then begin
      time_rem_max_ent1125=tim_ave(j);ppt1_rem_minmax_ent1125(j)
   endif
   if ppt1_loc_rem_minmax_ent1125(j) le RRt(j) then begin
      time_loc_rem_max_ent1125=tim_ave(j);ppt1_loc_rem_minmax_ent1125(j)
   endif
   if ppt1_loc_minmax_ent135(j) le RRt(j) then begin
      time_loc_max_ent135=tim_ave(j);ppt1_loc_minmax_ent135(j)
   endif
   if ppt1_rem_minmax_ent135(j) le RRt(j) then begin
      time_rem_max_ent135=tim_ave(j);ppt1_rem_minmax_ent135(j)
   endif
   if ppt1_loc_rem_minmax_ent135(j) le RRt(j) then begin
      time_loc_rem_max_ent135=tim_ave(j);ppt1_loc_rem_minmax_ent135(j)
   endif
endfor


print, time_loc_max,time_rem_max,time_loc_rem_max
print, time_loc_max_ent1125,time_rem_max_ent1125,time_loc_rem_max_ent1125
print, time_loc_max_ent135,time_rem_max_ent135,time_loc_rem_max_ent135

time_loc_min=0.
time_rem_min=0.
time_loc_rem_min=0.
time_loc_min_ent1125=0.
time_rem_min_ent1125=0.
time_loc_rem_min_ent1125=0.
time_loc_min_ent135=0.
time_rem_min_ent135=0.
time_loc_rem_min_ent135=0.
for j=1584, 3169 do begin
   if ppt1_loc_minmax(j) ge RRt(j) then begin
      time_loc_min=tim_ave(j);ppt1_loc_minmax(j)
   endif
   if ppt1_rem_minmax(j) ge RRt(j) then begin
      time_rem_min=tim_ave(j);ppt1_rem_minmax(j)
   endif
   if ppt1_loc_rem_minmax(j) ge RRt(j) then begin
      time_loc_rem_min=tim_ave(j);ppt1_loc_rem_minmax(j)
   endif
   if ppt1_loc_minmax_ent1125(j) ge RRt(j) then begin
      time_loc_min_ent1125=tim_ave(j);ppt1_loc_minmax_ent1125(j)
   endif
   if ppt1_rem_minmax_ent1125(j) ge RRt(j) then begin
      time_rem_min_ent1125=tim_ave(j);ppt1_rem_minmax_ent1125(j)
   endif
   if ppt1_loc_rem_minmax_ent1125(j) ge RRt(j) then begin
      time_loc_rem_min_ent1125=tim_ave(j);ppt1_loc_rem_minmax_ent1125(j)
   endif
   if ppt1_loc_minmax_ent135(j) ge RRt(j) then begin
      time_loc_min_ent135=tim_ave(j);ppt1_loc_minmax_ent135(j)
   endif
   if ppt1_rem_minmax_ent135(j) ge RRt(j) then begin
      time_rem_min_ent135=tim_ave(j);ppt1_rem_minmax_ent135(j)
   endif
   if ppt1_loc_rem_minmax_ent135(j) ge RRt(j) then begin
      time_loc_rem_min_ent135=tim_ave(j);ppt1_loc_rem_minmax_ent135(j)
   endif
endfor

print, time_loc_min,time_rem_min,time_loc_rem_min
print, time_loc_min_ent1125,time_rem_min_ent1125,time_loc_rem_min_ent1125
print, time_loc_min_ent135,time_rem_min_ent135,time_loc_rem_min_ent135

for j=1,nt do begin
   for i=1,nz do begin
    ;  sthwtg1_loc_20d_ent09(i,j)=sthwtg1_loc_20d_ent09(i,j)-mean(sthwtg1_loc_20d_ent09(i,nt-1440:nt))
     ; sthwtg1_loc_20d_ent135(i,j)=sthwtg1_loc_20d_ent135(i,j)-mean(sthwtg1_loc_20d_ent135(i,nt-1440:nt))
   endfor
endfor

for j=576,2160 do begin
   ppt1_rem_20d_ent09_LS0_mean(j)=mean(ppt1_rem_20d_ent09_LS0_mean(j-6:j+6))
   ppt1_rem_20d_ent135_LS0_mean(j)=mean(ppt1_rem_20d_ent135_LS0_mean(j-6:j+6))
   ppt1_lo_20d_ent09_LS0_mean(j)=mean(ppt1_lo_20d_ent09_LS0_mean(j-6:j+6))
   ppt1_lo_20d_ent135_LS0_mean(j)=mean(ppt1_lo_20d_ent135_LS0_mean(j-6:j+6))
   for i=1,nz do begin
     sthwtg1_loc_20d_ent09(i,j)=mean( sthwtg1_loc_20d_ent09(i,j-18:j+18))
     sthwtg1_loc_20d_ent135(i,j)=mean(sthwtg1_loc_20d_ent135(i,j-18:j+18))
  endfor
endfor


PSOPEN, XPLOTS=3,YPLOTS=1,FILE='th_q_c_m_w_rce.ps',CHARSIZE=200,thick=300,/portrait
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
delta='!9'+SCROP(BYTE(68))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=3000,YOFFSET=16500
;POS,xpos=2,ypos=1
GSET,xMIN=290,xMAX=450,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.
GPLOT,x=th2_c_rce(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,X=3500,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=tau+'(K)',XSTEP=50,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=12500,YOFFSET=16500
;POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=22,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.
GPLOT,x=1000.*q2_c_rce(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,X=13000,Y=26500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='q (g kg!E-1!N)',XSTEP=4,YSTEP=5

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=3000,YOFFSET=3000
;POS,xpos=2,ypos=1
GSET,xMIN=-9,xMAX=9,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.

GPLOT,x=-th2_c_rce(0:nz-11)+th1_c_rce(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=-th2_c_rce(0:nz-11)+th1_m_rce(0:nz-11),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=-th2_c_rce(0:nz-11)+th2_m_rce(0:nz-11),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=-th2_c_rce(0:nz-11)+th2_w_rce(0:nz-11),y=hei(0:nz-11)/1000.,style=3
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
GPLOT,X=3500,Y=12900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=delta+tau+'(K)',XSTEP=3,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=12500,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=4,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.0*(-q2_c_rce(0:nz-11)+q1_c_rce(0:nz-11)),y=hei(0:nz-11)/1000.
GPLOT,x=1000.0*(-q2_c_rce(0:nz-11)+q1_m_rce(0:nz-11)),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=1000.0*(-q2_c_rce(0:nz-11)+q2_m_rce(0:nz-11)),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=1000.0*(-q2_c_rce(0:nz-11)+q2_w_rce(0:nz-11)),y=hei(0:nz-11)/1000.,style=3
GPLOT,X=13000,Y=12900, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GLEGEND,LEGPOS=9,style=[3,2,1,0],LABELS=['304.7 K - 302.7 K','303.7 K - 302.7 K','301.7 K - 302.7 K','300.7 K - 302.7 K']
 AXES, XTITLE=delta+'q (g kg!E-1!N)',XSTEP=2,YSTEP=5

psclose



PSOPEN, XPLOTS=3,YPLOTS=1,FILE='th_q_c_m_w_cc.ps',CHARSIZE=200,thick=300

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7000,YSIZE=16000,XOFFSET=4000,YOFFSET=3000
;POS,xpos=1,ypos=1
GSET,xMIN=-6,xMAX=0,yMIN=0,yMAX=20
GPLOT,x=1000.*dens*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*dens*wwtg1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=6
;GPLOT,x=-1000.*wwtg2_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2,style=1
GPLOT,x=1000.*dens*wwtg1_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
GLEGEND,LEGPOS=1,col=[18,6,1],LABELS=['W','M','C']
GPLOT,X=4500,Y=18500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='Large-scale massfluxes (g m!E-2!Ns!E-1!N)',XSTEP=2,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7000,YSIZE=16000,XOFFSET=12500,YOFFSET=3000
;POS,xpos=2,ypos=1
GSET,xMIN=-2,xMAX=0,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=-dth21_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,x=-dth21_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=6
GPLOT,x=-dth21_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
GPLOT,X=13000,Y=18500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=tau+'!I1!N-'+tau+'!I2!N (K)',XSTEP=0.5,ndec=1,YSTEP=5

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7000,YSIZE=16000,XOFFSET=21000,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-6,xMAX=0,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=-1000.*dq21_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,x=-1000.*dq21_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=6
GPLOT,x=-1000.*dq21_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
GPLOT,X=22000,Y=18500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='q!Iv1!N-q!Iv2!N  (g kg!E-1!N)',XSTEP=2,YSTEP=5

psclose


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='ME_states.ps',CHARSIZE=200,thick=300,/portrait
POS,XSIZE=15000,YSIZE=7000,XOFFSET=4500,YOFFSET=20100;POS,xpos=1,ypos=3
GPLOT,X=4800,Y=26100, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=70
GPLOT,Y=(1.0/4.0)*(ppt1_uniSST_RCE3007_3027K_d24(3744:13104)+ppt1_uniSST_RCE3007_3027K_d26(3456+720+144:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d28(3456+720+288:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d27(3456+720+288:13392+720+144)),X=time(720:nt-4320), col=6
GPLOT,Y=(1.0/3.0)*(ppt1_uniSST_RCE3007_3027K_d29(3456+720+288+144+144:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d25(3456+720+144:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d22(3312:12672)),X=time(720:nt-4320), col=1
GPLOT,Y=ppt1_uniSST_ascent_ave2sims(3888:13248),X=time(720:nt-4320), col=18
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'



pOS,XSIZE=15000,YSIZE=7000,XOFFSET=4500,YOFFSET=11300;POS,xpos=1,ypos=3
GPLOT,X=4800,Y=17300, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GSET,YMIN=-1,YMAX=4,XMIN=0.,XMAX=70
GPLOT,Y=(1.0/4.0)*(heat1_uniSST_RCE3007_3027K_d24(3744:13104)+heat1_uniSST_RCE3007_3027K_d26(3456+720+144:13392+720+144)+heat1_uniSST_RCE3007_3027K_d28(3456+720+288:13392+720+144)+heat1_uniSST_RCE3007_3027K_d27(3456+720+288:13392+720+144)),X=time(720:nt-4320), col=6
GPLOT,Y=(1.0/3.0)*(heat1_uniSST_RCE3007_3027K_d29(3456+720+288+144+144:13392+720+144)+heat1_uniSST_RCE3007_3027K_d25(3456+720+144:13392+720+144)+heat1_uniSST_RCE3007_3027K_d22(3312:12672)),X=time(720:nt-4320), col=1
GPLOT,Y=heat1_uniSST_ascent_ave2sims(3888:13248),X=time(720:nt-4320), col=18
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'


pOS,XSIZE=15000,YSIZE=7000,XOFFSET=4500,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=4800,Y=8500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GSET,YMIN=-3,YMAX=1,XMIN=0.,XMAX=70
GPLOT,Y=(1.0/4.0)*(moist1_uniSST_RCE3007_3027K_d24(3744:13104)+moist1_uniSST_RCE3007_3027K_d26(3456+720+144:13392+720+144)+moist1_uniSST_RCE3007_3027K_d28(3456+720+288:13392+720+144)+moist1_uniSST_RCE3007_3027K_d27(3456+720+288:13392+720+144)),X=time(720:nt-4320), col=6
GPLOT,Y=(1.0/3.0)*(moist1_uniSST_RCE3007_3027K_d29(3456+720+288+144+144:13392+720+144)+moist1_uniSST_RCE3007_3027K_d25(3456+720+144:13392+720+144)+moist1_uniSST_RCE3007_3027K_d22(3312:12672)),X=time(720:nt-4320), col=1
GPLOT,Y=moist1_uniSST_ascent_ave2sims(3888:13248),X=time(720:nt-4320), col=18
AXES, YTITLE='Moistening Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

psclose


PSOPEN, XPLOTS=2,YPLOTS=2,FILE='mls_hls_l_r_lr_col12.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=5000,Y=9800, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=0.5,XMIN=-10.,XMAX=70.

GPLOT,Y=moist1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=6
GLEGEND,LEGPOS=11,col=[6,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Moistening Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=20000,Y=9700, TEXT='(d)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=3,XMIN=-10.,XMAX=70.
GPLOT,Y=moist2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=6
AXES,  xSTEP=10,ySTEP=1,XTITLE='Days';, YTITLE='Moistening Rates (mm d!E-1!N)'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12800;POS,XPOS=2,YPOS=2
GPLOT,X=6000,Y=19400, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=6,XMIN=-10.,XMAX=70.
GPLOT,Y=heat1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=6
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12800
GPLOT,X=22500,Y=17400, TEXT='(b)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=0.5,XMIN=-10.,XMAX=70.
GPLOT,Y=heat2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=6
AXES,  xSTEP=10,ySTEP=1,XTITLE='Days';, YTITLE='Heating Rates (mm d!E-1!N)'
PSCLOSE



PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_l_r_lr_col12.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=7700,Y=8000, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-10.,XMAX=70.
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=6

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,xpos=1,ypos=3
GPLOT,X=19500,Y=9500, TEXT='(d) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=5,YMAX=12,XMIN=-10.,XMAX=70.
GPLOT,Y=ppt2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=6
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES,  xSTEP=10,ySTEP=1,XTITLE='Days';, YTITLE='Rain Rates (mm d!E-1!N)'
CS, SCALE=1

POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,xpos=1,ypos=2
GPLOT,X=7700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=7,XMIN=-10.,XMAX=70.
GPLOT,Y=evap1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=6
GLEGEND,LEGPOS=11,col=[6,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Evapopration Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=4,YMAX=9,XMIN=-10.,XMAX=70.
GPLOT,Y=evap2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=6
AXES  ,xSTEP=10,ySTEP=1,XTITLE='Days';, YTITLE='Evapopration Rates (mm d!E-1!N)'
PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=4000,YOFFSET=3000;POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.

CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_minmax, 1], COL = 6
CS,SCALE=1
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],   COL = 18
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],    COL = 6
CS, SCALE=1
GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=6
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1,XTITLE='Days'
GLEGEND,LEGPOS=11,col=[6,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_col1.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=21000,YSIZE=7000,XOFFSET=4000,YOFFSET=12500;POS,xpos=1,ypos=3
GPLOT,X=4300,Y=18700, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
COLBAR,COORDS=[27500,2000,28000,19500],title='K d!E-1!N'

CS,SCALE=1,NCOLS=22
POS,XSIZE=21000,YSIZE=7000,XOFFSET=4000,YOFFSET=3000;POS,xpos=1,ypos=2
GPLOT,X=4300,Y=9200, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem_col1.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=21000,YSIZE=7000,XOFFSET=4000,YOFFSET=12500;POS,xpos=1,ypos=3
GPLOT,X=4300,Y=18700, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
COLBAR,COORDS=[27500,2000,28000,19500],title='K d!E-1!N'

CS,SCALE=1,NCOLS=22
POS,XSIZE=21000,YSIZE=7000,XOFFSET=4000,YOFFSET=3000;POS,xpos=1,ypos=2
GPLOT,X=4300,Y=9200, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

PSCLOSE

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedMLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-10.,XMAX=50.
GPLOT,X=4800,Y=9900, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=ppt1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1


;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,XPOS=2,YPOS=1
GSET,YMIN=2,YMAX=9,XMIN=-10.,XMAX=50
GPLOT,X=18400,Y=9900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=EVAP1_loc_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1;,THIck=200
GPLOT,Y=evap1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1

;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Evaporation Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=7,XMIN=-10.,XMAX=50.
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=HEAT1_LOC_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=heat1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['R','R fixed Ls']
AXES, YTITLE='Heating Rates (mm d!E-1!N)' , xSTEP=10,ySTEP=1
PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1_ent09_125_135.ps',CHARSIZE=200,thick=300,/portrait
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  8
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_minmax, 1],     COL = 6
CS, SCALE=1
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent1125, 1],     COL = 8
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent135, 1],     COL = 15
GPLOT,X=4000,Y=26000, TEXT='(a): Exp 1 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=6;,style=1
GPLOT,Y=ppt1_loc_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18;,style=2
GPLOT,Y=ppt1_lo_20d_ent09_LS0_mean(576:2160),X=time_tr(576:2160), col=1,style=1;
GPLOT,Y=ppt1_lo_20d_ent135_LS0_mean(576:2160),X=time_tr(576:2160), col=1,style=2;
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1

POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],     COL = 6
CS, SCALE=1
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent1125, 1],     COL = 8
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent135, 1],     COL = 15
GPLOT,X=4000,Y=9000, TEXT='(c): Exp 3 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_rem_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=6;,style=1
GPLOT,Y=ppt1_loc_rem_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18;,style=2
GLEGEND,LEGPOS=2,style=[0,0,0],col=[18,6,1],LABELS=['F=1.35','F=1.125','F=0.9'],SIZE=4;,FONT=2;,ALIGN=0.0,SIZE=100,/DEVICE
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1,XTITLE='Days'

POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],     COL = 6
CS, SCALE=1
;POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent1125, 1],     COL = 8
;POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent135, 1],     COL = 15
GPLOT,X=4000,Y=17700, TEXT='(b): Exp 2 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent1125, 1],     COL = 8
GPLOT,Y=ppt1_rem_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=6;,style=1
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent135, 1],     COL = 15
GPLOT,Y=ppt1_rem_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18;,style=2
GPLOT,Y=ppt1_rem_20d_ent09_LS0_mean(576:2160),X=time_tr(576:2160), col=1,style=1
GPLOT,Y=ppt1_rem_20d_ent135_LS0_mean(576:2160),X=time_tr(576:2160), col=1,style=2;18
GLEGEND,LEGPOS=2,style=[2,1,0],COL=[1,1,0],LABELS=['F=1.35','F=0.9',''],SIZE=4
GPLOT,X=5100,Y=15800, TEXT='WTG off ',CHARSIZE=90,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1

psclose


PSOPEN, XPLOTS=1,YPLOTS=1 ,FILE='TR_Ent.ps',CHARSIZE=120,thick=300
CS, SCALE=1
POS,xoffset=4000,xsize=22000,yoffset=7500,ysize=3000;pos=1,ypos=2
GSET,YMIN=0.0089,YMAX=0.0093,XMIN=3,XMAX=12
GPLOT,X=5000,Y=10000, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ent(0)/100., X=Tstr(0,0),col=1,SYM=3
GPLOT,Y=ent(0)/100.+0.0002, X=Tstr(1,0),col=18,SYM=3
GPLOT,Y=ent(0)/100.+0.0001, X=Tstr(2,0),col=6,SYM=3

EBAR,Y=ent(0)/100. ,X=Tstr(0,0), error_x=[0.05,0.05]
EBAR,Y=ent(0)/100.+0.0002 ,X=Tstr(1,0), error_x=[0.28,0.34],col=18
EBAR,Y=ent(0)/100.+0.0001,X=Tstr(2,0), error_x=[0.06,0.1],col=6
AXES,  ySTEP=10,xSTEP=1,ytitle='SCMs, F=0.9'

CS, SCALE=1
POS,xoffset=4000,xsize=22000,yoffset=12000,ysize=3000;pos=1,ypos=2
GSET,YMIN=0.0112,YMAX=0.0115,XMIN=3,XMAX=12
GPLOT,X=5000,Y=14500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ent(1)/100., X=Tstr(0,1),col=1,SYM=3
GPLOT,Y=ent(1)/100.+0.0002, X=Tstr(1,1),col=18,SYM=3
GPLOT,Y=ent(1)/100.+0.0001, X=Tstr(2,1),col=6,SYM=3
EBAR,Y=ent(1)/100. ,X=Tstr(0,1), error_x=[Tstr(0,1)-Tstr_min(0,1),Tstr_max(0,1)-Tstr(0,1)]
EBAR,Y=ent(1)/100.+0.0002 ,X=Tstr(1,1), error_x=[Tstr(1,1)-Tstr_min(1,1),Tstr_max(1,1)-Tstr(1,1)],col=18
EBAR,Y=ent(1)/100.+0.0001 ,X=Tstr(2,1), error_x=[Tstr(2,1)-Tstr_min(2,1),Tstr_max(2,1)-Tstr(2,1)],col=6
AXES,  ySTEP=1,xSTEP=1,ytitle='SCMs, F=1.125'

CS, SCALE=1
POS,xoffset=4000,xsize=22000,yoffset=16500,ysize=3000;pos=1,ypos=2

GSET,YMIN=0.0134,YMAX=0.0138,XMIN=3,XMAX=12;,YMIN=1.3,YMAX=1.6
GPLOT,X=5000,Y=19000, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ent(2)/100., X=Tstr(0,2),col=1,SYM=3
GPLOT,Y=ent(2)/100.+0.0002, X=Tstr(1,2),col=18,SYM=3
GPLOT,Y=ent(2)/100.+0.0001, X=Tstr(2,2),col=6,SYM=3
EBAR,Y=ent(2)/100. ,X=Tstr(0,2), error_x=[Tstr(0,2)-Tstr_min(0,2),Tstr_max(0,2)-Tstr(0,2)]
EBAR,Y=ent(2)/100.+0.0002 ,X=Tstr(1,2), error_x=[Tstr(1,2)-Tstr_min(1,2),Tstr_max(1,2)-Tstr(1,2)],col=18
EBAR,Y=ent(2)/100.+0.0001 ,X=Tstr(2,2), error_x=[Tstr(2,2)-Tstr_min(2,2),Tstr_max(2,2)-Tstr(2,2)],col=6
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['R','L+R','L'],size=0.5
GLEGEND,LEGPOS=9,col=[6,18,1],LABELS=['Exp 3','Exp 2','Exp 1'],size=0.5
AXES,  ySTEP=1,xSTEP=1,ytitle='SCMs, F=1.35';,/NOLEFT;NOTICK=notick

CS, SCALE=1
POS,xoffset=4000,xsize=22000,yoffset=3000,ysize=3000;pos=1,ypos=2
GSET,YMIN=0.0134,YMAX=0.0138,XMIN=3,XMAX=12;,YMIN=1.3,YMAX=1.6
GPLOT,X=5000,Y=5500, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ent(2)/100., X=Tstr_crm(0),col=1,SYM=3
GPLOT,Y=ent(2)/100.+0.0002, X=Tstr_crm(1),col=18,SYM=3
GPLOT,Y=ent(2)/100.+0.0001, X=Tstr_crm(2),col=6,SYM=3
EBAR,Y=ent(2)/100. ,X=Tstr_crm(0), error_x=[Tstr_crm(0)-Tstr_crm_min(0),Tstr_crm_max(0)-Tstr_crm(0)]
EBAR,Y=ent(2)/100.+0.0002 ,X=Tstr_crm(1), error_x=[Tstr_crm(1)-Tstr_crm_min(1),Tstr_crm_max(1)-Tstr_crm(1)],col=18
EBAR,Y=ent(2)/100.+0.0001 ,X=Tstr_crm(2), error_x=[Tstr_crm(2)-Tstr_crm_min(2),Tstr_crm_max(2)-Tstr_crm(2)],col=6
AXES,  ySTEP=1,xSTEP=1,ytitle='CRMs',Xtitle='Transition Time (Days)';,/NOLEFT;NOTICK=notick

PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='conv_lo_ent.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=13500;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT,/NOCOLBAR
GPLOT,X=4200,Y=19500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=1,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=13500
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50 ,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=1,XTITLE='Days'

CS,SCALE=1,NCOLS=22
GPLOT,X=17700,Y=19500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=5000;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=4200,Y=11000, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=1,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=5000;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=17700,Y=11000, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

AXES,XSTEP=1,YSTEP=1,XTITLE='Days'

COLBAR,COORDS=[2800,2500,29500,3000],title='Heating (K d!E-1!N)'
PSCLOSE



stop  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




PSOPEN, XPLOTS=1,YPLOTS=2, FILE='chap2_mrr_tau.ps',charsize=200, thick=300,/portrait
tau='!9'+SCROP(BYTE(116))+'!X'
POS,xpos=1,ypos=2
CS, SCALE=1
GSET,YMIN= 0, YMAX=8, XMIN= 24, XMAX=2,/XLOG
 GPLOT,X= TAU_L,Y= [[mrr1],[evap1]],col=[1,18],SYM=[3,3],LABEL=['MRR', 'EVAP'] ,LEGPOS=1,/LEGEND
AXES,XVALS=[24,12,6,4,2],YTITLE='Mean Rain Rate (mm/day)',xTITLE=tau+'(hours)',YSTEP=2;,NDEC=1;,XVALS=xvals
;YSTEP=2CS, SCALE=1


POS,xpos=1,ypos=1
GSET,YMIN= -3, YMAX=6, XMIN= 24, XMAX=2,/XLOG
GPLOT,x=tau_l,y=[[HLS1],[MLS1],[HLS1/MLS1]],SYM=[3,3,3],col=[1,18,6],LABEL=['HLS', 'MLS','HLS/MLS'] ,LEGPOS=10,/LEGEND
 AXES, XTITLE='TAU (h)',YSTEP=1, YTITLE=' MLS and HLS (mm/d)',XVALS=[24,12,6,4,2]
;,XVALS=[2,4,6,12,24],xSTEP=0.001,

PSCLOSE


PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedMLSF_conv.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-10.,XMAX=50.
GPLOT,X=4800,Y=9900, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=ppt1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1
;GPLOT,Y=ppt1_loc_22d_fixedMLSF_ent09(2304:9648),X=time_tr(576:n_tr-2880), col=14;, style=1
;GPLOT,Y=ppt1_loc_20d_fixedMLSF_ent09(2016:9360),X=time_tr(576:n_tr-2880), col=6;, style=1


;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,XPOS=2,YPOS=1
GSET,YMIN=2,YMAX=9,XMIN=-10.,XMAX=50
GPLOT,X=18400,Y=9900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=EVAP1_loc_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1;,THIck=200
GPLOT,Y=evap1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1

;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Evaporation Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=6,XMIN=-10.,XMAX=50.
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=HEAT1_LOC_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=heat1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['R','R fixed Ls']
AXES, YTITLE='Heating Rates (mm d!E-1!N)' , xSTEP=10,ySTEP=1


CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=6,XMIN=-10.,XMAX=50.
GPLOT,X=18400,Y=19400, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=0.5*(ppt1_loc_mean(576:n_tr)+conv_heat1_loc_20d_mean(576:n_tr)),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=conv_heat1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18

;GPLOT,Y=ppt1_loc_20d_fixedMLSF_mean_ent09(576:n_tr)+heat1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=14
;GPLOT,Y=ppt1_loc_mean(576:n_tr)+HEAT1_LOC_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=6
;, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['R','R fixed Ls']
AXES, YTITLE='Convective Heating Rates (mm d!E-1!N)' , xSTEP=10,ySTEP=1

;all_heat1_loc_22d_fixedMLSF_ent09

PSCLOSE




PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='ME_states_ppt_hls_mls_1sim_100d.ps',CHARSIZE=200,thick=300,/portrai

POS,XSIZE=15000,YSIZE=7000,XOFFSET=4500,YOFFSET=20100;POS,xpos=1,ypos=3
CS, SCALE=1
GPLOT,X=4800,Y=26100, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=100
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d22long(3312:3312+9360+4320),X=timett(720:ntt), col=1
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d23long(3888:3888+9360+4320),X=timett(720:ntt), col=18
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d27long(4464:4464+9360+4320),X=timett(720:ntt), col=6
;GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d21(3600:13248),X=time(720:nt-4320), col=14

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'


POS,XSIZE=15000,YSIZE=7000,XOFFSET=4500,YOFFSET=11300;POS,xpos=1,ypos=3
CS, SCALE=1
GPLOT,X=4800,Y=17300, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-1,YMAX=4,XMIN=0.,XMAX=100
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d22long(3312:3312+9360+4320),X=timett(720:ntt), col=1
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d23long(3888:3888+9360+4320),X=timett(720:ntt), col=18
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d27long(4464:4464+9360+4320),X=timett(720:ntt), col=6
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'


POS,XSIZE=15000,YSIZE=7000,XOFFSET=4500,YOFFSET=2500;POS,xpos=1,ypos=3
CS, SCALE=1
GPLOT,X=4800,Y=8500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=1,XMIN=0.,XMAX=100
GPLOT,Y=moist1_uniSST_RCE3007_3027K_d22long(3312:3312+9360+4320),X=timett(720:ntt), col=1
GPLOT,Y=moist1_uniSST_RCE3007_3027K_d23long(3888:3888+9360+4320),X=timett(720:ntt), col=18
GPLOT,Y=moist1_uniSST_RCE3007_3027K_d27long(4464:4464+9360+4320),X=timett(720:ntt), col=6
AXES, YTITLE='Moistening Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'
PSCLOSE






PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='ME_states_ppt_hls_mls_10sims_70d.ps',CHARSIZE=200,thick=300,/portrait
POS,XSIZE=15000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,xpos=1,ypos=3
GPLOT,X=4800,Y=19000, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=70
GPLOT,Y=(1.0/4.0)*(ppt1_uniSST_RCE3007_3027K_d24(3744:13104)+ppt1_uniSST_RCE3007_3027K_d26(3456+720+144:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d28(3456+720+288:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d27(3456+720+288:13392+720+144)),X=time(720:nt-4320), col=6
GPLOT,Y=(1.0/3.0)*(ppt1_uniSST_RCE3007_3027K_d29(3456+720+288+144+144:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d25(3456+720+144:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d22(3312:12672)),X=time(720:nt-4320), col=1
GPLOT,Y=ppt1_uniSST_ascent_ave2sims(3888:13248),X=time(720:nt-4320), col=18
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'



POS,XSIZE=15000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=4800,Y=9500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GSET,YMIN=-1,YMAX=4,XMIN=0.,XMAX=70
GPLOT,Y=(1.0/4.0)*(heat1_uniSST_RCE3007_3027K_d24(3744:13104)+heat1_uniSST_RCE3007_3027K_d26(3456+720+144:13392+720+144)+heat1_uniSST_RCE3007_3027K_d28(3456+720+288:13392+720+144)+heat1_uniSST_RCE3007_3027K_d27(3456+720+288:13392+720+144)),X=time(720:nt-4320), col=6
GPLOT,Y=(1.0/3.0)*(heat1_uniSST_RCE3007_3027K_d29(3456+720+288+144+144:13392+720+144)+heat1_uniSST_RCE3007_3027K_d25(3456+720+144:13392+720+144)+heat1_uniSST_RCE3007_3027K_d22(3312:12672)),X=time(720:nt-4320), col=1
GPLOT,Y=heat1_uniSST_ascent_ave2sims(3888:13248),X=time(720:nt-4320), col=18
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

psclose





PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='ME_states_ppt_hls_mls_1sim_100d.ps',CHARSIZE=200,thick=300,/portrai

POS,XSIZE=15000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,xpos=1,ypos=3
CS, SCALE=1
GPLOT,X=4800,Y=19000, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=100
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d22long(3312:3312+9360+4320),X=timett(720:ntt), col=1
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d23long(3888:3888+9360+4320),X=timett(720:ntt), col=18
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d27long(4464:4464+9360+4320),X=timett(720:ntt), col=6
;GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d21(3600:13248),X=time(720:nt-4320), col=14

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'


POS,XSIZE=15000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=3
CS, SCALE=1
GPLOT,X=4800,Y=9500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-1,YMAX=4,XMIN=0.,XMAX=100
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d22long(3312:3312+9360+4320),X=timett(720:ntt), col=1
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d23long(3888:3888+9360+4320),X=timett(720:ntt), col=18
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d27long(4464:4464+9360+4320),X=timett(720:ntt), col=6
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'
PSCLOSE





PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='ME_states_ppt_hls_mls_1sim_70d.ps',CHARSIZE=200,thick=300,/portrait
POS,XSIZE=15000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,xpos=1,ypos=3
CS, SCALE=1
GPLOT,X=4800,Y=19000, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=70.
;GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d22(3312:12672),X=time(720:nt-4320), col=1
;GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d18(3168:12528),X=time(720:nt-4320), col=1
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d27(4464:13824),X=time(720:nt-4320), col=6
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

POS,XSIZE=15000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=3
CS, SCALE=1
GPLOT,X=4800,Y=9500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-1,YMAX=4,XMIN=0.,XMAX=70.
;GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d22(3312:12672),X=time(720:nt-4320), col=1
;GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d18(3168:12528),X=time(720:nt-4320), col=1
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d27(4464:13824),X=time(720:nt-4320), col=6
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'


PSCLOSE





PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='ME_states_ppt_hls_mls_1sim_70d.ps',CHARSIZE=200,thick=300,/portrait
POS,XSIZE=15000,YSIZE=7500,XOFFSET=4500,YOFFSET=22000;POS,xpos=1,ypos=3
CS, SCALE=1
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=70.
;GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d22(3312:12672),X=time(720:nt-4320), col=1
;GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d18(3168:12528),X=time(720:nt-4320), col=1
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d27(4464:13824),X=time(720:nt-4320), col=6
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

POS,XSIZE=15000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,xpos=1,ypos=3
CS, SCALE=1
GSET,YMIN=-1,YMAX=4,XMIN=0.,XMAX=70.
;GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d22(3312:12672),X=time(720:nt-4320), col=1
;GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d18(3168:12528),X=time(720:nt-4320), col=1
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=heat1_uniSST_RCE3007_3027K_d27(4464:13824),X=time(720:nt-4320), col=6
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

POS,XSIZE=15000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=3
CS, SCALE=1
GSET,YMIN=-3,YMAX=1,XMIN=0.,XMAX=70.
;GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=moist1_uniSST_RCE3007_3027K_d22(3312:12672),X=time(720:nt-4320), col=1
;GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d18(3168:12528),X=time(720:nt-4320), col=1
GPLOT,Y=moist1_uniSST_RCE3007_3027K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=moist1_uniSST_RCE3007_3027K_d27(4464:13824),X=time(720:nt-4320), col=6
AXES, YTITLE='Moitening Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='ME_states_ppt_10sims_70d.ps',CHARSIZE=200,thick=300
POS,XSIZE=21000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,xpos=1,ypos=3
CS, SCALE=1
GSET,YMIN=3.5,YMAX=6.5,XMIN=0.,XMAX=70
GPLOT,Y=(1.0/4.0)*(ppt1_uniSST_RCE3007_3027K_d24(3744:13104)+ppt1_uniSST_RCE3007_3027K_d26(3456+720+144:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d28(3456+720+288:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d27(3456+720+288:13392+720+144)),X=time(720:nt-4320), col=6
GPLOT,Y=(1.0/3.0)*(ppt1_uniSST_RCE3007_3027K_d29(3456+720+288+144+144:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d25(3456+720+144:13392+720+144)+ppt1_uniSST_RCE3007_3027K_d22(3312:12672)),X=time(720:nt-4320), col=1
GPLOT,Y=ppt1_uniSST_ascent_ave2sims(3888:13248),X=time(720:nt-4320), col=18
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1.,ndec=1,XTITLE='Days'
psclose
















stop

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedMLSF_conv.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-10.,XMAX=50.
GPLOT,X=4800,Y=9900, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=ppt1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1
;GPLOT,Y=ppt1_loc_22d_fixedMLSF_ent09(2304:9648),X=time_tr(576:n_tr-2880), col=14;, style=1
;GPLOT,Y=ppt1_loc_20d_fixedMLSF_ent09(2016:9360),X=time_tr(576:n_tr-2880), col=6;, style=1


;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,XPOS=2,YPOS=1
GSET,YMIN=2,YMAX=9,XMIN=-10.,XMAX=50
GPLOT,X=18400,Y=9900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=EVAP1_loc_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1;,THIck=200
GPLOT,Y=evap1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1

;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Evaporation Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=7,XMIN=-10.,XMAX=50.
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=HEAT1_LOC_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=heat1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['R','R fixed Ls']
AXES, YTITLE='Heating Rates (mm d!E-1!N)' , xSTEP=10,ySTEP=1


CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=7,XMIN=-10.,XMAX=50.
GPLOT,X=18400,Y=19400, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=conv_heat1_loc_20d_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=conv_heat1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18
;GPLOT,Y=ppt1_loc_20d_fixedMLSF_mean_ent09(576:n_tr)+heat1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=14
;GPLOT,Y=ppt1_loc_mean(576:n_tr)+HEAT1_LOC_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=6
;, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['R','R fixed Ls']
AXES, YTITLE='Convective Heating Rates (mm d!E-1!N)' , xSTEP=10,ySTEP=1


PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dtconv_sthwtg_loc_col1_ent09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=13500;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT,/NOCOLBAR
GPLOT,X=4200,Y=19500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=13500
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50 ,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,XTITLE='Days'

CS,SCALE=1,NCOLS=22
GPLOT,X=17700,Y=19500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=5000;

GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=4200,Y=11000, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=5000;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=17700,Y=11000, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

AXES,XSTEP=1,YSTEP=5,XTITLE='Days'

COLBAR,COORDS=[2800,2500,29500,3000],title='Heating (K d!E-1!N)'
PSCLOSE



stop



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=21000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=27500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
COLBAR,COORDS=[4000,7500,19000,8300]

PSCLOSE





stop
;ppt1_loc_20d_fixedMLSF_mean_ent09=(ppt1_loc_20d_fixedMLSF_ent09(2016:12816)+ppt1_loc_20d_fixedMLSF_ent09(2016+288:12816+288))/2.0


print, 'aaaa'

stop

PSOPEN, XPLOTS=1,YPLOTS=2,FILE='Local_F09_diffCAPE.ps',CHARSIZE=200,thick=300
POS,Xpos=1, ypos=2
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=70.
CS, SCALE=1
GPLOT,Y=ppt1_loc_20d_ent09_cape900_mean(576:n_tr),X=time_tr(576:n_tr), col=1,style=1
GPLOT,Y=ppt1_loc_20d_ent09_cape1800_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_loc_20d_ent09_cape3600_mean(576:n_tr),X=time_tr(576:n_tr), col=2;,style=1
GPLOT,Y=ppt1_loc_20d_ent09_cape7200_mean(576:n_tr),X=time_tr(576:n_tr), col=6;,style=1
GPLOT,Y=ppt1_loc_20d_ent09_cape14400_mean(576:n_tr),X=time_tr(576:n_tr), col=18;,style=1
GLEGEND,LEGPOS=11,style=[1,0,0,0,0],col=[1,1,2,6,18],LABELS=['CAPE=.25h','CAPE=0.5h','CAPE=1h','CAPE=2h','CAPE=4h'],SIZE=10
AXES, YTITLE='Rain Rates (mm d!E-1!N)', XTITLE='Days, Local focing, F=0.9',  xSTEP=10,ySTEP=1

POS,Xpos=1, ypos=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=1
GPLOT,Y=ppt1_loc_20d_ent09_cape900_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_loc_20d_ent09_cape1800_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_20d_ent09_cape3600_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2;,style=1
GPLOT,Y=ppt1_loc_20d_ent09_cape7200_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=6;,style=1
GPLOT,Y=ppt1_loc_20d_ent09_cape14400_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18;,style=1

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
psclose



PSOPEN, XPLOTS=1,YPLOTS=2,FILE='Remote_F09_diffCAPE.ps',CHARSIZE=200,thick=300
POS,Xpos=1, ypos=2
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=70.
CS, SCALE=1
GPLOT,Y=ppt1_rem_20d_ent09_cape900_mean(576:n_tr),X=time_tr(576:n_tr), col=1,style=1
GPLOT,Y=ppt1_rem_20d_ent09_cape1800_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_rem_20d_ent09_cape3600_mean(576:n_tr),X=time_tr(576:n_tr), col=2;,style=1
GPLOT,Y=ppt1_rem_20d_ent09_cape7200_mean(576:n_tr),X=time_tr(576:n_tr), col=6;,style=1
GPLOT,Y=ppt1_rem_20d_ent09_cape14400_mean(576:n_tr),X=time_tr(576:n_tr), col=18;,style=1
GLEGEND,LEGPOS=11,style=[1,0,0,0,0],col=[1,1,2,6,18],LABELS=['CAPE=.25h','CAPE=0.5h','CAPE=1h','CAPE=2h','CAPE=4h'],SIZE=10
AXES, YTITLE='Rain Rates (mm d!E-1!N)', XTITLE='Days, Remote focing, F=0.9',  xSTEP=10,ySTEP=1

POS,Xpos=1, ypos=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=1
GPLOT,Y=ppt1_rem_20d_ent09_cape900_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_rem_20d_ent09_cape1800_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_rem_20d_ent09_cape3600_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2;,style=1
GPLOT,Y=ppt1_rem_20d_ent09_cape7200_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=6;,style=1
GPLOT,Y=ppt1_rem_20d_ent09_cape14400_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18;,style=1

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1

psclose



PSOPEN, XPLOTS=2,YPLOTS=2,FILE='q_qrce3027k_m_w_c_ent135.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,xpos=1,ypos=1;,XSIZE=23000,YSIZE=16000,XOFFSET=4000,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=4,yMIN=0,yMAX=15
;GPLOT,x=1000.*wwtg1_c_20d_ent135(0:nz-16),y=hei(0:nz-16)/1000.
GPLOT,x=1000.*(qv_RCE3027_fixeRC_ent135(0:nz-16)-qv_RCE3027_fixeRC_ent09(0:nz-16)),y=hei(0:nz-16)/1000.,col=1
GPLOT,x=1000.*(qv_RCE3027_fixeRC_ent1125(0:nz-16)-qv_RCE3027_fixeRC_ent09(0:nz-16)),y=hei(0:nz-16)/1000.,col=1,style=1
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
;GPLOT,X=22000,Y=18500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='q!Iv!N-q!Iv_RCE@302.7K!N  (g kg!E-1!N)',XSTEP=2,YSTEP=5

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,xpos=2,ypos=1;,XSIZE=23000,YSIZE=16000,XOFFSET=4000,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=4,yMIN=0,yMAX=15
;GPLOT,x=1000.*wwtg1_c_20d_ent135(0:nz-16),y=hei(0:nz-16)/1000.
GPLOT,x=(th_RCE3027_fixeRC_ent135(0:nz-16)-th_RCE3027_fixeRC_ent09(0:nz-16)),y=hei(0:nz-16)/1000.,col=1
GPLOT,x=(th_RCE3027_fixeRC_ent1125(0:nz-16)-th_RCE3027_fixeRC_ent09(0:nz-16)),y=hei(0:nz-16)/1000.,col=1,style=1
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
;GPLOT,X=22000,Y=18500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='th!Iv!N-th!Iv_RCE@302.7K!N  (g kg!E-1!N)',XSTEP=2,YSTEP=5

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,xpos=1,ypos=2;,XSIZE=23000,YSIZE=16000,XOFFSET=4000,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=4,yMIN=0,yMAX=15
;GPLOT,x=1000.*wwtg1_c_20d_ent135(0:nz-16),y=hei(0:nz-16)/1000.
GPLOT,x=1000.*(qv_RCE3047_fixeRC_ent135(0:nz-16)-qv_RCE3047_fixeRC_ent09(0:nz-16)),y=hei(0:nz-16)/1000.,col=1
GPLOT,x=1000.*(qv_RCE3047_fixeRC_ent1125(0:nz-16)-qv_RCE3047_fixeRC_ent09(0:nz-16)),y=hei(0:nz-16)/1000.,col=1,style=1
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
;GPLOT,X=22000,Y=18500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='q!Iv!N-q!Iv_RCE@304.7K!N  (g kg!E-1!N)',XSTEP=2,YSTEP=5

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,xpos=2,ypos=2;,XSIZE=23000,YSIZE=16000,XOFFSET=4000,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=4,yMIN=0,yMAX=15
;GPLOT,x=1000.*wwtg1_c_20d_ent135(0:nz-16),y=hei(0:nz-16)/1000.
GPLOT,x=(th_RCE3047_fixeRC_ent135(0:nz-16)-th_RCE3047_fixeRC_ent09(0:nz-16)),y=hei(0:nz-16)/1000.,col=1
GPLOT,x=(th_RCE3047_fixeRC_ent1125(0:nz-16)-th_RCE3047_fixeRC_ent09(0:nz-16)),y=hei(0:nz-16)/1000.,col=1,style=1
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
;GPLOT,X=22000,Y=18500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='th!Iv!N-th!Iv_RCE@304.7K!N  (g kg!E-1!N)',XSTEP=2,YSTEP=5
psclose


;

PSOPEN, XPLOTS=1,YPLOTS=2, FILE='chap2_mrr_tau.ps',charsize=200, thick=300,/portrait
tau='!9'+SCROP(BYTE(116))+'!X'
POS,xpos=1,ypos=2
CS, SCALE=1
GSET,YMIN= 0, YMAX=8, XMIN= 24, XMAX=2,/XLOG
 GPLOT,X= TAU_L,Y= [[mrr1],[evap1]],col=[1,18],SYM=[3,3],LABEL=['MRR', 'EVAP'] ,LEGPOS=1,/LEGEND
AXES,XVALS=[24,12,6,4,2],YTITLE='Mean Rain Rate (mm/day)',xTITLE=tau+'(hours)',YSTEP=2;,NDEC=1;,XVALS=xvals
;YSTEP=2CS, SCALE=1


POS,xpos=1,ypos=1
GSET,YMIN= -3, YMAX=6, XMIN= 24, XMAX=2,/XLOG
GPLOT,x=tau_l,y=[[HLS1],[MLS1],[HLS1/MLS1]],SYM=[3,3,3],col=[1,18,6],LABEL=['HLS', 'MLS','HLS/MLS'] ,LEGPOS=10,/LEGEND
 AXES, XTITLE='TAU (h)',YSTEP=1, YTITLE=' mm/d',XVALS=[24,12,6,4,2]
;,XVALS=[2,4,6,12,24],xSTEP=0.001,

PSCLOSE


;














































PSOPEN, XPLOTS=3,YPLOTS=1,FILE='th_q_c_m_w_rce.ps',CHARSIZE=200,thick=300,/portrait
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
delta='!9'+SCROP(BYTE(68))+'!X'
POS,XSIZE=16000,YSIZE=10500,XOFFSET=3000,YOFFSET=16500
;POS,xpos=2,ypos=1
GSET,xMIN=-50,xMAX=20,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.
GPLOT,x=100*(RH_loc_col13007K(0:nz-11)-RH_RCE3027K(0:nz-11)),y=hei(0:nz-11)/1000.,col=1
GPLOT,x=100*(RH_loc_col23027K(0:nz-11)-RH_RCE3027K(0:nz-11)),y=hei(0:nz-11)/1000.,col=18
GPLOT,X=3500,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=tau+'(K)',XSTEP=50,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
delta='!9'+SCROP(BYTE(68))+'!X'
POS,XSIZE=16000,YSIZE=10500,XOFFSET=3000,YOFFSET=3500
;POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=100,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.
GPLOT,x=100*(RH_RCE3027K(0:nz-11)),y=hei(0:nz-11)/1000.,col=1
GPLOT,x=100*(RH_loc_col13007K(0:nz-11)),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=100*(RH_loc_col23027K(0:nz-11)),y=hei(0:nz-11)/1000.,col=18

GPLOT,X=3500,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=tau+'(K)',XSTEP=50,YSTEP=5, YTITLE='Height (km)'
PSCLOSE



;;stwtg1_rem_mean=dblarr(nz+1, n_tr+1)
;;;time_tr=dblarr(nt+1)
;;;stwtg1_loc_mean=dblarr(nz+1, n_tr+1)
;;;conv1_rem_mean=dblarr(nz+1, n_tr+1)
;;;conv1_loc_mean=dblarr(nz+1, n_tr+1)
;;;rh1_loc_mean=dblarr(nz+1, n_tr+1)
;;;dtconv1_loc_20d_ent09=dblarr(nz+1, n_tr+1)
;;;dtconv1_loc_20d_ent135=dblarr(nz+1, n_tr+1)
;;;PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
;;;CS,SCALE=1,NCOLS=22
;;;POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=21000;POS,xpos=1,ypos=3
;;;GPLOT,X=3700,Y=27500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
;;;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
;;;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
;;;CON,FIELD=transpose(stwtg1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES;,$
;/CB_RIGHT
;;;AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'



;;;CS,SCALE=1,NCOLS=26
;;;POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
;;;GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
;;;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
;;;LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
;;;CON,FIELD=transpose(conv1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES;,$
;/CB_RIGHT
;;;AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
;;;COLBAR,COORDS=[4000,7500,19000,8300]

;;;PSCLOSE






;;;PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_col1.ps',CHARSIZE=200,thick=300,/portrait
;;;CS,SCALE=1,NCOLS=22
;;;POS,XSIZE=16000,YSIZE=7000,XOFFSET=3000,YOFFSET=20000;POS,xpos=1,ypos=3
;;;GPLOT,X=3200,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
;;;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
;;;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
;;;CON,FIELD=transpose(stwtg1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,title='Heating (K d!E-1!N)';,$
;/CB_RIGHT,/NOLINES
;;;AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
;;;COLBAR,COORDS=[20500,20000,21000,27000]

;;;CS,SCALE=1,NCOLS=32
;;;POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
;;;GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
;;;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
;;;LEVS,MIN=-90,MAX=90,STEP=6
;;;CON,FIELD=transpose(100.*rh1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
;;;AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
;;;COLBAR,COORDS=[20500,11500,21000,18500]


;;;CS,SCALE=1,NCOLS=26
;;;POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
;;;GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
;;;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
;;;LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
;;;CON,FIELD=transpose(conv1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
;;;AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
;;;COLBAR,COORDS=[20500,3000,21000,3500]


;;;PSCLOSE





;;;PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
;;;CS,SCALE=1,NCOLS=22
;;;POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
;;;GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
;;;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
;;;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
;;;CON,FIELD=transpose(stwtg1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
;;;AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

;;;CS,SCALE=1,NCOLS=26
;;;POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
;;;GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
;;;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
;;;LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
;;;CON,FIELD=transpose(conv1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
;;;AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
;;;PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dtconv_sthwtg_loc_col1_ent09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=13500;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT,/NOCOLBAR
GPLOT,X=4200,Y=19500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=1,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=13500
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50 ,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=1

CS,SCALE=1,NCOLS=22
GPLOT,X=17700,Y=19500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=5000;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=4200,Y=11000, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=1,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=5000;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=17700,Y=11000, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

AXES,XSTEP=1,YSTEP=1,XTITLE='Days'

COLBAR,COORDS=[2800,2500,29500,3000],title='Heating (K d!E-1!N)'
PSCLOSE






















PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3000,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES,title='Heating (K d!E-1!N)';,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
COLBAR,COORDS=[28000,20000,20300,3000]
;COLBAR,COORDS=[2800,2500,29500,3000],

CS,SCALE=1,NCOLS=32
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

;COLBAR,COORDS=[4000,2500,29000,3000],title='Heating (mm d!E-1!N)'

PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dtconv_sthwtg_loc_col1_ent09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=13500;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT,/NOCOLBAR
GPLOT,X=4200,Y=19500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=1,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=13500
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50 ,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=1

CS,SCALE=1,NCOLS=22
GPLOT,X=17700,Y=19500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=5000;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=4200,Y=11000, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=1,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=5000;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=17700,Y=11000, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

AXES,XSTEP=1,YSTEP=1,XTITLE='Days'

COLBAR,COORDS=[2800,2500,29500,3000],title='Heating (K d!E-1!N)'
PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

COLBAR,COORDS=[4000,2500,29000,3000],title='Heating (mm d!E-1!N)'

PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
PSCLOSE
STOP
;;;;;;;;;;


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='ME_states.ps',CHARSIZE=200,thick=300
POS,XSIZE=21000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,xpos=1,ypos=3

CS, SCALE=1
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=70.
;GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d22(3312:12672),X=time(720:nt-4320), col=1
;GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d18(3168:12528),X=time(720:nt-4320), col=1
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d27(4464:13824),X=time(720:nt-4320), col=6

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

PSCLOSE











PSOPEN, XPLOTS=3,YPLOTS=1,FILE='th_q_c_m_w_rce.ps',CHARSIZE=200,thick=300,/portrait
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
delta='!9'+SCROP(BYTE(68))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=3000,YOFFSET=16500
;POS,xpos=2,ypos=1
GSET,xMIN=290,xMAX=450,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.
GPLOT,x=th2_c_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,X=3500,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=tau+'(K)',XSTEP=50,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=12500,YOFFSET=16500
;POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=22,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.
GPLOT,x=1000.*q2_c_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,X=13000,Y=26500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='q (g kg!E-1!N)',XSTEP=4,YSTEP=5

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=3000,YOFFSET=3000
;POS,xpos=2,ypos=1
GSET,xMIN=-9,xMAX=9,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.

GPLOT,x=-th2_c_rce_ent135(0:nz-11)+th1_c_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=-th2_c_rce_ent135(0:nz-11)+th1_m_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=-th2_c_rce_ent135(0:nz-11)+th2_m_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=-th2_c_rce_ent135(0:nz-11)+th2_w_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.,style=3
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
GPLOT,X=3500,Y=12900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=delta+tau+'(K)',XSTEP=3,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=12500,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=4,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.0*(-q2_c_rce_ent135(0:nz-11)+q1_c_rce_ent135(0:nz-11)),y=hei(0:nz-11)/1000.
GPLOT,x=1000.0*(-q2_c_rce_ent135(0:nz-11)+q1_m_rce_ent135(0:nz-11)),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=1000.0*(-q2_c_rce_ent135(0:nz-11)+q2_m_rce_ent135(0:nz-11)),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=1000.0*(-q2_c_rce_ent135(0:nz-11)+q2_w_rce_ent135(0:nz-11)),y=hei(0:nz-11)/1000.,style=3
GPLOT,X=13000,Y=12900, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GLEGEND,LEGPOS=9,style=[3,2,1,0],LABELS=['304.7 K - 302.7 K','303.7 K - 302.7 K','301.7 K - 302.7 K','300.7 K - 302.7 K']
 AXES, XTITLE=delta+'q (g kg!E-1!N)',XSTEP=2,YSTEP=5

psclose












PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedMLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-10.,XMAX=50.
GPLOT,X=4800,Y=9900, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=ppt1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=18;, style=1


;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,XPOS=2,YPOS=1
GSET,YMIN=2,YMAX=9,XMIN=-10.,XMAX=50
GPLOT,X=18400,Y=9900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=EVAP1_loc_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=evap1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=18;, style=1

;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Evaporation Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=7,XMIN=-10.,XMAX=50.
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=HEAT1_LOC_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=heat1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=18;, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['R','R fixed Ls']
AXES, YTITLE='Heating Rates (mm d!E-1!N)' , xSTEP=10,ySTEP=1
PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1_ent09_125_135.ps',CHARSIZE=200,thick=300,/portrait
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  8
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=26000, TEXT='(a): Exp 1 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_loc_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2
GPLOT,Y=ppt1_lo_20d_ent09_LS0_mean(576:2160),X=time_tr(576:2160), col=18
GPLOT,Y=ppt1_lo_20d_ent135_LS0_mean(576:2160),X=time_tr(576:2160), col=18,style=1;
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1

POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=9000, TEXT='(c): Exp 3 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_rem_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_loc_rem_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2
GLEGEND,LEGPOS=2,style=[2,1,0],LABELS=['F=1.35','F=1.125','F=0.9'],SIZE=4;,FONT=2;,ALIGN=0.0,SIZE=100,/DEVICE
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1,XTITLE='Days'

POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=17700, TEXT='(b): Exp 2 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_rem_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_rem_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2
GPLOT,Y=ppt1_rem_20d_ent09_LS0_mean(576:2160),X=time_tr(576:2160), col=18
GPLOT,Y=ppt1_rem_20d_ent135_LS0_mean(576:2160),X=time_tr(576:2160), col=18,style=1;18
GLEGEND,LEGPOS=2,style=[1,0,0],COL=[18,18,0],LABELS=['F=1.35','F=0.9',''],SIZE=4
GPLOT,X=5100,Y=15800, TEXT='WTG off ',CHARSIZE=90,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1

psclose



PSOPEN, XPLOTS=1,YPLOTS=1 ,FILE='TR_Ent.ps',CHARSIZE=120,thick=300
CS, SCALE=1
POS,xoffset=4000,xsize=22000,yoffset=7500,ysize=3000;pos=1,ypos=2
GSET,YMIN=0.0089,YMAX=0.0093,XMIN=3,XMAX=12
GPLOT,X=5000,Y=10000, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ent(0)/100., X=Tstr(0,0),col=1,SYM=3
GPLOT,Y=ent(0)/100.+0.0002, X=Tstr(1,0),col=18,SYM=3
GPLOT,Y=ent(0)/100.+0.0001, X=Tstr(2,0),col=2,SYM=3

EBAR,Y=ent(0)/100. ,X=Tstr(0,0), error_x=[0.05,0.05]
EBAR,Y=ent(0)/100.+0.0002 ,X=Tstr(1,0), error_x=[0.28,0.34],col=18
EBAR,Y=ent(0)/100.+0.0001,X=Tstr(2,0), error_x=[0.06,0.1],col=2
AXES,  ySTEP=10,xSTEP=1,ytitle='SCMs, F=0.9'

CS, SCALE=1
POS,xoffset=4000,xsize=22000,yoffset=12000,ysize=3000;pos=1,ypos=2
GSET,YMIN=0.0112,YMAX=0.0115,XMIN=3,XMAX=12
GPLOT,X=5000,Y=14500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ent(1)/100., X=Tstr(0,1),col=1,SYM=3
GPLOT,Y=ent(1)/100.+0.0002, X=Tstr(1,1),col=18,SYM=3
GPLOT,Y=ent(1)/100.+0.0001, X=Tstr(2,1),col=2,SYM=3
EBAR,Y=ent(1)/100. ,X=Tstr(0,1), error_x=[Tstr(0,1)-Tstr_min(0,1),Tstr_max(0,1)-Tstr(0,1)]
EBAR,Y=ent(1)/100.+0.0002 ,X=Tstr(1,1), error_x=[Tstr(1,1)-Tstr_min(1,1),Tstr_max(1,1)-Tstr(1,1)],col=18
EBAR,Y=ent(1)/100.+0.0001 ,X=Tstr(2,1), error_x=[Tstr(2,1)-Tstr_min(2,1),Tstr_max(2,1)-Tstr(2,1)],col=2
AXES,  ySTEP=1,xSTEP=1,ytitle='SCMs, F=1.125'

CS, SCALE=1
POS,xoffset=4000,xsize=22000,yoffset=16500,ysize=3000;pos=1,ypos=2

GSET,YMIN=0.0134,YMAX=0.0138,XMIN=3,XMAX=12;,YMIN=1.3,YMAX=1.6
GPLOT,X=5000,Y=19000, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ent(2)/100., X=Tstr(0,2),col=1,SYM=3
GPLOT,Y=ent(2)/100.+0.0002, X=Tstr(1,2),col=18,SYM=3
GPLOT,Y=ent(2)/100.+0.0001, X=Tstr(2,2),col=2,SYM=3
EBAR,Y=ent(2)/100. ,X=Tstr(0,2), error_x=[Tstr(0,2)-Tstr_min(0,2),Tstr_max(0,2)-Tstr(0,2)]
EBAR,Y=ent(2)/100.+0.0002 ,X=Tstr(1,2), error_x=[Tstr(1,2)-Tstr_min(1,2),Tstr_max(1,2)-Tstr(1,2)],col=18
EBAR,Y=ent(2)/100.+0.0001 ,X=Tstr(2,2), error_x=[Tstr(2,2)-Tstr_min(2,2),Tstr_max(2,2)-Tstr(2,2)],col=2
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['R','L+R','L'],size=0.5
GLEGEND,LEGPOS=9,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1'],size=0.5
AXES,  ySTEP=1,xSTEP=1,ytitle='SCMs, F=1.35';,/NOLEFT;NOTICK=notick

CS, SCALE=1
POS,xoffset=4000,xsize=22000,yoffset=3000,ysize=3000;pos=1,ypos=2
GSET,YMIN=0.0134,YMAX=0.0138,XMIN=3,XMAX=12;,YMIN=1.3,YMAX=1.6
GPLOT,X=5000,Y=5500, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ent(2)/100., X=Tstr_crm(0),col=1,SYM=3
GPLOT,Y=ent(2)/100.+0.0002, X=Tstr_crm(1),col=18,SYM=3
GPLOT,Y=ent(2)/100.+0.0001, X=Tstr_crm(2),col=2,SYM=3
EBAR,Y=ent(2)/100. ,X=Tstr_crm(0), error_x=[Tstr_crm(0)-Tstr_crm_min(0),Tstr_crm_max(0)-Tstr_crm(0)]
EBAR,Y=ent(2)/100.+0.0002 ,X=Tstr_crm(1), error_x=[Tstr_crm(1)-Tstr_crm_min(1),Tstr_crm_max(1)-Tstr_crm(1)],col=18
EBAR,Y=ent(2)/100.+0.0001 ,X=Tstr_crm(2), error_x=[Tstr_crm(2)-Tstr_crm_min(2),Tstr_crm_max(2)-Tstr_crm(2)],col=2
AXES,  ySTEP=1,xSTEP=1,ytitle='CRMs',Xtitle='Transition Time (Days)';,/NOLEFT;NOTICK=notick

PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dtconv_sthwtg_loc_col1_ent09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=13500;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT,/NOCOLBAR
GPLOT,X=4200,Y=19500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=1,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=13500
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50 ,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=1

CS,SCALE=1,NCOLS=22
GPLOT,X=17700,Y=19500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=5000;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=4200,Y=11000, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=1,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=5000;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=17700,Y=11000, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

AXES,XSTEP=1,YSTEP=1,XTITLE='Days'

COLBAR,COORDS=[2800,2500,29500,3000],title='Heating (K d!E-1!N)'
PSCLOSE









stop
























PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1_ent1125.ps',CHARSIZE=200,thick=300,/portrait
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  8
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=26000, TEXT='(a): Exp 1 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_loc_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2
GPLOT,Y=ppt1_lo_20d_ent09_LS0_mean(576:2160),X=time_tr(576:2160), col=18
GPLOT,Y=ppt1_lo_20d_ent135_LS0_mean(576:2160),X=time_tr(576:2160), col=18,style=1;
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1

POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=9000, TEXT='(c): Exp 3 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_rem_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_loc_rem_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2
GLEGEND,LEGPOS=2,style=[2,1,0],LABELS=['F=1.35','F=1.125','F=0.9'],SIZE=4;,FONT=2;,ALIGN=0.0,SIZE=100,/DEVICE
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1,XTITLE='Days'

POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=17700, TEXT='(b): Exp 2 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_rem_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_rem_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2
GPLOT,Y=ppt1_rem_20d_ent09_LS0_mean(576:2160),X=time_tr(576:2160), col=18
GPLOT,Y=ppt1_rem_20d_ent135_LS0_mean(576:2160),X=time_tr(576:2160), col=18,style=1;18
GLEGEND,LEGPOS=2,style=[1,0,0],COL=[18,18,0],LABELS=['F=1.35','F=0.9',''],SIZE=4
GPLOT,X=5100,Y=15800, TEXT='WTG off ',CHARSIZE=90,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1

psclose

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedMLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=45.
GPLOT,X=4800,Y=9900, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=ppt1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=18;, style=1


;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,XPOS=2,YPOS=1
GSET,YMIN=2,YMAX=9,XMIN=-5.,XMAX=45
GPLOT,X=18400,Y=9900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=EVAP1_loc_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=evap1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=18;, style=1

;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Evaporation Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=7,XMIN=-5.,XMAX=45.
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=HEAT1_LOC_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=heat1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=18;, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['R','R fixed Ls']
AXES, YTITLE='Heating Rates (mm d!E-1!N)' , xSTEP=5,ySTEP=1
PSCLOSE












PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedMLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=45.
GPLOT,X=4800,Y=9900, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=ppt1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=2;, style=1

GPLOT,Y=ppt1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=18
GPLOT,Y=ppt1_loc_20d_fixedMLSF_mean_ent135(576:n_tr),X=time_tr(576:n_tr-3600), col=14
GPLOT,Y=ppt1_loc_20d_fixedMLSF_half_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=6; style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,XPOS=2,YPOS=1
GSET,YMIN=2,YMAX=8,XMIN=-5.,XMAX=45
GPLOT,X=18400,Y=9900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=EVAP1_loc_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=evap1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=2;, style=1
GPLOT,Y=EVAP1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=18
GPLOT,Y=evap1_loc_20d_fixedMLSF_mean_ent135(576:n_tr),X=time_tr(576:n_tr-3600), col=14;, style=1
GPLOT,Y=evap1_loc_20d_fixedMLSF_half_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=6;, style=1

;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Evaporation Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=7,XMIN=-5.,XMAX=45.
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=HEAT1_LOC_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=heat1_loc_20d_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=2;, style=1
GPLOT,Y=HEAT1_LOC_ent135_mean(576:n_tr),X=time_tr(576:n_tr-3600), col=18
GPLOT,Y=heat1_loc_20d_fixedMLSF_mean_ent135(576:n_tr),X=time_tr(576:n_tr-3600), col=14;2, style=1
GPLOT,Y=heat1_loc_20d_fixedMLSF_half_mean_ent09(576:n_tr),X=time_tr(576:n_tr-3600), col=6;, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['R','R fixed Ls']
AXES, YTITLE='Heating Rates (mm d!E-1!N)' , xSTEP=5,ySTEP=1,XTITLE='Days'
PSCLOSE








PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dtconv_sthwtg_loc_col1_ent09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=13500;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT,/NOCOLBAR
GPLOT,X=4200,Y=19500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=1,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=13500
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50 ,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=1

CS,SCALE=1,NCOLS=22
GPLOT,X=17700,Y=19500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=5000;
 
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=4200,Y=11000, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=1,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=5000;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=5;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-36,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-36)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=17700,Y=11000, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

AXES,XSTEP=1,YSTEP=1,XTITLE='Days'

COLBAR,COORDS=[2800,2500,29500,3000],title='Heating (K d!E-1!N)'
PSCLOSE




PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dtconv_sthwtg_loc_col1_ent09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=13500;
GSET,xMIN=-1,xMAX=10,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-11,2736-72:3456+720)),X=time_tr(720-72:1440+720),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT,/NOCOLBAR
GPLOT,X=4200,Y=19500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=13500
GSET,xMIN=-1,xMAX=10,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-11,2736-72:3456+720)),X=time_tr(720-72:1440+720),Y=hei(0:nz-11)/1000.,ZERO_THICK=50 ,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5

CS,SCALE=1,NCOLS=22
GPLOT,X=17700,Y=19500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=5000;

GSET,xMIN=-1,xMAX=10,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-11,2736-72:3456+720)),X=time_tr(720-72:1440+720),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=4200,Y=11000, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=5000;
GSET,xMIN=-1,xMAX=10,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-11,2736-72:3456+720)),X=time_tr(720-72:1440+720),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=17700,Y=11000, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

AXES,XSTEP=1,YSTEP=5,XTITLE='Days'

COLBAR,COORDS=[2800,2500,29500,3000],title='Heating (K d!E-1!N)'
PSCLOSE
















PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dtconv_sthwtg_loc_col1_ent09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=13500;
GPLOT,X=4200,Y=19500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT,/NOCOLBAR
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=13500
GPLOT,X=17700,Y=19500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50 ,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=5000;
GPLOT,X=4200,Y=11000, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=5000;
GPLOT,X=17700,Y=11000, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,XTITLE='Days'

COLBAR,COORDS=[2800,2500,29500,3000],title='Heating (K d!E-1!N)'
PSCLOSE












PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_loc_col1_ent09_1125_135.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=5.
CS, SCALE=1
GPLOT,Y=rrt(576:1440),X=time_tr(576:1440)
GPLOT,Y=ppt1_loc_mean(576:1440),X=time_tr(576:1440), col=1
;GPLOT,Y=ppt1_loc_ent1125_mean(576:1440),X=time_tr(576:1440), col=2,style=1
GPLOT,Y=ppt1_loc_ent135_mean(576:1440),X=time_tr(576:1440), col=18

GPLOT,Y=ppt1_lo_20d_ent09_LS0_mean(576:1440),X=time_tr(576:1440), col=6
GPLOT,Y=ppt1_lo_20d_ent135_LS0_mean(576:1440),X=time_tr(576:1440), col=14
GLEGEND,LEGPOS=1,col=[1,18,14,6],LABELS=['L, F=0.9','L, F=1.35','L, F=1.35 & LS cir=0','L, F=0.9 & LS cir=0']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
psclose

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_rem_col1_ent09_1125_135.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=5.
CS, SCALE=1
GPLOT,Y=rrt(576:1440),X=time_tr(576:1440)
GPLOT,Y=ppt1_rem_mean(576:1440),X=time_tr(576:1440), col=1
;GPLOT,Y=ppt1_rem_ent1125_mean(576:1440),X=time_tr(576:1440), col=2,style=1
GPLOT,Y=ppt1_rem_ent135_mean(576:1440),X=time_tr(576:1440), col=18
GPLOT,Y=ppt1_rem_20d_ent09_LS0_mean(576:1440),X=time_tr(576:1440), col=6
GPLOT,Y=ppt1_rem_20d_ent135_LS0_mean(576:1440),X=time_tr(576:1440), col=14
GLEGEND,LEGPOS=1,col=[1,18,14,6],LABELS=['R, F=0.9','R, F=1.35','R, F=1.35 & LS cir=0','R, F=0.9 & LS cir=0']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
psclose














stop 


PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_col1_f09_f135_LSoff.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=10.
CS, SCALE=1

GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
GPLOT,Y=ppt1_rem_20d_ent09_LS0_mean(576:2160),X=time_tr(576:2160), col=18
GPLOT,Y=ppt1_rem_20d_ent135_LS0_mean(576:2160),X=time_tr(576:2160), col=18,STYLE=1

GPLOT,Y=ppt1_lo_20d_ent09_LS0_mean(576:2160),X=time_tr(576:2160), col=1
GPLOT,Y=ppt1_lo_20d_ent135_LS0_mean(576:2160),X=time_tr(576:2160), col=1,STYLE=1
GPLOT,X=4200,Y=18000, TEXT='The WTG calculations are off from day 0 ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GLEGEND,LEGPOS=1,col=[18,18,1,1],style=[1,0,1,0],LABELS=['Exp 2, F=1.35','Exp 2, F=0.9','Exp 1, F=1.35', 'Exp 1, F=0.9'],/NOLEGENDBOX
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
psclose




















PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedMLSF_ent135.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=45.
GPLOT,X=4800,Y=9900, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ppt1_loc_mean_ent135(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=ppt1_loc_20d_fixedMLSF_mean_ent135(576:n_tr),X=time_tr(576:n_tr-3600), col=2;, style=1

;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,XPOS=2,YPOS=1
GSET,YMIN=2,YMAX=8,XMIN=-5.,XMAX=45
GPLOT,X=18400,Y=9900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=EVAP1_loc_mean_ent135(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=evap1_loc_20d_fixedMLSF_mean_ent135(576:n_tr),X=time_tr(576:n_tr-3600), col=2;, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='Evaporation Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=7,XMIN=-5.,XMAX=45.
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=HEAT1_LOC_mean_ent135(576:n_tr),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=heat1_loc_20d_fixedMLSF_mean_ent135(576:n_tr),X=time_tr(576:n_tr-3600), col=2;, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['R','R fixed Ls']
AXES, YTITLE='Heating Rates (mm d!E-1!N)' , xSTEP=5,ySTEP=1,XTITLE='Days'

PSCLOSE



Stop


stop










































PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_l_r_lr_col12.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=7700,Y=8000, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,xpos=1,ypos=3
GPLOT,X=19500,Y=9500, TEXT='(d) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=5,YMAX=12,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'
CS, SCALE=1

POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12000;POS,xpos=1,ypos=2
GPLOT,X=7700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=70.
GPLOT,Y=evap1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Evapopration Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12000
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=4,YMAX=9,XMIN=-5.,XMAX=70.
GPLOT,Y=evap2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES  ,xSTEP=5,ySTEP=1
PSCLOSE

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='mls_hls_l_r_lr_col12.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=6600,Y=7700, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=0.5,XMIN=-5.,XMAX=70.

GPLOT,Y=moist1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Moistening Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=19500,Y=9700, TEXT='(d)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=3,XMIN=-5.,XMAX=70.
GPLOT,Y=moist2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GPLOT,X=5500,Y=19400, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=heat1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=22500,Y=17400, TEXT='(b)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=0.5,XMIN=-5.,XMAX=70.
GPLOT,Y=heat2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES,  xSTEP=5,ySTEP=1
PSCLOSE

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_mls_hls_loc_col12.ps',CHARSIZE=200,thick=300
CS, SCALE=1
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GSET,YMIN=2,YMAX=8,XMIN=-5.,XMAX=45.
GPLOT,Y=evap1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=evap2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
AXES, YTITLE='Evaporation Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=18500,Y=19000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=8,XMIN=-5.,XMAX=45.
GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=ppt1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=ppt2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1


CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=4800,Y=9700, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=6,XMIN=-5.,XMAX=45.
GPLOT,Y=heat1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=heat2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=18500,Y=9700, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=3,XMIN=-5.,XMAX=45.
GPLOT,Y=moist1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=moist2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
AXES, YTITLE='Moistening Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'
PSCLOSE


stop




PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=4000,YOFFSET=3000;POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.

CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_minmax, 1], $  
   COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],   COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],    COL = 6
CS, SCALE=1
GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1,XTITLE='Days'
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
PSCLOSE

stop

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1_ent1125.ps',CHARSIZE=200,thick=300,/portrait
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  8
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=26000, TEXT='(a): Exp 1 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_loc_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1


POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=9000, TEXT='(c): Exp 3 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_rem_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_loc_rem_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1,XTITLE='Days'

POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=17700, TEXT='(b): Exp 2 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_rem_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_rem_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2
;GPLOT,Y=ppt1_rem_entNEW_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18;,style=2
;GPLOT,Y=0.5*(ppt1_rem_entNEW_mean(576:n_tr-8640)+ppt1_rem_ent135_mean(576:n_tr-8640)),X=time_tr(576:n_tr), col=14;,style=2
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
GLEGEND,LEGPOS=2,style=[2,1,0],LABELS=['F=1.35','F=1.125','F=0.9'],SIZE=10;,FONT=2;,ALIGN=0.0,SIZE=100,/DEVICE
psclose

stop













PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1_ent1125.ps',CHARSIZE=200,thick=300,/portrait
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  8
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=26000, TEXT='(a): Exp 1 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2;,style=1
GPLOT,Y=ppt1_loc_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18;,style=2

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1


POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=9000, TEXT='(c): Exp 3 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_rem_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_loc_rem_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1,XTITLE='Days'

POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent1125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent135, 1],     COL = 6
GPLOT,X=4000,Y=17700, TEXT='(b): Exp 2 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_rem_ent1125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_rem_ent135_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2
;GPLOT,Y=ppt1_rem_entNEW_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18;,style=2
;GPLOT,Y=0.5*(ppt1_rem_entNEW_mean(576:n_tr-8640)+ppt1_rem_ent135_mean(576:n_tr-8640)),X=time_tr(576:n_tr), col=14;,style=2
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
GLEGEND,LEGPOS=2,style=[2,1,0],LABELS=['Ent=1.35','Ent=1.125','Ent=0.9'],SIZE=10;,FONT=2;,ALIGN=0.0,SIZE=100,/DEVICE
psclose

stop


























PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

COLBAR,COORDS=[4000,2500,29000,3000],title='Heating (mm d!E-1!N)'

PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
PSCLOSE








stop


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dtconv_sthwtg_rem_col1_ent09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=4500,XOFFSET=4000,YOFFSET=16000;
GPLOT,X=4200,Y=20000, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_rem_20d_ent09(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT,/NOCOLBAR
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=4500,XOFFSET=17500,YOFFSET=16000;
GPLOT,X=17700,Y=20000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_rem_20d_ent135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50 ,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=4500,XOFFSET=4000,YOFFSET=10500;
GPLOT,X=4200,Y=14500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent09(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=4500,XOFFSET=17500,YOFFSET=10500;
GPLOT,X=17700,Y=14500, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=4500,XOFFSET=17500,YOFFSET=5000;
GPLOT,X=4200,Y=9000, TEXT='(e) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent09_135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,xTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=4500,XOFFSET=4000,YOFFSET=5000;
GPLOT,X=17700,Y=9000, TEXT='(f) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_rem_20d_ent09_135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOCOLBAR,/NOLINES;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)',xTITLE='Days'
COLBAR,COORDS=[4000,2500,29000,3000],title='Heating (mm d!E-1!N)'
PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dtconv_sthwtg_loc_col1_ent09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=4500,Y=20000, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=18000,Y=20000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50 ;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;
GPLOT,X=4500,Y=13500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;
GPLOT,X=18000,Y=13500, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5



CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=4500,Y=7000, TEXT='(e) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09_135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,xTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=18000,Y=7000, TEXT='(f) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09_135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)',xTITLE='Days'
PSCLOSE











PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=18
POS,XSIZE=11500,YSIZE=7000,XOFFSET=4000,YOFFSET=13000;
GPLOT,X=4500,Y=19500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.4,MAX=2.4,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=18
POS,XSIZE=11500,YSIZE=7000,XOFFSET=17500,YOFFSET=13000;
GPLOT,X=18000,Y=19500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.4,MAX=2.4,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_rem_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50 ;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5

CS,SCALE=1,NCOLS=14
POS,XSIZE=11500,YSIZE=7000,XOFFSET=4000,YOFFSET=4000;
GPLOT,X=4500,Y=10500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1.8,MAX=1.8,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)',xTITLE='Days'

CS,SCALE=1,NCOLS=14
POS,XSIZE=11500,YSIZE=7000,XOFFSET=17500,YOFFSET=4000;
GPLOT,X=18000,Y=10500, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1.8,MAX=1.8,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,xTITLE='Days'

PSCLOSE








PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_rem_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='conv L F=09'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_rem_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50 ;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='conv L F=135'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='all L,  F=0.9-F=135'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='conv L, F=0.9-F=135'

PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='conv L F=09'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50 ;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='conv L F=135'




CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='all L,  F=0.9-F=135'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='conv L, F=0.9-F=135'

PSCLOSE











PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_lo_20d_ent09_135_LS0(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L09_LSF135'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta_loc_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L135_LSF09'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_lo_20d_ent09_LS0(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, W=0, F=0.9'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_lo_20d_ent135_LS0(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, W=0, F=1.35'


CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L,  F=0.9'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, F=1.35'

PSCLOSE





PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_loc_col1_ent09_1125_135.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=5.
CS, SCALE=1
GPLOT,Y=rrt(576:1440),X=time_tr(576:1440)
GPLOT,Y=ppt1_loc_mean(576:1440),X=time_tr(576:1440), col=1
;GPLOT,Y=ppt1_loc_ent1125_mean(576:1440),X=time_tr(576:1440), col=2,style=1
GPLOT,Y=ppt1_loc_ent135_mean(576:1440),X=time_tr(576:1440), col=18

GPLOT,Y=ppt1_lo_20d_ent09_LS0_mean(576:1440),X=time_tr(576:1440), col=6
GPLOT,Y=ppt1_lo_20d_ent135_LS0_mean(576:1440),X=time_tr(576:1440), col=14
GLEGEND,LEGPOS=1,col=[1,18,14,6],LABELS=['L, F=0.9','L, F=1.35','L, F=1.35 & LS cir=0','L, F=0.9 & LS cir=0']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
psclose
PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_loc_col1_ent09_1125_135.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=5.
CS, SCALE=1
GPLOT,Y=rrt(576:1440),X=time_tr(576:1440)
GPLOT,Y=ppt1_loc_mean(576:1440),X=time_tr(576:1440), col=1
;GPLOT,Y=ppt1_loc_ent1125_mean(576:1440),X=time_tr(576:1440), col=2,style=1
GPLOT,Y=ppt1_loc_ent135_mean(576:1440),X=time_tr(576:1440), col=18

GPLOT,Y=ppt1_lo_20d_ent09_LS0_mean(576:1440),X=time_tr(576:1440), col=6
GPLOT,Y=ppt1_lo_20d_ent135_LS0_mean(576:1440),X=time_tr(576:1440), col=14
GLEGEND,LEGPOS=1,col=[1,18,14,6],LABELS=['L, F=0.9','L, F=1.35','L, F=1.35 & LS cir=0','L, F=0.9 & LS cir=0']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
psclose

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_rem_col1_ent09_1125_135.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=5.
CS, SCALE=1
GPLOT,Y=rrt(576:1440),X=time_tr(576:1440)
GPLOT,Y=ppt1_rem_mean(576:1440),X=time_tr(576:1440), col=1
;GPLOT,Y=ppt1_rem_ent1125_mean(576:1440),X=time_tr(576:1440), col=2,style=1
GPLOT,Y=ppt1_rem_ent135_mean(576:1440),X=time_tr(576:1440), col=18
GPLOT,Y=ppt1_rem_20d_ent09_LS0_mean(576:1440),X=time_tr(576:1440), col=6
GPLOT,Y=ppt1_rem_20d_ent135_LS0_mean(576:1440),X=time_tr(576:1440), col=14
GLEGEND,LEGPOS=1,col=[1,18,14,6],LABELS=['R, F=0.9','R, F=1.35','R, F=1.35 & LS cir=0','R, F=0.9 & LS cir=0']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
psclose




PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='conv L F=09'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_rem_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50 ;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='conv L F=135'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='all L,  F=0.9-F=135'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_rem_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='conv L, F=0.9-F=135'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='all L,  F=0.9'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_rem_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='all L, F=1.35'

PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_lo_20d_ent09_135_LS0(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L09_LSF135'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta_loc_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L135_LSF09'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_lo_20d_ent09_LS0(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, W=0, F=0.9'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_lo_20d_ent135_LS0(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, W=0, F=1.35'


CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L,  F=0.9'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, F=1.35'

PSCLOSE











PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_loc_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=42
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-0.2,MAX=0.2,STEP=0.01,ndecs=2
CON,FIELD=transpose(up_mf1_loc_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=42
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-0.2,MAX=0.2,STEP=0.01;.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dup_mf1_loc_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=42
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-0.2,MAX=0.2,STEP=0.01,ndecs=2
CON,FIELD=transpose(up_mf1_loc_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

PSCLOSE



stop



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='conv L F=09'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50 ;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='conv L F=135'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtall_loc_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='all L,  F=0.9-F=135'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='conv L, F=0.9-F=135'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtall1_loc_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='all L,  F=0.9'

CS,SCALE=1,NCOLS=16
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2.1,MAX=2.1,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtall1_loc_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='all L, F=1.35'

PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent09_LSF135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L09_LSF135'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent135_LSF09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L135_LSF09'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta_loc_20d_ent09_135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L,  F=0.9-F=135'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtall_loc_20d_ent135LSF09_09LSF135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, L135LSF09-L09LSF135'


CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L,  F=0.9'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, F=1.35'

PSCLOSE

stop

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent09_LSF135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L09_LSF135'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent135_LSF09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L135_LSF09'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_lo_20d_ent09_LS0(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, W=0, F=0.9'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_lo_20d_ent135_LS0(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, W=0, F=1.35'


CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent09(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L,  F=0.9'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent135(0:nz-11,2736:3456)),X=time_tr(720:1440),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, F=1.35'

PSCLOSE







PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_loc_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=42
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-0.2,MAX=0.2,STEP=0.01,ndecs=2
CON,FIELD=transpose(up_mf1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=42
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-0.2,MAX=0.2,STEP=0.01,ndecs=2
CON,FIELD=transpose(up_mf1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=42
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-0.2,MAX=0.2,STEP=0.01,ndecs=2
;CON,FIELD=transpose(up_mf1_rem_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_rem_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=42
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-0.2,MAX=0.2,STEP=0.01,ndecs=2
;CON,FIELD=transpose(up_mf1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

PSCLOSE










PSOPEN, XPLOTS=2,YPLOTS=2,FILE='zbl_l_r_col12.ps',CHARSIZE=200,thick=300

POS,XSIZE=11200,YSIZE=7500,XOFFSET=4500,YOFFSET=12000;POS,xpos=1,ypos=2
GPLOT,X=6700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=10,XMIN=-5.,XMAX=45.
GPLOT,Y=cl_top1_loc_20d_ent09_mean(0:n_tr-3600)/1000.,X=time_tr(0:n_tr-3600), col=1
GPLOT,Y=cl_top1_loc_20d_ent135_mean(0:n_tr-3600)/1000.,X=time_tr(0:n_tr-3600), col=18

AXES, YTITLE='Boundary Layer Top (km)',  xSTEP=5,ySTEP=0.1,ndec=1,XTITLE='Days'


CS, SCALE=1
POS,XSIZE=11200,YSIZE=7500,XOFFSET=17700,YOFFSET=12000
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0.2,YMAX=0.6,XMIN=-5.,XMAX=45.
;GPLOT,Y=z_bl2_rem_mean(0:n_tr-3600)/1000.,X=time_tr(0:n_tr-3600), col=18
;GPLOT,Y=z_bl2_loc_mean(0:n_tr-3600)/1000.,X=time_tr(0:n_tr-3600), col=1

AXES  ,xSTEP=5,ySTEP=0.1,ndec=1,XTITLE='Days'
PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_loc_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_loc_col1_ent09_1125_135.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=5.
CS, SCALE=1
GPLOT,Y=rrt(576:1440),X=time_tr(576:1440)
GPLOT,Y=ppt1_loc_mean(576:1440),X=time_tr(576:1440), col=1
;GPLOT,Y=ppt1_loc_ent1125_mean(576:1440),X=time_tr(576:1440), col=2,style=1
GPLOT,Y=ppt1_loc_ent135_mean(576:1440),X=time_tr(576:1440), col=18

GPLOT,Y=ppt1_lo_20d_ent09_LS0_mean(576:1440),X=time_tr(576:1440), col=6
GPLOT,Y=ppt1_lo_20d_ent135_LS0_mean(576:1440),X=time_tr(576:1440), col=14
GLEGEND,LEGPOS=1,col=[1,18,14,6],LABELS=['L, F=0.9','L, F=1.35','L, F=1.35 & LS cir=0','L, F=0.9 & LS cir=0']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1
psclose

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_rem_col1_ent09_1125_135.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-1.,XMAX=5.
CS, SCALE=1
GPLOT,Y=rrt(576:1440),X=time_tr(576:1440)
GPLOT,Y=ppt1_rem_mean(576:1440),X=time_tr(576:1440), col=1
;GPLOT,Y=ppt1_rem_ent1125_mean(576:1440),X=time_tr(576:1440), col=2,style=1
GPLOT,Y=ppt1_rem_ent135_mean(576:1440),X=time_tr(576:1440), col=18
GPLOT,Y=ppt1_rem_20d_ent09_LS0_mean(576:1440),X=time_tr(576:1440), col=6
GPLOT,Y=ppt1_rem_20d_ent135_LS0_mean(576:1440),X=time_tr(576:1440), col=14
GLEGEND,LEGPOS=1,col=[1,18,14,6],LABELS=['R, F=0.9','R, F=1.35','R, F=1.35 & LS cir=0','R, F=0.9 & LS cir=0']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1
psclose









PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=10,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent09_LSF135(0:nz-11,2736:3456+720)),X=time_tr(720:1440+720),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L09_LSF135'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=10,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent135_LSF09(0:nz-11,2736:3456+720)),X=time_tr(720:1440+720),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L135_LSF09'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=10,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_lo_20d_ent09_LS0(0:nz-11,2736:3456+720)),X=time_tr(720:1440+720),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, W=0, F=0.9'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=10,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_lo_20d_ent135_LS0(0:nz-11,2736:3456+720)),X=time_tr(720:1440+720),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, W=0, F=1.35'


CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=10,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent09(0:nz-11,2736:3456+720)),X=time_tr(720:1440+720),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L,  F=0.9'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=0,xMAX=10,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtheta1_loc_20d_ent135(0:nz-11,2736:3456+720)),X=time_tr(720:1440+720),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='L, F=1.35'










PSCLOSE




;
;real plots from her 
;
PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent09_LSF135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent09_LSF135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_rem_20d_ent09_LSF135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent135_LSF09.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_rem_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent135_LSF09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent135_LSF09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_rem_20d_ent135_LSF09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_loc_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09_LSF135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_20d_ent09_LSF135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_loc_20d_ent09_LSF135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dqa_sqwtg_rh_loc_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;
CON,FIELD=transpose(1000.*dqall1_loc_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_loc_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)', xtitle='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*dqall1_loc_20d_ent09_LSF135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_loc_20d_ent09_LSF135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(100.*rh1_loc_20d_ent09_LSF135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5, xtitle='Days'

psclose



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_loc_col1_ent135_LSF09.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_20d_ent135_LSF09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_20d_ent135_LSF09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_loc_20d_ent135_LSF09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dqa_sqwtg_rh_rem_col1_ent135_LSF09.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;
CON,FIELD=transpose(1000.*dqall1_rem_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT

AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)', xtitle='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*dqall1_rem_20d_ent135_LSF09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent135_LSF09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(100.*rh1_rem_20d_ent135_LSF09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5, xtitle='Days'

psclose




PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dqa_sqwtg_rh_rem_col1_ent09_LSF135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;
CON,FIELD=transpose(1000.*dqall1_rem_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT

AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)', xtitle='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*dqall1_rem_20d_ent09_LSF135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent09_LSF135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(100.*rh1_rem_20d_ent09_LSF135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5, xtitle='Days'

psclose

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dqa_sqwtg_rh_rem_col1_ent135_LSF09.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;
CON,FIELD=transpose(1000.*wwtg1_rem_20d_1dave_ent09(11:nz-11,18:99)),X=time_d(4:85),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT

AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*wwtg1_rem_20d_1dave_ent135_LSF09(11:nz-11,18:99)),X=time_d(4:85),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5
psclose

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_loc_col1_ent09_1125_135.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-5.,XMAX=70.
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr),X=time_tr(576:n_tr)
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;;;GPLOT,Y=ppt1_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2,style=1
GPLOT,Y=ppt1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_loc_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14
GPLOT,Y=ppt1_loc_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6
GLEGEND,LEGPOS=11,col=[1,18,14,6],LABELS=['L, F=0.9','L, F=1.35','L, F=1.35 & LSF=0.9','L, F=0.9 & LSF=1.35']
;GPLOT,Y=ppt1_lo_20d_ent09_LS0_mean(576:n_tr),X=time_tr(576:n_tr), col=6,style=2
;GPLOT,Y=ppt1_lo_20d_ent135_LS0_mean(576:n_tr),X=time_tr(576:n_tr), col=14,style=2

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1
psclose

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_rem_col1_ent09_1125_135.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-5.,XMAX=70.
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr),X=time_tr(576:n_tr)
GPLOT,Y=ppt1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;;;GPLOT,Y=ppt1_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2,style=1
GPLOT,Y=ppt1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_rem_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14
GPLOT,Y=ppt1_rem_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6
;GLEGEND,LEGPOS=11,col=[1,2,18,14,6],LABELS=['R, F=0.9','R, F=1.125','R, F=1.35','R, F=1.35 & LSF=0.9','R, F=0.9 & LSF=1.35']
GLEGEND,LEGPOS=11,col=[1,18,14,6],LABELS=['R, F=0.9','R, F=1.35','R, F=1.35 & LSF=0.9','R, F=0.9 & LSF=1.35']
;GPLOT,Y=ppt1_lo_20d_ent09_LS0_mean(576:n_tr),X=time_tr(576:n_tr), col=6,style=2
;GPLOT,Y=ppt1_lo_20d_ent135_LS0_mean(576:n_tr),X=time_tr(576:n_tr), col=14,style=2

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1
psclose

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_loc_col1_ent09_1125_135.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-5.,XMAX=70.
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr),X=time_tr(576:n_tr)
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=ppt1_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2,style=1
GPLOT,Y=ppt1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18

GPLOT,Y=ppt1_lo_20d_ent09_LS0_mean(576:n_tr),X=time_tr(576:n_tr), col=6
GPLOT,Y=ppt1_lo_20d_ent135_LS0_mean(576:n_tr),X=time_tr(576:n_tr), col=14
GLEGEND,LEGPOS=11,col=[1,18,14,6],LABELS=['L, F=0.9','L, F=1.35','L, F=1.35 & LS cir=0','L, F=0.9 & LS cir=0']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1
psclose

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_rem_col1_ent09_1125_135.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=3500,YOFFSET=3000
GSET,YMIN=0,YMAX=7,XMIN=-5.,XMAX=70.
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr),X=time_tr(576:n_tr)
GPLOT,Y=ppt1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=ppt1_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2,style=1
GPLOT,Y=ppt1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_rem_20d_ent09_LS0_mean(576:n_tr),X=time_tr(576:n_tr), col=6
GPLOT,Y=ppt1_rem_20d_ent135_LS0_mean(576:n_tr),X=time_tr(576:n_tr), col=14
GLEGEND,LEGPOS=11,col=[1,18,14,6],LABELS=['R, F=0.9','R, F=1.35','R, F=1.35 & LS cir=0','R, F=0.9 & LS cir=0']
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1
psclose

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dqa_sqwtg_rh_rem_col1_ent135_LSF09.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;
CON,FIELD=transpose(1000.*dqall1_rem_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT

AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)', xtitle='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*dqall1_rem_20d_ent135_LSF09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent135_LSF09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(100.*rh1_rem_20d_ent135_LSF09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5, xtitle='Days'

psclose

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='mls_hls_loc_col12_ent09_1125_135.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=6600,Y=7700, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=0.5,XMIN=-5.,XMAX=70.

GPLOT,Y=moist1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=moist1_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=moist1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist1_loc_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=moist1_loc_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6

;GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Mls(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=19500,Y=9700, TEXT='(d)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=3,XMIN=-5.,XMAX=70.

GPLOT,Y=moist2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=moist2_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=moist2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist2_loc_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=moist2_loc_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6


;GPLOT,Y=0.5*(moist2_rem_entNEW_mean(576:n_tr)+moist2_rem_ent135_mean(576:n_tr)),X=time_tr(576:n_tr), col=14;,style=2
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GPLOT,X=5500,Y=19400, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=6,XMIN=-5.,XMAX=70.

GPLOT,Y=heat1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=heat1_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=heat1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat1_loc_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=heat1_loc_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6

AXES, YTITLE='Hls(mm/day)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=22500,Y=17400, TEXT='(b)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=0.5,XMIN=-5.,XMAX=70.

GPLOT,Y=heat2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=heat2_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=heat2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat2_loc_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=heat2_loc_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6


AXES,  xSTEP=5,ySTEP=1
PSCLOSE


PSOPEN, XPLOTS=2,YPLOTS=2,FILE='mls_hls_rem_col12_ent09_1125_135.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=6600,Y=7700, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=0.5,XMIN=-5.,XMAX=70.

GPLOT,Y=moist1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=moist1_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=moist1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist1_rem_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=moist1_rem_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6

;GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Mls(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=19500,Y=9700, TEXT='(d)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=3,XMIN=-5.,XMAX=70.

GPLOT,Y=moist2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=moist2_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=moist2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist2_rem_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=moist2_rem_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6


;GPLOT,Y=0.5*(moist2_rem_entNEW_mean(576:n_tr)+moist2_rem_ent135_mean(576:n_tr)),X=time_tr(576:n_tr), col=14;,style=2
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GPLOT,X=5500,Y=19400, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=6,XMIN=-5.,XMAX=70.

GPLOT,Y=heat1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=heat1_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=heat1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat1_rem_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=heat1_rem_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6

AXES, YTITLE='Hls(mm/day)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=22500,Y=17400, TEXT='(b)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=0.5,XMIN=-5.,XMAX=70.

GPLOT,Y=heat2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=heat2_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=heat2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat2_rem_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=heat2_rem_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6


AXES,  xSTEP=5,ySTEP=1
PSCLOSE



PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_loc_col12_entNEW.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=7700,Y=8000, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.

GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=ppt1_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=ppt1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_loc_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=ppt1_loc_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,xpos=1,ypos=3
GPLOT,X=19500,Y=9500, TEXT='(d) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=5,YMAX=12,XMIN=-5.,XMAX=70.

GPLOT,Y=ppt2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=ppt2_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=ppt2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt2_loc_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=ppt2_loc_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'
CS, SCALE=1

POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12000;POS,xpos=1,ypos=2
GPLOT,X=7700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=70.

GPLOT,Y=evap1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=evap1_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=evap1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap1_loc_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=evap1_loc_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Evapopration (mm d!E-1!N)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12000
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=4,YMAX=9,XMIN=-5.,XMAX=70.

GPLOT,Y=evap2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=evap2_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=evap2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap2_loc_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=evap2_loc_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6
AXES  ,xSTEP=5,ySTEP=1
PSCLOSE

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_rem_col12_entNEW.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=7700,Y=8000, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.

GPLOT,Y=ppt1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=ppt1_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=ppt1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_rem_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=ppt1_rem_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,xpos=1,ypos=3
GPLOT,X=19500,Y=9500, TEXT='(d) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=5,YMAX=12,XMIN=-5.,XMAX=70.

GPLOT,Y=ppt2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=ppt2_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=ppt2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt2_rem_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=ppt2_rem_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'
CS, SCALE=1

POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12000;POS,xpos=1,ypos=2
GPLOT,X=7700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=70.

GPLOT,Y=evap1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=evap1_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=evap1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap1_rem_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=evap1_rem_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6
;GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Evapopration (mm d!E-1!N)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12000
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=4,YMAX=9,XMIN=-5.,XMAX=70.

GPLOT,Y=evap2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=evap2_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=evap2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap2_rem_ent135_LSF09_mean(576:n_tr),X=time_tr(576:n_tr), col=14;,style=1
GPLOT,Y=evap2_rem_ent09_LSF135_mean(576:n_tr),X=time_tr(576:n_tr), col=6
AXES  ,xSTEP=5,ySTEP=1
PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dqa_sqwtg_rh_loc_col1_ent135_LSF09.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;
CON,FIELD=transpose(1000.*dqall1_loc_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT

AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_loc_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)', xtitle='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*dqall1_loc_20d_ent135_LSF09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_loc_20d_ent135_LSF09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(100.*rh1_loc_20d_ent135_LSF09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5, xtitle='Days'

psclose

;
;
;








PSOPEN, XPLOTS=3,YPLOTS=1,FILE='q_qrce3027k_m_w_c_ent135.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=23000,YSIZE=16000,XOFFSET=4000,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=4,yMIN=0,yMAX=15
;GPLOT,x=1000.*wwtg1_c_20d_ent135(0:nz-16),y=hei(0:nz-16)/1000.
GPLOT,x=1000.*(q1_c_20d_ent135(0:nz-16)-q2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=1
GPLOT,x=1000.*(q2_c_20d_ent135(0:nz-16)-q2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=1,style=1

GPLOT,x=1000.*(q1_m_20d_ent135(0:nz-16)-q2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=2
GPLOT,x=1000.*(q2_m_20d_ent135(0:nz-16)-q2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=2,style=1

GPLOT,x=1000.*(q1_w_20d_ent135(0:nz-16)-q2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=18
GPLOT,x=1000.*(q2_w_20d_ent135(0:nz-16)-q2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=18,style=1

;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
;GPLOT,X=22000,Y=18500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='q!Iv!N-q!Iv_RCE@302.7K!N  (g kg!E-1!N)',XSTEP=2,YSTEP=5

psclose





PSOPEN, XPLOTS=3,YPLOTS=1,FILE='th_q_c_m_w_rce.ps',CHARSIZE=200,thick=300,/portrait
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
delta='!9'+SCROP(BYTE(68))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=3000,YOFFSET=16500
;POS,xpos=2,ypos=1
GSET,xMIN=290,xMAX=450,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.
GPLOT,x=th2_c_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,X=3500,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=tau+'(K)',XSTEP=50,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=12500,YOFFSET=16500
;POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=22,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.
GPLOT,x=1000.*q2_c_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,X=13000,Y=26500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='q (g kg!E-1!N)',XSTEP=4,YSTEP=5

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=3000,YOFFSET=3000
;POS,xpos=2,ypos=1
GSET,xMIN=-9,xMAX=9,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.

GPLOT,x=-th2_c_rce_ent135(0:nz-11)+th1_c_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=-th2_c_rce_ent135(0:nz-11)+th1_m_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=-th2_c_rce_ent135(0:nz-11)+th2_m_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=-th2_c_rce_ent135(0:nz-11)+th2_w_rce_ent135(0:nz-11),y=hei(0:nz-11)/1000.,style=3
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
GPLOT,X=3500,Y=12900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=delta+tau+'(K)',XSTEP=3,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=12500,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=4,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.0*(-q2_c_rce_ent135(0:nz-11)+q1_c_rce_ent135(0:nz-11)),y=hei(0:nz-11)/1000.
GPLOT,x=1000.0*(-q2_c_rce_ent135(0:nz-11)+q1_m_rce_ent135(0:nz-11)),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=1000.0*(-q2_c_rce_ent135(0:nz-11)+q2_m_rce_ent135(0:nz-11)),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=1000.0*(-q2_c_rce_ent135(0:nz-11)+q2_w_rce_ent135(0:nz-11)),y=hei(0:nz-11)/1000.,style=3
GPLOT,X=13000,Y=12900, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GLEGEND,LEGPOS=9,style=[3,2,1,0],LABELS=['304.7 K - 302.7 K','303.7 K - 302.7 K','301.7 K - 302.7 K','300.7 K - 302.7 K']
 AXES, XTITLE=delta+'q (g kg!E-1!N)',XSTEP=2,YSTEP=5

psclose

PSOPEN, XPLOTS=3,YPLOTS=1,FILE='LS_dth_dq_m_w_cc_ent135.ps',CHARSIZE=200,thick=300

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7000,YSIZE=16000,XOFFSET=4000,YOFFSET=3000
;POS,xpos=1,ypos=1
GSET,xMIN=-6,xMAX=0,yMIN=0,yMAX=20
GPLOT,x=1000.*dens*wwtg1_c_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*dens*wwtg1_m_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=1000.*dens*wwtg1_w_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=18
GLEGEND,LEGPOS=1,col=[18,2,1],LABELS=['W','M','C']
GPLOT,X=4500,Y=18500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='Large-scale massfluxes (g m!E-2!Ns!E-1!N)',XSTEP=2,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7000,YSIZE=16000,XOFFSET=12500,YOFFSET=3000
;POS,xpos=2,ypos=1
GSET,xMIN=-2,xMAX=0,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=-dth21_c_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,x=-dth21_m_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=-dth21_w_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=18
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
GPLOT,X=13000,Y=18500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=tau+'!I1!N-'+tau+'!I2!N (K)',XSTEP=0.5,ndec=1,YSTEP=5

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7000,YSIZE=16000,XOFFSET=21000,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-6,xMAX=0,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=-1000.*dq21_c_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,x=-1000.*dq21_m_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=-1000.*dq21_w_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=18
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
GPLOT,X=22000,Y=18500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='q!Iv1!N-q!Iv2!N  (g kg!E-1!N)',XSTEP=2,YSTEP=5

psclose

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='mls_hls_l_r_lr_col12_entNEW.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=6600,Y=7700, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=0.5,XMIN=-5.,XMAX=70.

GPLOT,Y=moist1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
;GPLOT,Y=0.5*(moist1_rem_entNEW_mean(576:n_tr)+moist1_rem_ent135_mean(576:n_tr)),X=time_tr(576:n_tr), col=14;,style=2
GPLOT,Y=moist1_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Mls(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=19500,Y=9700, TEXT='(d)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=3,XMIN=-5.,XMAX=70.
GPLOT,Y=moist2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
;GPLOT,Y=0.5*(moist2_rem_entNEW_mean(576:n_tr)+moist2_rem_ent135_mean(576:n_tr)),X=time_tr(576:n_tr), col=14;,style=2
GPLOT,Y=moist2_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GPLOT,X=5500,Y=19400, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=heat1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
;GPLOT,Y=0.5*(heat1_rem_entNEW_mean(576:n_tr)+heat1_rem_ent135_mean(576:n_tr)),X=time_tr(576:n_tr), col=14;,style=2
GPLOT,Y=heat1_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Hls(mm/day)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=22500,Y=17400, TEXT='(b)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=0.5,XMIN=-5.,XMAX=70.
GPLOT,Y=heat2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
;GPLOT,Y=0.5*(heat2_rem_entNEW_mean(576:n_tr)+heat2_rem_ent135_mean(576:n_tr)),X=time_tr(576:n_tr), col=14;,style=2
GPLOT,Y=heat2_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES,  xSTEP=5,ySTEP=1
PSCLOSE

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_l_r_lr_col12_entNEW.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=7700,Y=8000, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
;GPLOT,Y=0.5*(ppt1_rem_entNEW_mean(576:n_tr)+ppt1_rem_ent135_mean(576:n_tr)),X=time_tr(576:n_tr), col=14;,style=2
GPLOT,Y=ppt1_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,xpos=1,ypos=3
GPLOT,X=19500,Y=9500, TEXT='(d) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=5,YMAX=12,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
;GPLOT,Y=0.5*(ppt2_rem_entNEW_mean(576:n_tr)+ppt2_rem_ent135_mean(576:n_tr)),X=time_tr(576:n_tr), col=14;,style=2
GPLOT,Y=ppt2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt2_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'
CS, SCALE=1

POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12000;POS,xpos=1,ypos=2
GPLOT,X=7700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=70.
GPLOT,Y=evap1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
;GPLOT,Y=0.5*(evap1_rem_entNEW_mean(576:n_tr)+evap1_rem_ent135_mean(576:n_tr)),X=time_tr(576:n_tr), col=14;,style=2
GPLOT,Y=evap1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap1_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Evapopration (mm d!E-1!N)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12000
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=4,YMAX=9,XMIN=-5.,XMAX=70.
GPLOT,Y=evap2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
;GPLOT,Y=0.5*(evap2_rem_entNEW_mean(576:n_tr)+evap2_rem_ent135_mean(576:n_tr)),X=time_tr(576:n_tr), col=14;,style=2
GPLOT,Y=evap2_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES  ,xSTEP=5,ySTEP=1
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dqa_sqwtg_rh_rem_col1_ent09_135',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;
CON,FIELD=transpose(1000.*dqall1_rem_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)', xtitle='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*dqall1_rem_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(100.*rh1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5, xtitle='Days'

psclose

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dqa_sqwtg_rh_loc_col1_ent09_135',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;
CON,FIELD=transpose(1000.*dqall1_loc_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_loc_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)', xtitle='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*dqall1_loc_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_loc_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(100.*rh1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5, xtitle='Days'

psclose

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='sth_rh_dtall_rem_col1_ent135.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(sthwtg1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(dtall1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
PSCLOSE

































PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dqal_sqwtg_rh_rem_col1_ent09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;
CON,FIELD=transpose(1000.*dqall1_rem_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=2,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=2,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=2,YSTEP=5,YTITLE='Height (km)', xtitle='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*dqall1_rem_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=2,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=2,YSTEP=5

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(100.*rh1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=2,YSTEP=5, xtitle='Days'

psclose





PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dqv_sq_rh_loc_col1_ent_09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;
CON,FIELD=transpose(1000.*dqall1_loc_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=2,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_loc_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=2,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=4000,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=2,YSTEP=5,YTITLE='Height (km)', xtitle='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*dqall1_loc_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT

AXES,XSTEP=2,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_loc_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=2,YSTEP=5

CS,SCALE=1,NCOLS=32
POS,XSIZE=11500,YSIZE=5000,XOFFSET=17500,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-2,xMAX=14,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(100.*rh1_loc_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=2,YSTEP=5, xtitle='Days'
psclose























PSOPEN, XPLOTS=3,YPLOTS=1,FILE='LS_dth_dq_m_w_cc_ent135.ps',CHARSIZE=200,thick=300

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=23000,YSIZE=16000,XOFFSET=4000,YOFFSET=3000
;POS,xpos=2,ypos=1
GSET,xMIN=-50,xMAX=50,yMIN=0,yMAX=15
;GPLOT,x=1000.*wwtg1_c_20d_ent135(0:nz-16),y=hei(0:nz-16)/1000.
GPLOT,x=100.*(rh1_c_20d_ent135(0:nz-16)-rh2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=1
GPLOT,x=100.*(rh2_c_20d_ent135(0:nz-16)-rh2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=1,style=1

GPLOT,x=100.*(rh1_m_20d_ent135(0:nz-16)-rh2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=2
GPLOT,x=100.*(rh2_m_20d_ent135(0:nz-16)-rh2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=2,style=1

GPLOT,x=100.*(rh1_w_20d_ent135(0:nz-16)-rh2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=18
GPLOT,x=100.*(rh2_w_20d_ent135(0:nz-16)-rh2_c_rce_ent135),y=hei(0:nz-16)/1000.,col=18,style=1

;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
;GPLOT,X=13000,Y=18500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='RH!Iv!N-RH!Iv_RCE@302.7K!N  (%)',XSTEP=10,ndec=1,YSTEP=5
psclose





PSOPEN, XPLOTS=2,YPLOTS=2,FILE='mls_hls_l_r_lr_col12_ent1125.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=6600,Y=7700, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=0.5,XMIN=-5.,XMAX=70.

GPLOT,Y=moist1_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist1_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist1_loc_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Mls(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=19500,Y=9700, TEXT='(d)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=3,XMIN=-5.,XMAX=70.
GPLOT,Y=moist2_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist2_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist2_loc_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GPLOT,X=5500,Y=19400, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=heat1_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat1_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat1_loc_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Hls(mm/day)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=22500,Y=17400, TEXT='(b)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=0.5,XMIN=-5.,XMAX=70.
GPLOT,Y=heat2_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat2_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat2_loc_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES,  xSTEP=5,ySTEP=1
PSCLOSE

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_l_r_lr_col12_ent1125.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=7700,Y=8000, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt1_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_loc_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,xpos=1,ypos=3
GPLOT,X=19500,Y=9500, TEXT='(d) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=5,YMAX=12,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt2_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt2_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt2_loc_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'
CS, SCALE=1

POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12000;POS,xpos=1,ypos=2
GPLOT,X=7700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=70.
GPLOT,Y=evap1_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap1_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap1_loc_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Evapopration (mm d!E-1!N)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12000
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=4,YMAX=9,XMIN=-5.,XMAX=70.
GPLOT,Y=evap2_loc_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap2_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap2_loc_rem_ent1125_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES  ,xSTEP=5,ySTEP=1
PSCLOSE

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='mls_hls_l_r_lr_col12_ent135.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=6600,Y=7700, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=0.5,XMIN=-5.,XMAX=70.

GPLOT,Y=moist1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist1_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Mls(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=19500,Y=9700, TEXT='(d)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=3,XMIN=-5.,XMAX=70.
GPLOT,Y=moist2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist2_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GPLOT,X=5500,Y=19400, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=heat1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat1_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Hls(mm/day)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=22500,Y=17400, TEXT='(b)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=0.5,XMIN=-5.,XMAX=70.
GPLOT,Y=heat2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat2_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES,  xSTEP=5,ySTEP=1
PSCLOSE

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_l_r_lr_col12_ent135.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=7700,Y=8000, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,xpos=1,ypos=3
GPLOT,X=19500,Y=9500, TEXT='(d) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=5,YMAX=12,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt2_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'
CS, SCALE=1

POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12000;POS,xpos=1,ypos=2
GPLOT,X=7700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=70.
GPLOT,Y=evap1_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap1_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap1_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Evapopration (mm d!E-1!N)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12000
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=4,YMAX=9,XMIN=-5.,XMAX=70.
GPLOT,Y=evap2_loc_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap2_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap2_loc_rem_ent135_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES  ,xSTEP=5,ySTEP=1
PSCLOSE



















































PSOPEN, XPLOTS=2,YPLOTS=2,FILE='mls_hls_l_r_lr_col12_ent135.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=6600,Y=7700, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=0.5,XMIN=-5.,XMAX=70.

GPLOT,Y=moist1_loc_20d_ent135(2592:10080),X=time_tr(720:8208), col=1
GPLOT,Y=moist1_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=18
GPLOT,Y=moist1_loc_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Mls(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=19500,Y=9700, TEXT='(d)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=3,XMIN=-5.,XMAX=70.
GPLOT,Y=moist2_loc_20d_ent135(2592:10080),X=time_tr(720:8208), col=1
GPLOT,Y=moist2_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=18
GPLOT,Y=moist2_loc_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=2
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GPLOT,X=5500,Y=19400, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=heat1_loc_20d_ent135(2592:10080),X=time_tr(720:8208), col=1
GPLOT,Y=heat1_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=18
GPLOT,Y=heat1_loc_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=2
AXES, YTITLE='Hls(mm/day)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=22500,Y=17400, TEXT='(b)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=0.5,XMIN=-5.,XMAX=70.
GPLOT,Y=heat2_loc_20d_ent135(2592:10080),X=time_tr(720:8208), col=1
GPLOT,Y=heat2_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=18
GPLOT,Y=heat2_loc_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=2
AXES,  xSTEP=5,ySTEP=1
PSCLOSE





PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_l_r_lr_col12_ent135.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=7700,Y=8000, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt1_loc_20d_ent135(2592:10080),X=time_tr(720:8208), col=1
GPLOT,Y=ppt1_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=18
GPLOT,Y=ppt1_loc_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=2

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,xpos=1,ypos=3
GPLOT,X=19500,Y=9500, TEXT='(d) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=5,YMAX=12,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt2_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=18
GPLOT,Y=ppt2_loc_20d_ent135(2592:10080),X=time_tr(720:8208), col=1
GPLOT,Y=ppt2_loc_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1

POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12000;POS,xpos=1,ypos=2
GPLOT,X=7700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=70.
GPLOT,Y=evap1_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=18
GPLOT,Y=evap1_loc_20d_ent135(2592:10080),X=time_tr(720:8208), col=1
GPLOT,Y=evap1_loc_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Evapopration (mm d!E-1!N)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12000
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=4,YMAX=9,XMIN=-5.,XMAX=70.
GPLOT,Y=evap2_loc_20d_ent135(2592:10080),X=time_tr(720:8208), col=1
GPLOT,Y=evap2_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=18
GPLOT,Y=evap2_loc_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=2
AXES  ,xSTEP=5,ySTEP=1
PSCLOSE















































PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_l_r_lr_col12_ent135.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=7700,Y=8000, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt1_loc_20d_ent135(2592:10080),X=time_tr(720:8208), col=1
GPLOT,Y=ppt1_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=18
GPLOT,Y=ppt1_loc_rem_20d_ent135(2592:10080),X=time_tr(720:8208), col=2

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'


PSOPEN, XPLOTS=3,YPLOTS=1,FILE='th_q_c_m_w_rce_ent135.ps',CHARSIZE=200,thick=300,/portrait
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
delta='!9'+SCROP(BYTE(68))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=3000,YOFFSET=16500
;POS,xpos=2,ypos=1
GSET,xMIN=290,xMAX=450,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.
GPLOT,x=th2_c_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,X=3500,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=tau+'(K)',XSTEP=50,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=12500,YOFFSET=16500
;POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=22,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.
GPLOT,x=1000.*q2_c_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,X=13000,Y=26500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='q (g kg!E-1!N)',XSTEP=4,YSTEP=5

CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=3000,YOFFSET=3000
;POS,xpos=2,ypos=1
GSET,xMIN=-9,xMAX=9,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.

GPLOT,x=-th2_c_20d_ent135(0:nz-11)+th1_c_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=-th2_c_20d_ent135(0:nz-11)+th1_m_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=-th2_c_20d_ent135(0:nz-11)+th2_m_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=-th2_c_20d_ent135(0:nz-11)+th2_w_20d_ent135(0:nz-11),y=hei(0:nz-11)/1000.,style=3
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
GPLOT,X=3500,Y=12900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=delta+tau+'(K)',XSTEP=3,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,XSIZE=7500,YSIZE=10500,XOFFSET=12500,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=4,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.0*(-q2_c_20d_ent135(0:nz-11)+q1_c_20d_ent135(0:nz-11)),y=hei(0:nz-11)/1000.
GPLOT,x=1000.0*(-q2_c_20d_ent135(0:nz-11)+q1_m_20d_ent135(0:nz-11)),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=1000.0*(-q2_c_20d_ent135(0:nz-11)+q2_m_20d_ent135(0:nz-11)),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=1000.0*(-q2_c_20d_ent135(0:nz-11)+q2_w_20d_ent135(0:nz-11)),y=hei(0:nz-11)/1000.,style=3
GPLOT,X=13000,Y=12900, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GLEGEND,LEGPOS=9,style=[3,2,1,0],LABELS=['304.7 K - 302.7 K','303.7 K - 302.7 K','301.7 K - 302.7 K','300.7 K - 302.7 K']
 AXES, XTITLE=delta+'q (g kg!E-1!N)',XSTEP=2,YSTEP=5

psclose
























































PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1_ent125.ps',CHARSIZE=200,thick=300

POS,xpos=1,ypos=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=45.

CS, SCALE=1
;GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_rem_20d(2592:9216),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_rem_20d_ent125(2592:9216),X=time_tr(576:n_tr), col=1,style=1
GPLOT,Y=ppt1_rem_20d_ent135(2592:9216),X=time_tr(576:n_tr), col=1,style=2
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
GLEGEND,LEGPOS=2,style=[2,1,0],LABELS=['Ent=1.35','Ent=1.125','Ent=0.9'],SIZE=10;,FONT=2;,ALIGN=0.0,SIZE=100,/DEVICE
psclose

































;
;end transition time as a function of entrainment factor
;


PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1_ent125.ps',CHARSIZE=200,thick=300

POS,xpos=1,ypos=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=45.

CS, SCALE=1
;GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_rem_20d(2592:9216),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_rem_20d_ent125(2592:9216),X=time_tr(576:n_tr), col=1,style=1
GPLOT,Y=ppt1_rem_20d_ent15(2592:9216),X=time_tr(576:n_tr), col=1,style=2
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
GLEGEND,LEGPOS=2,style=[2,1,0],LABELS=['Ent=1.35','Ent=1.125','Ent=0.9'],SIZE=10;,FONT=2;,ALIGN=0.0,SIZE=100,/DEVICE
psclose

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem_col1.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=12000,YSIZE=5000,XOFFSET=3000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=15,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;
CON,FIELD=transpose(1000.*dconv1_rem_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,XSIZE=12000,YSIZE=5000,XOFFSET=3000,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=15,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent09(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)', xtitle=Days

CS,SCALE=1,NCOLS=32
POS,XSIZE=12000,YSIZE=5000,XOFFSET=3000,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=15,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d_ent09(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=12000,YSIZE=5000,XOFFSET=17000,YOFFSET=15500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=15,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*dconv1_rem_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=22
POS,XSIZE=12000,YSIZE=5000,XOFFSET=17000,YOFFSET=9000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=15,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-1,MAX=1,STEP=0.1,NDECS=1;LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*sqwtg1_rem_20d_ent135(11:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(11:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5

CS,SCALE=1,NCOLS=32
POS,XSIZE=12000,YSIZE=5000,XOFFSET=17000,YOFFSET=2500;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=15,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6;-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(100.*rh1_rem_20d_ent135(0:nz-11,2592:9216)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5, xtitle=Days

psclose






















PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='TQcontour_298.ps',CHARSIZE=160,/portrait
CS,SCALE=1,NCOLS=42
POS,xpos=1,ypos=3
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15;
LEVS,MIN=-60,MAX=60,STEP=3;,NDECS=2;
CON,FIELD=transpose((1000.*C_p/86400.)*dtconv1_lo_20d_ent09(11:nz-11,2016:7056)+(1000.*C_p/86400.)*dtconv1_lo_20d_ent09(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dtcv (1/1000*m2/s3, f=0.9)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=42
POS,xpos=1,ypos=2
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15
LEVS,MIN=-60,MAX=60,STEP=3
CON,FIELD=transpose((1000.*C_p/86400.)*dtconv1_lo_20d_ent1125(11:nz-11,2016:7056)+(1000.*C_p/86400.)*dtconv1_lo_20d_ent1125(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dtcv (1/1000*m2/s3, F=1.125)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=42
POS,xpos=1,ypos=1
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15
LEVS,MIN=-60,MAX=60,STEP=3
CON,FIELD=transpose((1000.*C_p/86400.)*dtconv1_lo_20d_ent135(11:nz-11,2016:7056)+(1000.*C_p/86400.)*dtconv1_lo_20d_ent135(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dtcv (1/1000*m2/s3, F=1.35)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='Tcontour_298.ps',CHARSIZE=160,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15
LEVS,MIN=-30,MAX=30,STEP=3;,NDECS=2;
CON,FIELD=transpose((1000.*C_p/86400.)*dtconv1_lo_20d_ent09(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dtcv (1/1000*m2/s3, f=0.9)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=2
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15
LEVS,MIN=-30,MAX=30,STEP=3
CON,FIELD=transpose((1000.*C_p/86400.)*dtconv1_lo_20d_ent1125(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dtcv (1/1000*m2/s3, F=1.125)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=1
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15
LEVS,MIN=-30,MAX=30,STEP=3
CON,FIELD=transpose((1000.*C_p/86400.)*dtconv1_lo_20d_ent135(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dtcv (1/1000*m2/s3, F=1.35)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='contour_298.ps',CHARSIZE=160,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15
LEVS,MIN=-30,MAX=30,STEP=3;,NDECS=2;
CON,FIELD=transpose((1000.*L_vap/86400.)*dconv1_lo_20d_ent09(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dqcv (1/1000*m2/s3, f=0.9)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=2
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15
LEVS,MIN=-30,MAX=30,STEP=3
CON,FIELD=transpose((1000.*L_vap/86400.)*dconv1_lo_20d_ent1125(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dqcv (1/1000*m2/s3, F=1.125)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=1
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15
LEVS,MIN=-30,MAX=30,STEP=3
CON,FIELD=transpose((1000.*L_vap/86400.)*dconv1_lo_20d_ent135(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dqcv (1/1000*m2/s3, F=1.35)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
PSCLOSE







PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='contour_298.ps',CHARSIZE=160,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15
LEVS,MIN=-0.1,MAX=0.1,STEP=0.01,NDECS=2;
CON,FIELD=transpose((1000.)*dconv1_lo_20d_ent09(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dqcv (1/10 m2/s3, f=0.9)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=2
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15
LEVS,MIN=-0.1,MAX=0.1,STEP=0.01,NDECS=2;-2.5,MAX=2.5,STEP=0.25,NDECS=2;-1.0,MAX=1.0,STEP=0.1,NDECS=1
CON,FIELD=transpose((1000.)*dconv1_lo_20d_ent1125(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dqcv (m2/s3, F=1.125)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=1
GSET,xMIN=-5,xMAX=30,yMIN=0,yMAX=15
LEVS,MIN=-0.1,MAX=0.1,STEP=0.01,NDECS=2;-2.5,MAX=2.5,STEP=0.25,NDECS=2;-1.0,MAX=1.0,STEP=0.1,NDECS=1
CON,FIELD=transpose((1000.)*dconv1_lo_20d_ent135(11:nz-11,2016:7056)),X=time_20d(0:5040),Y=hei(11:nz-11)/1000.,TITLE = 'dqcv (m2/s3, F=1.35)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
PSCLOSE






PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='ME_states.ps',CHARSIZE=200,thick=300
POS,XSIZE=21000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,xpos=1,ypos=3

CS, SCALE=1
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=70.
;GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d22(3312:12672),X=time(720:nt-4320), col=1
;GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d18(3168:12528),X=time(720:nt-4320), col=1
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d27(4464:13824),X=time(720:nt-4320), col=2

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

PSCLOSE




ppt1_uniSST_RCE3007_3047K_d22(3312+2160:14399-144)=0.5*(ppt1_uniSST_RCE3007_3047K_d22(3312+2160:14399-144)+ppt1_uniSST_RCE3007_3047K_d18(3456+2160:14399))
heat1_uniSST_RCE3007_3047K_d22(3312+2160:14399-144)=0.5*(heat1_uniSST_RCE3007_3047K_d22(3312+2160:14399-144)+heat1_uniSST_RCE3007_3047K_d18(3456+2160:14399))
moist1_uniSST_RCE3007_3047K_d22(3312+2160:14399-144)=0.5*(moist1_uniSST_RCE3007_3047K_d22(3312+2160:14399-144)+moist1_uniSST_RCE3007_3047K_d18(3456+2160:14399))

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_col1.ps',CHARSIZE=200,thick=300,/portrait
POS,XSIZE=16000,YSIZE=12000,XOFFSET=3500,YOFFSET=17000;POS,xpos=1,ypos=3
GPLOT,X=4000,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=80.
;GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d22(3312:14399-144),X=time(720:11807-144), col=1
;GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d18(3456+2160:14399),X=time(720+2160:11663), col=6
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d23(3888:14399),X=time(720:11231), col=18
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d27(4464:14399),X=time(720:10655), col=2
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1


POS,XSIZE=16000,YSIZE=12000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=2
CS, SCALE=1
GPLOT,X=4000,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=1,XMIN=0.,XMAX=80.;-5.,XMAX=45.
GPLOT,Y=moist1_uniSST_RCE3007_3047K_d22(3312:14399-144),X=time(720:11807-144), col=1
;GPLOT,Y=moist1_uniSST_RCE3007_3047K_d18(3456:14399),X=time(720:11663), col=6
GPLOT,Y=moist1_uniSST_RCE3007_3047K_d23(3888:14399),X=time(720:11231), col=18
GPLOT,Y=moist1_uniSST_RCE3007_3047K_d27(4464:14399),X=time(720:10655), col=2
AXES, YTITLE='Moistening Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_col1.ps',CHARSIZE=200,thick=300
POS,XSIZE=21000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,xpos=1,ypos=3
GPLOT,X=5000,Y=19500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=70.
;GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d22(3312:12672),X=time(720:nt-4320), col=1
;GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d18(3168:12528),X=time(720:nt-4320), col=1
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d27(4464:13824),X=time(720:nt-4320), col=2

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1


POS,XSIZE=21000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=2
CS, SCALE=1
GPLOT,X=5000,Y=10000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=1,XMIN=0.,XMAX=70.;-5.,XMAX=45.
GPLOT,Y=moist1_uniSST_RCE3007_3047K_d22(3312:12672),X=time(720:nt-4320), col=1
GPLOT,Y=moist1_uniSST_RCE3007_3047K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=moist1_uniSST_RCE3007_3047K_d27(4464:13824),X=time(720:nt-4320), col=2
AXES, YTITLE='Moistening Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

PSCLOSE







PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_mls_hls_loc_col12.ps',CHARSIZE=200,thick=300
CS, SCALE=1
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GSET,YMIN=5,YMAX=7.5,XMIN=0.,XMAX=70.
GPLOT,Y=evap1_uniSST_RCE3007_3047K_d22(3312:12672),X=time(720:nt-4320), col=1
GPLOT,Y=evap1_uniSST_RCE3007_3047K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=evap1_uniSST_RCE3007_3047K_d27(4464:13824),X=time(720:nt-4320), col=2
AXES, YTITLE='Evaporation (mm d!E-1!N)',  xSTEP=10,ySTEP=1,ndec=1


POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=18500,Y=19000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=70.
;GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d22(3312:12672),X=time(720:nt-4320), col=1
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d27(4464:13824),X=time(720:nt-4320), col=2
;GPLOT,Y=ppt1_uniSST_RCE3007_3047K_d27(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
;GPLOT,Y=ppt2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1


CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=4800,Y=9700, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-1,YMAX=5,XMIN=0.,XMAX=70.;-5.,XMAX=45.
;GPLOT,Y=heat1_uniSST_RCE3007_3047K_d27(576:n_tr-3600),X=time_tr(576:n_tr-3600),
;col=1
GPLOT,Y=heat1_uniSST_RCE3007_3047K_d22(3312:12672),X=time(720:nt-4320), col=1
GPLOT,Y=heat1_uniSST_RCE3007_3047K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=heat1_uniSST_RCE3007_3047K_d27(4464:13824),X=time(720:nt-4320), col=2

;GPLOT,Y=heat2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=18500,Y=9700, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=1,XMIN=0.,XMAX=70.;-5.,XMAX=45.
;GPLOT,Y=moist1_uniSST_RCE3007_3047K_d27(576:n_tr-3600),X=time_tr(576:n_tr-3600),
;col=1
GPLOT,Y=moist1_uniSST_RCE3007_3047K_d22(3312:12672),X=time(720:nt-4320), col=1
GPLOT,Y=moist1_uniSST_RCE3007_3047K_d23(3888:13248),X=time(720:nt-4320), col=18
GPLOT,Y=moist1_uniSST_RCE3007_3047K_d27(4464:13824),X=time(720:nt-4320), col=2
;GPLOT,Y=moist2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
AXES, YTITLE='Moistening Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'
PSCLOSE







;
;transition local
;


n_tr=10800
z_bl1_loc_mean=DBLARR(n_tr+1)
z_bl2_loc_mean=DBLARR(n_tr+1)
evap1_loc_mean=DBLARR(n_tr+1)
moist1_loc_mean=DBLARR(n_tr+1)
heat1_loc_mean=DBLARR(n_tr+1)
evap2_loc_mean=DBLARR(n_tr+1)
moist2_loc_mean=DBLARR(n_tr+1)
heat2_loc_mean=DBLARR(n_tr+1)
qv1_loc_mean=DBLARR(nz+1,n_tr+1)
rh1_loc_mean=DBLARR(nz+1,n_tr+1)
stwtg1_loc_mean=DBLARR(nz+1,n_tr+1)
conv1_loc_mean=DBLARR(nz+1,n_tr+1)
qv2_loc_mean=DBLARR(nz+1,n_tr+1)
conv2_loc_mean=DBLARR(nz+1,n_tr+1)
dpre_mean=dblarr(nz+1)
dhei_mean=dblarr(nz+1)
cwv1_loc_mean=dblarr(n_tr+1)
cwv2_loc_mean=dblarr(n_tr+1)
ppt1_loc_20d=DBLARR(nt+1)
ppt1_loc_22d=DBLARR(nt+1)
ppt1_loc_24d=DBLARR(nt+1)
ppt1_loc_26d=DBLARR(nt+1)
ppt1_loc_28d=DBLARR(nt+1)
ppt2_loc_mean=DBLARR(n_tr+1)
ppt1_loc_mean=DBLARR(n_tr+1)
wwtg1_loc_mean=DBLARR(nz+1,n_tr+1)
ppt1_loc_min=DBLARR(n_tr+1)
ppt1_loc_max=DBLARR(n_tr+1)
ppt1_loc_rem_min=DBLARR(n_tr+1)
ppt1_loc_rem_max=DBLARR(n_tr+1)
ppt1_rem_min=DBLARR(n_tr+1)
ppt1_rem_max=DBLARR(n_tr+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_loc_mean.dat',/get_lun 
 readf,lun,wwtg1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_20d.dat',/get_lun 
 readf,lun,ppt1_loc_20d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_22d.dat',/get_lun 
 readf,lun,ppt1_loc_22d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_24d.dat',/get_lun 
 readf,lun,ppt1_loc_24d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_26d.dat',/get_lun 
 readf,lun,ppt1_loc_26d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_28d.dat',/get_lun 
 readf,lun,ppt1_loc_28d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_mean.dat',/get_lun 
 readf,lun,evap1_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_loc_mean.dat',/get_lun 
 readf,lun,moist1_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_mean.dat',/get_lun 
 readf,lun,heat1_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl1_loc_mean.dat',/get_lun 
 readf,lun,z_bl1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv1_loc_mean.dat',/get_lun 
 readf,lun,qv1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/rh1_loc_mean.dat',/get_lun 
 readf,lun,rh1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv1_loc_mean.dat',/get_lun 
 readf,lun,conv1_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_loc_mean.dat',/get_lun 
 readf,lun,stwtg1_loc_mean
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_loc_mean.dat',/get_lun 
 readf,lun,ppt2_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_loc_mean.dat',/get_lun 
 readf,lun,evap2_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_loc_mean.dat',/get_lun 
 readf,lun,moist2_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_loc_mean.dat',/get_lun 
 readf,lun,heat2_loc_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl2_loc_mean.dat',/get_lun 
 readf,lun,z_bl2_loc_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv2_loc_mean.dat',/get_lun 
 readf,lun,qv2_loc_mean
close,/all
;
;transition remote
;
z_bl1_rem_mean=DBLARR(n_tr+1)
z_bl2_rem_mean=DBLARR(n_tr+1)
evap1_rem_mean=DBLARR(n_tr+1)
moist1_rem_mean=DBLARR(n_tr+1)
heat1_rem_mean=DBLARR(n_tr+1)
evap2_rem_mean=DBLARR(n_tr+1)
moist2_rem_mean=DBLARR(n_tr+1)
heat2_rem_mean=DBLARR(n_tr+1)
qv1_rem_mean=DBLARR(nz+1,n_tr+1)
stwtg1_rem_mean=DBLARR(nz+1,n_tr+1)
conv1_rem_mean=DBLARR(nz+1,n_tr+1)
qv2_rem_mean=DBLARR(nz+1,n_tr+1)
conv2_rem_mean=DBLARR(nz+1,n_tr+1)
dpre_mean=dblarr(nz+1)
dhei_mean=dblarr(nz+1)
cwv1_rem_mean=dblarr(n_tr+1)
cwv2_rem_mean=dblarr(n_tr+1)
ppt1_rem_20d=DBLARR(nt+1)
ppt1_rem_22d=DBLARR(nt+1)
ppt1_rem_24d=DBLARR(nt+1)
ppt1_rem_26d=DBLARR(nt+1)
ppt1_rem_28d=DBLARR(nt+1)
ppt2_rem_mean=DBLARR(n_tr+1)
ppt1_rem_mean=DBLARR(n_tr+1)
wwtg1_rem_mean=DBLARR(nz+1,n_tr+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_rem_mean.dat',/get_lun 
 readf,lun,wwtg1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_20d.dat',/get_lun 
 readf,lun,ppt1_rem_20d
close,/all

 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_22d.dat',/get_lun 
 readf,lun,ppt1_rem_22d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_24d.dat',/get_lun 
 readf,lun,ppt1_rem_24d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_26d.dat',/get_lun 
 readf,lun,ppt1_rem_26d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_28d.dat',/get_lun 
 readf,lun,ppt1_rem_28d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_rem_mean.dat',/get_lun 
 readf,lun,evap1_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_rem_mean.dat',/get_lun 
 readf,lun,moist1_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_rem_mean.dat',/get_lun 
 readf,lun,heat1_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl1_rem_mean.dat',/get_lun 
 readf,lun,z_bl1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv1_rem_mean.dat',/get_lun 
 readf,lun,qv1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv1_rem_mean.dat',/get_lun 
 readf,lun,conv1_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_rem_mean.dat',/get_lun 
 readf,lun,stwtg1_rem_mean
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_rem_mean.dat',/get_lun 
 readf,lun,ppt2_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_rem_mean.dat',/get_lun 
 readf,lun,evap2_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_rem_mean.dat',/get_lun 
 readf,lun,moist2_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_rem_mean.dat',/get_lun 
 readf,lun,heat2_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl2_rem_mean.dat',/get_lun 
 readf,lun,z_bl2_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv2_rem_mean.dat',/get_lun 
 readf,lun,qv2_rem_mean
close,/all
;
;transition local+remote
;

evap1_loc_rem_mean=DBLARR(n_tr+1)
moist1_loc_rem_mean=DBLARR(n_tr+1)
heat1_loc_rem_mean=DBLARR(n_tr+1)
evap2_loc_rem_mean=DBLARR(n_tr+1)
moist2_loc_rem_mean=DBLARR(n_tr+1)
heat2_loc_rem_mean=DBLARR(n_tr+1)
qv1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
rh1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
stwtg1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
conv1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
qv2_loc_rem_mean=DBLARR(nz+1,n_tr+1)
conv2_loc_rem_mean=DBLARR(nz+1,n_tr+1)
dpre_mean=dblarr(nz+1)
dhei_mean=dblarr(nz+1)
cwv1_loc_mean=dblarr(n_tr+1)
cwv2_loc_mean=dblarr(n_tr+1)
cwv1_loc_rem_mean=dblarr(n_tr+1)
cwv2_loc_rem_mean=dblarr(n_tr+1)
cwv1_rem_mean=dblarr(n_tr+1)
cwv2_rem_mean=dblarr(n_tr+1)
ppt1_loc_rem_20d=DBLARR(nt+1)
ppt1_loc_rem_22d=DBLARR(nt+1)
ppt1_loc_rem_24d=DBLARR(nt+1)
ppt1_loc_rem_26d=DBLARR(nt+1)
ppt1_loc_rem_28d=DBLARR(nt+1)
ppt2_loc_rem_mean=DBLARR(n_tr+1)
ppt1_loc_rem_mean=DBLARR(n_tr+1)
wwtg1_loc_rem_mean=DBLARR(nz+1,n_tr+1)

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/wwtg1_loc_rem_mean.dat',/get_lun 
 readf,lun,wwtg1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_20d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_20d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_22d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_22d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_24d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_24d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_26d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_26d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_28d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_28d
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_rem_mean.dat',/get_lun 
 readf,lun,evap1_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist1_loc_rem_mean.dat',/get_lun 
 readf,lun,moist1_loc_rem_mean
close,/all
; openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_rem_mean.dat',/get_lun 
; readf,lun,heat1_loc_rem_mean
;close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl1_loc_rem_mean.dat',/get_lun 
 readf,lun,z_bl1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv1_loc_rem_mean.dat',/get_lun 
 readf,lun,qv1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv1_loc_rem_mean.dat',/get_lun 
 readf,lun,conv1_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/stwtg1_loc_rem_mean.dat',/get_lun 
 readf,lun,stwtg1_loc_rem_mean
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_loc_rem_mean.dat',/get_lun 
 readf,lun,ppt2_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap2_loc_rem_mean.dat',/get_lun 
 readf,lun,evap2_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/moist2_loc_rem_mean.dat',/get_lun 
 readf,lun,moist2_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat2_loc_rem_mean.dat',/get_lun 
 readf,lun,heat2_loc_rem_mean
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/z_bl2_loc_rem_mean.dat',/get_lun 
 readf,lun,z_bl2_loc_rem_mean
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/qv2_loc_rem_mean.dat',/get_lun 
 readf,lun,qv2_loc_rem_mean
close,/all
heat1_loc_rem_mean=-heat2_loc_rem_mean


;
;
;

ppt1_rem_20d_ent15=DBLARR(nt+1)
ppt1_rem_22d_ent15=DBLARR(nt+1)
ppt1_rem_24d_ent15=DBLARR(nt+1)
ppt1_rem_26d_ent15=DBLARR(nt+1)
ppt1_rem_28d_ent15=DBLARR(nt+1)
ppt2_rem_ent15_mean=DBLARR(n_tr+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_20d_ent15.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent15
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_22d_ent15.dat',/get_lun 
 readf,lun,ppt1_rem_22d_ent15
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_24d_ent15.dat',/get_lun 
 readf,lun,ppt1_rem_24d_ent15
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_26d_ent15.dat',/get_lun 
 readf,lun,ppt1_rem_26d_ent15
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_28d_ent15.dat',/get_lun 
 readf,lun,ppt1_rem_28d_ent15
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_rem_ent15_mean.dat',/get_lun 
 readf,lun,ppt2_rem_ent15_mean
close,/all

ppt1_rem_20d_ent125=DBLARR(nt+1)
ppt1_rem_22d_ent125=DBLARR(nt+1)
ppt1_rem_24d_ent125=DBLARR(nt+1)
ppt1_rem_26d_ent125=DBLARR(nt+1)
ppt1_rem_28d_ent125=DBLARR(nt+1)
ppt2_rem_ent125_mean=DBLARR(n_tr+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_20d_ent125.dat',/get_lun 
 readf,lun,ppt1_rem_20d_ent125
close,/all

 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_22d_ent125.dat',/get_lun 
 readf,lun,ppt1_rem_22d_ent125
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_24d_ent125.dat',/get_lun 
 readf,lun,ppt1_rem_24d_ent125
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_26d_ent125.dat',/get_lun 
 readf,lun,ppt1_rem_26d_ent125
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_28d_ent125.dat',/get_lun 
 readf,lun,ppt1_rem_28d_ent125
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_rem_ent125_mean.dat',/get_lun 
 readf,lun,ppt2_rem_ent125_mean
close,/all

ppt1_loc_rem_20d_ent125=DBLARR(nt+1)
ppt1_loc_rem_22d_ent125=DBLARR(nt+1)
ppt1_loc_rem_24d_ent125=DBLARR(nt+1)
ppt1_loc_rem_26d_ent125=DBLARR(nt+1)
ppt1_loc_rem_28d_ent125=DBLARR(nt+1)
ppt2_loc_rem_ent125_mean=DBLARR(n_tr+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_20d_ent125.dat',/get_lun 
 readf,lun,ppt1_loc_rem_20d_ent125
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_22d_ent125.dat',/get_lun 
 readf,lun,ppt1_loc_rem_22d_ent125
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_24d_ent125.dat',/get_lun 
 readf,lun,ppt1_loc_rem_24d_ent125
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_26d_ent125.dat',/get_lun 
 readf,lun,ppt1_loc_rem_26d_ent125
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_28d_ent125.dat',/get_lun 
 readf,lun,ppt1_loc_rem_28d_ent125
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_loc_rem_ent125_mean.dat',/get_lun 
 readf,lun,ppt2_loc_rem_ent125_mean
close,/all


ppt1_loc_rem_20d_ent15=DBLARR(nt+1)
ppt1_loc_rem_22d_ent15=DBLARR(nt+1)
ppt1_loc_rem_24d_ent15=DBLARR(nt+1)
ppt1_loc_rem_26d_ent15=DBLARR(nt+1)
ppt1_loc_rem_28d_ent15=DBLARR(nt+1)
ppt2_loc_rem_ent15_mean=DBLARR(n_tr+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_20d_ent15.dat',/get_lun 
 readf,lun,ppt1_loc_rem_20d_ent15
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_22d_ent15.dat',/get_lun 
 readf,lun,ppt1_loc_rem_22d_ent15
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_24d_ent15.dat',/get_lun 
 readf,lun,ppt1_loc_rem_24d_ent15
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_26d_ent15.dat',/get_lun 
 readf,lun,ppt1_loc_rem_26d_ent15
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_28d_ent15.dat',/get_lun 
 readf,lun,ppt1_loc_rem_28d_ent15
close,/all
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt2_loc_rem_ent15_mean.dat',/get_lun 
 readf,lun,ppt2_loc_rem_ent15_mean
close,/all

ppt1_loc_20d_ent15=DBLARR(nt+1)
ppt1_loc_20d_ent125=DBLARR(nt+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_20d_ent15.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent15
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_20d_ent125.dat',/get_lun 
 readf,lun,ppt1_loc_20d_ent125
close,/all





time_1dave(0)=1.
;time_1dave(1)=0.5
for j=1,nd do begin
   time_1dave(j)=time_1dave(j-1)+1.
endfor

time(0)=0.0
for j=1L,nt do begin
    time(j)=time(j-1)+dt_scm
endfor
time=time/86400.

time_tr=DBLARR(n_tr+1)
time_tr(0)=-432000
for j=1L,10800 do begin
    time_tr(j)=time_tr(j-1)+dt_scm
endfor
time_tr=time_tr/86400.

RRt=DBLARR(n_tr+1)
RRt4K=DBLARR(n_tr+1)

ppt1_rem_mean=DBLARR(n_tr+1)
pt1_loc_mean=DBLARR(n_tr+1)
ppt1_rem_ent15_mean=DBLARR(n_tr+1)
ppt1_rem_ent125_mean=DBLARR(n_tr+1)
ppt1_loc_rem_ent15_mean=DBLARR(n_tr+1)
ppt1_loc_rem_ent125_mean=DBLARR(n_tr+1)

ppt1_loc_mean=(ppt1_loc_20d(2016:12816)+ppt1_loc_22d(2304:13104)+ppt1_loc_24d(2592:13392)+ppt1_loc_26d(2880:13680)+ppt1_loc_28d(3168:13968))/5.
ppt1_loc_rem_mean=(ppt1_loc_rem_20d(2016:12816)+ppt1_loc_rem_22d(2304:13104)+ppt1_loc_rem_24d(2592:13392)+ppt1_loc_rem_26d(2880:13680)+ppt1_loc_rem_28d(3168:13968))/5.
ppt1_rem_mean=(ppt1_rem_20d(2016:12816)+ppt1_rem_22d(2304:13104)+ppt1_rem_24d(2592:13392)+ppt1_rem_26d(2880:13680)+ppt1_rem_28d(3168:13968))/5.



;ppt1_rem_ent15_mean=(ppt1_rem_24d_ent15(2592:13392)+ppt1_rem_26d_ent15(2880:13680))/2.
ppt1_rem_ent15_mean=(ppt1_rem_20d_ent15(2016:12816))
ppt1_rem_ent125_mean=(ppt1_rem_20d_ent125(2016:12816))
;ppt1_rem_ent125_mean=(ppt1_rem_20d_ent125(2016:12816)+ppt1_rem_22d_ent125(2304:13104)+ppt1_rem_24d_ent125(2592:13392)+ppt1_rem_26d_ent125(2880:13680)+ppt1_rem_28d_ent125(3168:13968))/5.

ppt1_loc_rem_ent125_mean=(ppt1_loc_rem_20d_ent125(2016:12816)+ppt1_loc_rem_22d_ent125(2304:13104)+ppt1_loc_rem_24d_ent125(2592:13392)+ppt1_loc_rem_26d_ent125(2880:13680)+ppt1_loc_rem_28d_ent125(3168:13968))/5.
ppt1_loc_rem_ent15_mean=(ppt1_loc_rem_20d_ent15(2016:12816)+ppt1_loc_rem_22d_ent15(2304:13104)+ppt1_loc_rem_24d_ent15(2592:13392))/3.

;ppt1_loc_ent15_mean=(ppt1_loc_20d_ent15(2016:12816)+ppt1_loc_22d_ent15(2304:13104)+ppt1_loc_24d_ent15(2592:13392)+ppt1_loc_26d_ent15(2880:13680)+ppt1_loc_28d_ent15(3168:13968))/5.
ppt1_loc_ent15_mean=(ppt1_loc_20d_ent15(2016:12816))
ppt1_loc_ent125_mean=(ppt1_loc_20d_ent125(2016:12816))



for j=0,n_tr do begin
   for i=0,nz-1 do begin
      dpre_mean(i+1)=-(pre(i+1)-pre(i))
      dhei_mean(i+1)=(hei(i+1)-hei(i))
      cwv1_loc_mean(j)=cwv1_loc_mean(j)+(qv1_loc_mean(i+1,j)+qv1_loc_mean(i,j))*dpre_mean(i+1)/2.
      cwv2_loc_mean(j)=cwv2_loc_mean(j)+(qv2_loc_mean(i+1,j)+qv2_loc_mean(i,j))*dpre_mean(i+1)/2.
      cwv1_loc_rem_mean(j)=cwv1_loc_rem_mean(j)+(qv1_loc_rem_mean(i+1,j)+qv1_loc_rem_mean(i,j))*dpre_mean(i+1)/2.
      cwv2_loc_rem_mean(j)=cwv2_loc_rem_mean(j)+(qv2_loc_rem_mean(i+1,j)+qv2_loc_rem_mean(i,j))*dpre_mean(i+1)/2.
      cwv1_rem_mean(j)=cwv1_rem_mean(j)+(qv1_rem_mean(i+1,j)+qv1_rem_mean(i,j))*dpre_mean(i+1)/2.
      cwv2_rem_mean(j)=cwv2_rem_mean(j)+(qv2_rem_mean(i+1,j)+qv2_rem_mean(i,j))*dpre_mean(i+1)/2.
   endfor
endfor
cwv1_loc_mean(*)=cwv1_loc_mean(*)/9.81
cwv2_loc_mean(*)=cwv2_loc_mean(*)/9.81
cwv1_loc_rem_mean(*)=cwv1_loc_rem_mean(*)/9.81
cwv2_loc_rem_mean(*)=cwv2_loc_rem_mean(*)/9.81
cwv1_rem_mean(*)=cwv1_rem_mean(*)/9.81
cwv2_rem_mean(*)=cwv2_rem_mean(*)/9.81



;ppt1_loc_mean=(ppt1_loc_20d(2016:12816)+ppt1_loc_22d(2304:13104)+ppt1_loc_24d(2592:13392)+ppt1_loc_26d(2880:13680)+ppt1_loc_28d(3168:13968))/5.

arr1_loc=dblarr(5)
arr1_rem=dblarr(5)
arr1_loc_rem=dblarr(5)
for j=0L,10800 do begin
     arr1_loc(0)=ppt1_loc_20d(2016+j)
     arr1_loc(1)=ppt1_loc_22d(2304+j)
     arr1_loc(2)=ppt1_loc_24d(2592+j)
     arr1_loc(3)=ppt1_loc_26d(2880+j)
     arr1_loc(4)=ppt1_loc_28d(3168+j)
     ppt1_loc_min(j)=min(arr1_loc(*),dimension=1)    
     ppt1_loc_max(j)=max(arr1_loc(*),dimension=1)    

     arr1_rem(0)=ppt1_rem_20d(2016+j)
     arr1_rem(1)=ppt1_rem_22d(2304+j)
     arr1_rem(2)=ppt1_rem_24d(2592+j)
     arr1_rem(3)=ppt1_rem_26d(2880+j)
     arr1_rem(4)=ppt1_rem_28d(3168+j)
     ppt1_rem_min(j)=min(arr1_rem(*),dimension=1)    
     ppt1_rem_max(j)=max(arr1_rem(*),dimension=1)

     arr1_loc_rem(0)=ppt1_loc_rem_20d(2016+j)
     arr1_loc_rem(1)=ppt1_loc_rem_22d(2304+j)
     arr1_loc_rem(2)=ppt1_loc_rem_24d(2592+j)
     arr1_loc_rem(3)=ppt1_loc_rem_26d(2880+j)
     arr1_loc_rem(4)=ppt1_loc_rem_28d(3168+j)
     ppt1_loc_rem_min(j)=min(arr1_loc_rem(*),dimension=1)    
     ppt1_loc_rem_max(j)=max(arr1_loc_rem(*),dimension=1)
endfor











;RRd=mean(ppt1_rem_28d(3312:3888))

;RRb4K=mean(ppt1_loc_20d_ent15(2016:2592))
;RRd4K=5.534-RRb4K
;RRt4K(*)=RRb4K+RRd4K/2.0

;(ppt1_loc_rem_20d(2016:9936)+ppt1_loc_rem_24d(2592:10512)+ppt1_loc_rem_28d(3168:11088)

RRb=(mean(ppt1_loc_mean(0:576))+mean(ppt1_rem_mean(0:576))+mean(ppt1_loc_rem_mean(0:576)))/3. 

RRd=5.534-Rrb
RRt(*)=RRb+RRd/2.0


tim_ave=dblarr(3170)
ppt1_loc_minmax=dblarr(3170)
ppt1_loc_minmax_ent15=dblarr(3170)
ppt1_loc_minmax_ent125=dblarr(3170)
ppt1_loc_rem_minmax_ent15=dblarr(3170)
ppt1_loc_rem_minmax_ent125=dblarr(3170)
ppt1_rem_minmax_ent15=dblarr(3170)
ppt1_rem_minmax_ent125=dblarr(3170)
ppt1_rem_minmax=dblarr(3170)
ppt1_loc_rem_minmax=dblarr(3170)
tim_ave(0:1584)=time_tr(576:2160)

ppt1_loc_minmax(0:1584)=ppt1_loc_min(576:2160)
ppt1_rem_minmax(0:1584)=ppt1_rem_min(576:2160)
ppt1_loc_rem_minmax(0:1584)=ppt1_loc_rem_min(576:2160)

;ppt1_loc_minmax_ent15(0:1584)=ppt1_loc_ent15_mean(576:2160)+0.12
;ppt1_loc_minmax_ent125(0:1584)=ppt1_loc_ent125_mean(576:2160)+0.1

;ppt1_loc_rem_minmax_ent15(0:1584)=ppt1_loc_rem_ent15_mean(576:2160)+0.12
;ppt1_loc_rem_minmax_ent125(0:1584)=ppt1_loc_rem_ent125_mean(576:2160)+0.1

;ppt1_rem_minmax_ent15(0:1584)=ppt1_rem_ent15_mean(576:2160)+0.12
;ppt1_rem_minmax_ent125(0:1584)=ppt1_rem_ent125_mean(576:2160)+0.1

for j=0,1584 do begin
ppt1_loc_minmax(j)=ppt1_loc_min(j)
ppt1_rem_minmax(j)=ppt1_rem_min(j)
ppt1_loc_rem_minmax(j)=ppt1_loc_rem_min(j)

;ppt1_loc_minmax_ent15(j)=ppt1_loc_ent15_mean(j)+0.08*(j)/(1200)
;ppt1_loc_minmax_ent125(j)=ppt1_loc_ent125_mean(j)+0.1*(j)/(j+2.0)+0.08*(j)/(1200)

;ppt1_loc_rem_minmax_ent15(j)=ppt1_loc_rem_ent15_mean(j)+0.10*(j)/(1200)
;ppt1_loc_rem_minmax_ent125(j)=ppt1_loc_rem_ent125_mean(j)+0.10*(j)/(1200)

;ppt1_rem_minmax_ent15(j)=ppt1_rem_ent15_mean(j)+0.14*(j)/(1000)
;ppt1_rem_minmax_ent125(j)=ppt1_rem_ent125_mean(j)+0.14*(j)/(1000)
endfor

ppt1_loc_minmax_ent125(0:1584)=ppt1_loc_ent125_mean(576:2160)+(ppt1_loc_min(576:2160)-ppt1_loc_mean(576:2160))
ppt1_loc_minmax_ent15(0:1584)=ppt1_loc_ent15_mean(576:2160)+(ppt1_loc_min(576:2160)-ppt1_loc_mean(576:2160))

ppt1_loc_rem_minmax_ent125(0:1584)=ppt1_loc_rem_ent125_mean(576:2160)+(ppt1_loc_rem_min(576:2160)-ppt1_loc_rem_mean(576:2160))
ppt1_loc_rem_minmax_ent15(0:1584)=ppt1_loc_rem_ent15_mean(576:2160)+(ppt1_loc_rem_min(576:2160)-ppt1_loc_rem_mean(576:2160))

ppt1_rem_minmax_ent125(0:1584)=ppt1_rem_ent125_mean(576:2160)+(ppt1_rem_min(576:2160)-ppt1_rem_mean(576:2160))
ppt1_rem_minmax_ent15(0:1584)=ppt1_rem_ent15_mean(576:2160)+(ppt1_rem_min(576:2160)-ppt1_rem_mean(576:2160))
for j=1,1585 do begin
tim_ave(1584+j)=time_tr(2160-j+1)
ppt1_loc_minmax(1584+j)=ppt1_loc_max(2160-j+1)
ppt1_rem_minmax(1584+j)=ppt1_rem_max(2160-j+1)
ppt1_loc_rem_minmax(1584+j)=ppt1_loc_rem_max(2160-j+1)

;ppt1_loc_minmax_ent15(1584+j)=ppt1_loc_ent15_mean(2160-j+1)-0.08*(1585-j)/(1200);*j*1.0/(j+2.0)
;ppt1_loc_minmax_ent125(1584+j)=ppt1_loc_ent125_mean(2160-j+1)-0.08*(1585-j)/(1200);*j*1.0/(j+2.0)

;ppt1_loc_rem_minmax_ent15(1584+j)=ppt1_loc_rem_ent15_mean(2160-j+1)-0.10*(1585-j)/(1200);*j*1.0/(j+2.0)
;ppt1_loc_rem_minmax_ent125(1584+j)=ppt1_loc_rem_ent125_mean(2160-j+1)-0.10*(1585-j)/(1200);*j*1.0/(j+2.0)

;ppt1_rem_minmax_ent15(1584+j)=ppt1_rem_ent15_mean(2160-j+1)-0.14*(1585-j)/(1000);*j*1.0/(j+2.0)
;ppt1_rem_minmax_ent125(1584+j)=ppt1_rem_ent125_mean(2160-j+1)-0.14*(1585-j)/(1000);*j*1.0/(j+2.0)


ppt1_loc_minmax_ent125(1584+j)=ppt1_loc_ent125_mean(2160-j+1)+(ppt1_loc_max(2160-j+1)-ppt1_loc_mean(2160-j+1))
ppt1_loc_minmax_ent15(1584+j)=ppt1_loc_ent15_mean(2160-j+1)+(ppt1_loc_max(2160-j+1)-ppt1_loc_mean(2160-j+1))

ppt1_loc_rem_minmax_ent125(1584+j)=ppt1_loc_rem_ent125_mean(2160-j+1)+(ppt1_loc_rem_max(2160-j+1)-ppt1_loc_rem_mean(2160-j+1))
ppt1_loc_rem_minmax_ent15(1584+j)=ppt1_loc_rem_ent15_mean(2160-j+1)+(ppt1_loc_rem_max(2160-j+1)-ppt1_loc_rem_mean(2160-j+1))

ppt1_rem_minmax_ent125(1584+j)=ppt1_rem_ent125_mean(2160-j+1)+(ppt1_rem_max(2160-j+1)-ppt1_rem_mean(2160-j+1))
ppt1_rem_minmax_ent15(1584+j)=ppt1_rem_ent15_mean(2160-j+1)+(ppt1_rem_max(2160-j+1)-ppt1_rem_mean(2160-j+1))
endfor

ppt1_loc_mean=(ppt1_loc_20d(2016:12816)+ppt1_loc_22d(2304:13104)+ppt1_loc_24d(2592:13392)+ppt1_loc_26d(2880:13680)+ppt1_loc_28d(3168:13968))/5.




PSOPEN, XPLOTS=2,YPLOTS=2,FILE='mls_hls_l_r_lr_col12.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=6600,Y=7700, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=0.5,XMIN=-5.,XMAX=70.

GPLOT,Y=moist1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Mls(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'


CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=19500,Y=9700, TEXT='(d)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=3,XMIN=-5.,XMAX=70.
GPLOT,Y=moist2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GPLOT,X=5500,Y=19400, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-0.5,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=heat1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Hls(mm/day)',  xSTEP=5,ySTEP=1


CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=22500,Y=17400, TEXT='(b)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=0.5,XMIN=-5.,XMAX=70.
GPLOT,Y=heat2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES,  xSTEP=5,ySTEP=1
PSCLOSE





PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_l_r_lr_col12.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=7700,Y=8000, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'


CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,xpos=1,ypos=3
GPLOT,X=19500,Y=9500, TEXT='(d) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=5,YMAX=12,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1

POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12000;POS,xpos=1,ypos=2
GPLOT,X=7700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=70.
GPLOT,Y=evap1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Evapopration (mm d!E-1!N)',  xSTEP=5,ySTEP=1


CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12000
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=4,YMAX=9,XMIN=-5.,XMAX=70.
GPLOT,Y=evap2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES  ,xSTEP=5,ySTEP=1
PSCLOSE







PSOPEN, XPLOTS=2,YPLOTS=2,FILE='mls_hls_l_r_lr_col12.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=6600,Y=7700, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=0,XMIN=-5.,XMAX=45.

GPLOT,Y=moist1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=moist1_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
GPLOT,Y=moist1_loc_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Mls(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'


CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=19500,Y=9700, TEXT='(d)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=3,XMIN=-5.,XMAX=45.
GPLOT,Y=moist2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=moist2_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
GPLOT,Y=moist2_loc_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=2
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GPLOT,X=5500,Y=19400, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=45.
GPLOT,Y=heat1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=heat1_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
GPLOT,Y=heat1_loc_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=2
AXES, YTITLE='Hls(mm/day)',  xSTEP=5,ySTEP=1


CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=22500,Y=17400, TEXT='(b)  Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=0,XMIN=-5.,XMAX=45.
GPLOT,Y=heat2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=heat2_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
GPLOT,Y=heat2_loc_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=2
AXES,  xSTEP=5,ySTEP=1
PSCLOSE





PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_l_r_lr_col12.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=7700,Y=8000, TEXT='(c)  Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=45.
GPLOT,Y=ppt1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=ppt1_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=2

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'


CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,xpos=1,ypos=3
GPLOT,X=19500,Y=9500, TEXT='(d) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=4,YMAX=12,XMIN=-5.,XMAX=45.
GPLOT,Y=ppt2_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
GPLOT,Y=ppt2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=ppt2_loc_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES,  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1

POS,XSIZE=11000,YSIZE=7500,XOFFSET=4500,YOFFSET=12000;POS,xpos=1,ypos=2
GPLOT,X=7700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=45.
GPLOT,Y=evap1_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
GPLOT,Y=evap1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=evap1_loc_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=2
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
AXES, YTITLE='Evapopration (mm d!E-1!N)',  xSTEP=5,ySTEP=1


CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=12000
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=4,YMAX=9,XMIN=-5.,XMAX=45.
GPLOT,Y=evap2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=evap2_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
GPLOT,Y=evap2_loc_rem_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=2
AXES  ,xSTEP=5,ySTEP=1
PSCLOSE














PSOPEN, XPLOTS=1,YPLOTS=2,FILE='w_mrr_unitSST_col1_2.ps',CHARSIZE=200,thick=300

CS,SCALE=1,NCOLS=22
POS,XSIZE=23500,YSIZE=7000,XOFFSET=4500,YOFFSET=13000;,xpos=1,ypos=2
GSET,xMIN=0,xMAX=90,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.0*wwtg1_uniSST_init2_RCE3047K(0:nz-17,720:12960)),X=time(720:12960),Y=hei(0:nz-17)/1000.,TITLE = 'w mm s!E-11!N)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
GPLOT,X=4800,Y=19000,TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=5,YSTEP=5,  YTITLE='Height (km)'


CS, SCALE=1
POS,XSIZE=23500,YSIZE=7000,XOFFSET=4500,YOFFSET=4000;,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=10,XMIN=0.,XMAX=90.
GPLOT,Y=ppt2_uniSST_init2_RCE3047K(720:nt),X=time(720:12960), col=18
GPLOT,Y=ppt1_uniSST_init2_RCE3047K(720:nt),X=time(720:12960), col=1
GLEGEND,LEGPOS=11,col=[18,1],LABELS=['Column 2','Column 1']
GPLOT,X=4800,Y=10000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES, YTITLE='MMR (mm d!E-1!N)',  xSTEP=5,ySTEP=2,XTITLE='Days'

PSCLOSE




PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1.ps',CHARSIZE=200,thick=300
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.


CS, SCALE=1
GPLOT,Y=ppt1_loc_20d(2016:12816),X=time_tr(0:n_tr), col=1
GPLOT,Y=ppt1_loc_22d(2304:13104),X=time_tr(0:n_tr), col=2
GPLOT,Y=ppt1_loc_24d(2592:13392),X=time_tr(0:n_tr), col=6
GPLOT,Y=ppt1_loc_26d(2880:13680),X=time_tr(0:n_tr), col=14
GPLOT,Y=ppt1_loc_28d(3168:13968),X=time_tr(0:n_tr), col=18


;GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1




;GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18
;GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
;GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2
;GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'
;GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1.ps',CHARSIZE=200,thick=300
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.


CS, SCALE=1
GPLOT,Y=ppt1_rem_20d(2016:12816),X=time_tr(0:n_tr), col=1
GPLOT,Y=ppt1_rem_22d(2304:13104),X=time_tr(0:n_tr), col=2
GPLOT,Y=ppt1_rem_24d(2592:13392),X=time_tr(0:n_tr), col=6
GPLOT,Y=ppt1_rem_26d(2880:13680),X=time_tr(0:n_tr), col=14
GPLOT,Y=ppt1_rem_28d(3168:13968),X=time_tr(0:n_tr), col=18


;GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1




;GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18
;GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
;GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2
;GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'
;GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1.ps',CHARSIZE=200,thick=300
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.


CS, SCALE=1
GPLOT,Y=ppt1_loc_rem_20d(2016:12816),X=time_tr(0:n_tr), col=1
GPLOT,Y=ppt1_loc_rem_22d(2304:13104),X=time_tr(0:n_tr), col=2
GPLOT,Y=ppt1_loc_rem_24d(2592:13392),X=time_tr(0:n_tr), col=6
GPLOT,Y=ppt1_loc_rem_26d(2880:13680),X=time_tr(0:n_tr), col=14
GPLOT,Y=ppt1_loc_rem_28d(3168:13968),X=time_tr(0:n_tr), col=18


;GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1




;GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18
;GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
;GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2
;GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'
;GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1_ent125.ps',CHARSIZE=200,thick=300,/portrait
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent15, 1],     COL = 6
GPLOT,X=4000,Y=26000, TEXT='(a): Exp 1 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_ent125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2;,style=1
GPLOT,Y=ppt1_loc_ent15_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18;,style=2
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1


POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent15, 1],     COL = 6
GPLOT,X=4000,Y=9000, TEXT='(c): Exp 3 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_rem_ent125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_loc_rem_ent15_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1,XTITLE='Days'

POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent125, 1],     COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent15, 1],     COL = 6
GPLOT,X=4000,Y=17700, TEXT='(b): Exp 2 ',CHARSIZE=70,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_rem_ent125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_rem_ent15_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1
GLEGEND,LEGPOS=2,style=[2,1,0],LABELS=['Ent=1.35','Ent=1.125','Ent=0.9'],SIZE=10;,FONT=2;,ALIGN=0.0,SIZE=100,/DEVICE


psclose




POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent125, 1],   COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent125, 1],    COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent125, 1],    COL = 6




GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
;POLYFILL, tim_ave, [1, ppt1_minmax, 1],     COL = 6
;POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],   COL = 6
;POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],    COL = 6

;POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent15, 1],   COL = 6
;POLYFILL, tim_ave, [1, ppt1_loc_minmax_ent125, 1],   COL = 6
;POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent15, 1],   COL = 6
;POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax_ent125, 1],    COL = 6
;POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent15, 1],   COL = 6
;POLYFILL, tim_ave, [1, ppt1_rem_minmax_ent125, 1],    COL = 6


CS, SCALE=1
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_ent125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=1
GPLOT,Y=ppt1_loc_ent15_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1,style=2

GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2
GPLOT,Y=ppt1_loc_rem_ent125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2,style=1
GPLOT,Y=ppt1_loc_rem_ent15_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2,style=2

GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18
GPLOT,Y=ppt1_rem_ent125_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18,style=1
GPLOT,Y=ppt1_rem_ent15_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18,style=2

GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1,XTITLE='Days'
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1.ps',CHARSIZE=200,thick=300
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.

CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_minmax, 1], $  
   COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],   COL = 6
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],    COL = 6
CS, SCALE=1
GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1,XTITLE='Days'
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
PSCLOSE




















PSOPEN, XPLOTS=2,YPLOTS=2,FILE='ppt_evap_mls_hls_loc_col12.ps',CHARSIZE=200,thick=300
CS, SCALE=1
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=2,YPOS=2
GSET,YMIN=2,YMAX=8,XMIN=-5.,XMAX=45.
GPLOT,Y=evap1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=evap2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
AXES, YTITLE='Evaporation (mm d!E-1!N)',  xSTEP=5,ySTEP=1

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=12500
GPLOT,X=18500,Y=19000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=2,YMAX=8,XMIN=-5.,XMAX=45.
GSET,YMIN=0,YMAX=11,XMIN=-5.,XMAX=45.
GPLOT,Y=ppt1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=ppt2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1


CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=4800,Y=9700, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-6,YMAX=6,XMIN=-5.,XMAX=45.
GPLOT,Y=heat1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=heat2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=11000,YSIZE=7500,XOFFSET=18000,YOFFSET=3000
GPLOT,X=18500,Y=9700, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=3,XMIN=-5.,XMAX=45.
GPLOT,Y=moist1_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=1
GPLOT,Y=moist2_loc_mean(576:n_tr-3600),X=time_tr(576:n_tr-3600), col=18
AXES, YTITLE='Moistening Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'
PSCLOSE






PSOPEN, XPLOTS=2,YPLOTS=2,FILE='zbl_l_r_col12.ps',CHARSIZE=200,thick=300

POS,XSIZE=11200,YSIZE=7500,XOFFSET=4500,YOFFSET=12000;POS,xpos=1,ypos=2
GPLOT,X=6700,Y=18500, TEXT='(a) Column 1',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0.2,YMAX=0.6,XMIN=-5.,XMAX=45.
GPLOT,Y=z_bl1_rem_mean(0:n_tr-3600)/1000.,X=time_tr(0:n_tr-3600), col=18
GPLOT,Y=z_bl1_loc_mean(0:n_tr-3600)/1000.,X=time_tr(0:n_tr-3600), col=1
AXES, YTITLE='Boundary Layer Top (km)',  xSTEP=5,ySTEP=0.1,ndec=1,XTITLE='Days'


CS, SCALE=1
POS,XSIZE=11200,YSIZE=7500,XOFFSET=17700,YOFFSET=12000
GPLOT,X=19500,Y=18500, TEXT='(b) Column 2',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=0.2,YMAX=0.6,XMIN=-5.,XMAX=45.
GPLOT,Y=z_bl2_rem_mean(0:n_tr-3600)/1000.,X=time_tr(0:n_tr-3600), col=18
GPLOT,Y=z_bl2_loc_mean(0:n_tr-3600)/1000.,X=time_tr(0:n_tr-3600), col=1

AXES  ,xSTEP=5,ySTEP=0.1,ndec=1,XTITLE='Days'
PSCLOSE




PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_loc_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=3000;POS,xpos=1,ypos=1
GPLOT,X=3700,Y=9500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_loc_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
PSCLOSE



tim_ave=dblarr(2*n_tr+2)
ppt1_loc_minmax=dblarr(2*n_tr+2)
ppt1_rem_minmax=dblarr(2*n_tr+2)
ppt1_loc_rem_minmax=dblarr(2*n_tr+2)
tim_ave(0:n_tr)=time_tr(0:n_tr)
ppt1_loc_minmax(0:n_tr)=ppt1_loc_min(0:n_tr)
ppt1_rem_minmax(0:n_tr)=ppt1_rem_min(0:n_tr)
ppt1_loc_rem_minmax(0:n_tr)=ppt1_loc_rem_min(0:n_tr)
for j=1,n_tr+1 do begin
tim_ave(n_tr+j)=time_tr(n_tr-j+1)
ppt1_loc_minmax(n_tr+j)=ppt1_loc_max(n_tr-j+1)
ppt1_rem_minmax(n_tr+j)=ppt1_rem_max(n_tr-j+1)
ppt1_loc_rem_minmax(n_tr+j)=ppt1_loc_rem_max(n_tr-j+1)
endfor


PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.
CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[n_tr], tim_ave[2*n_tr+1]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
;POLYFILL, tim_ave, [1, ppt1_loc_minmax, 1], $  
;   COL = 6
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1], $  
   COL = 6
;POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1], $  
;   COL = 6

CS, SCALE=1

GPLOT,Y=ppt1_rem_mean(0:n_tr),X=time_tr(0:n_tr), col=18
GPLOT,Y=ppt1_loc_mean(0:n_tr),X=time_tr(0:n_tr), col=1
GPLOT,Y=ppt1_loc_rem_mean(0:n_tr),X=time_tr(0:n_tr), col=2
GPLOT,Y=rrt(0:n_tr),X=time_tr(0:n_tr)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

PSCLOSE





PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1.ps',CHARSIZE=200,thick=300

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-2.,XMAX=10.

GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=2
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=2,ySTEP=1,XTITLE='Days'
GLEGEND,LEGPOS=11,col=[2,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1.ps',CHARSIZE=200,thick=300

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=25.

GPLOT,Y=ppt1_rem_mean(0:n_tr-6480),X=time_tr(0:n_tr-6480), col=18
GPLOT,Y=ppt1_loc_mean(0:n_tr-6480),X=time_tr(0:n_tr-6480), col=1
GPLOT,Y=ppt1_loc_rem_mean(0:n_tr-6480),X=time_tr(0:n_tr-6480), col=2
GPLOT,Y=rrt(0:n_tr-6480),X=time_tr(0:n_tr-6480)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

PSCLOSE
PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.

GPLOT,Y=ppt1_rem_mean(0:n_tr),X=time_tr(0:n_tr), col=18
GPLOT,Y=ppt1_loc_mean(0:n_tr),X=time_tr(0:n_tr), col=1
GPLOT,Y=ppt1_loc_rem_mean(0:n_tr),X=time_tr(0:n_tr), col=2
GPLOT,Y=rrt(0:n_tr),X=time_tr(0:n_tr)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

PSCLOSE


















PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=11500;POS,xpos=1,ypos=2
GPLOT,X=3700,Y=18000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=40,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'
PSCLOSE








PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.

GPLOT,Y=ppt1_rem_mean(0:n_tr),X=time_tr(0:n_tr), col=18
GPLOT,Y=ppt1_loc_mean(0:n_tr),X=time_tr(0:n_tr), col=1
GPLOT,Y=ppt1_loc_rem_mean(0:n_tr),X=time_tr(0:n_tr), col=2
GPLOT,Y=rrt(0:n_tr),X=time_tr(0:n_tr)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=5,ySTEP=1,XTITLE='Days'

PSCLOSE














PSOPEN, XPLOTS=1,YPLOTS=2,FILE='series_c_m_w_col1_2.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=10,XMIN=0.,XMAX=100.
GPLOT,Y=ppt1_uniSST_init2_RCE3007K(720:nt),X=time(720:nt), col=1
GPLOT,Y=ppt2_uniSST_init2_RCE3007K(720:nt),X=time(720:nt), col=18
;GPLOT,Y=ppt1_1d_uniSST_init2_RCE3007K(1:nd),X=time_1dave(1:nd), col=1,style=1
;GPLOT,Y=ppt2_1d_uniSST_init2_RCE3007K(1:nd),X=time_1dave(1:nd), col=18,style=1
GPLOT,X=4500,Y=8000, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
;GLEGEND,LEGPOS=11,col=[18,1],LABELS=['Column 2','Column 1']
AXES, YTITLE='MMR (mm d!E-1!N)',  xSTEP=5,ySTEP=2,XTITLE='Days'


CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=10,XMIN=0.,XMAX=100.
GPLOT,Y=ppt1_uniSST_init2_RCE3047K(720:nt),X=time(720:nt), col=1
GPLOT,Y=ppt2_uniSST_init2_RCE3047K(720:nt),X=time(720:nt), col=18
;GPLOT,Y=ppt1_1d_uniSST_init2_RCE3047K(1:nd),X=time_1dave(1:nd), col=1,style=1
;GPLOT,Y=ppt2_1d_uniSST_init2_RCE3047K(1:nd),X=time_1dave(1:nd), col=18,style=1
GLEGEND,LEGPOS=11,col=[18,1],LABELS=['Column 2','Column 1']
GPLOT,X=4500,Y=17000, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES, YTITLE='MMR (mm d!E-1!N)',  xSTEP=5,ySTEP=2,XTITLE='Days'

PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,XSIZE=16000,YSIZE=7000,XOFFSET=3500,YOFFSET=20000;POS,xpos=1,ypos=3
GPLOT,X=3700,Y=26500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,xMIN=-5,xMAX=40,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(1000.*wwtg1_rem_mean(0:nz-11,576:n_tr-3600)),X=time_tr(576:n_tr-3600),Y=hei(0:nz-11)/1000.,/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
psclose



PSOPEN, XPLOTS=1,YPLOTS=2,FILE='series_c_m_w_col1_2.ps',CHARSIZE=200,thick=300
;CS, SCALE=1
;POS,XPOS=1,YPOS=1
;GSET,YMIN=0,YMAX=10,XMIN=0.,XMAX=100.
;GPLOT,Y=ppt1_uniSST_init2_RCE3047K(720:nt),X=time(720:nt), col=1
;GPLOT,Y=ppt2_uniSST_init2_RCE3047K(720:nt),X=time(720:nt), col=18
;GPLOT,Y=ppt1_1d_uniSST_init2_RCE3047K(1:nd),X=time_1dave(1:nd), col=1,style=1
;GPLOT,Y=ppt2_1d_uniSST_init2_RCE3047K(1:nd),X=time_1dave(1:nd), col=18,style=1
;GLEGEND,LEGPOS=11,col=[18,1],LABELS=['Column 2','Column 1']
;AXES, YTITLE='MMR (mm/day)',  xSTEP=5,ySTEP=2,XTITLE='Days'

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=10,XMIN=0.,XMAX=100.
GPLOT,Y=ppt1_uniSST_init2_12_RCE30473007K(720:nt),X=time(720:nt), col=1
GPLOT,Y=ppt2_uniSST_init2_12_RCE30473007K(720:nt),X=time(720:nt), col=18
GPLOT,Y=ppt1_1d_uniSST_init2_12_RCE30473007K(1:nd),X=time_1dave(1:nd), col=1,style=1
GPLOT,Y=ppt2_1d_uniSST_init2_12_RCE30473007K(1:nd),X=time_1dave(1:nd), col=18,style=1
GLEGEND,LEGPOS=11,col=[18,1],LABELS=['Column 2','Column 1']
AXES, YTITLE='MMR (mm/day)',  xSTEP=5,ySTEP=2,XTITLE='Days'


CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=10,XMIN=0.,XMAX=100.
GPLOT,Y=ppt1_uniSST_init2_RCE3047K(720:nt),X=time(720:nt), col=1
GPLOT,Y=ppt2_uniSST_init2_RCE3047K(720:nt),X=time(720:nt), col=18
GPLOT,Y=ppt1_1d_uniSST_init2_RCE3047K(1:nd),X=time_1dave(1:nd), col=1,style=1
GPLOT,Y=ppt2_1d_uniSST_init2_RCE3047K(1:nd),X=time_1dave(1:nd), col=18,style=1
GLEGEND,LEGPOS=11,col=[18,1],LABELS=['Column 2','Column 1']
AXES, YTITLE='MMR (mm/day)',  xSTEP=5,ySTEP=2,XTITLE='Days'

PSCLOSE






PSOPEN, XPLOTS=1,YPLOTS=2,FILE='series_c_m_w_col1_2.ps',CHARSIZE=200,thick=300,/portrait
CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=10,XMIN=1.,XMAX=40.
GPLOT,Y=ppt1_uniSST_init2_RCE3007K(1:nd),X=time_1dave(1:nd), col=1
GPLOT,Y=ppt1_uniSST(1:nd),X=time_1dave(1:nd), col=2
GPLOT,Y=ppt1_uniSST_init2_RCE3047K(1:nd),X=time_1dave(1:nd), col=18

GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['init2=304.7k','302.7k','300.7k']
AXES, YTITLE='(mm/day), col1',  xSTEP=5,ySTEP=2,XTITLE='Days'

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=10,XMIN=1.,XMAX=40.
GPLOT,Y=ppt2_uniSST_init2_RCE3007K(1:nd),X=time_1dave(1:nd), col=1
GPLOT,Y=ppt2_uniSST(1:nd),X=time_1dave(1:nd), col=2
GPLOT,Y=ppt2_uniSST_init2_RCE3047K(1:nd),X=time_1dave(1:nd), col=18
AXES, YTITLE='(mm/day), col2',  xSTEP=5,ySTEP=2,XTITLE='Days'

PSCLOSE






PSOPEN, XPLOTS=3,YPLOTS=1,FILE='th_q_c_m_w_rce.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,XSIZE=11250,YSIZE=16000,XOFFSET=3000,YOFFSET=3000
;POS,xpos=2,ypos=1
GSET,xMIN=-10,xMAX=0,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-15),y=hei(0:nz-15)/1000.
GPLOT,x=th1_c_rce(0:nz-11)-th2_c_rce(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,x=th1_m_rce(0:nz-11)-th2_m_rce(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=th1_w_rce(0:nz-11)-th2_w_rce(0:nz-11),y=hei(0:nz-11)/1000.,col=18
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
GPLOT,X=3500,Y=18500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE=tau+'!I1!N-'+tau+'!I2!N (K)',XSTEP=5,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,XSIZE=11250,YSIZE=16000,XOFFSET=17000,YOFFSET=3000
;POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=0,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*(q1_c_rce(0:nz-11)-q2_c_rce(0:nz-11)),y=hei(0:nz-11)/1000.,col=1
GPLOT,x=1000.*(q1_m_rce(0:nz-11)-q2_m_rce(0:nz-11)),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=1000.*(q1_w_rce(0:nz-11)-q2_w_rce(0:nz-11)),y=hei(0:nz-11)/1000.,col=18
GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
GPLOT,X=17500,Y=18500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 AXES, XTITLE='q!Iv1!N-q!Iv2!N  (g/kg)',XSTEP=5,YSTEP=5

psclose





PSOPEN, XPLOTS=2,YPLOTS=3,FILE='wtg_mol1.ps',CHARSIZE=200,thick=300,/portrait
CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=0,xMAX=3,yMIN=0,yMAX=20
GPLOT,x= 86400.*stwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*stwtg1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
;GPLOT,x= 86400.*stwtg2_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2,style=1

GPLOT,x= 86400.*stwtg1_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sth_wtg (K/d)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=1,ypos=2
GSET,xMIN=-4,xMAX=0,yMIN=0,yMAX=20
GPLOT,x= 86400.*1000.*sqwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*1000.*sqwtg1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
;GPLOT,x= -86400.*1000.*sqwtg2_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2,style=1
GPLOT,x= 86400.*1000.*sqwtg1_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sq_wtg (g/kg/d)',XSTEP=1,ndec=4,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=1,ypos=3
GSET,xMIN=-6,xMAX=0,yMIN=0,yMAX=20
GPLOT,x=1000.*dens*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*dens*wwtg1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
;GPLOT,x=-1000.*wwtg2_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2,style=1
GPLOT,x=1000.*dens*wwtg1_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
;GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
 AXES, XTITLE='W_wtg (mm/s)',XSTEP=5,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=2,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=dth21_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,x=dth21_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=dth21_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
 AXES, XTITLE='dth21 (K)',XSTEP=0.5,ndec=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=2
GSET,xMIN=0,xMAX=6,yMIN=0,yMAX=20
;GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*dq21_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=1
GPLOT,x=1000.*dq21_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=1000.*dq21_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
 AXES, XTITLE='dq21 (g/kg)',XSTEP=5,YSTEP=5, YTITLE='Height (km)'

psclose





PSOPEN, XPLOTS=3,YPLOTS=1,FILE='wtg_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=3,yMIN=0,yMAX=20
GPLOT,x= 86400.*stwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*stwtg1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*stwtg1_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sth_wtg (K/d)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=0,yMIN=0,yMAX=20
GPLOT,x= 86400.*1000.*sqwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*1000.*sqwtg1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*1000.*sqwtg1_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sq_wtg (g/kg/d)',XSTEP=1,ndec=4,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=-15,xMAX=0,yMIN=0,yMAX=20
GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*wwtg1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=1000.*wwtg1_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
 AXES, XTITLE='W_wtg (mm/s)',XSTEP=5,YSTEP=5, YTITLE='Height (km)'

psclose

PSOPEN, XPLOTS=3,YPLOTS=1,FILE='wtg_col2.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=-3,xMAX=0,yMIN=0,yMAX=20
GPLOT,x= 86400.*stwtg2_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*stwtg2_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*stwtg2_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sth_wtg (K/d)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=3,ypos=1
GSET,xMIN=0,xMAX=4,yMIN=0,yMAX=20
GPLOT,x= 86400.*1000.*sqwtg2_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*1000.*sqwtg2_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*1000.*sqwtg2_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sq_wtg (g/kg/d)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=0,xMAX=15,yMIN=0,yMAX=20
GPLOT,x=1000.*wwtg2_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*wwtg2_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=1000.*wwtg2_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
 AXES, XTITLE='W_wtg (mm/s)',XSTEP=5,YSTEP=5, YTITLE='Height (km)'


psclose














































;PSOPEN, XPLOTS=3,YPLOTS=1,FILE='th_q_c_m_w_rce.ps',CHARSIZE=200,thick=300,/portrait

;POS,XSIZE=7500,YSIZE=11000,XOFFSET=3000,YOFFSET=17000
;GPLOT,X=3500,Y=27500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

;POS,XSIZE=7500,YSIZE=11000,XOFFSET=12500,YOFFSET=17000
;GPLOT,X=13000,Y=27500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

;POS,XSIZE=7500,YSIZE=11000,XOFFSET=3000,YOFFSET=3000
;GPLOT,X=3500,Y=13500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
 
;POS,XSIZE=7500,YSIZE=11000,XOFFSET=12500,YOFFSET=3000
;GPLOT,X=13000,Y=13500, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

;psclose



















PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_rem.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-5,xMAX=40,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_rem_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'sthwtg (k/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,xpos=1,ypos=2
GSET,xMIN=-5,xMAX=40,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
;CON,FIELD=transpose(100.*rh1_loc_rem_20d(0:nz-16,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-16)/1000.,TITLE = 'RH (%)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,xpos=1,ypos=1
GSET,xMIN=-5,xMAX=40,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_loc_rem_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'dthm (K/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-5,xMAX=40,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'sthwtg (k/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,xpos=1,ypos=2
GSET,xMIN=-5,xMAX=40,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
;CON,FIELD=transpose(100.*rh1_loc_20d(0:nz-16,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-16)/1000.,TITLE = 'RH (%)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,xpos=1,ypos=1
GSET,xMIN=-5,xMAX=40,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_loc_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'dthm (K/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-5,xMAX=40,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_rem_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'sthwtg (k/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,xpos=1,ypos=2
GSET,xMIN=-5,xMAX=40,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
;CON,FIELD=transpose(100.*rh1_rem_20d(0:nz-16,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-16)/1000.,TITLE = 'RH (%)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=26
POS,xpos=1,ypos=1
GSET,xMIN=-5,xMAX=40,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.3,NDECS=1
CON,FIELD=transpose(conv1_rem_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'dthm (K/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
PSCLOSE












time_1dave(0)=1.
;time_1dave(1)=0.5
for j=1,nd do begin
   time_1dave(j)=time_1dave(j-1)+1.
endfor




ppt1_loc_20d=DBLARR(nt+1)
ppt2_loc_20d=DBLARR(nt+1)
evap1_loc_20d=DBLARR(nt+1)
evap2_loc_20d=DBLARR(nt+1)
moist1_loc_20d=DBLARR(nt+1)
moist2_loc_20d=DBLARR(nt+1)
heat1_loc_20d=DBLARR(nt+1)
heat2_loc_20d=DBLARR(nt+1)
qv1_loc_20d=DBLARR(nz+1,nt+1)
qv2_loc_20d=DBLARR(nz+1,nt+1)
conv1_loc_20d=DBLARR(nz+1,nt+1)
conv2_loc_20d=DBLARR(nz+1,nt+1)
stwtg1_loc_20d=DBLARR(nz+1,nt+1)
stwtg2_loc_20d=DBLARR(nz+1,nt+1)
wwtg1_loc_20d=DBLARR(nz+1,nt+1)
wwtg2_loc_20d=DBLARR(nz+1,nt+1)
z_bl1_loc_20d=DBLARR(nt+1)
z_bl2_loc_20d=DBLARR(nt+1)
rh1_loc_20d=DBLARR(nt+1)
rh2_loc_20d=DBLARR(nt+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl1_loc_20d.dat',/get_lun 
 readf,lun,z_bl1_loc_20d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_20d.dat',/get_lun 
 readf,lun,ppt1_loc_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap1_loc_20d.dat',/get_lun 
 readf,lun,evap1_loc_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist1_loc_20d.dat',/get_lun 
 readf,lun,moist1_loc_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat1_loc_20d.dat',/get_lun 
 readf,lun,heat1_loc_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv1_loc_20d.dat',/get_lun 
 readf,lun,qv1_loc_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv1_loc_20d.dat',/get_lun 
 readf,lun,conv1_loc_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/stwtg1_loc_20d.dat',/get_lun 
 readf,lun,stwtg1_loc_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg1_loc_20d.dat',/get_lun 
 readf,lun,wwtg1_loc_20d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh1_loc_20d.dat',/get_lun 
 readf,lun,rh1_loc_20d
close,/al

openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl2_loc_20d.dat',/get_lun 
 readf,lun,z_bl2_loc_20d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt2_loc_20d.dat',/get_lun 
 readf,lun,ppt2_loc_20d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap2_loc_20d.dat',/get_lun 
 readf,lun,evap2_loc_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist2_loc_20d.dat',/get_lun 
 readf,lun,moist2_loc_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat2_loc_20d.dat',/get_lun 
 readf,lun,heat2_loc_20d
close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv2_loc_20d.dat',/get_lun 
; readf,lun,qv2_loc_20d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv2_loc_20d.dat',/get_lun 
; readf,lun,conv2_loc_20d
;close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg2_loc_20d.dat',/get_lun 
 readf,lun,wwtg2_loc_20d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh2_loc_20d.dat',/get_lun 
 readf,lun,rh2_loc_20d
close,/al



ppt1_loc_24d=DBLARR(nt+1)
ppt2_loc_24d=DBLARR(nt+1)
evap1_loc_24d=DBLARR(nt+1)
evap2_loc_24d=DBLARR(nt+1)
moist1_loc_24d=DBLARR(nt+1)
moist2_loc_24d=DBLARR(nt+1)
heat1_loc_24d=DBLARR(nt+1)
heat2_loc_24d=DBLARR(nt+1)
qv1_loc_24d=DBLARR(nz+1,nt+1)
qv2_loc_24d=DBLARR(nz+1,nt+1)
conv1_loc_24d=DBLARR(nz+1,nt+1)
conv2_loc_24d=DBLARR(nz+1,nt+1)
stwtg1_loc_24d=DBLARR(nz+1,nt+1)
stwtg2_loc_24d=DBLARR(nz+1,nt+1)
wwtg1_loc_24d=DBLARR(nz+1,nt+1)
wwtg2_loc_24d=DBLARR(nz+1,nt+1)
z_bl1_loc_24d=DBLARR(nt+1)
z_bl2_loc_24d=DBLARR(nt+1)
rh1_loc_24d=DBLARR(nt+1)
rh2_loc_24d=DBLARR(nt+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl1_loc_24d.dat',/get_lun 
 readf,lun,z_bl1_loc_24d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_24d.dat',/get_lun 
 readf,lun,ppt1_loc_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap1_loc_24d.dat',/get_lun 
 readf,lun,evap1_loc_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist1_loc_24d.dat',/get_lun 
 readf,lun,moist1_loc_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat1_loc_24d.dat',/get_lun 
 readf,lun,heat1_loc_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv1_loc_24d.dat',/get_lun 
 readf,lun,qv1_loc_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv1_loc_24d.dat',/get_lun 
 readf,lun,conv1_loc_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/stwtg1_loc_24d.dat',/get_lun 
 readf,lun,stwtg1_loc_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg1_loc_24d.dat',/get_lun 
 readf,lun,wwtg1_loc_24d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh1_loc_24d.dat',/get_lun 
 readf,lun,rh1_loc_24d
close,/al

openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl2_loc_24d.dat',/get_lun 
 readf,lun,z_bl2_loc_24d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt2_loc_24d.dat',/get_lun 
 readf,lun,ppt2_loc_24d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap2_loc_24d.dat',/get_lun 
 readf,lun,evap2_loc_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist2_loc_24d.dat',/get_lun 
 readf,lun,moist2_loc_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat2_loc_24d.dat',/get_lun 
 readf,lun,heat2_loc_24d
close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv2_loc_24d.dat',/get_lun 
; readf,lun,qv2_loc_24d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv2_loc_24d.dat',/get_lun 
; readf,lun,conv2_loc_24d
;close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg2_loc_24d.dat',/get_lun 
 readf,lun,wwtg2_loc_24d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh2_loc_24d.dat',/get_lun 
 readf,lun,rh2_loc_24d
close,/al


ppt1_loc_28d=DBLARR(nt+1)
ppt2_loc_28d=DBLARR(nt+1)
evap1_loc_28d=DBLARR(nt+1)
evap2_loc_28d=DBLARR(nt+1)
moist1_loc_28d=DBLARR(nt+1)
moist2_loc_28d=DBLARR(nt+1)
heat1_loc_28d=DBLARR(nt+1)
heat2_loc_28d=DBLARR(nt+1)
qv1_loc_28d=DBLARR(nz+1,nt+1)
qv2_loc_28d=DBLARR(nz+1,nt+1)
conv1_loc_28d=DBLARR(nz+1,nt+1)
conv2_loc_28d=DBLARR(nz+1,nt+1)
stwtg1_loc_28d=DBLARR(nz+1,nt+1)
stwtg2_loc_28d=DBLARR(nz+1,nt+1)
wwtg1_loc_28d=DBLARR(nz+1,nt+1)
wwtg2_loc_28d=DBLARR(nz+1,nt+1)
z_bl1_loc_28d=DBLARR(nt+1)
z_bl2_loc_28d=DBLARR(nt+1)
rh1_loc_28d=DBLARR(nt+1)
rh2_loc_28d=DBLARR(nt+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl1_loc_28d.dat',/get_lun 
 readf,lun,z_bl1_loc_28d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_28d.dat',/get_lun 
 readf,lun,ppt1_loc_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap1_loc_28d.dat',/get_lun 
 readf,lun,evap1_loc_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist1_loc_28d.dat',/get_lun 
 readf,lun,moist1_loc_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat1_loc_28d.dat',/get_lun 
 readf,lun,heat1_loc_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv1_loc_28d.dat',/get_lun 
 readf,lun,qv1_loc_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv1_loc_28d.dat',/get_lun 
 readf,lun,conv1_loc_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/stwtg1_loc_28d.dat',/get_lun 
 readf,lun,stwtg1_loc_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg1_loc_28d.dat',/get_lun 
 readf,lun,wwtg1_loc_28d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh1_loc_28d.dat',/get_lun 
 readf,lun,rh1_loc_28d
close,/al

openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl2_loc_28d.dat',/get_lun 
 readf,lun,z_bl2_loc_28d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt2_loc_28d.dat',/get_lun 
 readf,lun,ppt2_loc_28d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap2_loc_28d.dat',/get_lun 
 readf,lun,evap2_loc_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist2_loc_28d.dat',/get_lun 
 readf,lun,moist2_loc_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat2_loc_28d.dat',/get_lun 
 readf,lun,heat2_loc_28d
close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv2_loc_28d.dat',/get_lun 
; readf,lun,qv2_loc_28d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv2_loc_28d.dat',/get_lun 
; readf,lun,conv2_loc_28d
;close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg2_loc_28d.dat',/get_lun 
 readf,lun,wwtg2_loc_28d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh2_loc_28d.dat',/get_lun 
 readf,lun,rh2_loc_28d
close,/al
 
;;;;;;;;;;;;;;;;;;;;;;;;
ppt1_loc_rem_20d=DBLARR(nt+1)
ppt2_loc_rem_20d=DBLARR(nt+1)
evap1_loc_rem_20d=DBLARR(nt+1)
evap2_loc_rem_20d=DBLARR(nt+1)
moist1_loc_rem_20d=DBLARR(nt+1)
moist2_loc_rem_20d=DBLARR(nt+1)
heat1_loc_rem_20d=DBLARR(nt+1)
heat2_loc_rem_20d=DBLARR(nt+1)
qv1_loc_rem_20d=DBLARR(nz+1,nt+1)
qv2_loc_rem_20d=DBLARR(nz+1,nt+1)
conv1_loc_rem_20d=DBLARR(nz+1,nt+1)
conv2_loc_rem_20d=DBLARR(nz+1,nt+1)
stwtg1_loc_rem_20d=DBLARR(nz+1,nt+1)
stwtg2_loc_rem_20d=DBLARR(nz+1,nt+1)
wwtg1_loc_rem_20d=DBLARR(nz+1,nt+1)
wwtg2_loc_rem_20d=DBLARR(nz+1,nt+1)
z_bl1_loc_rem_20d=DBLARR(nt+1)
z_bl2_loc_rem_20d=DBLARR(nt+1)
rh1_loc_rem_20d=DBLARR(nt+1)
rh2_loc_rem_20d=DBLARR(nt+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl1_loc_rem_20d.dat',/get_lun 
 readf,lun,z_bl1_loc_rem_20d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_20d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap1_loc_rem_20d.dat',/get_lun 
 readf,lun,evap1_loc_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist1_loc_rem_20d.dat',/get_lun 
 readf,lun,moist1_loc_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat1_loc_rem_20d.dat',/get_lun 
 readf,lun,heat1_loc_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv1_loc_rem_20d.dat',/get_lun 
 readf,lun,qv1_loc_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv1_loc_rem_20d.dat',/get_lun 
 readf,lun,conv1_loc_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/stwtg1_loc_rem_20d.dat',/get_lun 
 readf,lun,stwtg1_loc_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg1_loc_rem_20d.dat',/get_lun 
 readf,lun,wwtg1_loc_rem_20d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh1_loc_rem_20d.dat',/get_lun 
 readf,lun,rh1_loc_rem_20d
close,/al

openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl2_loc_rem_20d.dat',/get_lun 
 readf,lun,z_bl2_loc_rem_20d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt2_loc_rem_20d.dat',/get_lun 
 readf,lun,ppt2_loc_rem_20d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap2_loc_rem_20d.dat',/get_lun 
 readf,lun,evap2_loc_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist2_loc_rem_20d.dat',/get_lun 
 readf,lun,moist2_loc_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat2_loc_rem_20d.dat',/get_lun 
 readf,lun,heat2_loc_rem_20d
close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv2_loc_rem_20d.dat',/get_lun 
; readf,lun,qv2_loc_rem_20d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv2_loc_rem_20d.dat',/get_lun 
; readf,lun,conv2_loc_rem_20d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg2_loc_rem_20d.dat',/get_lun 
; readf,lun,wwtg2_loc_rem_20d
;close,/al
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh2_loc_rem_20d.dat',/get_lun 
; readf,lun,rh2_loc_rem_20d
;close,/al



ppt1_loc_rem_24d=DBLARR(nt+1)
ppt2_loc_rem_24d=DBLARR(nt+1)
evap1_loc_rem_24d=DBLARR(nt+1)
evap2_loc_rem_24d=DBLARR(nt+1)
moist1_loc_rem_24d=DBLARR(nt+1)
moist2_loc_rem_24d=DBLARR(nt+1)
heat1_loc_rem_24d=DBLARR(nt+1)
heat2_loc_rem_24d=DBLARR(nt+1)
qv1_loc_rem_24d=DBLARR(nz+1,nt+1)
qv2_loc_rem_24d=DBLARR(nz+1,nt+1)
conv1_loc_rem_24d=DBLARR(nz+1,nt+1)
conv2_loc_rem_24d=DBLARR(nz+1,nt+1)
stwtg1_loc_rem_24d=DBLARR(nz+1,nt+1)
stwtg2_loc_rem_24d=DBLARR(nz+1,nt+1)
wwtg1_loc_rem_24d=DBLARR(nz+1,nt+1)
wwtg2_loc_rem_24d=DBLARR(nz+1,nt+1)
z_bl1_loc_rem_24d=DBLARR(nt+1)
z_bl2_loc_rem_24d=DBLARR(nt+1)
rh1_loc_rem_24d=DBLARR(nt+1)
rh2_loc_rem_24d=DBLARR(nt+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl1_loc_rem_24d.dat',/get_lun 
 readf,lun,z_bl1_loc_rem_24d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_24d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap1_loc_rem_24d.dat',/get_lun 
 readf,lun,evap1_loc_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist1_loc_rem_24d.dat',/get_lun 
 readf,lun,moist1_loc_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat1_loc_rem_24d.dat',/get_lun 
 readf,lun,heat1_loc_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv1_loc_rem_24d.dat',/get_lun 
 readf,lun,qv1_loc_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv1_loc_rem_24d.dat',/get_lun 
 readf,lun,conv1_loc_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/stwtg1_loc_rem_24d.dat',/get_lun 
 readf,lun,stwtg1_loc_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg1_loc_rem_24d.dat',/get_lun 
 readf,lun,wwtg1_loc_rem_24d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh1_loc_rem_24d.dat',/get_lun 
 readf,lun,rh1_loc_rem_24d
close,/al

openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl2_loc_rem_24d.dat',/get_lun 
 readf,lun,z_bl2_loc_rem_24d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt2_loc_rem_24d.dat',/get_lun 
 readf,lun,ppt2_loc_rem_24d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap2_loc_rem_24d.dat',/get_lun 
 readf,lun,evap2_loc_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist2_loc_rem_24d.dat',/get_lun 
 readf,lun,moist2_loc_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat2_loc_rem_24d.dat',/get_lun 
 readf,lun,heat2_loc_rem_24d
close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv2_loc_rem_24d.dat',/get_lun 
; readf,lun,qv2_loc_rem_24d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv2_loc_rem_24d.dat',/get_lun 
; readf,lun,conv2_loc_rem_24d
;close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg2_loc_rem_24d.dat',/get_lun 
 readf,lun,wwtg2_loc_rem_24d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh2_loc_rem_24d.dat',/get_lun 
 readf,lun,rh2_loc_rem_24d
close,/al


ppt1_loc_rem_28d=DBLARR(nt+1)
ppt2_loc_rem_28d=DBLARR(nt+1)
evap1_loc_rem_28d=DBLARR(nt+1)
evap2_loc_rem_28d=DBLARR(nt+1)
moist1_loc_rem_28d=DBLARR(nt+1)
moist2_loc_rem_28d=DBLARR(nt+1)
heat1_loc_rem_28d=DBLARR(nt+1)
heat2_loc_rem_28d=DBLARR(nt+1)
qv1_loc_rem_28d=DBLARR(nz+1,nt+1)
qv2_loc_rem_28d=DBLARR(nz+1,nt+1)
conv1_loc_rem_28d=DBLARR(nz+1,nt+1)
conv2_loc_rem_28d=DBLARR(nz+1,nt+1)
stwtg1_loc_rem_28d=DBLARR(nz+1,nt+1)
stwtg2_loc_rem_28d=DBLARR(nz+1,nt+1)
wwtg1_loc_rem_28d=DBLARR(nz+1,nt+1)
wwtg2_loc_rem_28d=DBLARR(nz+1,nt+1)
z_bl1_loc_rem_28d=DBLARR(nt+1)
z_bl2_loc_rem_28d=DBLARR(nt+1)
rh1_loc_rem_28d=DBLARR(nt+1)
rh2_loc_rem_28d=DBLARR(nt+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl1_loc_rem_28d.dat',/get_lun 
 readf,lun,z_bl1_loc_rem_28d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_loc_rem_28d.dat',/get_lun 
 readf,lun,ppt1_loc_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap1_loc_rem_28d.dat',/get_lun 
 readf,lun,evap1_loc_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist1_loc_rem_28d.dat',/get_lun 
 readf,lun,moist1_loc_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat1_loc_rem_28d.dat',/get_lun 
 readf,lun,heat1_loc_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv1_loc_rem_28d.dat',/get_lun 
 readf,lun,qv1_loc_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv1_loc_rem_28d.dat',/get_lun 
 readf,lun,conv1_loc_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/stwtg1_loc_rem_28d.dat',/get_lun 
 readf,lun,stwtg1_loc_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg1_loc_rem_28d.dat',/get_lun 
 readf,lun,wwtg1_loc_rem_28d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh1_loc_rem_28d.dat',/get_lun 
 readf,lun,rh1_loc_rem_28d
close,/al

openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl2_loc_rem_28d.dat',/get_lun 
 readf,lun,z_bl2_loc_rem_28d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt2_loc_rem_28d.dat',/get_lun 
 readf,lun,ppt2_loc_rem_28d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap2_loc_rem_28d.dat',/get_lun 
 readf,lun,evap2_loc_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist2_loc_rem_28d.dat',/get_lun 
 readf,lun,moist2_loc_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat2_loc_rem_28d.dat',/get_lun 
 readf,lun,heat2_loc_rem_28d
close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv2_loc_rem_28d.dat',/get_lun 
; readf,lun,qv2_loc_rem_28d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv2_loc_rem_28d.dat',/get_lun 
; readf,lun,conv2_loc_rem_28d
;close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg2_loc_rem_28d.dat',/get_lun 
 readf,lun,wwtg2_loc_rem_28d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh2_loc_rem_28d.dat',/get_lun 
 readf,lun,rh2_loc_rem_28d
close,/al

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
ppt1_rem_20d=DBLARR(nt+1)
ppt2_rem_20d=DBLARR(nt+1)
evap1_rem_20d=DBLARR(nt+1)
evap2_rem_20d=DBLARR(nt+1)
moist1_rem_20d=DBLARR(nt+1)
moist2_rem_20d=DBLARR(nt+1)
heat1_rem_20d=DBLARR(nt+1)
heat2_rem_20d=DBLARR(nt+1)
qv1_rem_20d=DBLARR(nz+1,nt+1)
qv2_rem_20d=DBLARR(nz+1,nt+1)
conv1_rem_20d=DBLARR(nz+1,nt+1)
conv2_rem_20d=DBLARR(nz+1,nt+1)
stwtg1_rem_20d=DBLARR(nz+1,nt+1)
stwtg2_rem_20d=DBLARR(nz+1,nt+1)
wwtg1_rem_20d=DBLARR(nz+1,nt+1)
wwtg2_rem_20d=DBLARR(nz+1,nt+1)
z_bl1_rem_20d=DBLARR(nt+1)
z_bl2_rem_20d=DBLARR(nt+1)
rh1_rem_20d=DBLARR(nt+1)
rh2_rem_20d=DBLARR(nt+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl1_rem_20d.dat',/get_lun 
 readf,lun,z_bl1_rem_20d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_20d.dat',/get_lun 
 readf,lun,ppt1_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap1_rem_20d.dat',/get_lun 
 readf,lun,evap1_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist1_rem_20d.dat',/get_lun 
 readf,lun,moist1_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat1_rem_20d.dat',/get_lun 
 readf,lun,heat1_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv1_rem_20d.dat',/get_lun 
 readf,lun,qv1_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv1_rem_20d.dat',/get_lun 
 readf,lun,conv1_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/stwtg1_rem_20d.dat',/get_lun 
 readf,lun,stwtg1_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg1_rem_20d.dat',/get_lun 
 readf,lun,wwtg1_rem_20d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh1_rem_20d.dat',/get_lun 
 readf,lun,rh1_rem_20d
close,/al

openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl2_rem_20d.dat',/get_lun 
 readf,lun,z_bl2_rem_20d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt2_rem_20d.dat',/get_lun 
 readf,lun,ppt2_rem_20d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap2_rem_20d.dat',/get_lun 
 readf,lun,evap2_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist2_rem_20d.dat',/get_lun 
 readf,lun,moist2_rem_20d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat2_rem_20d.dat',/get_lun 
 readf,lun,heat2_rem_20d
close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv2_rem_20d.dat',/get_lun 
; readf,lun,qv2_rem_20d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv2_rem_20d.dat',/get_lun 
; readf,lun,conv2_rem_20d
;close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg2_rem_20d.dat',/get_lun 
 readf,lun,wwtg2_rem_20d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh2_rem_20d.dat',/get_lun 
 readf,lun,rh2_rem_20d
close,/al



ppt1_rem_24d=DBLARR(nt+1)
ppt2_rem_24d=DBLARR(nt+1)
evap1_rem_24d=DBLARR(nt+1)
evap2_rem_24d=DBLARR(nt+1)
moist1_rem_24d=DBLARR(nt+1)
moist2_rem_24d=DBLARR(nt+1)
heat1_rem_24d=DBLARR(nt+1)
heat2_rem_24d=DBLARR(nt+1)
qv1_rem_24d=DBLARR(nz+1,nt+1)
qv2_rem_24d=DBLARR(nz+1,nt+1)
conv1_rem_24d=DBLARR(nz+1,nt+1)
conv2_rem_24d=DBLARR(nz+1,nt+1)
stwtg1_rem_24d=DBLARR(nz+1,nt+1)
stwtg2_rem_24d=DBLARR(nz+1,nt+1)
wwtg1_rem_24d=DBLARR(nz+1,nt+1)
wwtg2_rem_24d=DBLARR(nz+1,nt+1)
z_bl1_rem_24d=DBLARR(nt+1)
z_bl2_rem_24d=DBLARR(nt+1)
rh1_rem_24d=DBLARR(nt+1)
rh2_rem_24d=DBLARR(nt+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl1_rem_24d.dat',/get_lun 
 readf,lun,z_bl1_rem_24d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_24d.dat',/get_lun 
 readf,lun,ppt1_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap1_rem_24d.dat',/get_lun 
 readf,lun,evap1_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist1_rem_24d.dat',/get_lun 
 readf,lun,moist1_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat1_rem_24d.dat',/get_lun 
 readf,lun,heat1_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv1_rem_24d.dat',/get_lun 
 readf,lun,qv1_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv1_rem_24d.dat',/get_lun 
 readf,lun,conv1_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/stwtg1_rem_24d.dat',/get_lun 
 readf,lun,stwtg1_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg1_rem_24d.dat',/get_lun 
 readf,lun,wwtg1_rem_24d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh1_rem_24d.dat',/get_lun 
 readf,lun,rh1_rem_24d
close,/al

openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl2_rem_24d.dat',/get_lun 
 readf,lun,z_bl2_rem_24d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt2_rem_24d.dat',/get_lun 
 readf,lun,ppt2_rem_24d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap2_rem_24d.dat',/get_lun 
 readf,lun,evap2_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist2_rem_24d.dat',/get_lun 
 readf,lun,moist2_rem_24d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat2_rem_24d.dat',/get_lun 
 readf,lun,heat2_rem_24d
close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv2_rem_24d.dat',/get_lun 
; readf,lun,qv2_rem_24d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv2_rem_24d.dat',/get_lun 
; readf,lun,conv2_rem_24d
;close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg2_rem_24d.dat',/get_lun 
 readf,lun,wwtg2_rem_24d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh2_rem_24d.dat',/get_lun 
 readf,lun,rh2_rem_24d
close,/al


ppt1_rem_28d=DBLARR(nt+1)
ppt2_rem_28d=DBLARR(nt+1)
evap1_rem_28d=DBLARR(nt+1)
evap2_rem_28d=DBLARR(nt+1)
moist1_rem_28d=DBLARR(nt+1)
moist2_rem_28d=DBLARR(nt+1)
heat1_rem_28d=DBLARR(nt+1)
heat2_rem_28d=DBLARR(nt+1)
qv1_rem_28d=DBLARR(nz+1,nt+1)
qv2_rem_28d=DBLARR(nz+1,nt+1)
conv1_rem_28d=DBLARR(nz+1,nt+1)
conv2_rem_28d=DBLARR(nz+1,nt+1)
stwtg1_rem_28d=DBLARR(nz+1,nt+1)
stwtg2_rem_28d=DBLARR(nz+1,nt+1)
wwtg1_rem_28d=DBLARR(nz+1,nt+1)
wwtg2_rem_28d=DBLARR(nz+1,nt+1)
z_bl1_rem_28d=DBLARR(nt+1)
z_bl2_rem_28d=DBLARR(nt+1)
rh1_rem_28d=DBLARR(nt+1)
rh2_rem_28d=DBLARR(nt+1)
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl1_rem_28d.dat',/get_lun 
 readf,lun,z_bl1_rem_28d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt1_rem_28d.dat',/get_lun 
 readf,lun,ppt1_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap1_rem_28d.dat',/get_lun 
 readf,lun,evap1_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist1_rem_28d.dat',/get_lun 
 readf,lun,moist1_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat1_rem_28d.dat',/get_lun 
 readf,lun,heat1_rem_28d
close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv1_rem_28d.dat',/get_lun 
; readf,lun,qv1_rem_28d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv1_rem_28d.dat',/get_lun 
; readf,lun,conv1_rem_28d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/stwtg1_rem_28d.dat',/get_lun 
; readf,lun,stwtg1_rem_28d
;close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg1_rem_28d.dat',/get_lun 
 readf,lun,wwtg1_rem_28d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh1_rem_28d.dat',/get_lun 
 readf,lun,rh1_rem_28d
close,/al

openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/z_bl2_rem_28d.dat',/get_lun 
 readf,lun,z_bl2_rem_28d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/ppt2_rem_28d.dat',/get_lun 
 readf,lun,ppt2_rem_28d
close,/all
 openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/evap2_rem_28d.dat',/get_lun 
 readf,lun,evap2_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/moist2_rem_28d.dat',/get_lun 
 readf,lun,moist2_rem_28d
close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/heat2_rem_28d.dat',/get_lun 
 readf,lun,heat2_rem_28d
close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/qv2_rem_28d.dat',/get_lun 
; readf,lun,qv2_rem_28d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/conv2_rem_28d.dat',/get_lun 
; readf,lun,conv2_rem_28d
;close,/all
;openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/stwtg2_rem_28d.dat',/get_lun 
; readf,lun,stwtg2_rem_28d
;close,/all
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/wwtg2_rem_28d.dat',/get_lun 
 readf,lun,wwtg2_rem_28d
close,/al
openr,lun,'/home/fj019034/SCMDATA/IDL/DATA/rh2_rem_28d.dat',/get_lun 
 readf,lun,rh2_rem_28d
close,/al
 































PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=4,XMIN=-5.,XMAX=70.
GPLOT,Y=(EVAP1_loc_mean(576:n_tr)-ppt1_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=(evap1_rem_mean(576:n_tr)-ppt1_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=(evap1_loc_rem_mean(576:n_tr)-ppt1_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(E1-P1)(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=-4,YMAX=0,XMIN=-5.,XMAX=70.
GPLOT,Y=moist1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Mls(mm/day), col1',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=2,YPOS=2
GSET,YMIN=-4,YMAX=0,XMIN=-5.,XMAX=70.
GPLOT,Y=(EVAP2_loc_mean(576:n_tr)-ppt2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=(evap2_rem_mean(576:n_tr)-ppt2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=(evap2_loc_rem_mean(576:n_tr)-ppt2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(E2-P2)(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=2,YPOS=1
GSET,YMIN=0,YMAX=4,XMIN=-5.,XMAX=70.
GPLOT,Y=moist2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Mls(mm/day), col2',  xSTEP=5,ySTEP=1,XTITLE='Days'
PSCLOSE



PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=-3,YMAX=3,XMIN=-2.,XMAX=70.
GPLOT,Y=(evap1_loc_mean(576:n_tr)+evap2_loc_mean(576:n_tr))-(ppt1_loc_mean(576:n_tr)+ppt2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=(evap1_rem_mean(576:n_tr)+evap2_rem_mean(576:n_tr))-(ppt1_rem_mean(576:n_tr)+ppt2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=(evap1_loc_rem_mean(576:n_tr)+evap2_loc_rem_mean(576:n_tr))-(ppt1_loc_rem_mean(576:n_tr)+ppt2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(E1+E2)-(P1+P2)(mm/day)',  xSTEP=2,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=2,YPOS=1
GSET,YMIN=-0.2,YMAX=0.2,XMIN=-2.,XMAX=70.
GPLOT,Y=(moist1_loc_mean(576:n_tr)+moist2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=(moist1_rem_mean(576:n_tr)+moist2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=(moist1_loc_rem_mean(576:n_tr)+moist2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
AXES, YTITLE='(M1+M2)(mm/day)',  xSTEP=2, ndec=2,ySTEP=0.05,XTITLE='Days'


;CS, SCALE=1
;POS,XPOS=1,YPOS=2
;GSET,YMIN=4,YMAX=6,XMIN=-1.,XMAX=70.
;GPLOT,Y=0.5*(evap1_rem_mean(576:n_tr)+evap2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
;GPLOT,Y=0.5*(evap1_loc_mean(576:n_tr)+evap2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
;GPLOT,Y=0.5*(evap1_loc_rem_mean(576:n_tr)+evap2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
;AXES, YTITLE='(E1+E2)/2(mm/day)',  xSTEP=2,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=2,YPOS=2
GSET,YMIN=-0.2,YMAX=0.2,XMIN=-2.,XMAX=70.
GPLOT,Y=(heat1_loc_mean(576:n_tr)+heat2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=(heat1_rem_mean(576:n_tr)+heat2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=(heat1_loc_rem_mean(576:n_tr)+heat2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
AXES, YTITLE='(H1+H2)(mm/day)',  xSTEP=2,ndec=2,ySTEP=0.05,XTITLE='Days'
PSCLOSE





PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=35,YMAX=65,XMIN=-5.,XMAX=70.
GPLOT,Y=cwv1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=cwv1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=cwv1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='cwv(mm), col1',  xSTEP=5,ySTEP=5,XTITLE='Days'


CS, SCALE=1
POS,XPOS=2,YPOS=1
GSET,YMIN=35,YMAX=65,XMIN=-5.,XMAX=70.
GPLOT,Y=cwv2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=cwv2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=cwv2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='cwv(mm), col2',  xSTEP=5,ySTEP=5,XTITLE='Days'

CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=70.
GPLOT,Y=evap1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Evap(mm/day), col1',  xSTEP=5,ySTEP=1,XTITLE='Days'


CS, SCALE=1
POS,XPOS=2,YPOS=2
GSET,YMIN=4,YMAX=9,XMIN=-5.,XMAX=70.
GPLOT,Y=evap2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Evap(mm/day), col2',  xSTEP=5,ySTEP=1,XTITLE='Days'
PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-2.,XMAX=70.
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
;GPLOT,Y=ppt1_loc_rem_20d_ent125(2592:9936),X=time_tr(576:n_tr), col=2
;GPLOT,Y=ppt1_loc_rem_20d_ent15(2592:9936),X=time_tr(576:n_tr), col=18

;GPLOT,Y=ppt1_loc_rem_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=1, style=1
;GPLOT,Y=ppt1_loc_rem_20d_tau_12h_ent125(2592:9936),X=time_tr(576:n_tr), col=2, style=1
;GPLOT,Y=ppt1_loc_rem_20d_tau_12h_ent15(2592:9936),X=time_tr(576:n_tr), col=18, style=1

GLEGEND,LEGPOS=11,col=[1,2,18],style=[0,0,0],LABELS=['L+R 2h','L+R  2h ent*1.25','L+R  2h ent*1.5']
;GLEGEND,LEGPOS=11,col=[1,2,18,1,2,18],style=[0,0,0,1,1,1],LABELS=['L+R 2h','L+R  2h ent*1.25','L+R  2h ent*1.5','L+R  12h','L+R  12h ent*1.25','L+R  12h ent*1.5']

;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
;GPLOT,Y=rrt4K(576:2160),X=time_tr(576:2160), col=18
AXES, YTITLE='(mm/day)',  xSTEP=2,ySTEP=1,XTITLE='Days'

PSCLOSE


PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=4,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=0.5*(ppt1_loc_mean(576:n_tr)+ppt2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=0.5*(ppt1_rem_mean(576:n_tr)+ppt2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=0.5*(ppt1_loc_rem_mean(576:n_tr)+ppt2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(P1+P2)/2(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

;CS, SCALE=1
;POS,XPOS=2,YPOS=1
;GSET,YMIN=-0.2,YMAX=0.2,XMIN=-1.,XMAX=70.

;GPLOT,Y=0.5*(moist1_loc_mean(576:n_tr)+moist2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
;GPLOT,Y=0.5*(moist1_rem_mean(576:n_tr)+moist2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
;GPLOT,Y=0.5*(moist1_loc_rem_mean(576:n_tr)+moist2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
;AXES, YTITLE='(M1+M2)/2(mm/day)',  xSTEP=2, ndec=2,ySTEP=0.05,XTITLE='Days'


CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=4,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=0.5*(evap1_rem_mean(576:n_tr)+evap2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=0.5*(evap1_loc_mean(576:n_tr)+evap2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=0.5*(evap1_loc_rem_mean(576:n_tr)+evap2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
AXES, YTITLE='(E1+E2)/2(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=2,YPOS=2
GSET,YMIN=30,YMAX=60,XMIN=-5.,XMAX=70.
GPLOT,Y=0.5*(cwv1_loc_mean(576:n_tr)+cwv2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=0.5*(cwv1_rem_mean(576:n_tr)+cwv2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=0.5*(cwv1_loc_rem_mean(576:n_tr)+cwv2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
AXES, YTITLE='(cwv1+cwv2)/2(mm)',  xSTEP=5,ndec=2,ySTEP=55,XTITLE='Days'
PSCLOSE




PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=4,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=0.5*(ppt1_loc_mean(576:n_tr)+ppt2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=0.5*(ppt1_rem_mean(576:n_tr)+ppt2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=0.5*(ppt1_loc_rem_mean(576:n_tr)+ppt2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(P1+P2)/2(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=2,YPOS=1
GSET,YMIN=-0.2,YMAX=0.2,XMIN=-5.,XMAX=70.

GPLOT,Y=0.5*(moist1_loc_mean(576:n_tr)+moist2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=0.5*(moist1_rem_mean(576:n_tr)+moist2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=0.5*(moist1_loc_rem_mean(576:n_tr)+moist2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
AXES, YTITLE='(M1+M2)/2(mm/day)',  xSTEP=5, ndec=2,ySTEP=0.05,XTITLE='Days'


CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=4,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=0.5*(evap1_rem_mean(576:n_tr)+evap2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=0.5*(evap1_loc_mean(576:n_tr)+evap2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=0.5*(evap1_loc_rem_mean(576:n_tr)+evap2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
AXES, YTITLE='(E1+E2)/2(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=2,YPOS=2
GSET,YMIN=-0.2,YMAX=0.2,XMIN=-5.,XMAX=70.
GPLOT,Y=0.5*(heat1_loc_mean(576:n_tr)+heat2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=0.5*(heat1_rem_mean(576:n_tr)+heat2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=0.5*(heat1_loc_rem_mean(576:n_tr)+heat2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
AXES, YTITLE='(H1+H2)/2(mm/day)',  xSTEP=5,ndec=2,ySTEP=0.05,XTITLE='Days'
PSCLOSE





PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Ppt(mm/day), col1',  xSTEP=5,ySTEP=1,XTITLE='Days'


CS, SCALE=1
POS,XPOS=2,YPOS=1
GSET,YMIN=4,YMAX=12,XMIN=-5.,XMAX=70.
GPLOT,Y=ppt2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='Ppt(mm/day), col2',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=70.
GPLOT,Y=evap1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Evap(mm/day), col1',  xSTEP=5,ySTEP=1,XTITLE='Days'


CS, SCALE=1
POS,XPOS=2,YPOS=2
GSET,YMIN=4,YMAX=9,XMIN=-5.,XMAX=70.
GPLOT,Y=evap2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=evap2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Evap(mm/day), col2',  xSTEP=5,ySTEP=1,XTITLE='Days'
PSCLOSE


PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_rem_fixedLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.

GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_loc_20d_fixedLSF(2592:9936),X=time_tr(576:n_tr), col=1, style=1
GPLOT,Y=ppt1_loc_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=1, style=1
GPLOT,Y=ppt1_rem_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=18, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='PPT(mm/day), col1',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=2,YMAX=7,XMIN=-5.,XMAX=70.

GPLOT,Y=EVAP1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=evap1_loc_20d_fixedLSF(2592:9936),X=time_tr(576:n_tr), col=1, style=1
GPLOT,Y=evap1_loc_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=18, style=1
;GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed Ls']
AXES, YTITLE='EVAP(mm/day), col1',  xSTEP=5,ySTEP=1,XTITLE='Days'

PSCLOSE

PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=-0.2,YMAX=0.2,XMIN=-5.,XMAX=70.

GPLOT,Y=0.5*(moist1_loc_mean(576:n_tr)+moist2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=0.5*(moist1_rem_mean(576:n_tr)+moist2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=0.5*(moist1_loc_rem_mean(576:n_tr)+moist2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Mls(mm/day), col1',  xSTEP=5, ndec=2,ySTEP=0.05,XTITLE='Days'


CS, SCALE=1
POS,XPOS=2,YPOS=1
GSET,YMIN=0,YMAX=4,XMIN=-5.,XMAX=70.
GPLOT,Y=moist2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=moist2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=moist2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Mls(mm/day), col2',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=-0.2,YMAX=0.2,XMIN=-5.,XMAX=70.
GPLOT,Y=0.5*(heat1_loc_mean(576:n_tr)+heat2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=0.5*(heat1_rem_mean(576:n_tr)+heat2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=0.5*(heat1_loc_rem_mean(576:n_tr)+heat2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Hls(mm/day), col1',  xSTEP=5,ndec=2,ySTEP=0.05,XTITLE='Days'


CS, SCALE=1
POS,XPOS=2,YPOS=2
GSET,YMIN=-6,YMAX=0,XMIN=-5.,XMAX=70.
GPLOT,Y=heat2_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=heat2_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=heat2_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
AXES, YTITLE='Hls(mm/day), col2',  xSTEP=5,ySTEP=1,XTITLE='Days'
PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_fixedLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-5.,XMAX=70.

GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_loc_20d_fixedLSF(2592:9936),X=time_tr(576:n_tr), col=1, style=1

GLEGEND,LEGPOS=1,col=[1,1],STYLE=[0,1],LABELS=['L','L fixed LSF']
AXES, YTITLE='(mm/day), col1',  xSTEP=5,ySTEP=1,XTITLE='Days'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
GPLOT,Y=ppt1_loc_20d_ent125(2592:4176),X=time_tr(576:2160), col=2
GPLOT,Y=ppt1_loc_20d_ent15(2592:4176),X=time_tr(576:2160), col=18
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)

GPLOT,Y=ppt1_loc_mean(576:2160),X=time_tr(576:2160), col=1
GLEGEND,LEGPOS=1,col=[1,2,18],LABELS=['L','L ent*0.125','L ent*0.15' ]
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(mm/day), col1&2',  xSTEP=2,ySTEP=1,XTITLE='Days'
PSCLOSE










PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-2.,XMAX=70.
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_loc_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=1, style=1
GPLOT,Y=ppt1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_rem_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=18, style=1
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=2
GPLOT,Y=ppt1_loc_rem_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=2, style=1


;GPLOT,Y=ppt1_loc_20d_tau_12h_ent125(2592:9936),X=time_tr(576:n_tr), col=6, style=2
;GPLOT,Y=ppt1_loc_20d_tau_12h_ent15(2592:9936),X=time_tr(576:n_tr), col=18, style=3

;GPLOT,Y=ppt1_rem_mean(576:2160),X=time_tr(576:2160), col=18
;GPLOT,Y=ppt1_rem_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=18, style=1
;GPLOT,Y=ppt1_rem_20d_tau_12h_ent125(2592:9936),X=time_tr(576:n_tr), col=18, style=2
;GPLOT,Y=ppt1_rem_20d_tau_12h_ent15(2592:9936),X=time_tr(576:n_tr), col=18, style=3

;GPLOT,Y=ppt1_loc_rem_mean(576:2160),X=time_tr(576:2160), col=2
;GPLOT,Y=ppt1_loc_rem_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=2, style=1
;GPLOT,Y=ppt1_loc_rem_20d_tau_12h_ent125(2592:9936),X=time_tr(576:n_tr), col=2, style=2
;GPLOT,Y=ppt1_loc_rem_20d_tau_12h_ent15(2592:9936),X=time_tr(576:n_tr), col=2, style=3

GLEGEND,LEGPOS=1,col=[2,2,18,18,1,1],style=[0,1,0,1,0,1],LABELS=['L+R 2K 2hr','L+R 4K 12hr','R 2K 2hr','R 4K 12hr','L 2K 2hr','L 4K 12hr']
GPLOT,Y=rrt(576:n_tr),X=time_tr(576:n_tr)
AXES, YTITLE='(mm/day), col1&2',  xSTEP=2,ySTEP=1,XTITLE='Days'
PSCLOSE






PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-2.,XMAX=70.

GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_loc_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=1, style=1
GPLOT,Y=ppt1_loc_20d_tau_12h_ent125(2592:9936),X=time_tr(576:n_tr), col=6;, style=2
GPLOT,Y=ppt1_loc_20d_tau_12h_ent15(2592:9936),X=time_tr(576:n_tr), col=18;, style=3
GPLOT,Y=rrt(576:n_tr),X=time_tr(576:n_tr)
GLEGEND,LEGPOS=11,col=[1,1,6,18],style=[0,1,0,0],LABELS=['L 2K 2hr','L 4K 12hr','L 4K 12hr ent*1.25','L 4K 12hr ent*1.5']
AXES, YTITLE='(mm/day), col1&2',  xSTEP=2,ySTEP=1,XTITLE='Days'
psclose

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_rem_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-2.,XMAX=70.

GPLOT,Y=ppt1_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_rem_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=1, style=1
GPLOT,Y=ppt1_rem_20d_tau_12h_ent125(2592:9936),X=time_tr(576:n_tr), col=6;, style=2
GPLOT,Y=ppt1_rem_20d_tau_12h_ent15(2592:9936),X=time_tr(576:n_tr), col=18;, style=3
GPLOT,Y=rrt(576:n_tr),X=time_tr(576:n_tr)
GLEGEND,LEGPOS=1,col=[1,1,6,18],style=[0,1,0,0],LABELS=['R 2K 2hr','R 4K 12hr','R 4K 12hr ent*1.25','R 4K 12hr ent*1.5']
AXES, YTITLE='(mm/day), col1&2',  xSTEP=2,ySTEP=1,XTITLE='Days'
psclose

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-2.,XMAX=70.

GPLOT,Y=ppt1_loc_rem_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_loc_rem_20d_tau_12h(2592:9936),X=time_tr(576:n_tr), col=1, style=1
GPLOT,Y=ppt1_loc_rem_20d_tau_12h_ent125(2592:9936),X=time_tr(576:n_tr), col=6;, style=2
GPLOT,Y=ppt1_loc_rem_20d_tau_12h_ent15(2592:9936),X=time_tr(576:n_tr), col=18;, style=3
GPLOT,Y=rrt(576:n_tr),X=time_tr(576:n_tr)
GLEGEND,LEGPOS=11,col=[1,1,6,18],style=[0,1,0,0],LABELS=['L+R 2K 2hr','L+R 4K 12hr','L+R 4K 12hr ent*1.25','L+R 4K 12hr ent*1.5']
AXES, YTITLE='(mm/day), col1&2',  xSTEP=2,ySTEP=1,XTITLE='Days'
psclose













PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=-3,YMAX=3,XMIN=-5.,XMAX=70.
GPLOT,Y=(evap1_loc_mean(576:n_tr)+evap2_loc_mean(576:n_tr))-(ppt1_loc_mean(576:n_tr)+ppt2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=(evap1_rem_mean(576:n_tr)+evap2_rem_mean(576:n_tr))-(ppt1_rem_mean(576:n_tr)+ppt2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=(evap1_loc_rem_mean(576:n_tr)+evap2_loc_rem_mean(576:n_tr))-(ppt1_loc_rem_mean(576:n_tr)+ppt2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
;GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(E1+E2)-(P1+P2)(mm/day)',  xSTEP=5,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=2,YPOS=1
GSET,YMIN=-0.2,YMAX=0.2,XMIN=-5.,XMAX=70.
GPLOT,Y=(moist1_loc_mean(576:n_tr)+moist2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=(moist1_rem_mean(576:n_tr)+moist2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=(moist1_loc_rem_mean(576:n_tr)+moist2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
AXES, YTITLE='(M1+M2)(mm/day)',  xSTEP=5, ndec=2,ySTEP=0.05,XTITLE='Days'


;CS, SCALE=1
;POS,XPOS=1,YPOS=2
;GSET,YMIN=4,YMAX=6,XMIN=-1.,XMAX=70.
;GPLOT,Y=0.5*(evap1_rem_mean(576:n_tr)+evap2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
;GPLOT,Y=0.5*(evap1_loc_mean(576:n_tr)+evap2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
;GPLOT,Y=0.5*(evap1_loc_rem_mean(576:n_tr)+evap2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
;AXES, YTITLE='(E1+E2)/2(mm/day)',  xSTEP=2,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XPOS=2,YPOS=2
GSET,YMIN=-0.2,YMAX=0.2,XMIN=-5.,XMAX=70.
GPLOT,Y=(heat1_loc_mean(576:n_tr)+heat2_loc_mean(576:n_tr)),X=time_tr(576:n_tr), col=1
GPLOT,Y=(heat1_rem_mean(576:n_tr)+heat2_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=18
GPLOT,Y=(heat1_loc_rem_mean(576:n_tr)+heat2_loc_rem_mean(576:n_tr)),X=time_tr(576:n_tr), col=2
AXES, YTITLE='(H1+H2)(mm/day)',  xSTEP=5,ndec=2,ySTEP=0.05,XTITLE='Days'
PSCLOSE













PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_20d_ent125.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-5,xMAX=70,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
;CON,FIELD=transpose(stwtg1_loc_20d_ent125(0:nz-11,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'sthwtg (k/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,xpos=1,ypos=2
GSET,xMIN=-5,xMAX=70,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
;CON,FIELD=transpose(100.*rh1_loc_20d_ent125(0:nz-16,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-16)/1000.,TITLE = 'RH (%)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=14
POS,xpos=1,ypos=1
GSET,xMIN=-5,xMAX=70,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.6,NDECS=1
;CON,FIELD=transpose(conv1_loc_20d_ent125(0:nz-11,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'dthm (K/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=5,YSTEP=5,YTITLE='Height (km)'
PSCLOSE














PSOPEN, XPLOTS=2,YPLOTS=1,FILE='dt_dq_intRC.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=-1.,xMAX=2,yMIN=0,yMAX=20
GPLOT,x=th2_rce_3037_3027_tho2h(0:nz-11)-th1_rce_3037_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=18,style=0
GPLOT,x=th2_rce_30345_3027_tho2h(0:nz-11)-th1_rce_30345_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=18,style=3
GPLOT,x=th2_rce_3032_3027_tho2h(0:nz-11)-th1_rce_3032_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=18,style=2
GPLOT,x=th2_rce_30295_3027_tho2h(0:nz-11)-th1_rce_30295_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=18,style=1
GPLOT,x=th2_rce_3027_3027_tho2h(0:nz-11)-th1_rce_3027_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=1,style=0
GPLOT,x=th2_rce_3017_3027_tho2h(0:nz-11)-th1_rce_3017_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=2,style=0
GPLOT,x=th2_rce_3007_3027_tho2h(0:nz-11)-th1_rce_3007_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=6,style=0
GLEGEND,LEGPOS=9,col=[18,18,18,18,1,2,6],style=[0,3,2,1,0,0,0],LABELS=['303.7','303.45','303.2','302.95','302.7','301.7','300.7']
 AXES, XTITLE=tau+'(K)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=-10,xMAX=10,yMIN=0,yMAX=20
GPLOT,x=1000.*wwtg1_rce_3037_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=18,style=0
GPLOT,x=1000.*wwtg1_rce_30345_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=18,style=3
GPLOT,x=1000.*wwtg1_rce_3032_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000,col=18.,style=2
GPLOT,x=1000.*wwtg1_rce_30295_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=18,style=1
GPLOT,x=1000.*wwtg1_rce_3027_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=1,style=0
GPLOT,x=1000.*wwtg1_rce_3017_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=2,style=0
GPLOT,x=1000.*wwtg1_rce_3007_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,col=6,style=0

 AXES, XTITLE='W_wtg1(mm/s)',XSTEP=5,ndec=1,YSTEP=5
psclose


PSOPEN, XPLOTS=2,YPLOTS=1,FILE='dt_dq_intRC.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=-1.,xMAX=8,yMIN=0,yMAX=20
GPLOT,x=th2_rce_3007_3027_tho2h(0:nz-11)-th1_rce_3007_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,style=0
GPLOT,x=th2_rce_3007_3027_tho6h(0:nz-11)-th1_rce_3007_3027_tho6h(0:nz-11),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=th2_rce_3007_3027_tho12h(0:nz-11)-th1_rce_3007_3027_tho12h(0:nz-11),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=th2_rce_3007_3027_tho24h(0:nz-11)-th1_rce_3007_3027_tho24h(0:nz-11),y=hei(0:nz-11)/1000.,style=3
GPLOT,x=th2_rce_3007_3027_tho120h(0:nz-11)-th1_rce_3007_3027_tho120h(0:nz-11),y=hei(0:nz-11)/1000.,style=4
 AXES, XTITLE=tau+'(K)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=-10,xMAX=0,yMIN=0,yMAX=20
GPLOT,x=1000.*wwtg1_rce_3007_3027_tho2h(0:nz-11),y=hei(0:nz-11)/1000.,style=0
GPLOT,x=1000.*wwtg1_rce_3007_3027_tho6h(0:nz-11),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=1000.*wwtg1_rce_3007_3027_tho12h(0:nz-11),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=1000.*wwtg1_rce_3007_3027_tho24h(0:nz-11),y=hei(0:nz-11)/1000.,style=3
GPLOT,x=1000.*wwtg1_rce_3007_3027_tho120h(0:nz-11),y=hei(0:nz-11)/1000.,style=4

GLEGEND,LEGPOS=1,style=[4,3,2,1,0],LABELS=['120 h','24 h','12 h','6 h','2 h']

 AXES, XTITLE='W_wtg1(mm/s) ',XSTEP=5,ndec=1,YSTEP=5
psclose


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_20d.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_20d(0:nz-11,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'sthwtg (k/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,xpos=1,ypos=2
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh2_loc_20d(0:nz-16,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-16)/1000.,TITLE = 'RH (%)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=14
POS,xpos=1,ypos=1
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.6,NDECS=1
CON,FIELD=transpose(conv1_loc_20d(0:nz-11,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'dthm (K/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'
PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem_20d.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_rem_20d(0:nz-11,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'sthwtg (k/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,xpos=1,ypos=2
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_rem_20d(0:nz-16,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-16)/1000.,TITLE = 'RH (%)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=14
POS,xpos=1,ypos=1
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.6,NDECS=1
CON,FIELD=transpose(conv1_rem_20d(0:nz-11,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'dthm (K/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_rem_20d.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_rem_20d(0:nz-11,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'sthwtg (k/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,xpos=1,ypos=2
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_rem_20d(0:nz-16,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-16)/1000.,TITLE = 'RH (%)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=14
POS,xpos=1,ypos=1
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.6,NDECS=1
CON,FIELD=transpose(conv1_loc_rem_20d(0:nz-11,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'dthm (K/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_20d.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_20d(0:nz-11,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'sthwtg (k/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=32
POS,xpos=1,ypos=2
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-90,MAX=90,STEP=6
CON,FIELD=transpose(100.*rh1_loc_20d(0:nz-16,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-16)/1000.,TITLE = 'RH (%)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=14
POS,xpos=1,ypos=1
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.6,NDECS=1
CON,FIELD=transpose(conv1_loc_20d(0:nz-11,2592:9936)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'dthm (K/d)',/NOCOLBAR,ZERO_THICK=50;,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'
PSCLOSE










PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_loc_rem.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_loc_rem_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'sthwtg (k/d)',/NOCOLBAR,ZERO_THICK=50;,,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=7,NCOLS=11
POS,xpos=1,ypos=2
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=0,MAX=18,STEP=2
CON,FIELD=transpose(1000.*qv1_loc_rem_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'qv (g/kg)',/NOCOLBAR,ZERO_THICK=50;,,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=14
POS,xpos=1,ypos=1
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=36.,STEP=0.6,NDECS=1
CON,FIELD=transpose(conv1_loc_rem_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'dthm (K/d)',/NOCOLBAR,ZERO_THICK=50;,,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'
PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='con_rem.ps',CHARSIZE=200,thick=300,/portrait
CS,SCALE=1,NCOLS=22
POS,xpos=1,ypos=3
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1
CON,FIELD=transpose(stwtg1_rem_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'sthwtg (k/d)',/NOCOLBAR,ZERO_THICK=50;,,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=7,NCOLS=11
POS,xpos=1,ypos=2
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=0,MAX=18,STEP=2
CON,FIELD=transpose(1000.*qv1_rem_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'qv (g/kg)',/NOCOLBAR,ZERO_THICK=50;,,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'

CS,SCALE=1,NCOLS=14
POS,xpos=1,ypos=1
GSET,xMIN=-2,xMAX=17,yMIN=0,yMAX=15
LEVS,MIN=-3.6,MAX=3.6,STEP=0.6,NDECS=1
CON,FIELD=transpose(conv1_rem_mean(0:nz-11,576:n_tr)),X=time_tr(576:n_tr),Y=hei(0:nz-11)/1000.,TITLE = 'dthm (K/d)',/NOCOLBAR,ZERO_THICK=50;,,/NOLINES,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)'
PSCLOSE










PSOPEN, XPLOTS=2,YPLOTS=1,FILE='t_q_3027k.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=290.,xMAX=450,yMIN=0,yMAX=20
GPLOT,x=th1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=th2_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000., col=18

 AXES, XTITLE=tau+'(K)',XSTEP=50,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=25,yMIN=0,yMAX=20
GPLOT,x=1000.*qv1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*qv2_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='q(g/kg) ',XSTEP=5,ndec=1,YSTEP=5, YTITLE='Height (km)'
psclose





PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
GPLOT,Y=ppt1_loc_mean(576:2160),X=time_tr(576:2160), col=1
GPLOT,Y=ppt1_loc_20d_ent125(2592:4176),X=time_tr(576:2160), col=1,STYLE=1
GPLOT,Y=ppt1_loc_20d_ent15(2592:4176),X=time_tr(576:2160), col=1,STYLE=2

GPLOT,Y=ppt1_loc_rem_mean(576:2160),X=time_tr(576:2160), col=2
GPLOT,Y=ppt1_loc_rem_20d_ent125(2592:4176),X=time_tr(576:2160), col=2,STYLE=1
GPLOT,Y=ppt1_loc_rem_20d_ent15(2592:4176),X=time_tr(576:2160), col=2,STYLE=2

GPLOT,Y=ppt1_rem_mean(576:2160),X=time_tr(576:2160), col=18
GPLOT,Y=ppt1_rem_20d_ent125(2592:4176),X=time_tr(576:2160), col=18,STYLE=1
GPLOT,Y=ppt1_rem_20d_ent15(2592:4176),X=time_tr(576:2160), col=18,STYLE=2

GLEGEND,LEGPOS=1,col=[18,18,18,2,2,2,1,1,1],style=[0,1,2,0,1,2,0,1,2],LABELS=['R','R ent*1.25','R ent*1.5','L+R','R+L+ ent*1.25','L+R ent*1.5','L','L+ ent*1.25','L ent*1.5']


GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
GPLOT,Y=rrt4K(576:2160),X=time_tr(576:2160), col=18
AXES, YTITLE='(mm/day)',  xSTEP=2,ySTEP=1,XTITLE='Days'

PSCLOSE




PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1_sen_fixedLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-2.,XMAX=70.

GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_loc_20d_fixedLSF(2592:9936),X=time_tr(576:n_tr), col=1
GPLOT,Y=ppt1_loc_20d_fixedLSF_p(2592:9936),X=time_tr(576:n_tr), col=1,STYLE=1

GPLOT,Y=ppt1_loc_20d_fixedMLSF(2592:9936),X=time_tr(576:n_tr), col=18
GPLOT,Y=ppt1_loc_20d_fixedMLSF_p(2592:9936),X=time_tr(576:n_tr), col=18,STYLE=1
GPLOT,Y=ppt1_loc_20d_fixedHLSF(2592:9936),X=time_tr(576:n_tr), col=14
GPLOT,Y=ppt1_loc_20d_fixedHLSF_P(2592:9936),X=time_tr(576:n_tr), col=14,STYLE=1

GLEGEND,LEGPOS=11,col=[1,1,2,2,2,2],STYLE=[0,1,0,1,0,1],LABELS=['L','L no LSF','L+R','L+R no LSF','R','R no LSF']
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(mm/day), col1&2',  xSTEP=2,ySTEP=1,XTITLE='Days'
PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1_noLSF.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-2.,XMAX=70.
GPLOT,Y=ppt1_loc_rem_mean(576:3168),X=time_tr(576:3168), col=2
GPLOT,Y=ppt1_loc_rem_20d_noLSF(2592:9936),X=time_tr(576:3168), col=2,STYLE=1
GPLOT,Y=ppt1_rem_mean(576:3168),X=time_tr(576:3168), col=18
GPLOT,Y=ppt1_rem_20d_noLSF(2592:9936),X=time_tr(576:3168), col=18,STYLE=1
GPLOT,Y=ppt1_loc_mean(576:3168),X=time_tr(576:3168), col=1
GPLOT,Y=ppt1_loc_20d_noLSF(2592:9936),X=time_tr(576:3168), col=1,STYLE=1
GLEGEND,LEGPOS=11,col=[1,1,2,2,2,2],STYLE=[0,1,0,1,0,1],LABELS=['L','L no LSF','L+R','L+R no LSF','R','R no LSF']
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(mm/day), col1&2',  xSTEP=2,ySTEP=1,XTITLE='Days'
PSCLOSE



PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
GPLOT,Y=ppt1_loc_20d_ent125(2592:4176),X=time_tr(576:2160), col=2
GPLOT,Y=ppt1_loc_20d_ent15(2592:4176),X=time_tr(576:2160), col=18
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)

GPLOT,Y=ppt1_loc_mean(576:2160),X=time_tr(576:2160), col=1
GLEGEND,LEGPOS=1,col=[1,2,18],LABELS=['L','L ent*0.125','L ent*0.15' ]
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(mm/day), col1&2',  xSTEP=2,ySTEP=1,XTITLE='Days'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
GPLOT,Y=ppt1_rem_20d_ent125(2592:4176),X=time_tr(576:2160), col=2
GPLOT,Y=ppt1_rem_20d_ent15(2592:4176),X=time_tr(576:2160), col=18

GPLOT,Y=ppt1_rem_mean(576:2160),X=time_tr(576:2160), col=1
GLEGEND,LEGPOS=1,col=[1,2,18],LABELS=['R','R ent*0.125','R ent*0.15' ]
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(mm/day), col1&2',  xSTEP=2,ySTEP=1,XTITLE='Days'
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.
GPLOT,Y=ppt1_loc_rem_20d_ent125(2592:4176),X=time_tr(576:2160), col=2
GPLOT,Y=ppt1_loc_rem_20d_ent15(2592:4176),X=time_tr(576:2160), col=18
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)

GPLOT,Y=ppt1_loc_rem_mean(576:2160),X=time_tr(576:2160), col=1
GLEGEND,LEGPOS=1,col=[1,2,18],LABELS=['L+R','L+R ent*0.125','L+R ent*0.15' ]
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(mm/day), col1&2',  xSTEP=2,ySTEP=1,XTITLE='Days'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1_ent125.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.

GPLOT,Y=ppt1_loc_20d_ent125(2592:4176),X=time_tr(576:2160), col=1
GPLOT,Y=ppt1_loc_rem_20d_ent125(2592:4176),X=time_tr(576:2160), col=2
GPLOT,Y=ppt1_rem_20d_ent125(2592:4176),X=time_tr(576:2160), col=18
GLEGEND,LEGPOS=1,col=[2,18,1],LABELS=['L+R','R','L']
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(mm/day), col1 ent*1.25',  xSTEP=2,ySTEP=1,XTITLE='Days'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1_ent15.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.

GPLOT,Y=ppt1_loc_20d_ent15(2592:4176),X=time_tr(576:2160), col=1
GPLOT,Y=ppt1_loc_rem_20d_ent15(2592:4176),X=time_tr(576:2160), col=2
GPLOT,Y=ppt1_rem_20d_ent15(2592:4176),X=time_tr(576:2160), col=18
GLEGEND,LEGPOS=1,col=[2,18,1],LABELS=['L+R','R','L']
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(mm/day), col1 ent*1.5',  xSTEP=2,ySTEP=1,XTITLE='Days'
PSCLOSE


PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.

GPLOT,Y=ppt1_rem_mean(576:2160),X=time_tr(576:2160), col=18
GPLOT,Y=ppt1_loc_mean(576:2160),X=time_tr(576:2160), col=1
GPLOT,Y=ppt1_loc_rem_mean(576:2160),X=time_tr(576:2160), col=2
GLEGEND,LEGPOS=1,col=[2,18,1],LABELS=['Local+Remote','Remote','Local']
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
AXES, YTITLE='(mm/day), col1&2',  xSTEP=1,ySTEP=1,XTITLE='Days'
PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.


GPLOT,Y=ppt1_loc_20d_ent125(2592:4176),X=time_tr(576:2160), col=1

GPLOT,Y=ppt1_loc_rem_20d_ent125(2592:4176),X=time_tr(576:2160), col=2
GPLOT,Y=ppt1_loc_rem_20d_ent15(2592:4176),X=time_tr(576:2160), col=14

GPLOT,Y=ppt1_rem_20d_ent125(2592:4176),X=time_tr(576:2160), col=6
GPLOT,Y=ppt1_rem_20d_ent15(2592:4176),X=time_tr(576:2160), col=18
GPLOT,Y=ppt1_rem_mean(576:2160),X=time_tr(576:2160), col=18

GLEGEND,LEGPOS=1,col=[18,6,14,2,1],LABELS=['R ent*1.5','R ent*1.25','L+R ent*1.5','L+R ent*1.25','L ent*1.25']


GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
GPLOT,Y=rrt4K(576:2160),X=time_tr(576:2160), col=18
AXES, YTITLE='(mm/day)',  xSTEP=1,ySTEP=1,XTITLE='Days'

PSCLOSE



PSOPEN, XPLOTS=3,YPLOTS=1,FILE='wtg_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=3,yMIN=0,yMAX=20
GPLOT,x= 86400.*stwtg1_c_intRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*stwtg1_m_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*stwtg1_w_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sth_wtg (K/d)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=0,yMIN=0,yMAX=20
GPLOT,x= 86400.*1000.*sqwtg1_c_intRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*1000.*sqwtg1_m_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*1000.*sqwtg1_w_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sq_wtg (g/kg/d)',XSTEP=1,ndec=4,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=-15,xMAX=0,yMIN=0,yMAX=20
GPLOT,x=1000.*wwtg1_c_intRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*wwtg1_m_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=1000.*wwtg1_w_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
 AXES, XTITLE='W_wtg (mm/s)',XSTEP=5,YSTEP=5, YTITLE='Height (km)'

psclose

PSOPEN, XPLOTS=3,YPLOTS=1,FILE='wtg_col2.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=-3,xMAX=0,yMIN=0,yMAX=20
GPLOT,x= 86400.*stwtg2_c_intRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*stwtg2_m_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*stwtg2_w_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sth_wtg (K/d)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=3,ypos=1
GSET,xMIN=0,xMAX=4,yMIN=0,yMAX=20
GPLOT,x= 86400.*1000.*sqwtg2_c_intRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*1000.*sqwtg2_m_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*1000.*sqwtg2_w_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sq_wtg (g/kg/d)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=0,xMAX=15,yMIN=0,yMAX=20
GPLOT,x=1000.*wwtg2_c_intRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*wwtg2_m_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=1000.*wwtg2_w_intRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
 AXES, XTITLE='W_wtg (mm/s)',XSTEP=5,YSTEP=5, YTITLE='Height (km)'


psclose








PSOPEN, XPLOTS=2,YPLOTS=1,FILE='t_q_3027k_intRC.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=290.,xMAX=450,yMIN=0,yMAX=20
GPLOT,x=theta_rce_intRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.
 AXES, XTITLE=tau+'(K)',XSTEP=50,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=25,yMIN=0,yMAX=20
GPLOT,x=1000.*q_rce_intRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.
 AXES, XTITLE='q(g/kg) ',XSTEP=5,ndec=1,YSTEP=5, YTITLE='Height (km)'
psclose

PSOPEN, XPLOTS=2,YPLOTS=1,FILE='dt_dq_intRC.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=-10.,xMAX=10,yMIN=0,yMAX=20
GPLOT,x=theta_rce_intRC_3007k(0:nz-11)-theta_rce_intRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=0
GPLOT,x=theta_rce_intRC_3017k(0:nz-11)-theta_rce_intRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=theta_rce_intRC_3037k(0:nz-11)-theta_rce_intRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=theta_rce_intRC_3047k(0:nz-11)-theta_rce_intRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=3
 AXES, XTITLE=tau+'(K)',XSTEP=5,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=-5,xMAX=10,yMIN=0,yMAX=20
GPLOT,x=1000.*q_rce_intRC_3007k(0:nz-11)-1000.*q_rce_intRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=0
GPLOT,x=1000.*q_rce_intRC_3017k(0:nz-11)-1000.*q_rce_intRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=1000.*q_rce_intRC_3037k(0:nz-11)-1000.*q_rce_intRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=1000.*q_rce_intRC_3047k(0:nz-11)-1000.*q_rce_intRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=3
GLEGEND,LEGPOS=9,style=[3,2,1,0],LABELS=['304.7K-302.7K','303.7K-302.7K','301.7K-302.7K','300.7K-302.7K']

 AXES, XTITLE='q(g/kg) ',XSTEP=5,ndec=1,YSTEP=5
psclose








PSOPEN, XPLOTS=1,YPLOTS=1,FILE='series_loc_rem_locrem_col1.ps',CHARSIZE=200,thick=300

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.

GPLOT,Y=ppt1_loc_mean(576:2160),X=time_tr(576:2160), col=1

GPLOT,Y=ppt1_loc_20d_ent15(2592:4176),X=time_tr(576:2160), col=18
GPLOT,Y=ppt1_loc_20d_ent125(2592:4176),X=time_tr(576:2160), col=2

GLEGEND,LEGPOS=1,col=[2,18,1],LABELS=['Local ent*1.25','Local ent*1.5','Local ent']
GPLOT,Y=rrt(576:2160),X=time_tr(576:2160)
GPLOT,Y=rrt4K(576:2160),X=time_tr(576:2160), col=18
AXES, YTITLE='(mm/day)',  xSTEP=1,ySTEP=1,XTITLE='Days'

PSCLOSE










PSOPEN, XPLOTS=1,YPLOTS=2,FILE='series_loc_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=6,XMIN=5.,XMAX=70.

GPLOT,Y=ppt1_loc_rem_20d(720:nt),X=time(720:nt), col=1
GPLOT,Y=ppt1_loc_rem_24d(720:nt),X=time(720:nt), col=2
GPLOT,Y=ppt1_loc_rem_28d(720:nt),X=time(720:nt), col=18
AXES, YTITLE='(mm/day), col1&2',  xSTEP=5,ySTEP=2,XTITLE='Days'


CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=10,XMIN=-5.,XMAX=70.

GPLOT,Y=ppt1_loc_rem_20d(2016:9936),X=time_tr(0:n_tr), col=1
GPLOT,Y=ppt1_loc_rem_24d(2592:10512),X=time_tr(0:n_tr), col=2
GPLOT,Y=ppt1_loc_rem_28d(3168:11088),X=time_tr(0:n_tr), col=18
GPLOT,Y=ppt1_loc_rem_mean(0:n_tr),X=time_tr(0:n_tr), col=14
AXES, YTITLE='(mm/day), col1&2',  xSTEP=5,ySTEP=2,XTITLE='Days'

PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=2,FILE='series_loc_col1.ps',CHARSIZE=200,thick=300,/portrait
CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=10,XMIN=5.,XMAX=70.

GPLOT,Y=ppt1_loc_20d(720:nt),X=time(720:nt), col=1
GPLOT,Y=ppt1_loc_24d(720:nt),X=time(720:nt), col=2
GPLOT,Y=ppt1_loc_28d(720:nt),X=time(720:nt), col=18
AXES, YTITLE='(mm/day), col1&2',  xSTEP=5,ySTEP=2,XTITLE='Days'


CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=10,XMIN=-5.,XMAX=70.

GPLOT,Y=ppt1_loc_20d(2016:9936),X=time_tr(0:n_tr), col=1
GPLOT,Y=ppt1_loc_24d(2592:10512),X=time_tr(0:n_tr), col=2
GPLOT,Y=ppt1_loc_28d(3168:11088),X=time_tr(0:n_tr), col=18
GPLOT,Y=ppt1_loc_mean(0:n_tr),X=time_tr(0:n_tr), col=14
AXES, YTITLE='(mm/day), col1&2',  xSTEP=5,ySTEP=2,XTITLE='Days'

PSCLOSE

PSOPEN, XPLOTS=1,YPLOTS=2,FILE='series_rem_col1.ps',CHARSIZE=200,thick=300,/portrait
CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=10,XMIN=5.,XMAX=70.

GPLOT,Y=ppt1_rem_20d(720:nt),X=time(720:nt), col=1
GPLOT,Y=ppt1_rem_24d(720:nt),X=time(720:nt), col=2
GPLOT,Y=ppt1_rem_28d(720:nt),X=time(720:nt), col=18
AXES, YTITLE='(mm/day), col1&2',  xSTEP=5,ySTEP=2,XTITLE='Days'


CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=10,XMIN=-5.,XMAX=70.

GPLOT,Y=ppt1_rem_20d(2016:9936),X=time_tr(0:n_tr), col=1
GPLOT,Y=ppt1_rem_24d(2592:10512),X=time_tr(0:n_tr), col=2
GPLOT,Y=ppt1_rem_28d(3168:11088),X=time_tr(0:n_tr), col=18
GPLOT,Y=ppt1_rem_mean(0:n_tr),X=time_tr(0:n_tr), col=14
AXES, YTITLE='(mm/day), col1&2',  xSTEP=5,ySTEP=2,XTITLE='Days'

PSCLOSE








PSOPEN, XPLOTS=1,YPLOTS=2,FILE='series_c_m_w_col1_2.ps',CHARSIZE=200,thick=300,/portrait
CS, SCALE=1
POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=10,XMIN=1.,XMAX=70.
GPLOT,Y=ppt1_uniSST_init2_RCE3007K(1:nd),X=time_1dave(1:nd), col=1
GPLOT,Y=ppt1_uniSST(1:nd),X=time_1dave(1:nd), col=2
GPLOT,Y=ppt1_uniSST_init2_RCE3047K(1:nd),X=time_1dave(1:nd), col=18

GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['init2=304.7k','302.7k','300.7k']
AXES, YTITLE='(mm/day), col1',  xSTEP=5,ySTEP=2,XTITLE='Days'

CS, SCALE=1
POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=10,XMIN=1.,XMAX=70.
GPLOT,Y=ppt2_uniSST_init2_RCE3007K(1:nd),X=time_1dave(1:nd), col=1
GPLOT,Y=ppt2_uniSST(1:nd),X=time_1dave(1:nd), col=2
GPLOT,Y=ppt2_uniSST_init2_RCE3047K(1:nd),X=time_1dave(1:nd), col=18
AXES, YTITLE='(mm/day), col2',  xSTEP=5,ySTEP=2,XTITLE='Days'

PSCLOSE



PSOPEN, XPLOTS=3,YPLOTS=1,FILE='wtg_col1.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=3,yMIN=0,yMAX=20
GPLOT,x= 86400.*stwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*stwtg1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*stwtg1_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sth_wtg (K/d)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=3,ypos=1
GSET,xMIN=-4,xMAX=0,yMIN=0,yMAX=20
GPLOT,x= 86400.*1000.*sqwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*1000.*sqwtg1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*1000.*sqwtg1_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sq_wtg (g/kg/d)',XSTEP=1,ndec=4,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=-15,xMAX=0,yMIN=0,yMAX=20
GPLOT,x=1000.*wwtg1_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*wwtg1_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=1000.*wwtg1_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
 AXES, XTITLE='W_wtg (mm/s)',XSTEP=5,YSTEP=5, YTITLE='Height (km)'

psclose

PSOPEN, XPLOTS=3,YPLOTS=1,FILE='wtg_col2.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=-3,xMAX=0,yMIN=0,yMAX=20
GPLOT,x= 86400.*stwtg2_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*stwtg2_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*stwtg2_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sth_wtg (K/d)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=3,ypos=1
GSET,xMIN=0,xMAX=4,yMIN=0,yMAX=20
GPLOT,x= 86400.*1000.*sqwtg2_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x= 86400.*1000.*sqwtg2_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x= 86400.*1000.*sqwtg2_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
 AXES, XTITLE='sq_wtg (g/kg/d)',XSTEP=1,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=0,xMAX=15,yMIN=0,yMAX=20
GPLOT,x=1000.*wwtg2_c_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.
GPLOT,x=1000.*wwtg2_m_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=2
GPLOT,x=1000.*wwtg2_w_fixedRC(0:nz-11),y=hei(0:nz-11)/1000.,col=18
GLEGEND,LEGPOS=9,col=[18,2,1],LABELS=['W','M','C']
 AXES, XTITLE='W_wtg (mm/s)',XSTEP=5,YSTEP=5, YTITLE='Height (km)'


psclose



PSOPEN, XPLOTS=2,YPLOTS=1,FILE='dt_dq.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=-10.,xMAX=10,yMIN=0,yMAX=20
GPLOT,x=theta_rce_fixedRC_3007k(0:nz-11)-theta_rce_fixedRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=0
GPLOT,x=theta_rce_fixedRC_3017k(0:nz-11)-theta_rce_fixedRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=theta_rce_fixedRC_3037k(0:nz-11)-theta_rce_fixedRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=theta_rce_fixedRC_3047k(0:nz-11)-theta_rce_fixedRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=3
 AXES, XTITLE=tau+'(K)',XSTEP=5,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=-5,xMAX=10,yMIN=0,yMAX=20
GPLOT,x=1000.*q_rce_fixedRC_3007k(0:nz-11)-1000.*q_rce_fixedRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=0
GPLOT,x=1000.*q_rce_fixedRC_3017k(0:nz-11)-1000.*q_rce_fixedRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=1
GPLOT,x=1000.*q_rce_fixedRC_3037k(0:nz-11)-1000.*q_rce_fixedRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=2
GPLOT,x=1000.*q_rce_fixedRC_3047k(0:nz-11)-1000.*q_rce_fixedRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.,style=3
GLEGEND,LEGPOS=9,style=[3,2,1,0],LABELS=['304.7K-302.7K','303.7K-302.7K','301.7K-302.7K','300.7K-302.7K']

 AXES, XTITLE='q(g/kg) ',XSTEP=5,ndec=1,YSTEP=5
psclose


PSOPEN, XPLOTS=2,YPLOTS=1,FILE='t_q_3027k.ps',CHARSIZE=200,thick=300
CS, SCALE=1
tau='!9'+SCROP(BYTE(113))+'!X'
POS,xpos=1,ypos=1
GSET,xMIN=290.,xMAX=450,yMIN=0,yMAX=20
GPLOT,x=theta_rce_fixedRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.
 AXES, XTITLE=tau+'(K)',XSTEP=50,YSTEP=5, YTITLE='Height (km)'

CS, SCALE=1
tau='!9'+SCROP(BYTE(68))+'!X'
POS,xpos=2,ypos=1
GSET,xMIN=0,xMAX=25,yMIN=0,yMAX=20
GPLOT,x=1000.*q_rce_fixedRC_3027k(0:nz-11),y=hei(0:nz-11)/1000.
 AXES, XTITLE='q(g/kg) ',XSTEP=5,ndec=1,YSTEP=5, YTITLE='Height (km)'
psclose

























end
