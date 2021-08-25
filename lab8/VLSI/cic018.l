* **********************************************
* *             CIC SPICE MODEL               *
* **********************************************
*  
*    PROCESS :  CIC 0.18um 1.8V/3.3V 1P6M virtual Mixed Mode/RFCMOS Process
*    MODEL  :  BSIM3 
*    DOC. NO.:  
*    VERSION :  1.3
*    DATE    :  Jan. 21, 2008
*    HSPICE VERSION : For H98.2 & H98.4 only
*    
*******************************************************************************
**History
********************************************************************************
* V1.0  : Original
* V1.1  : change minute width for N_18, P_18, N_BPW_18,  N_33, P_33, N_BPW_33
* V1.2  : updata sf conner data
* V1.3  : Change MIMCAPS model name
*                                                                  	        *********************************************************************************
*       IN THIS MODEL LIB CONTAINS :                                         	*
*                                                                            	*
*       LIB   	TT                                                             	*
*             	SS                                                             	*
*             	FF                                                             	*
*             	SF                                                             	*
*             	FS                                                             	*
*	Example									*
*		.lib 'cic018.l' tt						*
* 		XC net1 net2 MIMCAPS L=xxx W=xxx				*
*********************************************************************************
.LIB TT
.PARAM
*1.8V NMOS 
+  DTOX_N_18      =   0.0000E+00        DXL_N_18       =   0.0000E+00                
+  DXW_N_18       =   0.0000E+00        DVTH0_N_18     =   0.0000E+00                
+  DU0_N_18       =   0.0000E+00        DLVTH0_N_18    =   0.0000E+00
+  DWVTH0_N_18    =   0.0000E+00        DWU0_N_18      =   0.0000E+00
+  DPVTH0_N_18    =   0.0000E+00        DPVSAT_N_18    =   0.0000E+00
+  DCGDO_N_18     =   0.0000E+00        DCGSO_N_18     =   0.0000E+00                
+  DCJ_N_18       =   0.0000E+00        DCJSW_N_18     =   0.0000E+00                
+  DCJGATE_N_18   =   0.0000E+00  
*1.8V PMOS 
+  DTOX_P_18      =   0.0000E+00        DU0_P_18       =   0.0000E+00
+  DXL_P_18       =   0.0000E+00        DXW_P_18       =   0.0000E+00                
+  DVTH0_P_18     =   0.0000E+00        DLVTH0_P_18    =   0.0000E+00
+  DWVTH0_P_18    =   0.0000E+00  	DPVTH0_P_18    =   0.0000E+00 
+  DCGDO_P_18     =   0.0000E+00        DPVSAT_P_18    =   0.0000E+00        
+  DCGSO_P_18     =   0.0000E+00        DCJ_P_18       =   0.0000E+00                
+  DCJSW_P_18     =   0.0000E+00        DCJGATE_P_18   =   0.0000E+00                

*1.8V NMOS Deep_NWell
+  DTOX_N_BPW_18   =   0.0000E+00       DXL_N_BPW_18       =   0.0000E+00                
+  DXW_N_BPW_18    =   0.0000E+00       DVTH0_N_BPW_18     =   0.0000E+00                
+  DU0_N_BPW_18    =   0.0000E+00       DLVTH0_N_BPW_18    =   0.0000E+00
+  DWVTH0_N_BPW_18 =   0.0000E+00       DWU0_N_BPW_18      =   0.0000E+00
+  DPVTH0_N_BPW_18 =   0.0000E+00       DPVSAT_N_BPW_18    =   0.0000E+00
+  DCGDO_N_BPW_18  =   0.0000E+00       DCGSO_N_BPW_18     =   0.0000E+00                
+  DCJ_N_BPW_18    =   0.0000E+00       DCJSW_N_BPW_18     =   0.0000E+00                
+  DCJGATE_N_BPW_18=   0.0000E+00  

*3.3V NMOS 
+DTOX_N_33     = 0 	DLINT_N_33    = 0 	DWINT_N_33     = 0 
+DVTH0_N_33    = 0      DCGDO_N_33    = 0       DCGSO_N_33     = 0


*3.3V PMOS
+DTOX_P_33     = 0     	DLINT_P_33    = 0     	DWINT_P_33     = 0 
+DVTH0_P_33    = 0	DCGDO_P_33    = 0       DCGSO_P_33     = 0

*3.3V NMOS Deep_NWell
+DTOX_N_BPW_33     = 0  DLINT_N_BPW_33    = 0  	DWINT_N_BPW_33     = 0 
+DVTH0_N_BPW_33    = 0  DCGDO_N_BPW_33    = 0   DCGSO_N_BPW_33     = 0

*1.8V Low Vth NMOS
+DTOX_N_LV_18     = 0 	DLINT_N_LV_18    = 0 	DWINT_N_LV_18     = 0 
+DVTH0_N_LV_18    = 0   DCGDO_N_LV_18    = 0    DCGSO_N_LV_18     = 0

*1.8V Low Vth PMOS
+DTOX_P_LV_18     = 0 	DLINT_P_LV_18    = 0 	DWINT_P_LV_18     = 0 
+DVTH0_P_LV_18    = 0   DCGDO_P_LV_18    = 0    DCGSO_P_LV_18     = 0

*3.3V Low Vth NMOS
+DTOX_N_LV_33     = 0 	DLINT_N_LV_33    = 0 	DWINT_N_LV_33     = 0 
+DVTH0_N_LV_33    = 0   DCGDO_N_LV_33    = 0    DCGSO_N_LV_33     = 0

*3.3V Low Vth PMOS
+DTOX_P_LV_33     = 0 	DLINT_P_LV_33    = 0 	DWINT_P_LV_33     = 0 
+DVTH0_P_LV_33    = 0   DCGDO_P_LV_33    = 0    DCGSO_P_LV_33     = 0

*1.8V Zero VT NMOS 
+DTOX_N_ZERO_18  = 0   	DLINT_N_ZERO_18  = 0   	DWINT_N_ZERO_18 = 0
+DVTH0_N_ZERO_18 = 0   	DCGDO_N_ZERO_18  = 0  	DCGSO_N_ZERO_18 = 0

*3.3V Zero VT NMOS 
+DTOX_N_ZERO_33  = 0   	DLINT_N_ZERO_33  = 0   	DWINT_N_ZERO_33 = 0
+DVTH0_N_ZERO_33 = 0   	DCGDO_N_ZERO_33  = 0  	DCGSO_N_ZERO_33 = 0

+  DREND_RNNPO    =   0.0000E+00                 
+  DRS_RNNPO      =   0.0000E+00                 
+  DDW_RNNPO      =   0.0000E+00                       
+  DREND_RNPPO    =   0.0000E+00                 
+  DRS_RNPPO      =   0.0000E+00                 
+  DDW_RNPPO      =   0.0000E+00                 
+  DREND_RNHR1000 =   0.0000E+00                 
+  DRS_RNHR1000   =   0.0000E+00                 
+  DDW_RNHR1000   =   0.0000E+00  

.lib 'cic018.l' MOS_18 
.lib 'cic018.l' BJT
.lib 'cic018.l' Diode
.lib 'cic018.l' RES
.lib 'cic018.l' CAP
.ENDL  TT

.LIB SS
.PARAM
*1.8V NMOS 
+  DTOX_N_18   	=   1.7000E-10   	DXL_N_18       =   2.2000E-07                
+  DXW_N_18     =  -2.0000E-08          DVTH0_N_18     =   1.4500E-02                
+  DU0_N_18     =  -1.0000E+01          DLVTH0_N_18    =   3.4000E-03
+  DWVTH0_N_18  =   1.2000E-02          DWU0_N_18      =  -4.5000E+00
+  DPVTH0_N_18  =  -1.0000E-03          DPVSAT_N_18    =   1.4000E+02
+  DCGDO_N_18   =  -2.500E-11           DCGSO_N_18     =  -3.3500E-11                
+  DCJ_N_18     =   1.0300E-04          DCJSW_N_18     =   1.5000E-11                
+  DCJGATE_N_18 =   5.5500E-11 

*1.8V PMOS 
+  DTOX_P_18      =   1.0000E-10      	DU0_P_18       =  -3.5600E+00 
+  DXL_P_18       =   1.0000E-07        DXW_P_18       =  -2.0000E-08                
+  DVTH0_P_18     =  -1.4500E-02        DLVTH0_P_18    =   0.0000E-00
+  DWVTH0_P_18    =  -1.5500E-02
+  DPVTH0_P_18    =   3.0000E-04        DPVSAT_P_18    =   5.6900E+01
+  DCGDO_P_18     =  -2.0000E-11                
+  DCGSO_P_18     =  -2.0000E-11        DCJ_P_18       =   1.2400E-04                
+  DCJSW_P_18     =   2.4000E-11        DCJGATE_P_18   =   4.2000E-11   
 
*1.8V NMOS Deep_NWell
+  DTOX_N_BPW_18      =   1.8000E-10    DXL_N_BPW_18       =   2.2000E-07                
+  DXW_N_BPW_18       =  -2.0000E-08    DVTH0_N_BPW_18     =   1.4500E-02                
+  DU0_N_BPW_18       =  -1.0000E+01    DLVTH0_N_BPW_18    =   3.6000E-03
+  DWVTH0_N_BPW_18    =   1.2000E-02    DWU0_N_BPW_18      =  -4.5000E+00
+  DPVTH0_N_BPW_18    =  -1.0000E-03    DPVSAT_N_BPW_18    =   1.4000E+02
+  DCGDO_N_BPW_18     =  -2.5500E-11    DCGSO_N_BPW_18     =  -2.3500E-11                
+  DCJ_N_BPW_18       =   1.0300E-04    DCJSW_N_BPW_18     =   1.3400E-11                
+  DCJGATE_N_BPW_18   =   4.9000E-11 

*3.3V NMOS 
+DTOX_N_33     = 5E-10     DLINT_N_33    = -1.23E-8    DWINT_N_33 = 9E-9
+DVTH0_N_33    = 0.06      DCGDO_N_33    = -2.7E-11    DCGSO_N_33 = -2.7E-11


*3.3V PMOS
+DTOX_P_33     = 5E-10     DLINT_P_33    = -1.3396e-8  DWINT_P_33 = 3E-8 
+DVTH0_P_33    = -0.06     DCGDO_P_33    = -2.6E-11    DCGSO_P_33 = -2.6E-11

*3.3V NMOS Deep_NWell
+DTOX_N_BPW_33     = 5E-10 DLINT_N_BPW_33= -1.33E-8    DWINT_N_BPW_33= 7E-9
+DVTH0_N_BPW_33    = 0.06  DCGDO_N_BPW_33= -2.7E-11    DCGSO_N_BPW_33= -2.6E-11

*1.8V Low Vth NMOS
+DTOX_N_LV_18     = 2.5E-10 	DLINT_N_LV_18    = -2.43E-8 	DWINT_N_LV_18     = 1E-8 
+DVTH0_N_LV_18    = 0.05   	DCGDO_N_LV_18    = -10*0.9    	DCGSO_N_LV_18     = -10*0.9

*1.8V Low Vth PMOS
+DTOX_P_LV_18     = 2.5E-10 	DLINT_P_LV_18    = -1.5E-8 	DWINT_P_LV_18     = 1E-8 
+DVTH0_P_LV_18    = -0.05   	DCGDO_P_LV_18    = -10*0.9    	DCGSO_P_LV_18     = -10*0.9

*3.3V Low Vth NMOS
+DTOX_N_LV_33     = 5E-10 	DLINT_N_LV_33    = -3.93E-8 	DWINT_N_LV_33     = 1E-8 
+DVTH0_N_LV_33    = 0.05   	DCGDO_N_LV_33    = -10*0.09    	DCGSO_N_LV_33     = -10*0.09

*3.3V Low Vth PMOS
+DTOX_P_LV_33     = 5E-10 	DLINT_P_LV_33    = -2.5E-8 	DWINT_P_LV_33     = 1E-8 
+DVTH0_P_LV_33    = 0.05   	DCGDO_P_LV_33    = -10*0.9    	DCGSO_P_LV_33     = -10*0.9

*1.8V Zero VT NMOS 
+DTOX_N_ZERO_18  = 2.5E-10 DLINT_N_ZERO_18  = -4.95E-8 DWINT_N_ZERO_18 = 1.5E-8
+DVTH0_N_ZERO_18 = 0.2     DCGDO_N_ZERO_18  = -4.0E-11 DCGSO_N_ZERO_18 = -4.0E-11

*3.3V Zero VT NMOS 
+DTOX_N_ZERO_33  = 5E-10   	DLINT_N_ZERO_33  = -9.34E-8   	DWINT_N_ZERO_33 = 1E-8
+DVTH0_N_ZERO_33 = 0.05   	DCGDO_N_ZERO_33  = -10*0.9  	DCGSO_N_ZERO_33 = -10*0.9

+  DREND_RNNPO    =   7.0000E-06                 
+  DRS_RNNPO      =   3.0000E+01                 
+  DDW_RNNPO      =  -5.0000E-08                               
+  DREND_RNPPO    =   2.3520E-05                 
+  DRS_RNPPO      =   8.8500E+01                 
+  DDW_RNPPO      =  -1.9500E-08                 
+  DREND_RNHR1000 =   1.8420E-04                 
+  DRS_RNHR1000   =   2.5988E+02                 
+  DDW_RNHR1000   =  -1.9000E-08  
 
.lib 'cic018.l' MOS_18 
.lib 'cic018.l' BJT
.lib 'cic018.l' Diode
.lib 'cic018.l' RES
.lib 'cic018.l' CAP
.ENDL SS

