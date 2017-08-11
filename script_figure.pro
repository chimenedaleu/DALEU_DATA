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




;
;RCE simulations
;

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

;
;coupled-column simulations C,M,W described in the paper
;

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

;
;coupled-column simulations over uniform SST 
;
nn=9360
ppt1_uniSST_ascent_ave2simsnew=DBLARR(nn+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/ppt1_uniSST_ascent_ave2simsnew.dat',/get_lun 
 readf,lun,ppt1_uniSST_ascent_ave2simsnew
close,/all
ppt1_uniSST_descent_ave4sims=DBLARR(nn+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/ppt1_uniSST_descent_ave4sims.dat',/get_lun 
 readf,lun,ppt1_uniSST_descent_ave4sims
close,/all
ppt1_uniSST_no_lscir_ave4sims=DBLARR(nn+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/ppt1_uniSST_no_lscir_ave4sims.dat',/get_lun 
 readf,lun,ppt1_uniSST_no_lscir_ave4sims
close,/all

heat1_uniSST_ascent_ave2simsnew=DBLARR(nn+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/heat1_uniSST_ascent_ave2simsnew.dat',/get_lun 
 readf,lun,heat1_uniSST_ascent_ave2simsnew
close,/all
heat1_uniSST_descent_ave4sims=DBLARR(nn+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/heat1_uniSST_descent_ave4sims.dat',/get_lun 
 readf,lun,heat1_uniSST_descent_ave4sims
close,/all
heat1_uniSST_no_lscir_ave4sims=DBLARR(nn+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/heat1_uniSST_no_lscir_ave4sims.dat',/get_lun 
 readf,lun,heat1_uniSST_no_lscir_ave4sims
close,/all


ntt=nt+4320
timett=DBLARR(ntt+1)
timett(0)=0.0
for j=1L,ntt do begin
    timett(j)=timett(j-1)+dt_scm
endfor
timett=timett/86400.
nn_long=13680

ppt1_uniSST_1sim_ascent_long=DBLARR(nn_long+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/ppt1_uniSST_1sim_ascent_long.dat',/get_lun 
 readf,lun,ppt1_uniSST_1sim_ascent_long
close,/all
ppt1_uniSST_1sim_descent_long=DBLARR(nn_long+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/ppt1_uniSST_1sim_descent_long.dat',/get_lun 
 readf,lun,ppt1_uniSST_1sim_descent_long
close,/all
ppt1_uniSST_1sim_no_lscir_long=DBLARR(nn_long+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/ppt1_uniSST_1sim_no_lscir_long.dat',/get_lun 
 readf,lun,ppt1_uniSST_1sim_no_lscir_long
close,/all

heat1_uniSST_1sim_ascent_long=DBLARR(nn_long+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/heat1_uniSST_1sim_ascent_long.dat',/get_lun 
 readf,lun,heat1_uniSST_1sim_ascent_long
close,/all
heat1_uniSST_1sim_descent_long=DBLARR(nn_long+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/heat1_uniSST_1sim_descent_long.dat',/get_lun 
 readf,lun,heat1_uniSST_1sim_descent_long
close,/all
heat1_uniSST_1sim_no_lscir_long=DBLARR(nn_long+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/heat1_uniSST_1sim_no_lscir_long.dat',/get_lun 
 readf,lun,heat1_uniSST_1sim_no_lscir_long
close,/all

moist1_uniSST_1sim_ascent_long=DBLARR(nn_long+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/moist1_uniSST_1sim_ascent_long.dat',/get_lun 
 readf,lun,moist1_uniSST_1sim_ascent_long
close,/all
moist1_uniSST_1sim_descent_long=DBLARR(nn_long+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/moist1_uniSST_1sim_descent_long.dat',/get_lun 
 readf,lun,moist1_uniSST_1sim_descent_long
close,/all
moist1_uniSST_1sim_no_lscir_long=DBLARR(nn_long+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA_TRANS_SCM/moist1_uniSST_1sim_no_lscir_long.dat',/get_lun 
 readf,lun,moist1_uniSST_1sim_no_lscir_long
close,/all

;
;simulations of the transition, 5 ensemble simulations, F=0.9
;
ppt1_loc_20d=DBLARR(nt+1)
ppt1_loc_22d=DBLARR(nt+1)
ppt1_loc_24d=DBLARR(nt+1)
ppt1_loc_26d=DBLARR(nt+1)
evap1_loc_mean=DBLARR(n_tr+1)
ppt1_loc_28d=DBLARR(nt+1)
moist1_loc_mean=DBLARR(n_tr+1)
heat1_loc_mean=DBLARR(n_tr+1)
evap2_loc_mean=DBLARR(n_tr+1)
moist2_loc_mean=DBLARR(n_tr+1)
heat2_loc_mean=DBLARR(n_tr+1)
ppt2_loc_mean=DBLARR(n_tr+1)
ppt1_loc_mean=DBLARR(n_tr+1)
ppt1_loc_min=DBLARR(n_tr+1)
ppt1_loc_max=DBLARR(n_tr+1)
ppt1_loc_rem_min=DBLARR(n_tr+1)
ppt1_loc_rem_max=DBLARR(n_tr+1)
ppt1_rem_min=DBLARR(n_tr+1)
ppt1_rem_max=DBLARR(n_tr+1)
stwtg1_loc_mean=DBLARR(nz+1,n_tr+1)
conv1_loc_mean=DBLARR(nz+1,n_tr+1)


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

ppt1_rem_20d=DBLARR(nt+1)
ppt1_rem_22d=DBLARR(nt+1)
ppt1_rem_24d=DBLARR(nt+1)
ppt1_rem_26d=DBLARR(nt+1)
evap1_rem_mean=DBLARR(n_tr+1)
ppt1_rem_28d=DBLARR(nt+1)
moist1_rem_mean=DBLARR(n_tr+1)
heat1_rem_mean=DBLARR(n_tr+1)
evap2_rem_mean=DBLARR(n_tr+1)
moist2_rem_mean=DBLARR(n_tr+1)
heat2_rem_mean=DBLARR(n_tr+1)
ppt2_rem_mean=DBLARR(n_tr+1)
ppt1_rem_mean=DBLARR(n_tr+1)
stwtg1_rem_mean=DBLARR(nz+1,n_tr+1)
conv1_rem_mean=DBLARR(nz+1,n_tr+1)

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



ppt1_loc_rem_20d=DBLARR(nt+1)
ppt1_loc_rem_22d=DBLARR(nt+1)
ppt1_loc_rem_24d=DBLARR(nt+1)
ppt1_loc_rem_26d=DBLARR(nt+1)
evap1_loc_rem_mean=DBLARR(n_tr+1)
ppt1_loc_rem_28d=DBLARR(nt+1)
moist1_loc_rem_mean=DBLARR(n_tr+1)
heat1_loc_rem_mean=DBLARR(n_tr+1)
evap2_loc_rem_mean=DBLARR(n_tr+1)
moist2_loc_rem_mean=DBLARR(n_tr+1)
heat2_loc_rem_mean=DBLARR(n_tr+1)
ppt2_loc_rem_mean=DBLARR(n_tr+1)
ppt1_loc_rem_mean=DBLARR(n_tr+1)
stwtg1_loc_rem_mean=DBLARR(nz+1,n_tr+1)
conv1_loc_rem_mean=DBLARR(nz+1,n_tr+1)

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
 openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_rem_mean.dat',/get_lun 
 readf,lun,heat1_loc_rem_mean
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

;
;LOCAL FORCING WITH FXED HEATING RATE FROM THE LARGE-SCALE
;CIRCULATION, 5 exemble simulations with F=0.9
;
;
heat1_loc_fixedMLSF_mean_ent09=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/heat1_loc_fixedMLSF_mean_ent09.dat',/get_lun 
 readf,lun,heat1_loc_fixedMLSF_mean_ent09
close,/all
ppt1_loc_fixedMLSF_mean_ent09=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_fixedMLSF_mean_ent09.dat',/get_lun 
 readf,lun,ppt1_loc_fixedMLSF_mean_ent09
close,/all
evap1_loc_fixedMLSF_mean_ent09=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/evap1_loc_fixedMLSF_mean_ent09.dat',/get_lun 
 readf,lun,evap1_loc_fixedMLSF_mean_ent09
close,/all
conv_heat1_loc_fixedMLSF_mean_ent09=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv_heat1_loc_fixedMLSF_mean_ent09.dat',/get_lun 
 readf,lun,conv_heat1_loc_fixedMLSF_mean_ent09
close,/all
conv_heat1_loc_mean=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/conv_heat1_loc_mean.dat',/get_lun 
 readf,lun,conv_heat1_loc_mean
close,/all

;
;simulations of the transition, sensitivity to the value of F
;
ppt1_loc_rem_ent1125_mean=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_ent1125_mean.dat',/get_lun 
 readf,lun,ppt1_loc_rem_ent1125_mean
close,/all
ppt1_loc_rem_ent135_mean=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_ent135_mean.dat',/get_lun 
 readf,lun,ppt1_loc_rem_ent135_mean
close,/all

ppt1_rem_ent1125_mean=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_ent1125_mean.dat',/get_lun 
 readf,lun,ppt1_rem_ent1125_mean
close,/all
ppt1_rem_ent135_mean=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_ent135_mean.dat',/get_lun 
 readf,lun,ppt1_rem_ent135_mean
close,/all

ppt1_loc_ent1125_mean=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_ent1125_mean.dat',/get_lun 
 readf,lun,ppt1_loc_ent1125_mean
close,/all
ppt1_loc_ent135_mean=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_ent135_mean.dat',/get_lun 
 readf,lun,ppt1_loc_ent135_mean
close,/all


dtconv1_loc_ent09=DBLARR(NZ+1,nt+1)
dtconv1_loc_ent135=DBLARR(NZ+1,nt+1)
sthwtg1_loc_ent09=DBLARR(NZ+1,nt+1)
sthwtg1_loc_ent135=DBLARR(NZ+1,nt+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtconv1_loc_ent09.dat',/get_lun 
 readf,lun,dtconv1_loc_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_loc_ent09.dat',/get_lun 
 readf,lun,sthwtg1_loc_ent09
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/dtconv1_loc_ent135.dat',/get_lun 
 readf,lun,dtconv1_loc_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/sthwtg1_loc_ent135.dat',/get_lun 
 readf,lun,sthwtg1_loc_ent135
close,/all


;
;TRANSITION LS=0 when the tranition start
;
ppt1_rem_ent135_LS0_mean=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_ent135_LS0_mean.dat',/get_lun 
 readf,lun,ppt1_rem_ent135_LS0_mean
close,/all
ppt1_rem_ent09_LS0_mean=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_ent09_LS0_mean.dat',/get_lun 
 readf,lun,ppt1_rem_ent09_LS0_mean
close,/all

ppt1_loc_ent135_LS0_mean=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_ent135_LS0_mean.dat',/get_lun 
 readf,lun,ppt1_loc_ent135_LS0_mean
close,/all
ppt1_loc_ent09_LS0_mean=DBLARR(n_tr+1)
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_ent09_LS0_mean.dat',/get_lun 
 readf,lun,ppt1_loc_ent09_LS0_mean
close,/all

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

for j=1,1585 do begin
tim_ave(1584+j)=time_tr(2160-j+1)
endfor

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_minmax.dat',/get_lun 
 readf,lun,ppt1_loc_minmax
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_minmax.dat',/get_lun 
 readf,lun,ppt1_rem_minmax
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_minmax.dat',/get_lun 
 readf,lun,ppt1_loc_rem_minmax
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_minmax_ent1125.dat',/get_lun 
 readf,lun,ppt1_loc_minmax_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_minmax_ent1125.dat',/get_lun 
 readf,lun,ppt1_rem_minmax_ent1125
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_minmax_ent1125.dat',/get_lun 
 readf,lun,ppt1_loc_rem_minmax_ent1125
close,/all

openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_minmax_ent135.dat',/get_lun 
 readf,lun,ppt1_loc_minmax_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_rem_minmax_ent135.dat',/get_lun 
 readf,lun,ppt1_rem_minmax_ent135
close,/all
openr,lun,'/net/godafoss/export/godafoss/data-02/fj019034/runs/DATA/ppt1_loc_rem_minmax_ent135.dat',/get_lun 
 readf,lun,ppt1_loc_rem_minmax_ent135
close,/all



ppt1_loc_mean=DBLARR(n_tr+1)
ppt1_rem_mean=DBLARR(n_tr+1)
ppt1_loc_rem_mean=DBLARR(n_tr+1)
ppt1_loc_mean=(ppt1_loc_20d(2016:12816)+ppt1_loc_22d(2304:13104)+ppt1_loc_24d(2592:13392)+ppt1_loc_26d(2880:13680)+ppt1_loc_28d(3168:13968))/5.
ppt1_loc_rem_mean=(ppt1_loc_rem_20d(2016:12816)+ppt1_loc_rem_22d(2304:13104)+ppt1_loc_rem_24d(2592:13392)+ppt1_loc_rem_26d(2880:13680)+ppt1_loc_rem_28d(3168:13968))/5.
ppt1_rem_mean=(ppt1_rem_20d(2016:12816)+ppt1_rem_22d(2304:13104)+ppt1_rem_24d(2592:13392)+ppt1_rem_26d(2880:13680)+ppt1_rem_28d(3168:13968))/5.




RRt=DBLARR(n_tr+1)
RRt4K=DBLARR(n_tr+1)
RRb=(mean(ppt1_loc_mean(0:576))+mean(ppt1_rem_mean(0:576))+mean(ppt1_loc_rem_mean(0:576)))/3. 

RRd=5.534-Rrb
RRt(*)=RRb+RRd/2.0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


PSOPEN, XPLOTS=1,YPLOTS=1,FILE='ppt_l_r_lr_col1.ps',CHARSIZE=200,thick=300
POS,XSIZE=24000,YSIZE=16000,XOFFSET=4000,YOFFSET=3000;POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-1.,XMAX=10.

CS, SCALE=7
PXVAL = [tim_ave[0], tim_ave[1584], tim_ave[3169]]  
; Get y value along bottom x-axis:  
MINVAL = !Y.CRANGE[0]  
POLYFILL, tim_ave, [1, ppt1_loc_minmax, 1], COL = 6
CS,SCALE=1
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],   COL = 15
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],    COL = 8
CS, SCALE=1
GPLOT,Y=ppt1_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=18
GPLOT,Y=ppt1_loc_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=1
GPLOT,Y=ppt1_loc_rem_mean(576:n_tr-8640),X=time_tr(576:n_tr-8640), col=6
GPLOT,Y=rrt(576:n_tr-8640),X=time_tr(576:n_tr-8640)
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=1,ySTEP=1,XTITLE='Days'
GLEGEND,LEGPOS=11,col=[6,18,1],LABELS=['Exp 3','Exp 2','Exp 1']
PSCLOSE






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

POS,XSIZE=15000,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,xpos=1,ypos=3
GPLOT,X=4800,Y=19000, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=70
GPLOT,Y=ppt1_uniSST_descent_ave4sims(0:nn),X=time(720:nt-4320), col=6
GPLOT,Y=ppt1_uniSST_no_lscir_ave4sims(0:nn),X=time(720:nt-4320), col=1
GPLOT,Y=ppt1_uniSST_ascent_ave2simsnew(0:nn),X=time(720:nt-4320), col=18
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'



POS,XSIZE=15000,YSIZE=7500,XOFFSET=4500,YOFFSET=3000
GPLOT,X=4800,Y=9500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
CS, SCALE=1
GSET,YMIN=-1,YMAX=4,XMIN=0.,XMAX=70
GPLOT,Y=heat1_uniSST_descent_ave4sims(0:nn),X=time(720:nt-4320), col=6
GPLOT,Y=heat1_uniSST_no_lscir_ave4sims(0:nn),X=time(720:nt-4320), col=1
GPLOT,Y=heat1_uniSST_ascent_ave2simsnew(0:nn),X=time(720:nt-4320), col=18
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'
psclose



PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='ME_states_100d.ps',CHARSIZE=200,thick=300,/portrai

POS,XSIZE=15000,YSIZE=7000,XOFFSET=4500,YOFFSET=20100;POS,xpos=1,ypos=3
CS, SCALE=1
GPLOT,X=4800,Y=26100, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=3,YMAX=6.5,XMIN=0.,XMAX=100
GPLOT,Y=ppt1_uniSST_1sim_no_lscir_long(0:nn_long),X=timett(720:ntt), col=1
GPLOT,Y=ppt1_uniSST_1sim_ascent_long(0:nn_long),X=timett(720:ntt), col=18
GPLOT,Y=ppt1_uniSST_1sim_descent_long(0:nn_long),X=timett(720:ntt), col=6
;GPLOT,Y=ppt1_uniSST_RCE3007_3027K_d21(3600:13248),X=time(720:nt-4320), col=14

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'


POS,XSIZE=15000,YSIZE=7000,XOFFSET=4500,YOFFSET=11300;POS,xpos=1,ypos=3
CS, SCALE=1
GPLOT,X=4800,Y=17300, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-1,YMAX=4,XMIN=0.,XMAX=100
GPLOT,Y=heat1_uniSST_1sim_no_lscir_long(0:nn_long),X=timett(720:ntt), col=1
GPLOT,Y=heat1_uniSST_1sim_ascent_long(0:nn_long),X=timett(720:ntt), col=18
GPLOT,Y=heat1_uniSST_1sim_descent_long(0:nn_long),X=timett(720:ntt), col=6
AXES, YTITLE='Heating Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

POS,XSIZE=15000,YSIZE=7000,XOFFSET=4500,YOFFSET=2500;POS,xpos=1,ypos=3
CS, SCALE=1
GPLOT,X=4800,Y=8500, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GSET,YMIN=-3,YMAX=1,XMIN=0.,XMAX=100

GPLOT,Y=moist1_uniSST_1sim_no_lscir_long(0:nn_long),X=timett(720:ntt), col=1
GPLOT,Y=moist1_uniSST_1sim_ascent_long(0:nn_long),X=timett(720:ntt), col=18
GPLOT,Y=moist1_uniSST_1sim_descent_long(0:nn_long),X=timett(720:ntt), col=6
AXES, YTITLE='Moistening Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'
PSCLOSE


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
POLYFILL, tim_ave, [1, ppt1_rem_minmax, 1],   COL = 15
POLYFILL, tim_ave, [1, ppt1_loc_rem_minmax, 1],    COL = 8
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
GPLOT,Y=ppt1_loc_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1

AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,XPOS=2,YPOS=1
GSET,YMIN=2,YMAX=9,XMIN=-10.,XMAX=50
GPLOT,X=18400,Y=9900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=EVAP1_loc_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1;,THIck=200
GPLOT,Y=evap1_loc_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1

AXES, YTITLE='Evaporation Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=7,XMIN=-10.,XMAX=50.
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=HEAT1_LOC_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=heat1_loc_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1

AXES, YTITLE='Heating Rates (mm d!E-1!N)' , xSTEP=10,ySTEP=1
PSCLOSE


PSOPEN, XPLOTS=2,YPLOTS=2,FILE='series_loc_fixedMLSF_conv.ps',CHARSIZE=200,thick=300
CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=3000;POS,XPOS=1,YPOS=1
GSET,YMIN=0,YMAX=6,XMIN=-10.,XMAX=50.
GPLOT,X=4800,Y=9900, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=ppt1_loc_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=ppt1_loc_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;
AXES, YTITLE='Rain Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=3000;POS,XPOS=2,YPOS=1
GSET,YMIN=2,YMAX=9,XMIN=-10.,XMAX=50
GPLOT,X=18400,Y=9900, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=EVAP1_loc_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1;,THIck=200
GPLOT,Y=evap1_loc_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style
AXES, YTITLE='Evaporation Rates (mm d!E-1!N)',  xSTEP=10,ySTEP=1,XTITLE='Days'

CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=4500,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=6,XMIN=-10.,XMAX=50.
GPLOT,X=4800,Y=19400, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=HEAT1_LOC_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=heat1_loc_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18;, style=1
AXES, YTITLE='Heating Rates (mm d!E-1!N)' , xSTEP=10,ySTEP=1


CS, SCALE=1
POS,XSIZE=10500,YSIZE=7500,XOFFSET=18000,YOFFSET=12500;POS,XPOS=1,YPOS=2
GSET,YMIN=0,YMAX=6,XMIN=-10.,XMAX=50.
GPLOT,X=18400,Y=19400, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
GPLOT,Y=conv_heat1_loc_mean(576:n_tr),X=time_tr(576:n_tr-2880), col=1
GPLOT,Y=conv_heat1_loc_fixedMLSF_mean_ent09(576:n_tr),X=time_tr(576:n_tr-2880), col=18
AXES, YTITLE='Convective Heating Rates (mm d!E-1!N)' , xSTEP=10,ySTEP=1

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
GPLOT,Y=ppt1_loc_ent09_LS0_mean(576:2160),X=time_tr(576:2160), col=1,style=1;
GPLOT,Y=ppt1_loc_ent135_LS0_mean(576:2160),X=time_tr(576:2160), col=1,style=2;
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
GPLOT,Y=ppt1_rem_ent09_LS0_mean(576:2160),X=time_tr(576:2160), col=1,style=1
GPLOT,Y=ppt1_rem_ent135_LS0_mean(576:2160),X=time_tr(576:2160), col=1,style=2;18
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


PSOPEN, XPLOTS=1,YPLOTS=3 ,FILE='dtconv_sthwtg_loc_col1_ent09_135.ps',CHARSIZE=200,thick=300
CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=13500;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;,NDECS=1
CON,FIELD=transpose(dtconv1_loc_ent09(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT,/NOCOLBAR
GPLOT,X=4200,Y=19500, TEXT='(a) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=13500
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(dtconv1_loc_ent135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50 ,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
AXES,XSTEP=1,YSTEP=5,XTITLE='Days'

CS,SCALE=1,NCOLS=22
GPLOT,X=17700,Y=19500, TEXT='(b) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
POS,XSIZE=11500,YSIZE=6500,XOFFSET=4000,YOFFSET=5000;

GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_ent09(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=4200,Y=11000, TEXT='(c) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE
AXES,XSTEP=1,YSTEP=5,YTITLE='Height (km)',XTITLE='Days'

CS,SCALE=1,NCOLS=22
POS,XSIZE=11500,YSIZE=6500,XOFFSET=17500,YOFFSET=5000;
GSET,xMIN=-1,xMAX=5,yMIN=0,yMAX=15;GSET,xMIN=-5,xMAX=45,yMIN=0,yMAX=15
LEVS,MIN=-3,MAX=3,STEP=0.3,NDECS=1;-2,MAX=2,STEP=0.2,NDECS=1
CON,FIELD=transpose(sthwtg1_loc_ent135(0:nz-11,2736-72:3456)),X=time_tr(720-72:1440),Y=hei(0:nz-11)/1000.,ZERO_THICK=50,/NOLINES,/NOCOLBAR;,$
;/CB_RIGHT
GPLOT,X=17700,Y=11000, TEXT='(d) ',CHARSIZE=100,FONT=2,ALIGN=0.0,SIZE=100,/DEVICE

AXES,XSTEP=1,YSTEP=5,XTITLE='Days'

COLBAR,COORDS=[2800,2500,29500,3000],title='Heating (K d!E-1!N)'
PSCLOSE




stop  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





end