.LIB FF
.PARAM
*1.8V NMOS 
+  DTOX_N_18      =  -1.2000E-10     	DXL_N_18       =  -1.2600E-08                
+  DXW_N_18       =   2.2000E-08        DVTH0_N_18     =  -1.2500E-02                
+  DU0_N_18       =   1.2000E+01        DLVTH0_N_18    =  -7.2000E-04
+  DWVTH0_N_18    =  -1.2100E-02        DWU0_N_18      =   2.2000E+00
+  DPVTH0_N_18    =   6.2000E-04        DPVSAT_N_18    =  -8.2000E+01
+  DCGDO_N_18     =   2.2500E-11        DCGSO_N_18     =   2.2500E-11                
+  DCJ_N_18       =  -1.2300E-04        DCJSW_N_18     =  -1.2400E-11                
+  DCJGATE_N_18   =  -5.2000E-11 

*1.8V PMOS 
+  DTOX_P_18      =  -1.5000E-10        DU0_P_18       =   3.5000E+00
+  DXL_P_18       =  -8.5000E-09        DXW_P_18       =   1.5000E-08                
+  DVTH0_P_18     =   1.5000E-02        DLVTH0_P_18    =  -1.5000E-03
+  DWVTH0_P_18    =   8.5000E-03
+  DPVTH0_P_18    =   1.5000E-05        DPVSAT_P_18    =  -2.5000E+01
+  DCGDO_P_18     =   2.5540E-11                
+  DCGSO_P_18     =   2.5540E-11        DCJ_P_18       =  -1.5400E-04                
+  DCJSW_P_18     =  -1.5400E-11        DCJGATE_P_18   =  -4.5000E-11                

*1.8V NMOS Deep_NWell
+  DTOX_N_BPW_18      =  -1.5000E-10    DXL_N_BPW_18       =  -1.3600E-08                
+  DXW_N_BPW_18       =   2.5000E-08    DVTH0_N_BPW_18     =  -1.3500E-02                
+  DU0_N_BPW_18       =   1.5000E+01    DLVTH0_N_BPW_18    =  -7.3000E-04
+  DWVTH0_N_BPW_18    =  -1.5100E-02    DWU0_N_BPW_18      =   2.3000E+00
+  DPVTH0_N_BPW_18    =   6.5000E-04    DPVSAT_N_BPW_18    =  -8.3000E+01
+  DCGDO_N_BPW_18     =   2.5500E-11    DCGSO_N_BPW_18     =   2.3500E-11                
+  DCJ_N_BPW_18       =  -1.5300E-04    DCJSW_N_BPW_18     =  -1.3400E-11                
+  DCJGATE_N_BPW_18   =  -5.5000E-11 

*3.3V NMOS 
+DTOX_N_33     = -6E-10        	DLINT_N_33    = 9.3E-9      	DWINT_N_33     = -3E-9
+DVTH0_N_33    = -0.05         	DCGDO_N_33    = 2.7E-11     	DCGSO_N_33     = 2.2E-11


*3.3V PMOS
+DTOX_P_33     = -6E-10   	DLINT_P_33    = 1.21E-8     	DWINT_P_33     = -1E-8 
+DVTH0_P_33    = 0.05	  	DCGDO_P_33    = 2.6E-11     	DCGSO_P_33     = 2.7E-11

*3.3V NMOS Deep_NWell
+DTOX_N_BPW_33 = -5E-10 	DLINT_N_BPW_33 = 9.5E-9  	DWINT_N_BPW_33     = -4E-9
+DVTH0_N_BPW_33= -0.06  	DCGDO_N_BPW_33 = 2.7E-11 	DCGSO_N_BPW_33     = 2.7E-11

*1.8V Low Vth NMOS
+DTOX_N_LV_18     = -2.5E-10 	DLINT_N_LV_18    = 1.6E-8 	DWINT_N_LV_18     = -1E-8 
+DVTH0_N_LV_18    = -0.05   	DCGDO_N_LV_18    = -10*1.2    	DCGSO_N_LV_18     = -10*1.2

*1.8V Low Vth PMOS
+DTOX_P_LV_18     = -2.5E-10 	DLINT_P_LV_18    = 0.952E-8 	DWINT_P_LV_18     = -1E-8 
+DVTH0_P_LV_18    = 0.05   	DCGDO_P_LV_18    = -10*1.2    	DCGSO_P_LV_18     = -10*1.2

*3.3V Low Vth NMOS
+DTOX_N_LV_33     = -5E-10 	DLINT_N_LV_33    = 2.56E-8 	DWINT_N_LV_33     = -1E-8 
+DVTH0_N_LV_33    = -0.05   	DCGDO_N_LV_33    = -10*1.2    	DCGSO_N_LV_33     = -10*1.2

*3.3V Low Vth PMOS
+DTOX_P_LV_33     = -5E-10 	DLINT_P_LV_33    = 1.68E-8 	DWINT_P_LV_33     = -1E-8 
+DVTH0_P_LV_33    = 0.05   	DCGDO_P_LV_33    = -10*1.2    	DCGSO_P_LV_33     = -10*1.2

*1.8V Zero VT NMOS 
+DTOX_N_ZERO_18  = -2.6E-10 DLINT_N_ZERO_18  = 4.29E-8 DWINT_N_ZERO_18 = 6.51E-8
+DVTH0_N_ZERO_18 = -0.22    DCGDO_N_ZERO_18  = 4.0E-11 DCGSO_N_ZERO_18 = 4.0E-11

*3.3V Zero VT NMOS 
+DTOX_N_ZERO_33  = 5E-10   	DLINT_N_ZERO_33  = -8.34E-8   	DWINT_N_ZERO_33 = 1E-8
+DVTH0_N_ZERO_33 = 0.05   	DCGDO_N_ZERO_33  = -10*0.9  	DCGSO_N_ZERO_33 = -10*0.9


+  DREND_RNNPO    =  -7.500E-06               
+  DRS_RNNPO      =  -2.250E+01               
+  DDW_RNNPO      =   5.000E-08                             
+  DREND_RNPPO    =  -2.520E-05               
+  DRS_RNPPO      =  -8.000E+01               
+  DDW_RNPPO      =   1.000E-08               
+  DREND_RNHR1000 =  -1.420E-04               
+  DRS_RNHR1000   =  -2.975E+02               
+  DDW_RNHR1000   =   1.000E-08 

.lib 'cic018.l' MOS_18 
.lib 'cic018.l' BJT
.lib 'cic018.l' Diode
.lib 'cic018.l' RES
.lib 'cic018.l' CAP
.ENDL FF

.LIB SF
.PARAM
*1.8V NMOS 
+  DTOX_N_18    =   1.7000E-10   	  DXL_N_18       =   2.2000E-07                
+  DXW_N_18     =  -2.0000E-08          DVTH0_N_18     =   1.4500E-02                
+  DU0_N_18     =  -1.0000E+01          DLVTH0_N_18    =   3.4000E-03
+  DWVTH0_N_18  =   1.2000E-02          DWU0_N_18      =  -4.5000E+00
+  DPVTH0_N_18  =  -1.0000E-03          DPVSAT_N_18    =   1.4000E+02
+  DCGDO_N_18   =  -2.500E-11           DCGSO_N_18     =  -3.3500E-11                
+  DCJ_N_18     =   1.0300E-04          DCJSW_N_18     =   1.5000E-11                
+  DCJGATE_N_18 =   5.5500E-11 
*1.8V PMOS 
+  DTOX_P_18      =  -1.5000E-10        DU0_P_18       =   3.5000E+00
+  DXL_P_18       =  -8.5000E-09        DXW_P_18       =   1.5000E-08                
+  DVTH0_P_18     =   1.5000E-02        DLVTH0_P_18    =  -1.5000E-03
+  DWVTH0_P_18    =   8.5000E-03
+  DPVTH0_P_18    =   1.5000E-05        DPVSAT_P_18    =  -2.5000E+01
+  DCGDO_P_18     =   2.5540E-11                
+  DCGSO_P_18     =   2.5540E-11        DCJ_P_18       =  -1.5400E-04                
+  DCJSW_P_18     =  -1.5400E-11        DCJGATE_P_18   =  -4.5000E-11                

*1.8V NMOS Deep_NWell
+  DTOX_N_BPW_18      =   0.0000E+00                  DXL_N_BPW_18       =   1.2000E-08                
+  DXW_N_BPW_18       =  -1.0000E-08                  DVTH0_N_BPW_18     =   1.3000E-02                
+  DU0_N_BPW_18       =  -5.0000E+00                  DLVTH0_N_BPW_18    =   1.2000E-03
+  DWVTH0_N_BPW_18    =   4.7000E-03                  DWU0_N_BPW_18      =  -2.0000E+00
+  DPVTH0_N_BPW_18    =  -5.5000E-04                  DPVSAT_N_BPW_18    =   6.0000E+01
+  DCGDO_N_BPW_18     =   0.0000E+00                  DCGSO_N_BPW_18     =   0.0000E+00                
+  DCJ_N_BPW_18       =   1.0300E-04                  DCJSW_N_BPW_18     =   1.3400E-11                
+  DCJGATE_N_BPW_18   =   5.0000E-11 

*3.3V NMOS 
+DTOX_N_33     = 0             	DLINT_N_33    = -8E-9     	DWINT_N_33     = 7E-9
+DVTH0_N_33    = 0.045563      	DCGDO_N_33    = 0           	DCGSO_N_33     = 0


*3.3V PMOS
+DTOX_P_33     = 0        	DLINT_P_33    = 7.45E-9     	DWINT_P_33     = -5E-9
+DVTH0_P_33    = 0.03	  	DCGDO_P_33    = 0           	DCGSO_P_33     = 0

*3.3V NMOS Deep_NWell
+DTOX_N_BPW_33 = 0         	DLINT_N_BPW_33= -7.9E-9 	DWINT_N_BPW_33     = 7E-9
+DVTH0_N_BPW_33= 0.045563  	DCGDO_N_BPW_33= 0       	DCGSO_N_BPW_33     = 0

*1.8V Low Vth NMOS
+DTOX_N_LV_18     = 0 		DLINT_N_LV_18    = -1.56E-8 	DWINT_N_LV_18     = -5E-9 
+DVTH0_N_LV_18    = 0.03   	DCGDO_N_LV_18    = 0    	DCGSO_N_LV_18     = 0

*1.8V Low Vth PMOS
+DTOX_P_LV_18     = 0 		DLINT_P_LV_18    = 0.66E-8 	DWINT_P_LV_18     = -5E-9 
+DVTH0_P_LV_18    = 0.03   	DCGDO_P_LV_18    = 0    	DCGSO_P_LV_18     = 0

*3.3V Low Vth NMOS
+DTOX_N_LV_33     = 0 		DLINT_N_LV_33    = -2.49E-8 	DWINT_N_LV_33     = 5E-9 
+DVTH0_N_LV_33    = 0.03   	DCGDO_N_LV_33    = 0    	DCGSO_N_LV_33     = 0

*3.3V Low Vth PMOS
+DTOX_P_LV_33     = 0 		DLINT_P_LV_33    = 1.26E-8 	DWINT_P_LV_33     = -5E-9 
+DVTH0_P_LV_33    = 0.03   	DCGDO_P_LV_33    = 0    	DCGSO_P_LV_33     = 0

*1.8V Zero VT NMOS 
+DTOX_N_ZERO_18  = 0    	DLINT_N_ZERO_18  = -2.5E-8    	DWINT_N_ZERO_18 = 5E-9
+DVTH0_N_ZERO_18 = 0.06 	DCGDO_N_ZERO_18  = 0          	DCGSO_N_ZERO_18 = 0

*3.3V Zero VT NMOS 
+DTOX_N_ZERO_33  = 2.5E-10   	DLINT_N_ZERO_33  = -4.67E-8   	DWINT_N_ZERO_33 = 5E-9
+DVTH0_N_ZERO_33 = 0.025   	DCGDO_N_ZERO_33  = 0  	DCGSO_N_ZERO_33 = 0

+  DREND_RNNPO    =   0.0000E+00                 
+  DRS_RNNPO      =   0.0000E+00                 
+  DDW_RNNPO      =   0.0000E+00                       
+  DREND_RNPPO    =   0.0000E+00                 
+  DRS_RNPPO      =   0.0000E+00                 
+  DDW_RNPPO      =   0.0000E+00                 
+  DREND_RNHR1000 =   0.0000E+00                 
+  DRS_RNHR1000   =   0.0000E+00                 
+  DDW_RNHR1000   =   0.0000E+00  

.lib 'cic018.l' MOS_18 
.lib 'cic018.l' BJT
.lib 'cic018.l' Diode
.lib 'cic018.l' RES
.lib 'cic018.l' CAP
.ENDL SF

.LIB FS
.PARAM
*1.8V NMOS 
+  DTOX_N_18      =   0.0000E+00        DXL_N_18       =   1.2000E-08                
+  DXW_N_18       =  -1.0000E-08        DVTH0_N_18     =   1.3000E-02                
+  DU0_N_18       =  -5.0000E+00        DLVTH0_N_18    =   1.2000E-03
+  DWVTH0_N_18    =   4.7000E-03        DWU0_N_18      =  -2.0000E+00
+  DPVTH0_N_18    =  -5.5000E-04        DPVSAT_N_18    =   6.0000E+01
+  DCGDO_N_18     =   0.0000E+00        DCGSO_N_18     =   0.0000E+00                
+  DCJ_N_18       =   1.0300E-04        DCJSW_N_18     =   1.3400E-11                
+  DCJGATE_N_18   =   5.0000E-11  
*1.8V PMOS 
+  DTOX_P_18      =   0.0000E+00        DU0_P_18       =   2.0000E+00
+  DXL_P_18       =  -4.0000E-09        DXW_P_18       =   1.0000E-08                
+  DVTH0_P_18     =   1.7000E-02        DLVTH0_P_18    =  -3.0000E-04
+  DWVTH0_P_18    =   3.5000E-03  	DPVTH0_P_18    =   9.0000E-05                  
+  DCGDO_P_18     =   0.0000E+00        DPVSAT_P_18    =  -3.0000E+01        
+  DCGSO_P_18     =   0.0000E+00        DCJ_P_18       =  -1.2400E-04                
+  DCJSW_P_18     =  -1.7400E-11        DCJGATE_P_18   =  -4.2000E-11                

*1.8V NMOS Deep_NWell
+  DTOX_N_BPW_18   =   0.0000E+00       DXL_N_BPW_18       =  -9.5000E+09               
+  DXW_N_BPW_18    =   1.0000E-08       DVTH0_N_BPW_18     =  -1.2300E-02                
+  DU0_N_BPW_18    =   6.0000E+00       DLVTH0_N_BPW_18    =  -7.0000E-04
+  DWVTH0_N_BPW_18 =  -4.6000E-03       DWU0_N_BPW_18      =   1.7000E+00
+  DPVTH0_N_BPW_18 =   4.2000E-04       DPVSAT_N_BPW_18    =  -7.0000E+01
+  DCGDO_N_BPW_18  =   0.0000E+00       DCGSO_N_BPW_18     =   0.0000E+00                
+  DCJ_N_BPW_18    =  -1.0300E-04       DCJSW_N_BPW_18     =  -1.3400E-11                
+  DCJGATE_N_BPW_18=  -5.0000E-11  

*3.3V NMOS 
+DTOX_N_33     = 0      	DLINT_N_33    = 9.2E-9      	DWINT_N_33     = -2E-9
+DVTH0_N_33    = -0.03  	DCGDO_N_33    = 0           	DCGSO_N_33     = 0

*3.3V PMOS
+DTOX_P_33     = 0      	DLINT_P_33    = -8.44E-9    	DWINT_P_33     = 1E-8
+DVTH0_P_33    = -0.02  	DCGDO_P_33    = 0           	DCGSO_P_33	   =0	

*3.3V NMOS Deep_NWell
+DTOX_N_BPW_33     = 0     	DLINT_N_BPW_33    = 9.2E-9 	DWINT_N_BPW_33     = -2E-9
+DVTH0_N_BPW_33    = -0.03 	DCGDO_N_BPW_33    = 0        	DCGSO_N_BPW_33     = 0

*1.8V Low Vth NMOS
+DTOX_N_LV_18     = 0 		DLINT_N_LV_18    = 1.27E-8 	DWINT_N_LV_18     = -6E-9 
+DVTH0_N_LV_18    = -0.03   	DCGDO_N_LV_18    = 0    	DCGSO_N_LV_18     = 0

*1.8V Low Vth PMOS
+DTOX_P_LV_18     = 0 		DLINT_P_LV_18    = -0.86E-8 	DWINT_P_LV_18     = 5E-9 
+DVTH0_P_LV_18    = -0.03   	DCGDO_P_LV_18    = 0    	DCGSO_P_LV_18     = 0

*3.3V Low Vth NMOS
+DTOX_N_LV_33     = 0 		DLINT_N_LV_33    = 1.99E-8 	DWINT_N_LV_33     = -8E-9 
+DVTH0_N_LV_33    = -0.03   	DCGDO_N_LV_33    = 0    	DCGSO_N_LV_33     = 0

*3.3V Low Vth PMOS
+DTOX_P_LV_33     = 0 		DLINT_P_LV_33    = -1.45E-8 	DWINT_P_LV_33     = 5E-9 
+DVTH0_P_LV_33    = -0.03   	DCGDO_P_LV_33    = 0    	DCGSO_P_LV_33     = 0

*1.8V Zero VT NMOS 
+DTOX_N_ZERO_18  = 0      	DLINT_N_ZERO_18  = 2.05E-8 	DWINT_N_ZERO_18 = 3.35E-8
+DVTH0_N_ZERO_18 = -0.05  	DCGDO_N_ZERO_18  = 0       	DCGSO_N_ZERO_18 = 0

*3.3V Zero VT NMOS 
+DTOX_N_ZERO_33  = -2.5E-10   	DLINT_N_ZERO_33  = 2.76E-8   	DWINT_N_ZERO_33 = -5E-9
+DVTH0_N_ZERO_33 = -0.025   	DCGDO_N_ZERO_33  = 0  	DCGSO_N_ZERO_33 = 0

+  DREND_RNNPO    =   0.0000E+00                 
+  DRS_RNNPO      =   0.0000E+00                 
+  DDW_RNNPO      =   0.0000E+00                       
+  DREND_RNPPO    =   0.0000E+00                 
+  DRS_RNPPO      =   0.0000E+00                 
+  DDW_RNPPO      =   0.0000E+00                 
+  DREND_RNHR1000 =   0.0000E+00                 
+  DRS_RNHR1000   =   0.0000E+00                 
+  DDW_RNHR1000   =   0.0000E+00  

.lib 'cic018.l' MOS_18 
.lib 'cic018.l' BJT
.lib 'cic018.l' Diode
.lib 'cic018.l' RES
.lib 'cic018.l' CAP
.ENDL FS

.LIB MOS_18
*.lib './MM180_REG18_V121.lib' tt
.model N_18.1 NMOS
*****Model Selectors/Controllers*********************************
+  LEVEL     =   4.9000E+01                          VERSION   =   3.2000E+00  
+  BINUNIT   =   1.0000E+00                          MOBMOD    =   1.0000E+00                           
+  CAPMOD    =   2.0000E+00                          NQSMOD    =   0.0000E+00                        
+  NOIMOD    =   1.0000E+00 

*****Process Parameters******************************************
+  TOX       =  '4.2000E-09+DTOX_N_18'               TOXM      =   4.2000E-09                        
+  XJ        =   1.6000E-07                          NCH       =   3.7446E+17                        
+  RSH       =   8.0000E+00                          NGATE     =   1.0000E+23


*****Basic Model Parameters**************************************
+  VTH0      =  '3.0750E-01+DVTH0_N_18'           K1        =   4.5780E-01                     
+  K2        =  -2.6380E-02                          K3        =  -1.0880E+01                        
+  K3B       =   2.3790E-01                          W0        =  -8.8130E-08                        
+  NLX       =   4.2790E-07                          DVT0      =   4.0420E-01                        
+  DVT1      =   3.2370E-01                          DVT2      =  -8.6020E-01                        
+  DVT0W     =   3.8300E-01                          DVT1W     =   6.0000E+05                        
+  DVT2W     =  -2.5000E-02                          LINT      =   1.5870E-08                        
+  WINT      =   1.0220E-08                          DWG       =  -3.3960E-09                        
+  DWB       =   1.3460E-09                          U0        =  '3.2410E+02+DU0_N_18'                       
+  UA        =  -9.2010E-10                          UB        =   1.9070E-18
+  UC        =   4.3550E-11                          VSAT      =   7.2580E+04 
+  A0        =   1.9300E+00                          AGS       =   5.0720E-01                        
+  B0        =   1.4860E-06                          B1        =   9.0640E-06                        
+  KETA      =   1.7520E-02                          A1        =   0.0000E+00                        
+  A2        =   1.0000E+00                          VOFF      =  -1.0880E-01                        
+  NFACTOR   =   1.0380E+00                          CIT       =  -1.5110E-03                        
+  CDSC      =   2.2750E-03                          CDSCD     =  -5.0000E-04                        
+  CDSCB     =   8.2410E-04                          ETA0      =   1.0040E-03                        
+  ETAB      =  -1.4590E-03                          DSUB      =   1.5920E-03                        
+  PCLM      =   1.0910E+00                          PDIBLC1   =   3.0610E-03                        
+  PDIBLC2   =   1.0000E-06                          PDIBLCB   =   0.0000E+00                        
+  DROUT     =   1.5920E-03                          PSCBE1    =   4.8660E+08                        
+  PSCBE2    =   2.8000E-07                          PVAG      =  -2.9580E-01                        


*****Parameters for Asymmetric and Bias-Dependent Rds Model******
+  RDSW      =   4.9050E+00                          PRWG      =   0.0000E+00                        
+  PRWB      =   0.0000E+00                          WR        =   1.0000E+00


*****Impact Ionization Current Model Parameters******************
+  ALPHA0    =   0.0000E+00                          ALPHA1    =   0.0000E+00                        
+  BETA0     =   3.0000E+01                        


*****Charge and Capacitance Model Parameters*********************
+  XPART     =   1.0000E+00                          	CGSO      =  '2.3500E-10+DCGSO_N_18'         
+  CGDO      =  '2.3500E-10+DCGDO_N_18'           	CGBO      =   0.0000E+00                        
+  CGSL      =   0.0000E+00                          	CGDL      =   0.0000E+00                        
+  CKAPPA    =   6.0000E-01                          	CF        =   1.5330E-10                        
+  CLC       =   1.0000E-07                          	CLE       =   6.0000E-01                        
+  DLC       =   4.0000E-08                          	DWC       =   0.0000E+00                        
+  VFBCV     =  -1.0000E+00                          	NOFF      =   1.0000E+00                        
+  VOFFCV    =   0.0000E+00                          	ACDE      =   1.0000E+00                        
+  MOIN      =   1.5000E+01                        


*****Flicker and Thermal Noise Model Parameters******************
+  NOIA      =   1.0000E+20                          	NOIB      =   5.0000E+04                        
+  NOIC      =  -1.4000E-12                          	EM        =   4.2000E+07                        
+  AF        =   1.0000E+00                          	EF        =   1.0000E+00                        
+  KF        =   0.0000E+00                        


*****Layout-Dependent Parasitics Model Parameters****************
+  LMIN      =   1.8000E-07                          	LMAX      =   5.0000E-05
+  WMIN      =   2.5000E-07                          	WMAX      =   1.0000E-04
+  XL        = '-1.0500E-08+DXL_N_18'             	XW        =  '0.0000E-00+DXW_N_18'           


*****Asymmetric Source/Drain Junction Diode Model Parameters*****
+  JS        =   1.0000E-06                          	JSW       =   7.0000E-11                        
+  CJ        =  '1.0300E-03+DCJ_N_18'             	MJ        =   4.4300E-01                        
+  PB        =   8.2300E-01                          	CJSW      =  '1.3400E-10+DCJSW_N_18'         
+  MJSW      =   3.3000E-01                        


*****Temperature Dependence Parameters***************************
+  TNOM      =   2.5000E+01                          	UTE       =  -1.1860E+00                        
+  KT1       =  -2.2550E-01                          	KT1L      =  -4.2750E-09                        
+  KT2       =  -2.5270E-02                          	UA1       =   2.2530E-09                        
+  UB1       =  -2.6730E-18                          	UC1       =  -3.8320E-11                        
+  AT        =   1.4490E+04                          	PRT       =  -1.0180E+01                        
+  XTI       =   3.0000E+00                        


*****dW and dL Parameters****************************************
+  WL        =   0.0000E+00                          WLN       =   1.0000E+00                        
+  WW        =   7.2620E-16                          WWN       =   1.0000E+00                        
+  WWL       =   0.0000E+00                          LL        =  -1.0620E-15                        
+  LLN       =   1.0000E+00                          LW        =   2.9960E-15                        
+  LWN       =   1.0000E+00                          LWL       =   0.0000E+00                        
+  LLC       =  -6.6400E-15                          LWC       =   0.0000E+00                        
+  LWLC      =   0.0000E+00                          WLC       =   0.0000E+00                        
+  WWC       =   0.0000E+00                          WWLC      =   0.0000E+00                        


*****Other Parameters********************************************
+  LVTH0     = '-1.0000E-03+DLVTH0_N_18'          	WVTH0     =  '6.027E-02+DWVTH0_N_18'
+  PVTH0     =  '0+DPVTH0_N_18'                   	LNLX      =  -2.8540E-08 
+  WNLX      =   0.0000E+00                          	PNLX      =   0.0000E+00
+  WUA       =  -1.8800E-11                          	WU0       =  '5.4000E-01+DWU0_N_18'
+  PUB       =   3.8000E-20                          	PW0       =   1.3000E-09 
+  WRDSW     =   0.0000E+00                          	WETA0     =   0.0000E+00                        
+  WETAB     =   0.0000E+00                          	LETA0     =   1.5740E-03                        
+  LETAB     =   0.0000E+00                          	PETA0     =   0.0000E+00                        
+  PETAB     =   0.0000E+00                          	WPCLM     =   0.0000E+00                        
+  WVOFF     =  -4.0780E-04                          	LVOFF     =  -4.2080E-03                        
+  PVOFF     =  -3.7880E-04                          	WA0       =  -4.7310E-02                        
+  LA0       =  -4.6670E-01                          	PA0       =  -2.6490E-02  
+  WAGS      =   4.2420E-03                          	LAGS      =   3.0280E-01                        
+  PAGS      =   0.0000E+00                          	WKETA     =   0.0000E+00                        
+  LKETA     =  -1.9420E-02                          	PKETA     =   0.0000E+00                        
+  WUTE      =   6.3730E-02                          	LUTE      =   0.0000E+00                        
+  PUTE      =   0.0000E+00                          	WVSAT     =   5.0660E+03                    
+  LVSAT     =   0.0000E+00                          	PVSAT     =  '0.0000E+00+DPVSAT_N_18'                        
+  LPDIBLC2  =  -4.7520E-03                          	WAT       =   7.0670E+03                        
+  WPRT      =   0.0000E+00                          	ACM       =   3.0000E+00                        
+  LDIF      =   8.0000E-08                          	HDIF      =   2.6000E-07                        
+  N         =   1.0000E+00                          	PHP       =   8.8000E-01                        
+  CJGATE    =  '5.0000E-10+DCJGATE_N_18'         	CTP       =   9.2400E-04                        
+  PTP       =   9.2400E-04                          	CTA       =   9.2900E-04                        
+  PTA       =   1.5800E-03                          	ELM       =   5.0000E+00                        
+  TLEVC     =   1.0000E+00                        
                        
                       

.model N_BPW_18.1 NMOS
*****Model Selectors/Controllers*********************************
+  LEVEL     =   4.9000E+01                          VERSION   =   3.2000E+00  
+  BINUNIT   =   1.0000E+00                          MOBMOD    =   1.0000E+00                           
+  CAPMOD    =   2.0000E+00                          NQSMOD    =   0.0000E+00                        
+  NOIMOD    =   1.0000E+00 

*****Process Parameters******************************************
+  TOX       =  '4.2000E-09+DTOX_N_BPW_18'            TOXM      =   4.2000E-09                        
+  XJ        =   1.6000E-07                          NCH       =   3.7446E+17                        
+  RSH       =   8.0000E+00                          NGATE     =   1.0000E+23


*****Basic Model Parameters**************************************
+  VTH0      =  '3.0750E-01+DVTH0_N_BPW_18'           K1        =   4.5780E-01                     
+  K2        =  -2.6380E-02                          K3        =  -1.0880E+01                        
+  K3B       =   2.3790E-01                          W0        =  -8.8130E-08                        
+  NLX       =   4.2790E-07                          DVT0      =   4.0420E-01                        
+  DVT1      =   3.2370E-01                          DVT2      =  -8.6020E-01                        
+  DVT0W     =   3.8300E-01                          DVT1W     =   6.0000E+05                        
+  DVT2W     =  -2.5000E-02                          LINT      =   1.5870E-08                        
+  WINT      =   1.0220E-08                          DWG       =  -3.3960E-09                        
+  DWB       =   1.3460E-09                          U0        =  '3.2410E+02+DU0_N_BPW_18'                       
+  UA        =  -9.2010E-10                          UB        =   1.9070E-18
+  UC        =   4.3550E-11                          VSAT      =   7.2580E+04 
+  A0        =   1.9300E+00                          AGS       =   5.0720E-01                        
+  B0        =   1.4860E-06                          B1        =   9.0640E-06                        
+  KETA      =   1.7520E-02                          A1        =   0.0000E+00                        
+  A2        =   1.0000E+00                          VOFF      =  -1.0880E-01                        
+  NFACTOR   =   1.0380E+00                          CIT       =  -1.5110E-03                        
+  CDSC      =   2.2750E-03                          CDSCD     =  -5.0000E-04                        
+  CDSCB     =   8.2410E-04                          ETA0      =   1.0040E-03                        
+  ETAB      =  -1.4590E-03                          DSUB      =   1.5920E-03                        
+  PCLM      =   1.0910E+00                          PDIBLC1   =   3.0610E-03                        
+  PDIBLC2   =   1.0000E-06                          PDIBLCB   =   0.0000E+00                        
+  DROUT     =   1.5920E-03                          PSCBE1    =   4.8660E+08                        
+  PSCBE2    =   2.8000E-07                          PVAG      =  -2.9580E-01                        


*****Parameters for Asymmetric and Bias-Dependent Rds Model******
+  RDSW      =   4.9050E+00                          PRWG      =   0.0000E+00                        
+  PRWB      =   0.0000E+00                          WR        =   1.0000E+00


*****Impact Ionization Current Model Parameters******************
+  ALPHA0    =   0.0000E+00                          ALPHA1    =   0.0000E+00                        
+  BETA0     =   3.0000E+01                        



*****Charge and Capacitance Model Parameters*********************
+  XPART     =   1.0000E+00                          CGSO      =  '2.3500E-10+DCGSO_N_BPW_18'         
+  CGDO      =  '2.3500E-10+DCGDO_N_BPW_18'           CGBO      =   0.0000E+00                        
+  CGSL      =   0.0000E+00                          CGDL      =   0.0000E+00                        
+  CKAPPA    =   6.0000E-01                          CF        =   1.5330E-10                        
+  CLC       =   1.0000E-07                          CLE       =   6.0000E-01                        
+  DLC       =   4.0000E-08                          DWC       =   0.0000E+00                        
+  VFBCV     =  -1.0000E+00                          NOFF      =   1.0000E+00                        
+  VOFFCV    =   0.0000E+00                          ACDE      =   1.0000E+00                        
+  MOIN      =   1.5000E+01                        


*****High-Speed/RF Model Parameters******************************


*****Flicker and Thermal Noise Model Parameters******************
+  NOIA      =   1.0000E+20                          NOIB      =   5.0000E+04                        
+  NOIC      =  -1.4000E-12                          EM        =   4.2000E+07                        
+  AF        =   1.0000E+00                          EF        =   1.0000E+00                        
+  KF        =   0.0000E+00                        


*****Layout-Dependent Parasitics Model Parameters****************
+  LMIN      =   1.8000E-07                          LMAX      =   5.0000E-05
+  WMIN      =   2.5000E-07                          WMAX      =   1.0000E-04
+  XL        = '-1.0500E-08+DXL_N_BPW_18'             XW        =  '0.0000E-00+DXW_N_BPW_18'           


*****Asymmetric Source/Drain Junction Diode Model Parameters*****
+  JS        =   1.0000E-06                          JSW       =   7.0000E-11                        
+  CJ        =  '1.0300E-03+DCJ_N_BPW_18'             MJ        =   4.4300E-01                        
+  PB        =   8.2300E-01                          CJSW      =  '1.3400E-10+DCJSW_N_BPW_18'         
+  MJSW      =   3.3000E-01                        


*****Temperature Dependence Parameters***************************
+  TNOM      =   2.5000E+01                          UTE       =  -1.1860E+00                        
+  KT1       =  -2.2550E-01                          KT1L      =  -4.2750E-09                        
+  KT2       =  -2.5270E-02                          UA1       =   2.2530E-09                        
+  UB1       =  -2.6730E-18                          UC1       =  -3.8320E-11                        
+  AT        =   1.4490E+04                          PRT       =  -1.0180E+01                        
+  XTI       =   3.0000E+00                        


*****dW and dL Parameters****************************************
+  WL        =   0.0000E+00                          WLN       =   1.0000E+00                        
+  WW        =   7.2620E-16                          WWN       =   1.0000E+00                        
+  WWL       =   0.0000E+00                          LL        =  -1.0620E-15                        
+  LLN       =   1.0000E+00                          LW        =   2.9960E-15                        
+  LWN       =   1.0000E+00                          LWL       =   0.0000E+00                        
+  LLC       =  -6.6400E-15                          LWC       =   0.0000E+00                        
+  LWLC      =   0.0000E+00                          WLC       =   0.0000E+00                        
+  WWC       =   0.0000E+00                          WWLC      =   0.0000E+00                        



*****Other Parameters********************************************
+  LVTH0     = '-1.0000E-03+DLVTH0_N_BPW_18'          WVTH0     =  '6.027E-02+DWVTH0_N_BPW_18'
+  PVTH0     =  '0+DPVTH0_N_BPW_18'                   LNLX      =  -2.8540E-08 
+  WNLX      =   0.0000E+00                          PNLX      =   0.0000E+00
+  WUA       =  -1.8800E-11                          WU0       =  '5.4000E-01+DWU0_N_BPW_18'
+  PUB       =   3.8000E-20                          PW0       =   1.3000E-09 
+  WRDSW     =   0.0000E+00                          WETA0     =   0.0000E+00                        
+  WETAB     =   0.0000E+00                          LETA0     =   1.5740E-03                        
+  LETAB     =   0.0000E+00                          PETA0     =   0.0000E+00                        
+  PETAB     =   0.0000E+00                          WPCLM     =   0.0000E+00                        
+  WVOFF     =  -4.0780E-04                          LVOFF     =  -4.2080E-03                        
+  PVOFF     =  -3.7880E-04                          WA0       =  -4.7310E-02                        
+  LA0       =  -4.6670E-01                          PA0       =  -2.6490E-02  
+  WAGS      =   4.2420E-03                          LAGS      =   3.0280E-01                        
+  PAGS      =   0.0000E+00                          WKETA     =   0.0000E+00                        
+  LKETA     =  -1.9420E-02                          PKETA     =   0.0000E+00                        
+  WUTE      =   6.3730E-02                          LUTE      =   0.0000E+00                        
+  PUTE      =   0.0000E+00                          WVSAT     =   5.0660E+03                    
+  LVSAT     =   0.0000E+00                          PVSAT     =  '0.0000E+00+DPVSAT_N_BPW_18'                        
+  LPDIBLC2  =  -4.7520E-03                          WAT       =   7.0670E+03                        
+  WPRT      =   0.0000E+00                          ACM       =   3.0000E+00                        
+  LDIF      =   8.0000E-08                          HDIF      =   2.6000E-07                        
+  N         =   1.0000E+00                          PHP       =   8.8000E-01                        
+  CJGATE    =  '5.0000E-10+DCJGATE_N_BPW_18'         CTP       =   9.2400E-04                        
+  PTP       =   9.2400E-04                          CTA       =   9.2900E-04                        
+  PTA       =   1.5800E-03                          ELM       =   5.0000E+00                        
+  TLEVC     =   1.0000E+00                        
            



******************************************************************************************
*         1.8V PMOS Model               *
******************************************************************************************

.model P_18.1 PMOS
*****Model Selectors/Controllers*********************************
+  LEVEL     =   4.9000E+01                          MOBMOD    =   3.0000E+00                        
+  VERSION   =   3.2000E+00                          CAPMOD    =   2.0000E+00                        
+  BINUNIT   =   1.0000E+00                          NQSMOD    =   0.0000E+00
+  NOIMOD    =   1.0000E+00 

*****Process Parameters******************************************
+  TOX       =  '4.2000E-09+DTOX_P_18'               TOXM      =   4.2000E-09                        
+  XJ        =   1.0000E-07                          NCH       =   6.2310E+17                        
+  NGATE     =   1.0000E+23 

*****Basic Model Parameters**************************************
+  VTH0      = '-4.5550E-01+DVTH0_P_18'              K1        =   5.7040E-01                        
+  K2        =   6.9730E-03                          K3        =  -2.8330E+00                        
+  K3B       =   1.3260E+00                          W0        =  -1.9430E-07                        
+  NLX       =   2.5300E-07                          DVT0      =   4.8850E-01                        
+  DVT1      =   7.5780E-02                          DVT2      =   1.1870E-01                        
+  DVT0W     =  -1.2610E-01                          DVT1W     =   2.4790E+04                        
+  DVT2W     =   6.9150E-01                          LINT      =  -1.0410E-08                        
+  WINT      =  -1.5250E-07                          DWG       =  -1.2510E-07                        
+  DWB       =  -1.0390E-07                          U0        =  '1.2450E+02+DU0_P_18'  
+  UA        =   1.5400E-09                          UB        =   2.6460E-19
+  UC        =  -9.5870E-02                          VSAT      =   5.3400E+04                                                                                            
+  A0        =   1.3500E+00                          AGS       =   3.8180E-01                        
+  B0        =  -3.0880E-07                          B1        =   0.0000E+00                        
+  KETA      =   1.0440E-02                          A1        =   0.0000E+00                        
+  A2        =   1.0000E+00                          VOFF      =  -1.0730E-01                                                                    
+  NFACTOR   =   1.5350E-00                          CIT       =  -1.0670E-03 
+  CDSC      =   7.5780E-04                          CDSCD     =  -2.8830E-05                        
+  CDSCB     =   1.0000E-04                          ETA0      =   1.0710E+00                        
+  ETAB      =  -9.2910E-01                          DSUB      =   1.9191E+00
+  PCLM      =   2.6530E+00                          PDIBLC1   =   0.0000E+00                        
+  PDIBLC2   =   5.0000E-06                          PDIBLCB   =   0.0000E+00                        
+  DROUT     =   1.4570E+00                          PSCBE1    =   4.8660E+08                        
+  PSCBE2    =   2.8000E-07                          PVAG      =   1.2620E+00                        


*****Parameters for Asymmetric and Bias-Dependent Rds Model******
+  RDSW      =   7.9210E+02                          PRWG      =   0.0000E+00                        
+  PRWB      =   0.0000E+00                        


*****Impact Ionization Current Model Parameters******************
+  ALPHA0    =   0.0000E+00                          ALPHA1    =   0.0000E+00                        
+  BETA0     =   3.0000E+01                        


*****Charge and Capacitance Model Parameters*********************
+  CGDO      =  '2.0540E-10+DCGDO_P_18'              CGBO      =   0.0000E+00                        
+  CGSO      =  '2.0540E-10+DCGSO_P_18'              XPART     =   1.0000E+00                        
+  CF        =   1.5330E-10                          DLC       =   7.0100E-08                                                                              
+  CGSL      =   0.0000E+00                          CGDL      =   0.0000E+00                        
+  CKAPPA    =   6.0000E-01                                                  
+  CLC       =   1.0000E-07                          CLE       =   6.0000E-01                        
+  DWC       =   0.0000E+00                        
+  VFBCV     =  -1.0000E+00                          NOFF      =   1.0000E+00                        
+  VOFFCV    =   0.0000E+00                          ACDE      =   1.0000E+00                        
+  MOIN      =   1.5000E+01                        

*****Flicker and Thermal Noise Model Parameters******************
+  NOIA      =   1.0000E+20                          NOIB      =   5.0000E+04                        
+  NOIC      =  -1.4000E-12                          EM        =   4.2000E+07                        
+  AF        =   1.0000E+00                          EF        =   1.0000E+00                        
+  KF        =   0.0000E+00                        


*****Layout-Dependent Parasitics Model Parameters****************
+  LMIN      =   1.8000E-07                          LMAX      =   5.0000E-05
+  WMIN      =   2.5000E-07                          WMAX      =   1.0000E-04
+  XL        = '-2.0000E-09+DXL_P_18'                XW        =  '0.0000E+00+DXW_P_18'           


*****Asymmetric Source/Drain Junction Diode Model Parameters*****
+  JS        =   3.0000E-06                          JSW       =   4.2200E-11                        
+  CJ        =  '1.2400E-03+DCJ_P_18'                MJ        =   3.9500E-01                        
+  PB        =   7.6200E-01                          CJSW      =  '1.7400E-10+DCJSW_P_18'         
+  MJSW      =   3.2400E-01                        


*****Temperature Dependence Parameters***************************
+  TNOM      =   2.5000E+01                          UTE       =  -4.4840E-01                        
+  KT1       =  -2.2940E-01                          KT1L      =  -8.2040E-09                        
+  KT2       =  -9.4870E-03                          UA1       =   4.5710E-09                        
+  UB1       =  -6.0260E-18                          UC1       =  -9.8500E-02                        
+  AT        =   1.2030E+04                          PRT       =   0.0000E+00                        
+  XTI       =   3.0000E+00                        


*****dW and dL Parameters****************************************
+  WW        =   1.2360E-14                          LW        =  -2.8730E-16                        
+  LL        =   6.6350E-15                        
+  WL        =   0.0000E+00                          WLN       =   1.0000E+00                        
+  WWN       =   1.0000E+00                        
+  WWL       =   0.0000E+00                                                 
+  LLN       =   1.0000E+00                                                
+  LWN       =   1.0000E+00                          LWL       =   0.0000E+00                        
+  LLC       =  -1.3100E-14                          LWC       =   0.0000E+00                        
+  LWLC      =   0.0000E+00                          WLC       =   0.0000E+00                        
+  WWC       =   0.0000E+00                          WWLC      =   0.0000E+00                        


*****Other Parameters********************************************
+  LVTH0     =  '4.4000E-03+DLVTH0_P_18'             WVTH0     = '-1.4800E-02+DWVTH0_P_18'                        
+  PVTH0     =  '3.2000E-03+DPVTH0_P_18'             LNLX      =  -1.5840E-08 
+  WRDSW     =   1.0070E+01                          WETA0     =   0.0000E+00                        
+  WETAB     =   0.0000E+00                          WPCLM     =   0.0000E+00                        
+  WUA       =   2.6300E-09                          LUA       =  -8.2530E-11
+  PUA       =   5.8550E-11                          WUB       =   0.0000E+00                        
+  LUB       =   0.0000E+00                          PUB       =   0.0000E+00                        
+  WUC       =   0.0000E+00                          LUC       =   0.0000E+00                        
+  PUC       =   0.0000E+00                          WVOFF     =  -9.8160E-03                        
+  LVOFF     =  -9.8710E-04                          PVOFF     =  -9.8330E-05                        
+  WA0       =  -4.8070E-02                          LA0       =  -2.8100E-01
+  PA0       =   8.6610E-02                          WAGS      =  -4.2770E-02                        
+  LAGS      =   4.4540E-02                          PAGS      =  -4.0760E-02                        
+  WKETA     =   0.0000E+00                          LKETA     =  -1.2000E-02
+  PKETA     =   0.0000E+00                          WUTE      =  -2.6820E-01                        
+  LUTE      =   0.0000E+00                          PUTE      =   0.0000E+00                        
+  WVSAT     =  -1.4200E+04                          LVSAT     =   0.0000E+00                        
+  PVSAT     = '-4.3400E+02+DPVSAT_P_18'             LPDIBLC2  =   3.0120E-03
+  WAT       =  -6.4050E+03                          WPRT      =   2.2660E+02                        
+  N         =   1.0000E+00                          PHP       =   6.6500E-01                        
+  CTA       =   1.0000E-03                          CTP       =   7.5300E-04                        
+  PTA       =   1.5500E-03                          PTP       =   1.2400E-03                        
+  ACM       =   3.0000E+00                          LDIF      =   8.0000E-08             
+  RSH       =   8.0000E+00                          RD        =   0.0000E+00                    
+  RSC       =   0.0000E+00                          RDC       =   0.0000E+00
+  HDIF      =   2.6000E-07                          RS        =   0.0000E+00

******************************************************************************************
*         3.3V NMOS Model               *
******************************************************************************************
.model N_33.1 NMOS
+LEVEL    = 49                  
*
* GENERAL PARAMETERS
*
+LMIN     = 3.5E-7              LMAX     = 5.0E-5              WMIN     = 2.5E-7              
+WMAX     = 1.0E-4              TNOM     = 27.0                VERSION  = 3.2                 
+TOX      = '7.00E-09+DTOX_N_33'            XJ       = 2.5000000E-07       
+NCH      = 1.6999999E+17       LLN      = 1.0000000           LWN      = 1.0000000           
+WLN      = 1.0000000           WWN      = 1.0000000           LINT     = '0.00+DLINT_N_33'                
+LL       = 1.2142200E-14       LW       = 0.00                LWL      = -2.8856721E-22      
+WINT     = '0.00+DWINT_N_33'                WL       = 0.00                WW       = -2.0097143E-16      
+WWL      = -1.5017800E-21      MOBMOD   = 1                   BINUNIT  = 2                   
+XL       = 2.20E-08            XW       = 0.00                DWG      = 3.5527140E-15       
+DWB      = 6.2000000E-09       
* DIODE PARAMETERS
+ACM      = 3                   LDIF     = 0.00                HDIF     = 3.20E-7                
+RSH      = 8                                     
*
* THRESHOLD VOLTAGE PARAMETERS
*
+VTH0     = '0.5924070+DVTH0_N_33'           K1       = 0.7137536           K2       = -2.5826899E-02      
+K3       = 62.0000000          DVT0     = 4.7501960           DVT1     = 0.6340203           
+DVT2     = -0.2139230          DVT0W    = 0.2500000           DVT1W    = 5.9500000E+05       
+DVT2W    = 0.00                NLX      = 1.2508283E-07       W0       = 5.6800000E-06       
+K3B      = 32.0000000           
*
* MOBILITY PARAMETERS
*
+VSAT     = 9.8280000E+04       UA       = -5.8546880E-10      UB       = 1.6518923E-18       
+UC       = 5.5177280E-11       RDSW     = 5.9591060E+02       PRWB     = 5.7154760E-02       
+PRWG     = 2.3068622E-02       WR       = 1.0000000           U0       = 3.4129650E-02       
+A0       = 1.2752739           KETA     = 5.0000000E-03       A1       = 1.0000000E-02       
+A2       = 0.9900000           AGS      = 0.2678509           B0       = 1.0000000E-08       
+B1       = 9.0000000E-07       
*
* SUBTHRESHOLD CURRENT PARAMETERS
*
+VOFF     = -0.2360862          NFACTOR  = 1.0000000           CIT      = 0.00                
+CDSC     = 2.3999999E-04       CDSCB    = 0.00                CDSCD    = 2.3999999E-04       
+ETA0     = 0.2080775           ETAB     = -1.5000000E-03      DSUB     = 0.5210000           
*
* ROUT PARAMETERS
*
+PCLM     = 0.6318000           PDIBLC1  = 9.4999000E-04       PDIBLC2  = 1.0000000E-03       
+PDIBLCB  = 0.00                DROUT    = 0.5600000           PSCBE1   = 4.2400000E+08       
+PSCBE2   = 1.0000000E-05       PVAG     = 0.00                DELTA    = 1.0000000E-02       
+ALPHA0   = 0.00                ALPHA1   = 0.00                BETA0    = 30.0000000          
*
* TEMPERATURE EFFECTS PARAMETERS
*
+KT1      = -0.3166082          KT2      = -4.4608160E-02      AT       = 5.0000000E+02       
+UTE      = -1.6006135          UA1      = 4.2028770E-11       UB1      = 3.8000000E-19       
+UC1      = 2.8000000E-11       KT1L     = 0.0000000           PRT      = -2.7126447E+02      
*	
* CAPACITANCE PARAMETERS
*
+CJ       = 7.673167E-04   	MJ       = 0.3299333      	PB       = 0.7131242      	
+CJSW     = 1.088665E-10   	MJSW     = 0.2036705      	PHP      = 0.4347057      	
+CTA      = 1.081522E-03   	CTP      = 7.482284E-04   	PTA      = 1.822417E-03   	
+PTP      = 2.008567E-03   	JS       = 1.00E-05       	JSW      = 5.2E-11           	
+CGDO     = '2.7E-10+DCGDO_N_33'        	
+CGSO     = '2.7E-10+DCGSO_N_33'        	CGBO     = 1.0E-10       	CAPMOD   = 2              	
+NQSMOD   = 0              	ELM      = 5              	XPART    = 1              	
+CF       = 1.392E-10          	CJGATE   = 2.9E-10              TLEVC    = 1


******************************************************************************************
*         0.18um 1.8v/3.3v MIXEDMODE Triple-well technology, 3.3V NMOS Model               *
******************************************************************************************
.model N_BPW_33.1 NMOS
+LEVEL    = 49                  
*
* GENERAL PARAMETERS
*
+LMIN     = 3.5E-7              LMAX     = 5.0E-5              WMIN     = 2.5E-7              
+WMAX     = 1.0E-4              TNOM     = 27.0                VERSION  = 3.2                 
+TOX      = '7.00E-09+DTOX_N_BPW_33'            XJ       = 2.5000000E-07       
+NCH      = 1.6999999E+17       LLN      = 1.0000000           LWN      = 1.0000000           
+WLN      = 1.0000000           WWN      = 1.0000000           LINT     = '0.00+DLINT_N_BPW_33'                
+LL       = 1.2142200E-14       LW       = 0.00                LWL      = -2.8856721E-22      
+WINT     = '0.00+DWINT_N_BPW_33'                WL       = 0.00                WW       = -2.0097143E-16      
+WWL      = -1.5017800E-21      MOBMOD   = 1                   BINUNIT  = 2                   
+XL       = 2.20E-08            XW       = 0.00                DWG      = 3.5527140E-15       
+DWB      = 6.2000000E-09       
* DIODE PARAMETERS
+ACM      = 3                   LDIF     = 0.00                HDIF     = 3.20E-7                
+RSH      = 8                                     
*
* THRESHOLD VOLTAGE PARAMETERS
*
+VTH0     = '0.5924070+DVTH0_N_BPW_33'           K1       = 0.7137536           K2       = -2.5826899E-02      
+K3       = 62.0000000          DVT0     = 4.7501960           DVT1     = 0.6340203           
+DVT2     = -0.2139230          DVT0W    = 0.2500000           DVT1W    = 5.9500000E+05       
+DVT2W    = 0.00                NLX      = 1.2508283E-07       W0       = 5.6800000E-06       
+K3B      = 32.0000000           
*
* MOBILITY PARAMETERS
*
+VSAT     = 9.8280000E+04       UA       = -5.8546880E-10      UB       = 1.6518923E-18       
+UC       = 5.5177280E-11       RDSW     = 5.9591060E+02       PRWB     = 5.7154760E-02       
+PRWG     = 2.3068622E-02       WR       = 1.0000000           U0       = 3.4129650E-02       
+A0       = 1.2752739           KETA     = 5.0000000E-03       A1       = 1.0000000E-02       
+A2       = 0.9900000           AGS      = 0.2678509           B0       = 1.0000000E-08       
+B1       = 9.0000000E-07       
*
* SUBTHRESHOLD CURRENT PARAMETERS
*
+VOFF     = -0.2360862          NFACTOR  = 1.0000000           CIT      = 0.00                
+CDSC     = 2.3999999E-04       CDSCB    = 0.00                CDSCD    = 2.3999999E-04       
+ETA0     = 0.2080775           ETAB     = -1.5000000E-03      DSUB     = 0.5210000           
*
* ROUT PARAMETERS
*
+PCLM     = 0.6318000           PDIBLC1  = 9.4999000E-04       PDIBLC2  = 1.0000000E-03       
+PDIBLCB  = 0.00                DROUT    = 0.5600000           PSCBE1   = 4.2400000E+08       
+PSCBE2   = 1.0000000E-05       PVAG     = 0.00                DELTA    = 1.0000000E-02       
+ALPHA0   = 0.00                ALPHA1   = 0.00                BETA0    = 30.0000000          
*
* TEMPERATURE EFFECTS PARAMETERS
*
+KT1      = -0.3166082          KT2      = -4.4608160E-02      AT       = 5.0000000E+02       
+UTE      = -1.6006135          UA1      = 4.2028770E-11       UB1      = 3.8000000E-19       
+UC1      = 2.8000000E-11       KT1L     = 0.0000000           PRT      = -2.7126447E+02      
*	
* CAPACITANCE PARAMETERS
*
+CJ       = 7.673167E-04   	MJ       = 0.3299333      	PB       = 0.7131242      	
+CJSW     = 1.088665E-10   	MJSW     = 0.2036705      	PHP      = 0.4347057      	
+CTA      = 1.081522E-03   	CTP      = 7.482284E-04   	PTA      = 1.822417E-03   	
+PTP      = 2.008567E-03   	JS       = 1.00E-05       	JSW      = 5.2E-11           	
+CGDO     = '2.7E-10+DCGDO_N_BPW_33'        	
+CGSO     = '2.7E-10+DCGSO_N_BPW_33'        	CGBO     = 1.0E-10       	CAPMOD   = 2              	
+NQSMOD   = 0              	ELM      = 5              	XPART    = 1              	
+CF       = 1.392E-10          	CJGATE   = 2.9E-10              TLEVC    = 1
           	



******************************************************************************************
*         3.3V PMOS Model               *
******************************************************************************************
.model P_33.1 PMOS
+LEVEL    = 49             	
+LMIN     = 3.5E-7         	LMAX     = 5.0E-5         	WMIN     = 2.5E-7         	
+WMAX     = 1.0E-4        	TNOM     = 27.0           	VERSION  = 3.2            	
+TOX      = '7.00000E-09+DTOX_P_33'    	XJ       = 1.8000000E-07  	NCH      = 4.3096250E+17  	
+LLN      = 1.4787377      	LWN      = 1.0000000      	WLN      = 1.0000000      	
+WWN      = 1.6332974      	LINT     = '2.2396316E-08+DLINT_P_33'  	LL       = 3.3436880E-18  	
+LW       = 0.00           	LWL      = -1.4344100E-24 	WINT     = '3.3613110E-08+DWINT_P_33'  	
+WL       = 0.00           	WW       = -7.2735800E-19 	WWL      = 9.7470860E-26  	
+MOBMOD   = 1              	XL       = -1.0000E-08          XW       = 0                	
+DWG      = -1.4371156E-08 	DWB      = 5.9839220E-09  	
+VTH0     = '-0.7204355+DVTH0_P_33'     	K1       = 0.7667419      	K2       = 5.4286610E-02  	
+K3       = 2.0892601      	DVT0     = 7.3947320      	DVT1     = 0.9634880      	
+DVT2     = 7.8053260E-03  	DVT0W    = 1.7969700      	DVT1W    = 2.8762723E+06  	
+DVT2W    = 0.2026245      	NLX      = 0.00           	W0       = 2.2247300E-07  	
+K3B      = 1.0028400      	         	
+VSAT     = 1.0007731E+05  	UA       = -3.9782800E-10 	UB       = 1.6947495E-18  	
+UC       = -3.6494700E-11 	RDSW     = 6.2701920E+02  	PRWB     = -0.7725255     	
+PRWG     = 3.3490300E-02  	WR       = 0.9913232      	U0       = 8.0758510E-03  	
+A0       = 1.0736154      	KETA     = -1.0346900E-02 	A1       = 0.01      	
+A2       = 0.9212255      	AGS      = 0.2138427      	B0       = 4.3581280E-07  	
+B1       = 1.7378807E-06  	
+VOFF     = -0.2239050     	NFACTOR  = 0.9964148      	CIT      = 5.3336740E-04  	
+CDSC     = 3.2656700E-03  	CDSCB    = 2.4630399E-03  	CDSCD    = 0.00           	
+ETA0     = 5.4210600E-02  	ETAB     = -1.8931806E-02 	DSUB     = 0.4594282      	
+PCLM     = 0.6164396      	PDIBLC1  = 1.2236120E-02  	PDIBLC2  = 3.5433970E-04  	
+PDIBLCB  = 0.2477877      	DROUT    = 0.2401412      	PSCBE1   = 4.6427620E+08  	
+PSCBE2   = 2.8700000E-05  	PVAG     = -0.2307000     	DELTA    = 1.0000000E-02  	
+ALPHA0   = 0.00           	BETA0    = 30.0000000     	
+KT1      = -0.3345865     	KT2      = -5.7475180E-02 	AT       = 4.9500000E+04  	
+UTE      = -1.2277215     	UA1      = 1.4019034E-09  	UB1      = -3.4171990E-18 	
+UC1      = -1.3930956E-10 	KT1L     = 1.0000003E-08  	PRT      = 0.00           	
+CJ       = 1.299812E-03   	MJ       = 0.4096944      	PB       = 0.761753       	
+CJSW     = 2.243239E-10   	MJSW     = 0.474468       	PHP      = 0.9296629      	
+CTA      = 9.968635E-04   	CTP      = 7.21932E-04    	PTA      = 1.503527E-03   	
+PTP      = 1.215858E-03   	JS       = 9.00E-05       	JSW      = 4.90E-12     	
+CGDO     = '2.6E-10+DCGDO_P_33'        	
+CGSO     = '2.6E-10+DCGSO_P_33'        	CGBO     = 1E-10             	CAPMOD   = 2              	
+NQSMOD   = 0              	ELM      = 5              	XPART    = 1              	
+CF       = 1.392E-10       	TLEVC    = 1
+ACM      = 3                 HDIF     = 3.2E-7                RSH     = 8               	 
           	


******************************************************************************************
*         1.8V Low VT NMOS Model     *
******************************************************************************************
.model N_LV_18.1 NMOS
+LEVEL    = 49             	
+LMIN     = 2.5E-7         	LMAX     = 5.0E-5         	WMIN     = 2.5E-7         	
+WMAX     = 1.0E-4         	TNOM     = 27.0           	VERSION  = 3.2            	
+TOX      = '4.20000E-09+DTOX_N_LV_18'    	XJ       = 1.6000000E-07  	NCH      = 4.6371000E+17  	
+LLN      = 2.0000000      	LWN      = 1.0000000      	WLN      = 1.0000000      	
+WWN      = 1.0000000      	LINT     = '1.0000000E-08+DTOX_N_LV_18'  	LL       = -2.5800000E-22 	
+LW       = 0.00           	LWL      = 0.00           	WINT     = '2.0000000E-08+DTOX_N_LV_18'  	
+WL       = 0.00           	WW       = 0.00           	WWL      = 0.00           	
+MOBMOD   = 2              	BINUNIT  = 2              	XL       = 0              	
+XW       = 0              	
+DWG      = 2.5000000E-09  	DWB      = 1.2441700E-09  	
+ACM      = 3              	HDIF     = 2.6E-07             	RSH      = 8              	
+VTH0     = '1.6460000E-02+DTOX_N_LV_18'  	K1       = 0.3122200      	K2       = -4.3434400E-02 	
+K3       = -15.4245000    	DVT0     = 1.9600000      	DVT1     = 0.2703380      	
+DVT2     = 7.0000000E-02  	DVT0W    = 0.4113980      	DVT1W    = 1.6626000E+06  	
+DVT2W    = -4.4234600E-02 	NLX      = 8.3200000E-07  	W0       = 1.0000000E-06  	
+K3B      = -0.2101380     	           	
+VSAT     = 9.20E+04    	PVSAT    = 1.9999999E-09  	UA       = 5.2358400E-10  	
+WUA      = 1.0000000E-16  	PUA      = -7.5000000E-23 	UB       = 1.4080000E-18  	
+WUB      = -3.0000001E-25 	PUB      = 8.0000000E-32  	UC       = -1.0246000E-10 	
+RDSW     = 96.7580000     	PRWB     = -0.2000000     	PRWG     = 5.0000000E-02  	
+WR       = 1.0000000      	U0       = 4.9234500E-02  	WU0      = 2.4000000E-09  	
+PU0      = 2.0000000E-16  	A0       = 1.0000000      	KETA     = 4.2062700E-03  	
+A1       = 0.00           	A2       = 1.0000000      	AGS      = 0.6300000      	
+B0       = 0.00           	B1       = 0.00           	
+VOFF     = -0.2517590     	NFACTOR  = 1.0000000      	CIT      = -4.5359940E-03 	
+CDSC     = 1.2000000E-03  	CDSCB    = 0.00           	CDSCD    = 5E-4           	
+ETA0     = 5.5334000E-02  	ETAB     = -2.3552900E-02 	DSUB     = 0.5600000      	
+PCLM     = 2.8151700      	PDIBLC1  = 0.2000000      	PDIBLC2  = 8.0000000E-02  	
+PDIBLCB  = 0.2777778      	DROUT    = 1.0000000      	PSCBE1   = 6.6815310E+08  	
+PSCBE2   = 1.0000000E-10  	PVAG     = 0.5000000      	DELTA    = 1.0000000E-02  	
+ALPHA0   = 0.00           	BETA0    = 30.0000000     	
+KT1      = -0.2999444     	KT2      = 1.5900001E-02  	AT       = 3.3000000E+04  	
+UTE      = -1.6873263     	UA1      = -1.3554663E-09 	UB1      = 8.7998690E-20  	
+UC1      = 3.4078270E-11  	KT1L     = 0.00           	PRT      = -1.0000000E+02 	
+CJ       = 0.00099        	MJ       = 0.5            	PB       = 0.762          	
+CJSW     = 1.5E-10        	MJSW     = 0.257          	PHP      = 0.639          	
+CTA      = 0.000902       	CTP      = 0.000718       	PTA      = 0.000872       	
+PTP      = 0.00385        	JS       = 1.00E-04       	JSW      = 0.00           	
+CJGATE    = 2.4E-10        	        	
+CGDO     = '2.0E-10+DCGDO_N_LV_18'        	
+CGSO     = '2.0E-10+DCGSO_N_LV_18'        	CGBO     = 0.0          	CAPMOD   = 2              	
+NQSMOD   = 0              	ELM      = 5              	XPART    = 1              	
+CF       = 1.53E-10       	
+DWC      = 2E-08          	TLEVC    = 1 



******************************************************************************************
*         1.8V Low VT PMOS Model     *
******************************************************************************************            	

.model P_LV_18.1 PMOS
+LEVEL    = 49             	
+LMIN     = 2.5E-7         	LMAX     = 5.0E-5        	WMIN     = 2.5E-7         	
+WMAX     = 1.0E-4         	TNOM     = 27.0           	VERSION  = 3.2            	
+TOX      = '4.20000E-09+DTOX_P_LV_18'    	XJ       = 1.8000000E-07  	NCH      = 2.6699999E+17  	
+LLN      = 0.2000000      	LWN      = 1.0000000      	WLN      = 0.7966000      	
+WWN      = 1.7867000      	LINT     = '0.00+DLINT_P_LV_18'           	LL       = 8.9200000E-10  	
+LW       = -8.0000000E-14 	LWL      = 3.7900000E-15  	WINT     = '-4.2700000E-08+DWINT_N_ZERO_18' 	
+WL       = 5.6500000E-14  	WW       = 5.7000000E-24  	WWL      = 1.8000000E-25  	
+MOBMOD   = 1              	BINUNIT  = 2              	XL       = 0              	
+XW       = 0              	
+DWG      = -1.0600000E-08 	DWB      = -1.0100000E-09 	
+ACM      = 3              	HDIF     = 2.6E-07             	RSH      = 8             	
+VTH0     = '-0.2253000+DVTH0_N_ZERO_18'     	K1       = 0.4604000      	K2       = -1.0000000E-02 	
+K3       = -6.3916000     	DVT0     = 1.0400000E-03  	DVT1     = 2.9700000E-02  	
+DVT2     = -12.2436000    	DVT0W    = 0.00           	DVT1W    = 0.00           	
+DVT2W    = 0.00           	NLX      = 0.00           	W0       = 5.5000000E-07  	
+K3B      = 5.2034000      	          	
+VSAT     = 1.4500000E+05  	UA       = 1.8500000E-09  	UB       = -4.0200000E-19 	
+UC       = -1.1800000E-10 	RDSW     = 1.2024300E+02  	PRWB     = -2.0000000     	
+PRWG     = 1.0000000      	WR       = 1.0251000      	U0       = 1.2700000E-02  	
+A0       = 1.2075000      	KETA     = -9.5500000E-03 	A1       = 0.00           	
+A2       = 0.4000000      	AGS      = 0.3268000      	B0       = 4.0000000E-08  	
+B1       = 0.00           	
+VOFF     = -0.2415000     	NFACTOR  = 2.0000000      	CIT      = -1.4900000E-04 	
+CDSC     = 1.4500000E-05  	CDSCB    = 0.00           	CDSCD    = 3.8500001E-04  	
+ETA0     = 8.2700000E-03  	ETAB     = -8.2900000E-02 	DSUB     = 0.6936000      	
+PCLM     = 1.8243001      	PDIBLC1  = 0.2000000      	PDIBLC2  = 1.6800000E-03  	
+PDIBLCB  = 0.2383000      	DROUT    = 0.1853000      	PSCBE1   = 6.3000000E+08  	
+PSCBE2   = 1.0000000E-10  	PVAG     = 2.0000000      	DELTA    = 1.0000000E-02  	
+ALPHA0   = 0.00           	BETA0    = 30.0000000     	
+KT1      = -0.1842559     	KT2      = -2.7705010E-02 	AT       = 3.3000000E+04  	
+UTE      = -1.4842620     	UA1      = -1.6085620E-09 	UB1      = -6.7403140E-19 	
+UC1      = -4.9096290E-11 	KT1L     = 0.00           	PRT      = 0.00           	
+CJ       = 1.060794E-03   	MJ       = 0.3802915      	PB       = 0.7619755      	
+CJSW     = 2.025533E-10   	MJSW     = 0.2567205      	PBSW      = 0.6391692      	
+CTA      = 8.437771E-04   	CTP      = 8.053438E-04   	PTA      = 1.465745E-03   	
+PTP      = 1.857747E-03   	JS       = 1.00E-04       	JSW      = 0.00           	
+CJGATE    = 4.53E-10       	         	
+CGDO     = '1.8E-10+DCGDO_N_ZERO_18'        	
+CGSO     = '1.8E-10+DCGSO_N_ZERO_18'        	CGBO     = 0.0E+00        	CAPMOD   = 2              	
+NQSMOD   = 0              	ELM      = 5              	XPART    = 1              	
+CF       = 1.53E-10           	
+DWC      = -4.27E-08      	TLEVC    = 1      

 


**.lib './MM180_LVT33_V111.lib' tt
******************************************************************************************
*         3.3V Low VT NMOS Model     *
******************************************************************************************
.model N_LV_33 NMOS
+LEVEL    = 49             	
+LMIN     = 4.5E-7         	LMAX     = 5.0E-5         	WMIN     = 8.0E-7         	
+WMAX     = 1.0E-4         	TNOM     = 27.0           	VERSION  = 3.2            	
+TOX      = '7.00000E-09+DTOX_N_LV_33'    	XJ       = 1.6000000E-07  	NCH      = 1.0241000E+17  	
+LLN      = 1.0000000      	LWN      = 1.0000000      	WLN      = 1.0000000      	
+WWN      = 1.0000000      	LINT     = '2.0000000E-08+DLINT_N_LV_33'  	LL       = 0.00           	
+LW       = 0.00           	LWL      = 0.00           	WINT     = '1.2249999E-08+DWINT_N_LV_33'  	
+WL       = 0.00           	WW       = 0.00           	WWL      = 0.00           	
+MOBMOD   = 1              	XL       = 0              	XW       = 0              	       	
+DWG      = -2.0000002E-09 	DWB      = 0.00           	BINUNIT  = 2
+VTH0     = '0.3143800+DVTH0_N_LV_33'      	K1       = 0.4411720      	K2       = -2.5000002E-03 	
+K3       = 8.0000000      	WK3      = -1.5000001E-07 	DVT0     = 9.5500000      	
+DVT1     = 0.6921755      	DVT2     = -1.9199999E-02 	DVT0W    = 1.4999999      	
+DVT1W    = 3.8390000E+06  	DVT2W    = 0.00           	NLX      = 1.0000000E-07  	
+W0       = 2.5000000E-07  	K3B      = -2.2000003     	        	
+VSAT     = 1.4600500E+05  	LVSAT    = 1.2000000E-02  	PVSAT    = 4.0000000E-09  	
+UA       = 7.4999990E-12  	UB       = 1.4716000E-18  	UC       = 4.2900000E-11  	
+RDSW     = 3.4000000E+02  	PRWB     = 0.2000000      	PRWG     = 5.0000000E-02  	
+WR       = 0.8800000      	U0       = 4.0670000E-02  	A0       = 1.3379101      	
+KETA     = -1.9512800E-02 	LKETA    = 1.8000000E-08  	A1       = -1.5000000E-02 	
+A2       = 0.4950000      	AGS      = 0.2799817      	B0       = 0.00           	
+B1       = 0.00           	
+VOFF     = -0.2266667     	NFACTOR  = 1.9196697      	CIT      = -8.2513200E-04 	
+CDSC     = -5.5000000E-03 	CDSCB    = -2.0000001E-03 	CDSCD    = -2.3108199E-03 	
+ETA0     = 9.0787900E-02  	ETAB     = -1.8052302E-02 	DSUB     = 0.4388730      	
+PCLM     = 2.0320799      	PDIBLC1  = 0.2000000      	PDIBLC2  = 8.7416200E-04  	
+PDIBLCB  = 0.2515152      	DROUT    = 0.5600000      	PSCBE1   = 3.2151754E+08  	
+PSCBE2   = 4.7085900E-07  	PVAG     = 1.8000000      	DELTA    = 1.0000000E-02  	
+ALPHA0   = 0.00           	BETA0    = 30.0000000     	
+KT1      = -0.2100000     	KT2      = 2.2000000E-02  	AT       = 3.3000000E+04  	
+UTE      = -1.0548464     	UA1      = 2.0172199E-09  	UB1      = -2.2093869E-18 	
+UC1      = -6.6587780E-11 	KT1L     = 0.00           	PRT      = 0.00           	
+CJ       = 7.367141E-04   	MJ       = 0.336086       	PB       = 0.7201007      	
+CJSW     = 1.73106E-10    	MJSW     = 0.2086389      	PBSW     = 0.6102874      	
+CTA      = 7.477216E-04   	CTP      = 1.326763E-03   	PTA      = 1.775738E-03   	
+PTP      = 2.355726E-03   	JS       = 1.00E-04       	JSW      = 0.00           	
+CJGATE    = 5.23E-10       	
+CGDO     = '3.5E-10+DCGDO_N_LV_33'        	ACM      = 3                   HDIF     = 3.2E-7    
+CGSO     = '3.5E-10+DCGSO_N_LV_33'     	CGBO     = 0.0          	CAPMOD   = 2              	
+NQSMOD   = 0              	ELM      = 5              	XPART    = 1             	
+CF       = 1.392E-10          	RSH      = 8      	        TLEVC    = 1  
+DWC      = 1.225E-08

******************************************************************************************
*        3.3V Low VT PMOS Model     *
******************************************************************************************      	           	
           	

.model P_LV_33 PMOS
+LEVEL    = 49             	
+LMIN     = 4.5E-7         	LMAX     = 5.0E-5         	WMIN     = 8.0E-7         	
+WMAX     = 1.0E-4         	TNOM     = 27.0           	VERSION  = 3.2            	
+TOX      = '7.00000E-09+DTOX_P_LV_33'    	XJ       = 1.8000000E-07  	NCH      = 5.3343000E+16  	
+LLN      = 0.7216445      	LWN      = 1.0000000      	WLN      = 2.0000000      	
+WWN      = 0.5480860      	LINT     = '8.7500000E-10+DLINT_P_LV_33'  	LL       = 1.2489934E-12  	
+LW       = -8.0000000E-15 	LWL      = -1.8801899E-20 	WINT     = '2.6149999E-08+DWINT_P_LV_33'  	
+WL       = -3.3356700E-21 	WW       = -3.7684900E-12 	WWL      = 0.00           	
+MOBMOD   = 1              	XL       = 0              	XW       = 0            
+DWG      = -1.3888889E-08 	DWB      = 5.6433000E-09  	
+VTH0     = '-0.4238060+DVTH0_P_LV_33'     	K1       = 0.4537740      	K2       = -1.6830200E-02 	
+K3       = -2.3458099     	DVT0     = 2.2409160      	DVT1     = 0.7000346      	
+DVT2     = 5.1822500E-02  	DVT0W    = -0.6666300     	DVT1W    = 1.7665100E+06  	
+DVT2W    = 0.2730700      	NLX      = 1.0942075E-07  	W0       = 0.00           	
+K3B      = 0.5537800      	          	
+VSAT     = 1.2313600E+05  	UA       = 9.3385000E-10  	UB       = 8.7038620E-19  	
+UC       = -4.8379430E-11 	RDSW     = 1.2941917E+03  	PRWB     = -3.7754260E-02 	
+PRWG     = -3.0872462E-02 	WR       = 1.2123391      	U0       = 1.2451221E-02  	
+A0       = 0.5109490      	KETA     = -1.2610002E-02 	A1       = 0.00           	
+A2       = 0.4000000      	AGS      = 0.2783000      	B0       = 1.8980900E-07  	
+B1       = 4.7157910E-07  	
+VOFF     = -0.2006746     	NFACTOR  = 2.0000000      	CIT      = -4.5838980E-04 	
+CDSC     = 1.5963858E-03  	CDSCB    = 0.00           	CDSCD    = 3.3960306E-03  	
+ETA0     = 4.0173400E-02  	ETAB     = -2.4490699E-02 	DSUB     = 0.8703098      	
+PCLM     = 1.5312500      	PDIBLC1  = 0.2000000      	PDIBLC2  = 2.4438500E-03  	
+PDIBLCB  = 0.2515152      	DROUT    = 0.5001400      	PSCBE1   = 6.1853930E+08  	
+PSCBE2   = 5.0000000E-05  	PVAG     = -0.7000000     	DELTA    = 1.0000000E-02  	
+ALPHA0   = 0.00           	BETA0    = 30.0000000     	
+KT1      = -0.3281201     	KT2      = -2.5214884E-02 	AT       = 3.3000000E+04  	
+UTE      = -0.6066882     	UA1      = 5.3900000E-09  	UB1      = -8.5040010E-18 	
+UC1      = -1.9939508E-11 	KT1L     = 0.00           	PRT      = 0.00           	
+CJ       = 0.00102        	MJ       = 0.336          	PB       = 0.67           	
+CJSW     = 1.5E-10        	MJSW     = 0.209          	PBSW     = 0.45           	
+CJGATE    = 2.8E-10        	        	
+CTA      = 0.001          	CTP      = 0.0005         	PTA      = 0.00142        	
+PTP      = 0.00156        	JS       = 1.00E-04       	JSW      = 0.00           	
+CGDO     = '3.0E-10+DCGDO_P_LV_33'        	ACM      = 3                   HDIF     = 3.2E-7
+CGSO     = '3.0E-10+DCGSO_P_LV_33'        	CGBO     = 0.0E+00        	CAPMOD   = 2              	
+NQSMOD   = 0              	ELM      = 5              	XPART    = 1              	
+CF       = 1.392E-10           RSH      = 8                    TLEVC    = 1       		
+DWC      = 2.615E-08 

******************************************************************************************
*   1.8V ZERO VT NMOS Model            *
******************************************************************************************
.model N_ZERO_18.1 NMOS
+LEVEL    = 49             	
+LMIN     = 3.2E-7         	LMAX     = 5.0E-5         	WMIN     = 2.5E-7         	
+WMAX     = 1.0E-4         	TNOM     = 27.0           	VERSION  = 3.2            	
+TOX      = '4.20E-09+DTOX_N_ZERO_18'    	XJ       = 1.6000000E-07  	NCH      = 3.8726000E+16  	
+LLN      = 0.2660000      	LWN      = 1.0000000      	WLN      = 0.5922000      	
+WWN      = 0.2000000      	LINT     = '0.00+DLINT_N_ZERO_18'           	LL       = 1.8000001E-11  	
+LW       = 0.00           	LWL      = 2.7500000E-17  	WINT     = '6.71E-08+DWINT_N_ZERO_18'  	
+WL       = -2.3600000E-12 	WW       = -3.2100000E-09 	WWL      = -4.9800000E-14 	
+MOBMOD   = 2              	BINUNIT  = 2              	XL       = 0              	
+XW       = 0              	     	
+DWG      = -4.0064710E-09 	DWB      = -6.4565710E-10 	
+ACM      = 3           	HDIF     = 2.6E-07             	RSH      = 8            	              	
+VTH0     = '-0.292824+DVTH0_N_ZERO_18'     	K1       = 6.0130880E-02  	K2       = 2.8346960E-02  	
+K3       = -1.6878520     	DVT0     = 0.00           	DVT1     = 0.00           	
+DVT2     = 0.5000000      	DVT0W    = -4.2279100E-03 	DVT1W    = 1.2608490E+05  	
+DVT2W    = 5.2103550E-02  	NLX      = 5.5854040E-06  	W0       = 0.00           	
+K3B      = -1.0744520E-03 	          	
+VSAT     = 1.4120500E+05  	UA       = -4.2000000E-10 	UB       = 1.8938191E-18  	
+UC       = -5.2402070E-11 	RDSW     = 99.7997000     	PRWB     = 0.2000000      	
+PRWG     = 0.2000000      	WR       = 0.9784660      	U0       = 3.9795870E-02  	
+A0       = 7.6036300      	KETA     = -8.2927600E-03 	A1       = 0.00           	
+A2       = 0.4950000      	AGS      = 0.6100000      	B0       = 2.2348240E-07  	
+B1       = 6.9381160E-07  	
+VOFF     = -0.5343230     	NFACTOR  = 3.8131400      	CIT      = -4.6958800E-03 	
+CDSC     = 4.0000000E-03  	CDSCB    = 1.0000000E-03  	CDSCD    = 1.0000000E-03  	
+ETA0     = 1.8483700E-03  	ETAB     = 1.9984799E-03  	DSUB     = 0.5600000      	
+PCLM     = 6.0000000      	PDIBLC1  = 0.2000000      	PDIBLC2  = 0.2000000      	
+PDIBLCB  = 0.2777780      	DROUT    = 0.5600000      	PSCBE1   = 6.6815310E+08  	
+PSCBE2   = 1.0000000E-10  	PVAG     = 1.5000000      	DELTA    = 1.0000000E-02  	
+ALPHA0   = 0.00           	BETA0    = 30.0000000     	
+KT1      = -0.3209906     	KT2      = -9.4299780E-02 	AT       = 3.3000000E+04  	
+UTE      = -0.8586437     	UA1      = 3.4515450E-09  	UB1      = -4.2916300E-18 	
+UC1      = -3.2124550E-11 	KT1L     = 0.00           	PRT      = -60.0000000    	
+CJ       = 0.00116        	MJ       = 0.4953         	PB       = 0.9040536      	
+CJSW     = 1.58E-10       	MJSW     = 0.2248         	PHP     = 0.7            	
+CTA      = 0.000908       	CTP      = 0.000714       	PTA      = 0.00156        	
+PTP      = 0.00122        	JS       = 1.00E-04       	JSW      = 0.00           	
+CJGATE    = 2.88E-10       	          	
+CGDO     = '4.0E-10+DCGDO_N_ZERO_18'        	
+CGSO     = '4.0E-10+DCGSO_N_ZERO_18'        	CGBO     = 0.0E+00        	CAPMOD   = 2              	
+NQSMOD   = 0              	ELM      = 5              	XPART    = 1              	
+CF       = 1.533E-10        	TLEVC    = 1   

******************************************************************************************
*         3.3V ZERO VT NMOS Model     *
******************************************************************************************    
.model N_ZERO_33 NMOS
+LEVEL    = 49             	
+LMIN     = 4.5E-7         	LMAX     = 5.05E-5         	WMIN     = 8.0E-7         	
+WMAX     = 1.05E-4         	TNOM     = 27.0           	VERSION  = 3.2            	
+TOX      = '7.50000E-09+DTOX_N_ZERO_33'    	XJ       = 1.6000000E-07  	NCH      = 2.5024000E+16  	
+LLN      = 0.2000000      	LWN      = 1.0000000      	WLN      = 1.0000000      	
+WWN      = 1.0000000      	LINT     = '-2.0600000E-08+DLINT_N_ZERO_33' 	LL       = 5.4366300E-09  	
+LW       = 2.0000000E-14  	LWL      = 0.00           	WINT     = '8.3950000E-08+DWINT_N_ZERO_33'  	
+WL       = 0.00           	WW       = -3.5000000E-14 	WWL      = 0.00           	
+MOBMOD   = 2              	BINUNIT  = 2              	XL       = 0              	
+XW       = 0              	
+DWG      = 0.00           	DWB      = 6.0000000E-09  	
+VTH0     = '6.2318000E-02+DVTH0_N_ZERO_33'  	K1       = 0.2505087      	K2       = 3.0312719E-02  	
+K3       = -3.2163260     	DVT0     = 2.8485200      	DVT1     = 0.9155145      	
+DVT2     = -3.6156200E-02 	DVT0W    = -0.5000000     	DVT1W    = 1.0000000E+06  	
+DVT2W    = -7.2127000E-02 	NLX      = 8.0000000E-08  	W0       = 0.00           	
+K3B      = 1.4614233E-02  	           	
+VSAT     = 1.2112400E+05  	PVSAT    = 3.8005000E-09  	UA       = 6.3300000E-11  	
+UB       = 1.7016443E-18  	WUB      = -2.5050000E-25 	UC       = -9.7855250E-11 	
+RDSW     = 5.6414910E+02  	PRWB     = -8.9352830E-03 	PRWG     = -1.6772246E-02 	
+WR       = 0.9314115      	U0       = 4.3425860E-02  	A0       = 1.5000000      	
+KETA     = -1.8150601E-02 	LKETA    = 1.0005000E-08  	A1       = -8.3286230E-02 	
+A2       = 0.9917943      	AGS      = 0.3115282      	B0       = 0.00           	
+B1       = 0.00           	
+VOFF     = -0.2186260     	NFACTOR  = 1.0579700      	CIT      = -1.2551600E-04 	
+CDSC     = 1.3512136E-03  	CDSCB    = 0.00           	CDSCD    = 0.00           	
+ETA0     = 2.5119600E-03  	ETAB     = 0.00           	DSUB     = 0.2000000      	
+PCLM     = 2.6817601      	PDIBLC1  = 0.2000000      	PDIBLC2  = 1.0000000E-03  	
+PDIBLCB  = 0.2012542      	DROUT    = 0.5600000      	PSCBE1   = 2.5877456E+08  	
+PSCBE2   = 1.7413988E-07  	PVAG     = 1.5000000      	DELTA    = 1.0000000E-02  	
+ALPHA0   = 0.00           	BETA0    = 30.0000000     	
+KT1      = -0.2100000     	KT2      = 2.2000000E-02  	AT       = 3.3000000E+04  	
+UTE      = -0.9198974     	UA1      = 9.9095510E-10  	UB1      = -2.7372970E-18 	
+UC1      = -2.2149076E-11 	KT1L     = 0.00           	PRT      = 3.0000000E+02  	
+CJ       = 0.001757       	MJ       = 0.329          	PB       = 0.689          	
+CJSW     = 1.57E-10       	MJSW     = 0.305          	PHP     = 1.25           	
+CTA      = 0.00517        	CTP      = 0.00074        	PTA      = -0.00591       	
+PTP      = 0.00482        	JS       = 1.00E-04       	JSW      = 0.00           	
+CGDO     = '1.0E-10+DCGDO_N_ZERO_33'        	CJGATE   = 2.04E-10
+CGSO     = '1.0E-10+DCGSO_N_ZERO_33'        	CGBO     = 0.0          	CAPMOD   = 2              	
+NQSMOD   = 0              	ELM      = 5              	XPART    = 1              	
+CF       = 1.362E-10          	
+DWC      = 8.395E-08      	TLEVC    = 1             	
+ACM      = 3                  HDIF     = 3.2E-7               RSH      = 8   

 
.ENDL MOS_18

.LIB BJT
******************************************************************************************
*                  0.18um MIXED MODE Vertical PNP Model            *
******************************************************************************************
.model PNP_V50X50 PNP
+LEVEL  = 1                  
+ IS = 5.65E-18 	BF = 1.38 	      	NF = 1.054 
+ VAF = 788 		IKF = 0.0021 		ISE = 1E-20 
+ NE = 1.049 		BR = 0.000135 		NR = 1.02 
+ VAR = 55 	      	IKR = 0.0021 		ISC = 1.05E-12 
+ NC = 1.45 		RB = 268 	      	IRB = 2.3E-05 
+ RBM = 59.48 		RE = 0.001 	      	RC = 0.22 
+ TLEVC = 1 		XTB = 1.48 	      	EG = 1.27 
+ XTI = 2.38 		TRB1 = 0.0038 		CJE = 2.85E-14 
+ VJE = 0.762 		MJE = 0.405 		CJC = 2.81E-14 
+ VJC = 0.458 		MJC = 0.75 	          	FC = 0.5
+ TRM1= 0.0035           
*                                                          


******************************************************************************************
*                  0.18um MIXED MODE Vertical PNP Model             *
******************************************************************************************
.model PNP_V100X100 PNP
+LEVEL  = 1                  
+ IS = 2.8E-17 	      BF = 1.37 			NF = 1.056 
+ VAF = 785 		IKF = 0.005 		ISE = 1.2E-18 
+ NE = 1.049 		BR = 0.00063 		NR = 1.06 
+ VAR = 55 		      IKR = 0.027 		ISC = 1.95E-12 
+ NC = 1.44 		RB = 66.4 		      IRB = 1E-06 
+ RBM = 59.48 		RE = 0.001 		      RC = 0.22 
+ TLEVC = 1 		XTB = 1.298 		EG = 1.27 
+ XTI = 1.98 		TRB1 = 0.004 		TRE1 = 0.001 
+ CJE = 1.24E-13   	VJE = 0.762 		MJE = 0.395 
+ CJC = 4.81E-14 	      VJC = 0.458 		MJC = 0.75 
+ FC = 0.5                    TRM1 = 0.004 

.ENDL BJT

.LIB Diode
*******************************************************************************************
*                          0.18um MIXEDMODE N+/PWELL Diode Model                         *
******************************************************************************************
.model DN D
+ LEVEL = 3 		AREA = 8E-09 		PJ = 0.00035 
+ IS = 2.92E-07 	      JSW = 3.33E-13 		N = 1.03 
+ RS = 4E-08 		IK = 2.35E+04 		IKR = 1230 
+ BV = 9.22 		IBV = 1E-3		      TREF = 27 
+ TLEV = 1 		      EG = 1.2	      	XTI = 3.0 
+ TRS = 1E-06 		CJ = 0.00119 		MJ = 0.515
+ CTP = 0.000914        TPHP      = 0.000924
+ CTA = 0.000919        TPB      = 0.00158 
+ PB = 0.79 		CJSW = 1.6E-10 		MJSW = 0.381 
+ PHP = 0.705           TLEVC = 1

******************************************************************************************
*                          0.18um MIXEDMODE P+/NWELL Diode Model                         *
******************************************************************************************
.model DP D
+ LEVEL = 3 		AREA = 8E-09 		PJ = 0.00035 
+ IS = 1.27E-07      	JSW = 2.2E-13 		N = 1.01 
+ RS = 3.25E-08 	IK = 3.65E+04 		IKR = 1270 
+ BV = 9.21 		IBV = 1E-3 		TREF = 27 
+ TLEV = 1 		      EG = 1.27 		XTI = 3 
+ TRS = 0.00049 	      CJ = 0.00114 		MJ = 0.395
+ CTA  = 0.001              CTP      = 7.53E-04         TPB      = 1.55E-03
+ TPHP  = 1.24E-03 
+ PB = 0.762 		CJSW = 1.74E-10 	MJSW = 0.324 
+ PHP = 0.665           TLEVC = 1
*
.ENDL Diode

.LIB RES

**************************************************************************************************************** 
*             Non Salicide N+ poly resistor subcircuit netlist for typical case                                * 
**************************************************************************************************************** 
.subckt rnnpo n2 n1 pw
.param rend='17e-6+drend_rnnpo'  rs='113+drs_rnnpo'  dw='-0.097e-6+ddw_rnnpo'  
.param vcr1=-0.00376e-6  vcr2=-0.08474e-12  tc1=-1.6e-4  tc2=4.18e-7  temp= 'temper'  wr=1  lr=1
.param tcoef = '1.0+tc1*(temp-25.0)+tc2*pow((temp-25.0),2)'  
+ca   = 9.0755E-5

C1 pw n1 'ca*(wr+dw)*lr/2'
R1 n2 n1 '((2*rend/(wr+dw))+(rs*lr/(wr+dw)))*(1.0+vcr1*abs(v(n1,n2)/lr)+vcr2*pow(abs(v(n1,n2))/lr,2))*tcoef'
C2 pw n2 'ca*(wr+dw)*lr/2'  

.ends rnnpo


****************************************************************************************************************  
*             Non salicide P+ poly resistor subcircuit netlist for typical case                                * 
**************************************************************************************************************** 
.subckt rnppo n2 n1 nw
.param rend='105e-6+drend_rnppo' rs='352+drs_rnppo' dw='-0.046e-6+ddw_rnppo' 
.param vcr1=-0.0106e-6   vcr2=-0.205e-12  tc1=-2.84e-4  tc2=3e-7  temp= 'temper'  wr=1  lr=1
.param tcoef = '1.0+tc1*(temp-25.0)+tc2*pow((temp-25.0),2)'    
+ca   = 9.0755E-5

C1 n1 nw 'ca*(wr+dw)*lr/2'
R1 n2 n1 '((2*rend/(wr+dw))+(rs*lr/(wr+dw)))*(1.0+vcr1*abs(v(n1,n2)/lr)+vcr2*pow(abs(v(n1,n2))/lr,2))*tcoef'
C2 n2 nw 'ca*(wr+dw)*lr/2'  

.ends rnppo


****************************************************************************************************************  
*             Non salicide HR poly resistor subcircuit netlist for typical case                                * 
**************************************************************************************************************** 
.subckt rnhr1000 n2 n1 nw 
.param rend='120e-6+drend_rnhr1000' rs='1039+drs_rnhr1000' dw='-0.043e-6+ddw_rnhr1000'
.param vcr1=-0.035e-6   vcr2=-0.25e-12  tc1=-8.34e-4  tc2=1.3e-6  temp= 'temper'  wr=1  lr=1
.param tcoef = '1.0+tc1*(temp-25.0)+tc2*pow((temp-25.0),2)'    
+ca   = 9.0755E-5

C1 n1 nw 'ca*(wr+dw)*lr/2'
R1 n2 n1 '((2*rend/(wr+dw))+(rs*(lr-0.4e-6)/(wr+dw)))*(1.0+vcr1*abs(v(n1,n2)/lr)+vcr2*pow(abs(v(n1,n2))/lr,2))*tcoef'
C2 n2 nw 'ca*(wr+dw)*lr/2'

.ends rnhr1000

.ENDL RES

.LIB CAP
*
*     #########################################
*     #                                       #
*     #  0.18um RFCMOS MIM_SH HSPICE MODEL    #
*     #                                       #  
*     #########################################
*
.SUBCKT MIMCAPS 1 2 nx=1 ny=1 l=20e-6 w=20e-6 

**********************************************
.PARAM dt='temper-25'
.PARAM leb='ny*(l+1.7e-6)+4.3e-6'        
.PARAM wb='nx*(w+1.7e-6)+4.3e-6'
.PARAM cn='0.001'
.PARAM cox='5.4478e-6'
.PARAM n='nx*ny'
.PARAM cs='n*(l*w*cn+1.5e-10*(l+w))*(1+3e-5*dt+1e-8*dt*dt)'
.PARAM cox1='(leb*wb*cox+3.382e-11*(leb+wb))/2'
.PARAM cox2= 'cox1'
.PARAM rs='2.0667e-2*leb/wb'
.PARAM k='wb/(wb+2*(1e-4-wb/2-3.25e-5))'
.PARAM k1='sqrt(1-k*k)'
.PARAM F='1/(log(2*(1+sqrt(k1))/(1-sqrt(k1))))'
.PARAM ls='1e-7*leb/F*(0.0074*(leb/wb)+0.2399+0.7363/(leb/wb))'
* --------- Equivalent network -------------------
*
C 1 11 'cs*(1.0027-0.0002*v(2,1)+3e-5*v(2,1)*v(2,1))'
L 11 12 ls
R 12 2 rs
*C1 11 999 cox1
*C2 2 999 cox2
*
.ENDS
.ENDL CAP


*     ############################################
*     #                                          #
*     #  018RFCMOS CIRCULAR INDUCTOR HSPICE MODEL#
*     #                                          #  
*     ############################################
*
* //////PORT 1 connects to top metal (M6)//////////////
* //////PORT 2 connects to underpasss metal (M5)///////
* //////The node 999 connects to ground////////////////
*
.SUBCKT L_SLCR20K_RF 1 2 999 D=148u N=5.5 W=6u
*
*
.PARAM D_um='(D/2)*1e6'
.PARAM W_um='W*1e6'
.PARAM S_um='2'
.PARAM T_um='2'
*
*
*
.PARAM L_spiral='0.5*(N*3.24159*(2*(2*D_um+W_um)+(2*N-1)*(W_um+S_um)))+(N+0.5)*(W_um+S_um)'
.PARAM d_plus='(W_um+S_um)*(3*N-2*(N-0.5)-1)*(N+0.5)/(3*(2*N-N-0.5))'
.PARAM p_lsef='log(2*L_spiral/(W_um+T_um))-0.2'
.PARAM p_M_neg='0.4418*N'
.PARAM p_M_d1='log(sqrt(1+(L_spiral/(4*N*d_plus))*(L_spiral/(4*N*d_plus)))+L_spiral/(4*N*d_plus))'
.PARAM p_M_d2='sqrt(1+(4*N*d_plus/L_spiral)*(4*N*d_plus/L_spiral))-4*N*d_plus/L_spiral'
.PARAM p_ls='(2*L_spiral*(p_lsef-p_M_neg+0.97*(N-1)*(p_M_d1-p_M_d2))+2923-3700*n+507*n*n)*1e-13'
.PARAM p_rs='1+0.02*(L_spiral/W_um)+N*(0.34-0.0002273*L_spiral)'
.PARAM p_cp='(0.0402*(N-0.5)*W_um*W_um)*1e-15'
.PARAM p_cox='(0.0019725*(2*L_spiral*W_um+3.24159*W_um*W_um))*1e-15'
.PARAM p_csub1='((0.24+0.098*N)*D_um)*1e-15'
.PARAM p_csub2='((0.2205+0.055*N)*D_um)*1e-15'
.PARAM p_rsub1='530+49153/(D_um*N)'
.PARAM p_rsub2='680+55465/(D_um*N)'
*
* --------- Equivalent network -------------------
*
Rs 1 777 p_rs
Ls 2 777 p_ls
Cp 1 2 p_Cp
Cox1 1 771 p_Cox
Cox2 2 881 p_Cox
Rsub1 771 999 p_rsub1
Rsub2 881 999 p_rsub2
Csub1 771 999 p_csub1
Csub2 881 999 p_csub2 
.ENDS
*
