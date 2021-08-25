#########################################################################
#               Laker technology file {TCL format}                      #
#               Version : 2016.12-3                                     #
#########################################################################
#
#
#**************************************
#    layoutView system unit            
#**************************************
tfLayoutSystemUnit {
  userUnit		micron
  dbScale		0.001000
  dbResolution		0.005000
  xGridSpacing		0.005000
  yGridSpacing		0.005000
  majorGridRatio	2
  gridType		Dot
}
#
#*****************************************************
#    Definition of purpose name and purpose number    
#*****************************************************
#               Purpose         Purpose               
#               Name            No.                   
#-----------------------------------------------------
tfSystemPurpose {
    # System default definition purpose : boundary,pin,drawing,net
    # User can define purpose between 1 and 239.
  def { drawing1    1   }
  def { drawing2    2   }
  def { drawing3    3   }
  def { drawing4    4   }
  def { drawing5    5   }
  def { drawing6    6   }
  def { drawing7    7   }
  def { drawing8    8   }
  def { drawing9    9   }
  def { drawing10   10  }
  def { drawing12   12  }
  def { drawing13   13  }
  def { drawing14   14  }
  def { drawing15   15  }
  def { drawing16   16  }
  def { drawing17   17  }
  def { drawing20   20  }
  def { drawing21   21  }
  def { drawing26   26  }
  def { drawing27   27  }
  def { drawing28   28  }
  def { drawing29   29  }
  def { drawing30   30  }
  def { drawing33   33  }
  def { drawing34   34  }
  def { drawing36   36  }
  def { drawing72   72  }
  def { drawing100  100 }
  def { drawing101  101 }
  def { drawing102  102 }
  def { drawing103  103 }
  def { drawing104  104 }
}
#
#***********************************************************************************************
#    layoutView layer table                                                                     
#***********************************************************************************************
#       Layer                   Layer Fill      Fill      Line      Line              Layer
#       Name        Purpose     No    Color     Stipple   Color     Style     Vis Sel Table
#-----------------------------------------------------------------------------------------------
tfLayoutLayerTable {
  def { ref         drawing     0     white     blank     white     solid     yes yes no  }
  def { DIFF        drawing     1     red       backSlash red       solid     yes yes yes }
  def { DIFFRAM     drawing26   1     red       backSlash red       shortdash2h3 yes yes no  }
  def { PWEL        drawing     2     cream     blank     cream     shortDash yes yes no  }
  def { NW          drawing     3     yellow    blank     yellow    mLine     yes yes yes }
  def { DNW         drawing     6     tan       blank     tan       mLine     yes yes yes }
  def { PWBLK       drawing     7     red       blank     red       dashed2h1 yes yes yes }
  def { DNW2        drawing     4     tan       blank     tan       dashed    yes yes no  }
  def { BPW         drawing     5     tan       dots2     tan       solid     yes yes no  }
  def { VTP-SP      drawing     9     tan       blank     tan       shortDash yes yes no  }
  def { VTN-SP      drawing     10    tan       dot1      tan       mLine     yes yes no  }
  def { PIMP        drawing     11    magenta   blank     magenta   solid     yes yes yes }
  def { NIMP        drawing     12    gray      blank     gray      solid     yes yes yes }
  def { NPLUSRAM    drawing26   12    gray      blank     gray      shortdash2h3 yes yes no  }
  def { VTP         drawing     13    tan       blank     tan       shortDash yes yes no  }
  def { VTN         drawing     14    tan       dot1      tan       mLine     yes yes no  }
  def { VTPH        drawing     15    yellow    blank     yellow    shortDash yes yes no  }
  def { VTNH        drawing     16    green     blank     green     mLine     yes yes no  }
  def { PMINUS      drawing     17    magenta   blank     magenta   dashed    yes yes no  }
  def { NMINUS      drawing     18    gray      blank     gray      dashed    yes yes no  }
  def { LVT         drawing     19    blue      blank     blue      mLine     yes yes no  }
  def { VTPL        drawing     20    gray      blank     gray      mLine     yes yes yes }
  def { VTPHL       drawing     21    yellow    blank     yellow    lineStyle1 yes yes yes }
  def { VTNL        drawing     22    blue      blank     blue      dashed3h2 yes yes yes }
  def { VTNI        drawing     23    tan       blank     tan       shortDash yes yes yes }
  def { VTNHL       drawing     24    tan       blank     tan       mLine     yes yes yes }
  def { CELL_VTN    drawing     25    red       blank     red       mLine     yes yes no  }
  def { C-CELL_BLOCK drawing72   25    orange    blank     orange    mLine     yes yes no  }
  def { VTNHI       drawing     26    white     blank     white     solid     yes yes no  }
  def { RESISTOR    drawing     27    white     blank     white     solid     yes yes no  }
  def { VTNHH       drawing     28    tan       blank     tan       solid     yes yes no  }
  def { NPOLY       drawing     29    blue      pplusp    blue      thickLine yes yes no  }
  def { ESD         drawing     31    yellow    blank     yellow    dashDot   yes yes no  }
  def { PESD        drawing     32    white     dot2      white     solid     yes yes no  }
  def { CELLEX      drawing     33    yellow    blank     yellow    doubleDash yes yes no  }
  def { DT          drawing     34    yellow    blank     yellow    lineStyle1 yes yes no  }
  def { MG          drawing     35    yellow    blank     yellow    dashed3h2 yes yes no  }
  def { SAB         drawing     36    forest    pplusp    forest    solid     yes yes yes }
  def { OD2         drawing     37    winColor2 dagger    winColor1 thickLine yes yes yes }
  def { HRP         drawing     38    yellow    blank     yellow    lineStyle3 yes yes yes }
  def { CONT        drawing     39    green     x         green     mLine     yes yes yes }
  def { CONTBAR     drawing3    39    green     x         green     dashed3h2 yes yes no  }
  def { NWR         drawing     40    orange    blank     orange    solid     yes yes yes }
  def { PO1         drawing     41    blue      cross     blue      thickLine yes yes yes }
  def { PO1BAR      drawing3    41    blue      cross     blue      dashed3h3 yes yes no  }
  def { POLYRAM     drawing26   41    blue      cross     blue      shortdash2h3 yes yes no  }
  def { VARACT      drawing     43    color3    wellp     color3    dashed2h1 yes yes yes }
  def { LIL         drawing     42    yellow    blank     yellow    hidden    yes yes no  }
  def { ME1         drawing     46    cyan      slash     cyan      solid     yes yes yes }
  def { VIA1        drawing     47    yellow    x         yellow    mLine     yes yes yes }
  def { VI1BAR      drawing3    47    yellow    x         yellow    dashed3h2 yes yes no  }
  def { ME2         drawing     48    gold      backSlash gold      solid     yes yes yes }
  def { VIA2        drawing     49    yellow    hLine     yellow    mLine     yes yes yes }
  def { VI2BAR      drawing3    49    yellow    hLine     yellow    dashed3h2 yes yes no  }
  def { ME3         drawing     50    forest    hZigZag   forest    solid     yes yes yes }
  def { VIA3        drawing     51    purple    vLine     purple    mLine     yes yes yes }
  def { VI3BAR      drawing3    51    purple    vLine     purple    dashed3h2 yes yes no  }
  def { ME4         drawing     52    slate     pat1      slate     solid     yes yes yes }
  def { VIA4        drawing     53    lime      triangle  lime      mLine     yes yes yes }
  def { VI4BAR      drawing3    53    lime      triangle  lime      dashed3h2 yes yes no  }
  def { ME5         drawing     54    winColor3 dot3      winColor3 solid     yes yes yes }
  def { VIA5        drawing     55    brown     checker   brown     mLine     yes yes yes }
  def { VI5BAR      drawing3    55    brown     checker   brown     dashed3h2 yes yes no  }
  def { ME6         drawing     56    tan       gnd2S     tan       solid     yes yes yes }
  def { VI6         drawing     57    brown     checker   brown     mLine     yes yes no  }
  def { VI6BAR      drawing3    57    brown     checker   brown     dashed3h2 yes yes no  }
  def { ME7         drawing     58    violet    dot3      violet    solid     yes yes no  }
  def { VI7         drawing     59    cream     checker   cream     mLine     yes yes no  }
  def { VI7BAR      drawing3    59    cream     checker   cream     dashed3h2 yes yes no  }
  def { ME8         drawing     60    color2    gnd2S     color2    solid     yes yes no  }
  def { VI8         drawing     61    cream     checker   cream     mLine     yes yes no  }
  def { VI8BAR      drawing3    61    cream     checker   cream     dashed3h2 yes yes no  }
  def { MMCBP       drawing     64    cyan      vCurb     cyan      solid     yes yes no  }
  def { CTM         drawing     65    pink      hCurb     pink      solid     yes yes yes }
  def { PAD         drawing     66    orange    bigX      orange    solid     yes yes yes }
  def { L2          drawing     67    orange    dots      orange    mLine     yes yes no  }
  def { L3          drawing     68    orange    dots      orange    dashed    yes yes no  }
  def { L4          drawing     69    orange    dots      orange    dashed3h2 yes yes no  }
  def { WL_Well     drawing26   6     orange    bigX      orange    solid     yes yes no  }
  def { ODI-VTP     drawing26   17    purple    dots      purple    mLine     yes yes no  }
  def { ODI-VTN     drawing26   18    forest    dots      forest    dashed    yes yes no  }
  def { OD          drawing29   6     maroon    dots      maroon    dashed3h2 yes yes no  }
  def { IVIABAR     drawing104  59    orange    dots      orange    dashed3h2 yes yes no  }
  def { M1SLMK      drawing7    72    cyan      x         cyan      mLine     yes yes no  }
  def { M2SLMK      drawing7    73    gold      x         gold      mLine     yes yes no  }
  def { M3SLMK      drawing7    74    forest    x         forest    mLine     yes yes no  }
  def { M4SLMK      drawing7    75    slate     x         slate     mLine     yes yes no  }
  def { M5SLMK      drawing7    76    winColor3 x         winColor3 solid     yes yes no  }
  def { M6SLMK      drawing7    77    tan       x         tan       solid     yes yes no  }
  def { M7SLMK      drawing7    78    tan       x         tan       solid     yes yes no  }
  def { L2SLMK      drawing7    67    orange    x         orange    solid     yes yes no  }
  def { PO_LVS      drawing10   41    blue      grid      blue      thickLine yes yes no  }
  def { L1_MCAP     drawing12   66    orange    blank     orange    shortdash1h2 yes yes no  }
  def { L1_ROUT     drawing13   66    orange    dots2     orange    dashed2h1 yes yes no  }
  def { PPO_R_BLK   drawing     44    violet    wellp     violet    dashed2h1 yes yes no  }
  def { DEV_SP      drawing16   9     chocolate metal2S   chocolate dashed2h1 yes yes no  }
  def { RSYMBOL     drawing     81    tan       pplusp    tan       solid     yes yes yes }
  def { PSYMBOL     drawing     82    lime      pplusp    lime      solid     yes yes yes }
  def { WSYMBOL     drawing     83    silver    pplusp    silver    solid     yes yes yes }
  def { TEXT        drawing     85    white     blank     white     solid     yes yes no  }
  def { MSL         drawing     86    color5    pplusp    color5    solid     yes yes no  }
  def { IOMARK      drawing     87    color5    vcc2S     color5    solid     yes yes no  }
  def { FUSEMARK    drawing     88    green     vcc2S     green     dashed    yes yes no  }
  def { FLPMARK     drawing     89    green     vcc2S     green     solid     yes yes no  }
  def { PADMARK     drawing     90    gray      vcc2S     gray      solid     yes yes no  }
  def { IOID        drawing     91    white     metal1S   white     solid     yes yes no  }
  def { ROMID       drawing     93    white     metal1S   white     dots      yes yes no  }
  def { DPID        drawing     94    white     metal1S   white     shortDash yes yes no  }
  def { BLSPID      drawing     95    white     metal1S   white     hidden    yes yes no  }
  def { IRAM        drawing     97    white     metal1S   white     shortdash1h2 yes yes no  }
  def { BDSPID      drawing     98    white     metal1S   white     dashDot   yes yes no  }
  def { PO_TEXT     drawing     100   blue      blank     blue      thickLine yes yes yes }
  def { M1_TEXT     drawing     101   cyan      blank     cyan      solid     yes yes yes }
  def { M2_TEXT     drawing     102   gold      blank     gold      solid     yes yes yes }
  def { M3_TEXT     drawing     103   forest    blank     forest    solid     yes yes yes }
  def { M4_TEXT     drawing     104   slate     blank     slate     solid     yes yes yes }
  def { M5_TEXT     drawing     105   winColor3 blank     winColor3 solid     yes yes yes }
  def { M6_TEXT     drawing     106   tan       blank     tan       solid     yes yes yes }
  def { M7_TEXT     drawing     107   violet    blank     violet    solid     yes yes no  }
  def { INDDUMMYID  drawing5    117   color2    blank     color2    solid     yes yes no  }
  def { ACL         drawing     120   gold      gnd2S     gold      dashed1h1 yes yes no  }
  def { PHL         drawing     121   gold      gnd2S     gold      solid     yes yes no  }
  def { XDIODE      drawing     96    winColor1 poly2p    winColor1 solid     yes yes no  }
  def { MRSDUMMY    drawing30   111   winBack   poly2p    winBack   solid     yes yes yes }
  def { MIMDUMMY    drawing30   112   color5    poly2p    color5    solid     yes yes yes }
  def { BJTDUMMY    drawing30   113   color4    poly2p    color4    solid     yes yes yes }
  def { DioDUMMY    drawing30   114   color2    poly2p    color2    solid     yes yes yes }
  def { INDDUMMYID  drawing     108   color2    blank     color2    solid     yes yes yes }
  def { INDDUMMYLL  drawing30   117   color1    poly2p    color1    solid     yes yes yes }
  def { MMSYMBOL    drawing30   118   winColor5 poly2p    winColor5 solid     yes yes no  }
  def { RFSYMBOL    drawing30   119   gold      poly2p    gold      solid     yes yes no  }
  def { SIZE1       drawing33   111   blue      contp     blue      solid     yes yes no  }
  def { SIZE2       drawing33   112   blue      contp     blue      dots      yes yes no  }
  def { SIZE3       drawing33   113   blue      contp     blue      shortDash yes yes no  }
  def { SIZE4       drawing33   114   blue      contp     blue      hidden    yes yes no  }
  def { SIZE5       drawing33   115   blue      contp     blue      thickLine yes yes no  }
  def { SIZE6       drawing33   116   blue      contp     blue      lineStyle3 yes yes no  }
  def { SIZE7       drawing33   117   blue      contp     blue      dashed2h1 yes yes no  }
  def { SIZE8       drawing33   118   blue      contp     blue      dashed3h3 yes yes no  }
  def { SIZE9       drawing33   119   blue      contp     blue      shortdash1h2 yes yes no  }
  def { SIZE10      drawing34   111   blue      contp     blue      longdash0h2 yes yes no  }
  def { SIZE11      drawing34   112   blue      contp     blue      longdash2h1 yes yes no  }
  def { SIZE12      drawing34   113   blue      contp     blue      dashed    yes yes no  }
  def { SIZE13      drawing34   114   blue      contp     blue      shortdash1h2 yes yes no  }
  def { SIZE14      drawing34   115   blue      contp     blue      longdash0h2 yes yes no  }
  def { SIZE15      drawing34   116   blue      contp     blue      longdash2h1 yes yes no  }
  def { SIZE16      drawing34   117   blue      contp     blue      dashed    yes yes no  }
  def { DIFDMBK     drawing1    70    red       grid      red       solid     yes yes no  }
  def { PLYDMBK     drawing1    71    blue      grid      blue      solid     yes yes no  }
  def { M1DMBK      drawing1    72    cyan      grid      cyan      solid     yes yes no  }
  def { M2DMBK      drawing1    73    gold      grid      gold      solid     yes yes no  }
  def { M3DMBK      drawing1    74    forest    grid      forest    solid     yes yes no  }
  def { M4DMBK      drawing1    75    slate     grid      slate     solid     yes yes no  }
  def { M5DMBK      drawing1    76    winColor3 grid      winColor3 solid     yes yes no  }
  def { M6DMBK      drawing1    77    tan       grid      tan       solid     yes yes no  }
  def { M7DMBK      drawing1    78    violet    grid      violet    solid     yes yes no  }
  def { M8DMBK      drawing1    79    color2    grid      color2    solid     yes yes no  }
  def { M9DMBK      drawing1    80    color2    grid      color2    solid     yes yes no  }
  def { DTDMBK      drawing1    34    violet    grid      violet    solid     yes yes no  }
  def { INDDMBK     drawing100  80    color2    grid      color2    solid     yes yes no  }
  def { M1SLBK      drawing2    72    cyan      vCurb     cyan      solid     yes yes no  }
  def { M2SLBK      drawing2    73    gold      vCurb     gold      solid     yes yes no  }
  def { M3SLBK      drawing2    74    forest    vCurb     forest    solid     yes yes no  }
  def { M4SLBK      drawing2    75    slate     vCurb     slate     solid     yes yes no  }
  def { M5SLBK      drawing2    76    winColor3 vCurb     winColor3 solid     yes yes no  }
  def { M6SLBK      drawing2    77    tan       vCurb     tan       solid     yes yes no  }
  def { M7SLBK      drawing2    78    violet    vCurb     violet    solid     yes yes no  }
  def { M8SLBK      drawing2    79    color2    grid      color2    solid     yes yes no  }
  def { M9SLBK      drawing2    80    color2    grid      color2    solid     yes yes no  }
  def { INDSLBK     drawing101  80    color2    grid      color2    solid     yes yes no  }
  def { DIFFDUMY    drawing8    70    red       hCurb     red       solid     yes yes no  }
  def { PO1DUMY     drawing8    71    blue      hCurb     blue      solid     yes yes no  }
  def { M1DUMY      drawing8    72    cyan      hCurb     cyan      solid     yes yes no  }
  def { M2DUMY      drawing8    73    gold      hCurb     gold      solid     yes yes no  }
  def { M3DUMY      drawing8    74    forest    hCurb     forest    solid     yes yes no  }
  def { M4DUMY      drawing8    75    slate     hCurb     slate     solid     yes yes no  }
  def { M5DUMY      drawing8    76    winColor3 hCurb     winColor3 solid     yes yes no  }
  def { M6DUMY      drawing8    77    tan       hCurb     tan       solid     yes yes no  }
  def { M7DUMY      drawing8    78    violet    hCurb     violet    solid     yes yes no  }
  def { M8DUMY      drawing8    79    color2    hCurb     color2    solid     yes yes no  }
  def { M9DUMY      drawing8    80    color2    hCurb     color2    solid     yes yes no  }
  def { INDDUMY     drawing102  80    color2    grid      color2    solid     yes yes no  }
  def { M1SLOT      drawing9    72    cyan      dot1      cyan      solid     yes yes no  }
  def { M2SLOT      drawing9    73    gold      dot1      gold      solid     yes yes no  }
  def { M3SLOT      drawing9    74    forest    dot1      forest    solid     yes yes no  }
  def { M4SLOT      drawing9    75    slate     dot1      slate     solid     yes yes no  }
  def { M5SLOT      drawing9    76    winColor3 dot1      winColor3 solid     yes yes no  }
  def { M6SLOT      drawing9    77    tan       dot1      tan       solid     yes yes no  }
  def { M7SLOT      drawing9    78    violet    dot1      violet    solid     yes yes no  }
  def { M8SLOT      drawing9    79    color2    dot1      color2    solid     yes yes no  }
  def { M9SLOT      drawing9    80    color2    dot1      color2    solid     yes yes no  }
  def { L2SOLT      drawing9    67    orange    dot1      orange    solid     yes yes no  }
  def { INDSLOT     drawing103  80    color2    grid      color2    solid     yes yes no  }
  def { XOPCD       drawing     70    white     blank     white     solid     yes yes no  }
  def { XOPCP       drawing     71    white     blank     white     solid     yes yes no  }
  def { XOPCM1      drawing     72    white     blank     white     solid     yes yes no  }
  def { XOPCM2      drawing     73    white     blank     white     solid     yes yes no  }
  def { XOPCM3      drawing     74    white     blank     white     solid     yes yes no  }
  def { XOPCM4      drawing     75    white     blank     white     solid     yes yes no  }
  def { XOPCM5      drawing     76    white     blank     white     solid     yes yes no  }
  def { XOPCM6      drawing     77    white     blank     white     solid     yes yes no  }
  def { XOPCM7      drawing     78    white     blank     white     solid     yes yes no  }
  def { XOPCC       drawing     80    white     blank     white     solid     yes yes no  }
  def { XOPCD228    drawing4    70    white     blank     white     solid     yes yes no  }
  def { XOPCP228    drawing4    71    white     blank     white     solid     yes yes no  }
  def { XOPCM1228   drawing4    72    white     blank     white     solid     yes yes no  }
  def { XOPCC228    drawing4    80    white     blank     white     solid     yes yes no  }
  def { XOPCD302    drawing5    70    white     blank     white     solid     yes yes no  }
  def { XOPCP302    drawing5    71    white     blank     white     solid     yes yes no  }
  def { XOPCM1302   drawing5    72    white     blank     white     solid     yes yes no  }
  def { XOPCC302    drawing5    80    white     blank     white     solid     yes yes no  }
  def { XOPCDDP     drawing6    70    white     blank     white     solid     yes yes no  }
  def { XOPCPDP     drawing6    71    white     blank     white     solid     yes yes no  }
  def { XOPCM1DP    drawing6    72    white     blank     white     solid     yes yes no  }
  def { XOPCCDP     drawing6    80    white     blank     white     solid     yes yes no  }
  def { XOPCD2496   drawing14   70    white     blank     white     solid     yes yes no  }
  def { XOPCP2496   drawing14   71    white     blank     white     solid     yes yes no  }
  def { XOPCM12496  drawing14   72    white     blank     white     solid     yes yes no  }
  def { XOPCC2496   drawing14   80    white     blank     white     solid     yes yes no  }
  def { XOPCD228LL  drawing27   70    white     blank     white     solid     yes yes no  }
  def { XOPCP228LL  drawing27   71    white     blank     white     solid     yes yes no  }
  def { XOPCM1228LL drawing27   72    white     blank     white     solid     yes yes no  }
  def { XOPCC228LL  drawing27   80    white     blank     white     solid     yes yes no  }
  def { XOPCDDPLL   drawing28   70    white     blank     white     solid     yes yes no  }
  def { XOPCPDPLL   drawing28   71    white     blank     white     solid     yes yes no  }
  def { XOPCM1DPLL  drawing28   72    white     blank     white     solid     yes yes no  }
  def { XOPCCDPLL   drawing28   80    white     blank     white     solid     yes yes no  }
  def { XOPCD121    drawing15   70    white     blank     white     solid     yes yes no  }
  def { XOPCP121    drawing15   71    white     blank     white     solid     yes yes no  }
  def { XOPCM1121   drawing15   72    white     blank     white     solid     yes yes no  }
  def { XOPCC121    drawing15   80    white     blank     white     solid     yes yes no  }
  def { XOPCD126LL  drawing16   70    white     blank     white     solid     yes yes no  }
  def { XOPCP126LL  drawing16   71    white     blank     white     solid     yes yes no  }
  def { XOPCM1126LL drawing16   72    white     blank     white     solid     yes yes no  }
  def { XOPCC126LL  drawing16   80    white     blank     white     solid     yes yes no  }
  def { XOPCD126HS  drawing17   70    white     blank     white     solid     yes yes no  }
  def { XOPCP126HS  drawing17   71    white     blank     white     solid     yes yes no  }
  def { XOPCM1126HS drawing17   72    white     blank     white     solid     yes yes no  }
  def { XOPCC126HS  drawing17   80    white     blank     white     solid     yes yes no  }
  def { ME1         blockage    46    cyan      grid      cyan      dashed3h2 yes yes no  }
  def { ME2         blockage    48    gold      grid      gold      dashed3h2 yes yes no  }
  def { ME3         blockage    50    forest    grid      forest    dashed3h2 yes yes no  }
  def { ME4         blockage    52    slate     grid      slate     dashed3h2 yes yes no  }
  def { ME5         blockage    54    winColor3 grid      winColor3 dashed3h2 yes yes no  }
  def { ME6         blockage    56    tan       grid      tan       dashed3h2 yes yes no  }
  def { BULK        substrate   200   white     blank     white     solid     no  no  no  }
}
#
#*******************************************************************
#    Stream Table                                                   
#*******************************************************************
#       Layer        Purpose     Stream      Data      Stream       
#       Name         Name        Number      Type      Available    
#-------------------------------------------------------------------
tfStreamIoTable {
  def { ref          drawing     0           0           no  }
  def { DIFF         drawing     1           0           yes }
  def { DIFFRAM      drawing26   1           26          no  }
  def { PWEL         drawing     2           0           no  }
  def { NW           drawing     3           0           yes }
  def { DNW          drawing     6           0           yes }
  def { PWBLK        drawing     7           0           yes }
  def { DNW2         drawing     4           0           yes }
  def { BPW          drawing     5           0           yes }
  def { VTP-SP       drawing     9           0           no  }
  def { VTN-SP       drawing     10          0           no  }
  def { PIMP         drawing     11          0           yes }
  def { NIMP         drawing     12          0           yes }
  def { NPLUSRAM     drawing26   12          26          no  }
  def { VTP          drawing     13          0           no  }
  def { VTN          drawing     14          0           no  }
  def { VTPH         drawing     15          0           no  }
  def { VTNH         drawing     16          0           no  }
  def { PMINUS       drawing     17          0           yes }
  def { NMINUS       drawing     18          0           yes }
  def { LVT          drawing     19          0           yes }
  def { VTPL         drawing     20          0           yes }
  def { VTPHL        drawing     21          0           yes }
  def { VTNL         drawing     22          0           yes }
  def { VTNI         drawing     23          0           yes }
  def { VTNHL        drawing     24          0           yes }
  def { CELL_VTN     drawing     25          0           yes }
  def { C-CELL_BLOCK  drawing72   25          72          yes }
  def { VTNHI        drawing     26          0           yes }
  def { RESISTOR     drawing     27          0           yes }
  def { VTNHH        drawing     28          0           yes }
  def { NPOLY        drawing     29          0           yes }
  def { ESD          drawing     31          0           yes }
  def { PESD         drawing     32          0           yes }
  def { CELLEX       drawing     33          0           yes }
  def { DT           drawing     34          0           yes }
  def { MG           drawing     35          0           yes }
  def { SAB          drawing     36          0           yes }
  def { OD2          drawing     37          0           yes }
  def { HRP          drawing     38          0           yes }
  def { CONT         drawing     39          0           yes }
  def { CONTBAR      drawing3    39          3           yes }
  def { NWR          drawing     40          0           yes }
  def { PO1          drawing     41          0           yes }
  def { PO1BAR       drawing3    41          3           yes }
  def { POLYRAM      drawing26   41          26          yes }
  def { VARACT       drawing     43          0           yes }
  def { LIL          drawing     42          0           yes }
  def { ME1          drawing     46          0           yes }
  def { VIA1         drawing     47          0           yes }
  def { VI1BAR       drawing3    47          3           yes }
  def { ME2          drawing     48          0           yes }
  def { VIA2         drawing     49          0           yes }
  def { VI2BAR       drawing3    49          3           yes }
  def { ME3          drawing     50          0           yes }
  def { VIA3         drawing     51          0           yes }
  def { VI3BAR       drawing3    51          3           yes }
  def { ME4          drawing     52          0           yes }
  def { VIA4         drawing     53          0           yes }
  def { VI4BAR       drawing3    53          3           yes }
  def { ME5          drawing     54          0           yes }
  def { VIA5         drawing     55          0           yes }
  def { VI5BAR       drawing3    55          3           yes }
  def { ME6          drawing     56          0           yes }
  def { VI6          drawing     57          0           yes }
  def { VI6BAR       drawing3    57          3           yes }
  def { ME7          drawing     58          0           yes }
  def { VI7          drawing     59          0           yes }
  def { VI7BAR       drawing3    59          3           yes }
  def { ME8          drawing     60          0           yes }
  def { VI8          drawing     61          0           yes }
  def { VI8BAR       drawing3    61          3           yes }
  def { MMCBP        drawing     64          0           yes }
  def { CTM          drawing     65          0           yes }
  def { PAD          drawing     66          0           yes }
  def { L2           drawing     67          0           yes }
  def { L3           drawing     68          0           yes }
  def { L4           drawing     69          0           yes }
  def { WL_Well      drawing26   6           26          yes }
  def { ODI-VTP      drawing26   17          26          yes }
  def { ODI-VTN      drawing26   18          26          yes }
  def { OD           drawing29   6           29          yes }
  def { IVIABAR      drawing104  59          104         yes }
  def { M1SLMK       drawing7    72          7           yes }
  def { M2SLMK       drawing7    73          7           yes }
  def { M3SLMK       drawing7    74          7           yes }
  def { M4SLMK       drawing7    75          7           yes }
  def { M5SLMK       drawing7    76          7           yes }
  def { M6SLMK       drawing7    77          7           yes }
  def { M7SLMK       drawing7    78          7           yes }
  def { L2SLMK       drawing7    67          7           yes }
  def { PO_LVS       drawing10   41          10          yes }
  def { L1_MCAP      drawing12   66          12          yes }
  def { L1_ROUT      drawing13   66          13          yes }
  def { PPO_R_BLK    drawing     44          0           yes }
  def { DEV_SP       drawing16   9           16          yes }
  def { RSYMBOL      drawing     81          0           yes }
  def { PSYMBOL      drawing     82          0           yes }
  def { WSYMBOL      drawing     83          0           yes }
  def { TEXT         drawing     85          0           yes }
  def { MSL          drawing     86          0           yes }
  def { IOMARK       drawing     87          0           yes }
  def { FUSEMARK     drawing     88          0           yes }
  def { FLPMARK      drawing     89          0           yes }
  def { PADMARK      drawing     90          0           yes }
  def { IOID         drawing     91          0           yes }
  def { ROMID        drawing     93          0           yes }
  def { DPID         drawing     94          0           yes }
  def { BLSPID       drawing     95          0           yes }
  def { IRAM         drawing     97          0           yes }
  def { BDSPID       drawing     98          0           yes }
  def { PO_TEXT      drawing     100         0           yes }
  def { M1_TEXT      drawing     101         0           yes }
  def { M2_TEXT      drawing     102         0           yes }
  def { M3_TEXT      drawing     103         0           yes }
  def { M4_TEXT      drawing     104         0           yes }
  def { M5_TEXT      drawing     105         0           yes }
  def { M6_TEXT      drawing     106         0           yes }
  def { M7_TEXT      drawing     107         0           yes }
  def { INDDUMMYID   drawing5    109         0           yes }
  def { ACL          drawing     120         0           yes }
  def { PHL          drawing     121         0           yes }
  def { XDIODE       drawing     96          0           yes }
  def { MRSDUMMY     drawing30   111         30          yes }
  def { MIMDUMMY     drawing30   112         30          yes }
  def { BJTDUMMY     drawing30   113         30          yes }
  def { DioDUMMY     drawing30   114         30          yes }
  def { INDDUMMYID   drawing     117         36          yes }
  def { INDDUMMYLL   drawing30   117         30          yes }
  def { MMSYMBOL     drawing30   118         30          yes }
  def { RFSYMBOL     drawing30   119         30          yes }
  def { SIZE1        drawing33   111         33          yes }
  def { SIZE2        drawing33   112         33          yes }
  def { SIZE3        drawing33   113         33          yes }
  def { SIZE4        drawing33   114         33          yes }
  def { SIZE5        drawing33   115         33          yes }
  def { SIZE6        drawing33   116         33          yes }
  def { SIZE7        drawing33   117         33          yes }
  def { SIZE8        drawing33   118         33          yes }
  def { SIZE9        drawing33   119         33          yes }
  def { SIZE10       drawing34   111         34          yes }
  def { SIZE11       drawing34   112         34          yes }
  def { SIZE12       drawing34   113         34          yes }
  def { SIZE13       drawing34   114         34          yes }
  def { SIZE14       drawing34   115         34          yes }
  def { SIZE15       drawing34   116         34          yes }
  def { SIZE16       drawing34   117         34          yes }
  def { DIFDMBK      drawing1    70          1           yes }
  def { PLYDMBK      drawing1    71          1           yes }
  def { M1DMBK       drawing1    72          1           yes }
  def { M2DMBK       drawing1    73          1           yes }
  def { M3DMBK       drawing1    74          1           yes }
  def { M4DMBK       drawing1    75          1           yes }
  def { M5DMBK       drawing1    76          1           yes }
  def { M6DMBK       drawing1    77          1           yes }
  def { M7DMBK       drawing1    78          1           yes }
  def { M8DMBK       drawing1    79          1           yes }
  def { M9DMBK       drawing1    80          1           yes }
  def { DTDMBK       drawing1    34          1           yes }
  def { INDDMBK      drawing100  80          100         yes }
  def { M1SLBK       drawing2    72          2           yes }
  def { M2SLBK       drawing2    73          2           yes }
  def { M3SLBK       drawing2    74          2           yes }
  def { M4SLBK       drawing2    75          2           yes }
  def { M5SLBK       drawing2    76          2           yes }
  def { M6SLBK       drawing2    77          2           yes }
  def { M7SLBK       drawing2    78          2           yes }
  def { M8SLBK       drawing2    79          2           yes }
  def { M9SLBK       drawing2    80          2           yes }
  def { INDSLBK      drawing101  80          101         yes }
  def { DIFFDUMY     drawing8    70          8           yes }
  def { PO1DUMY      drawing8    71          8           yes }
  def { M1DUMY       drawing8    72          8           yes }
  def { M2DUMY       drawing8    73          8           yes }
  def { M3DUMY       drawing8    74          8           yes }
  def { M4DUMY       drawing8    75          8           yes }
  def { M5DUMY       drawing8    76          8           yes }
  def { M6DUMY       drawing8    77          8           yes }
  def { M7DUMY       drawing8    78          8           yes }
  def { M8DUMY       drawing8    79          8           yes }
  def { M9DUMY       drawing8    80          8           yes }
  def { INDDUMY      drawing102  80          102         yes }
  def { M1SLOT       drawing9    72          9           yes }
  def { M2SLOT       drawing9    73          9           yes }
  def { M3SLOT       drawing9    74          9           yes }
  def { M4SLOT       drawing9    75          9           yes }
  def { M5SLOT       drawing9    76          9           yes }
  def { M6SLOT       drawing9    77          9           yes }
  def { M7SLOT       drawing9    78          9           yes }
  def { M8SLOT       drawing9    79          9           yes }
  def { M9SLOT       drawing9    80          9           yes }
  def { L2SOLT       drawing9    67          9           no  }
  def { INDSLOT      drawing103  80          103         no  }
  def { XOPCD        drawing     70          0           no  }
  def { XOPCP        drawing     71          0           no  }
  def { XOPCM1       drawing     72          0           no  }
  def { XOPCM2       drawing     73          0           no  }
  def { XOPCM3       drawing     74          0           no  }
  def { XOPCM4       drawing     75          0           no  }
  def { XOPCM5       drawing     76          0           no  }
  def { XOPCM6       drawing     77          0           no  }
  def { XOPCM7       drawing     78          0           no  }
  def { XOPCC        drawing     80          0           no  }
  def { XOPCD228     drawing4    70          4           no  }
  def { XOPCP228     drawing4    71          4           no  }
  def { XOPCM1228    drawing4    72          4           no  }
  def { XOPCC228     drawing4    80          4           no  }
  def { XOPCD302     drawing5    70          5           no  }
  def { XOPCP302     drawing5    71          5           no  }
  def { XOPCM1302    drawing5    72          5           no  }
  def { XOPCC302     drawing5    80          5           no  }
  def { XOPCDDP      drawing6    70          6           no  }
  def { XOPCPDP      drawing6    71          6           no  }
  def { XOPCM1DP     drawing6    72          6           no  }
  def { XOPCCDP      drawing6    80          6           no  }
  def { XOPCD2496    drawing14   70          14          no  }
  def { XOPCP2496    drawing14   71          14          no  }
  def { XOPCM12496   drawing14   72          14          no  }
  def { XOPCC2496    drawing14   80          14          no  }
  def { XOPCD228LL   drawing27   70          27          no  }
  def { XOPCP228LL   drawing27   71          27          no  }
  def { XOPCM1228LL  drawing27   72          27          no  }
  def { XOPCC228LL   drawing27   80          27          no  }
  def { XOPCDDPLL    drawing28   70          28          no  }
  def { XOPCPDPLL    drawing28   71          28          no  }
  def { XOPCM1DPLL   drawing28   72          28          no  }
  def { XOPCCDPLL    drawing28   80          28          no  }
  def { XOPCD121     drawing15   70          15          no  }
  def { XOPCP121     drawing15   71          15          no  }
  def { XOPCM1121    drawing15   72          15          no  }
  def { XOPCC121     drawing15   80          15          no  }
  def { XOPCD126LL   drawing16   70          16          no  }
  def { XOPCP126LL   drawing16   71          16          no  }
  def { XOPCM1126LL  drawing16   72          16          no  }
  def { XOPCC126LL   drawing16   80          16          no  }
  def { XOPCD126HS   drawing17   70          17          no  }
  def { XOPCP126HS   drawing17   71          17          no  }
  def { XOPCM1126HS  drawing17   72          17          no  }
  def { XOPCC126HS   drawing17   80          17          no  }
  def { ME1          blockage    46          241         no  }
  def { ME2          blockage    48          241         no  }
  def { ME3          blockage    50          241         no  }
  def { ME4          blockage    52          241         no  }
  def { ME5          blockage    54          241         no  }
  def { ME6          blockage    56          241         no  }
  def { BULK         substrate   200         240         no  }
}
#
#********************************
# layoutView layer-to-layer rule
#********************************
# Rule        Reference      Main           Rule
# Name        Layer          Layer          Value
#---------------------------------------------------------------
tfLayoutLayerRule {
  space     {                ME1            { 0.24 0.28 } }
  space     {                ME2            { 0.27 0.32 } }
  enclosure { NW             DIFF           { 0.25 0.5 } }
  space     {                ME3            { 0.27 0.32 } }
  space     {                ME4            { 0.27 0.32 } }
  space     {                PO1            0.25 }
  space     {                DIFF           0.3 }
  space     {                NW             1.6 }
  space     {                PIMP           0.45 }
  space     {                NIMP           0.45 }
  space     {                SAB            0.65 }
  space     { NW             NIMP           0.23 }
  space     { PO1            CONT           0.14 }
  space     { PO1            DIFF           0.1 }
  space     { CONT           DIFF           0.18 }
  space     { NW             DIFF           0.5 }
  space     { SAB            DIFF           0.24 }
  space     { PIMP           NIMP           0.53 }
}
#
#**************************************
#    layoutView Magic Cell             
#**************************************
tfLayoutMagicCell {
  device {
    deviceName { P_18 }
    layerDef {
      { Co CONT }
      { Met ME1 }
      { Poly PO1 }
      { Od DIFF { stretchable on } }
      { Imp PIMP
        { { generate on } { stretchable on } { extend none } }
      }
    }
    ruleDef {
      { minChannelLength 0.18 }
      { minChannelWidth 0.23 }
      { minGateSpace 0.25 }
      { minOd2GateExtension 0.12 }
      { minPoly2GateExtension 0.20 }
      { minCo2OdEnclosure 0.12 }
      { minCoSpace 0.25 }
      { minCo2GateSpace 0.14 }
      { minCoWidth 0.23 }
      { minCo2MetEnclosure { 0.11 0.11 } }
      { minOd2PolySpace 0.12 }
      { minOdWidth 0.23 }
      { minOdNotch 0.28 }
      { minOdSpace 0.3 }
      { minOd2ImpEnclosure 0.2 }
    }
    ruleSwitch RuleSwitch0 {
      ruleDef {
        { minChannelLength 0.18 }
        { minChannelWidth 0.23 }
        { minGateSpace 0.25 }
        { minOd2GateExtension 0.12 }
        { minPoly2GateExtension 0.20 }
        { minCo2OdEnclosure 0.12 }
        { minCoSpace 0.25 }
        { minCo2GateSpace 0.15 }
        { minCoWidth 0.23 }
        { minCo2MetEnclosure { 0.11 0.11 } }
        { minOd2PolySpace 0.12 }
        { minOdWidth 0.23 }
        { minOdNotch 0.28 }
        { minOdSpace 0.3 }
        { minOd2ImpEnclosure 0.2 }
      }
    }
  }
  device {
    deviceName { N_18 }
    layerDef {
      { Co CONT }
      { Met ME1 }
      { Poly PO1 }
      { Od DIFF { stretchable on } }
      { Imp NIMP
        { { generate on } { stretchable on } { extend none } }
      }
    }
    ruleDef {
      { minChannelLength 0.18 }
      { minChannelWidth 0.23 }
      { minGateSpace 0.25 }
      { minOd2GateExtension 0.12 }
      { minPoly2GateExtension 0.20 }
      { minCo2OdEnclosure 0.12 }
      { minCoSpace 0.25 }
      { minCo2GateSpace 0.14 }
      { minCoWidth 0.23 }
      { minCo2MetEnclosure { 0.11 0.11 } }
      { minOd2PolySpace 0.12 }
      { minOdWidth 0.23 }
      { minOdNotch 0.28 }
      { minOdSpace 0.3 }
      { minOd2ImpEnclosure 0.2 }
    }
    ruleSwitch RuleSwitch0 {
      ruleDef {
        { minChannelLength 0.18 }
        { minChannelWidth 0.23 }
        { minGateSpace 0.25 }
        { minOd2GateExtension 0.12 }
        { minPoly2GateExtension 0.20 }
        { minCo2OdEnclosure 0.12 }
        { minCoSpace 0.25 }
        { minCo2GateSpace 0.15 }
        { minCoWidth 0.23 }
        { minCo2MetEnclosure { 0.11 0.11 } }
        { minOd2PolySpace 0.12 }
        { minOdWidth 0.23 }
        { minOdNotch 0.28 }
        { minOdSpace 0.3 }
        { minOd2ImpEnclosure 0.2 }
      }
    }
  }
  device {
    deviceName { P_33 }
    layerDef {
      { Co CONT }
      { Met ME1 }
      { Poly PO1 }
      { Od DIFF { stretchable on } }
      { Imp PIMP
        { { generate on } { stretchable on } { extend none } }
      }
      { L1 OD2
        { { generate on } { stretchable on } { extend none } }
      }
    }
    ruleDef {
      { minChannelLength 0.18 }
      { minChannelWidth 0.23 }
      { minGateSpace 0.25 }
      { minOd2GateExtension 0.12 }
      { minPoly2GateExtension 0.20 }
      { minCo2OdEnclosure 0.12 }
      { minCoSpace 0.25 }
      { minCo2GateSpace 0.28 }
      { minCoWidth 0.23 }
      { minCo2MetEnclosure { 0.11 0.11 } }
      { minOd2PolySpace 0.12 }
      { minOdWidth 0.23 }
      { minOdNotch 0.28 }
      { minOdSpace 0.3 }
      { minOd2ImpEnclosure 0.2 }
      { minImpNotch 0.3 }
      { minOd2L1Enclosure 0.28 }
      { minL1Notch 0.3 }
    }
    ruleSwitch RuleSwitch0 {
      ruleDef {
        { minChannelLength 0.18 }
        { minChannelWidth 0.23 }
        { minGateSpace 0.25 }
        { minOd2GateExtension 0.12 }
        { minPoly2GateExtension 0.20 }
        { minCo2OdEnclosure 0.12 }
        { minCoSpace 0.25 }
        { minCo2GateSpace 0.15 }
        { minCoWidth 0.23 }
        { minCo2MetEnclosure { 0.11 0.11 } }
        { minOd2PolySpace 0.12 }
        { minOdWidth 0.23 }
        { minOdNotch 0.28 }
        { minOdSpace 0.3 }
        { minOd2ImpEnclosure 0.2 }
      }
    }
  }
  device {
    deviceName { N_33 }
    layerDef {
      { Co CONT }
      { Met ME1 }
      { Poly PO1 }
      { Od DIFF { stretchable on } }
      { Imp NIMP
        { { generate on } { stretchable on } { extend none } }
      }
      { L1 OD2
        { { generate on } { stretchable on } { extend none } }
      }
    }
    ruleDef {
      { minChannelLength 0.18 }
      { minChannelWidth 0.23 }
      { minGateSpace 0.25 }
      { minOd2GateExtension 0.12 }
      { minPoly2GateExtension 0.20 }
      { minCo2OdEnclosure 0.12 }
      { minCoSpace 0.25 }
      { minCo2GateSpace 0.28 }
      { minCoWidth 0.23 }
      { minCo2MetEnclosure { 0.11 0.11 } }
      { minOd2PolySpace 0.12 }
      { minOdWidth 0.23 }
      { minOdNotch 0.28 }
      { minOdSpace 0.3 }
      { minOd2ImpEnclosure 0.2 }
      { minImpNotch 0.3 }
      { minOd2L1Enclosure 0.28 }
    }
    ruleSwitch RuleSwitch0 {
      ruleDef {
        { minChannelLength 0.18 }
        { minChannelWidth 0.23 }
        { minGateSpace 0.25 }
        { minOd2GateExtension 0.12 }
        { minPoly2GateExtension 0.20 }
        { minCo2OdEnclosure 0.12 }
        { minCoSpace 0.25 }
        { minCo2GateSpace 0.15 }
        { minCoWidth 0.23 }
        { minCo2MetEnclosure { 0.11 0.11 } }
        { minOd2PolySpace 0.12 }
        { minOdWidth 0.23 }
        { minOdNotch 0.28 }
        { minOdSpace 0.3 }
        { minOd2ImpEnclosure 0.2 }
      }
    }
  }
  resistor {
    resistorName { RNNPO }
    sheetResistance { 115.000000 }
    layerDef {
      { Res PO1 }
      { Co CONT }
      { Met ME1 }
      { Virtual SAB }
      { NIMP NIMP 
        {
size { {Res by 0.35} NIMP}
        }
      }
      { RSYMBOL RSYMBOL 
        {
size { { Res by 0.35 } temp1 }
shrink { { temp1 1.05 0 1.05 0 } RSYMBOL }
        }
      }
    }
    ruleDef {
      { defResWidth 0.7 }
      { minResWidth 0.65 }
      { defResSpace 0.3 }
      { minResSpace 0.25 }
      { defMetWidth 0.3 }
      { minMetWidth 0.23 }
      { minMetSpace 0.24 }
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.11 }
      { minCo2ResEnclosure 0.12 }
      { resistorContactInner  }
      { virtualLayerLocation ContactInner { 0.35 } }
      { minRes2VirtualEnclosure 0.35 }
    }
  }
  resistor {
    resistorName { RNPPO }
    sheetResistance { 332.000000 }
    layerDef {
      { Res PO1 }
      { Co CONT }
      { Met ME1 }
      { Virtual SAB }
      { PIMP PIMP 
        {
size { {Res by 0.35} PIMP}
        }
      }
      { RSYMBOL RSYMBOL 
        {
size {{Res by 0.35} temp1}
shrink {{temp1 1.05 0 1.05 0} RSYMBOL}
        }
      }
      { NW NW 
        {
size {{Res by 0.85} NW}
        }
      }
    }
    ruleDef {
      { defResWidth 0.7 }
      { minResWidth 0.65 }
      { defResSpace 0.3 }
      { minResSpace 0.25 }
      { defMetWidth 0.3 }
      { minMetWidth 0.23 }
      { minMetSpace 0.24 }
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.11 }
      { minCo2ResEnclosure 0.12 }
      { resistorContactInner  }
      { virtualLayerLocation ContactInner { 0.35 } }
      { minRes2VirtualEnclosure 0.35 }
    }
  }
  resistor {
    resistorName { RNND }
    sheetResistance { 85.000000 }
    layerDef {
      { Res DIFF }
      { Co CONT }
      { Met ME1 }
      { Virtual SAB }
      { NIMP NIMP 
        {
size { {Res by 0.35} NIMP}
        }
      }
      { RSYMBOL RSYMBOL 
        {
size { {Res by 0.35} temp1}
shrink { {temp1 1.05 0 1.05 0} RSYMBOL}
        }
      }
    }
    ruleDef {
      { defResWidth 0.7 }
      { minResWidth 0.65 }
      { defResSpace 0.35 }
      { minResSpace 0.3 }
      { defMetWidth 0.3 }
      { minMetWidth 0.23 }
      { minMetSpace 0.24 }
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.11 }
      { minCo2ResEnclosure 0.12 }
      { virtualLayerLocation ContactInner { 0.35 } }
      { minRes2VirtualEnclosure 0.35 }
    }
  }
  resistor {
    resistorName { RNPD }
    sheetResistance { 162.000000 }
    layerDef {
      { Res DIFF }
      { Co CONT }
      { Met ME1 }
      { Virtual SAB }
      { PIMP PIMP 
        {
size { {Res by 0.35} PIMP}
        }
      }
      { RSYMBOL RSYMBOL 
        {
size { {Res by 0.35} temp1}
shrink { {temp1 1.05 0 1.05 0} RSYMBOL}
        }
      }
      { NW NW 
        {
size { {Res by 0.85} NW}
        }
      }
    }
    ruleDef {
      { defResWidth 0.7 }
      { minResWidth 0.65 }
      { defResSpace 0.35 }
      { minResSpace 0.3 }
      { defMetWidth 0.3 }
      { minMetWidth 0.23 }
      { minMetSpace 0.24 }
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.11 }
      { minCo2ResEnclosure 0.12 }
      { virtualLayerLocation ContactInner { 0.35 } }
      { minRes2VirtualEnclosure 0.35 }
    }
  }
  resistor {
    resistorName { RNHR1000 }
    sheetResistance { 1199.000000 }
    resValue {
      proc resFunc {L W Nc Ncr} {
  set dW  -0.043e-6
  set dL  -0.4e-6
  set Rend 120E-6
  set Rs 1039
  expr $Rs*($L+$dL)/($W+$dW)+2*$Rend/($W+$dW)
}
    }
    layerDef {
      { Res PO1 }
      { Co CONT }
      { Met ME1 }
      { Virtual SAB }
      { PIMP PIMP 
        {
size {{Res by 0.3} PIMP}
        }
      }
      { PSYMBOL PSYMBOL 
        {
size {{Res by 0.3} temp1}
shrink {{temp1 1.25 0 1.25 0} PSYMBOL}
        }
      }
      { NW NW 
        {
size {{Res by 1.8} NW}
        }
      }
      { HRP HRP 
        {
size {{Res by 1.8} HRP}
        }
      }
    }
    ruleDef {
      { defResWidth 0.7 }
      { minResWidth 0.65 }
      { defResSpace 0.3 }
      { minResSpace 0.25 }
      { defMetWidth 0.3 }
      { minMetWidth 0.23 }
      { minMetSpace 0.24 }
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.11 }
      { minCo2ResEnclosure 0.12 }
      { resistorContactInner  }
      { virtualLayerLocation ContactInner { 0.6 } }
      { minRes2VirtualEnclosure 0.5 }
    }
  }
  resistor {
    resistorName { RSWNELL }
    sheetResistance { 400.000000 }
    layerDef {
      { Res NW }
      { Co CONT }
      { Met DIFF }
      { Virtual NWR }
      { NIMP NIMP 
        {
size {{Co by 0.32} NIMP}
        }
      }
      { ME1 ME1 
        {
size {{Co by 0.11} ME1}
        }
      }
    }
    ruleDef {
      { defResWidth 1.3 }
      { minResWidth 1.3 }
      { defResSpace 1.3 }
      { minResSpace 1.3 }
      { defMetWidth 0.3 }
      { minMetWidth 0.25 }
      { minMetSpace 0.3 }
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.12 }
      { minCo2ResEnclosure 0.405 }
      { resistorContactInner  }
      { virtualLayerLocation ContactInner { 0.32 } }
      { minRes2VirtualEnclosure 0 }
    }
  }
  resistor {
    resistorName { RSND }
    sheetResistance { 8.000000 }
    layerDef {
      { Res DIFF }
      { Co CONT }
      { Met ME1 }
      { Virtual RSYMBOL }
      { NIMP NIMP 
        {
size {{Res by 0.35} NIMP}
        }
      }
    }
    ruleDef {
      { defResWidth 0.7 }
      { minResWidth 0.65 }
      { defResSpace 0.35 }
      { minResSpace 0.3 }
      { defMetWidth 0.3 }
      { minMetWidth 0.23 }
      { minMetSpace 0.24 }
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.11 }
      { minCo2ResEnclosure 0.12 }
      { virtualLayerLocation ContactInner { 0.0 } }
      { minRes2VirtualEnclosure 0.35 }
    }
  }
  resistor {
    resistorName { RSPD }
    sheetResistance { 8.000000 }
    layerDef {
      { Res DIFF }
      { Co CONT }
      { Met ME1 }
      { Virtual RSYMBOL }
      { PIMP PIMP 
        {
size {{Res by 0.35} PIMP}
        }
      }
      { NW NW 
        {
size {{Res by 0.85} NW}
        }
      }
    }
    ruleDef {
      { defResWidth 0.7 }
      { minResWidth 0.65 }
      { defResSpace 0.35 }
      { minResSpace 0.3 }
      { defMetWidth 0.3 }
      { minMetWidth 0.23 }
      { minMetSpace 0.24 }
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.11 }
      { minCo2ResEnclosure 0.12 }
      { virtualLayerLocation ContactInner { 0.0 } }
      { minRes2VirtualEnclosure 0.35 }
    }
  }
  resistor {
    resistorName { RSNPO }
    sheetResistance { 8.000000 }
    layerDef {
      { Res PO1 }
      { Co CONT }
      { Met ME1 }
      { Virtual RSYMBOL }
      { NIMP NIMP 
        {
size {{Res by 0.35} NIMP}
        }
      }
    }
    ruleDef {
      { defResWidth 0.7 }
      { minResWidth 0.65 }
      { defResSpace 0.3 }
      { minResSpace 0.25 }
      { defMetWidth 0.3 }
      { minMetWidth 0.23 }
      { minMetSpace 0.24 }
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.11 }
      { minCo2ResEnclosure 0.12 }
      { resistorContactInner  }
      { virtualLayerLocation ContactInner { 0.0 } }
      { minRes2VirtualEnclosure 0.35 }
    }
  }
  resistor {
    resistorName { RSPPO }
    sheetResistance { 8.000000 }
    layerDef {
      { Res PO1 }
      { Co CONT }
      { Met ME1 }
      { Virtual RSYMBOL }
      { PIMP PIMP 
        {
size {{Res by 0.35} PIMP}
        }
      }
      { NW NW 
        {
size {{Res by 0.85} NW}
        }
      }
    }
    ruleDef {
      { defResWidth 0.7 }
      { minResWidth 0.65 }
      { defResSpace 0.3 }
      { minResSpace 0.25 }
      { defMetWidth 0.3 }
      { minMetWidth 0.23 }
      { minMetSpace 0.24 }
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.11 }
      { minCo2ResEnclosure 0.12 }
      { resistorContactInner  }
      { virtualLayerLocation ContactInner { 0.0 } }
      { minRes2VirtualEnclosure 0.35 }
    }
  }
  capacitor {
    capacitorName { MIM }
    capValue {
      proc capFunc {area peri} {
  set c1 1E-3
  set c2 7.5E-11
 expr $c1*$area+$c2*$peri
}
    }
    defaultCapValue { 1.000000 }
    layerDef {
      { Cap1 ME5 }
      { Cap2 ME6 }
      { Co VIA5 }
      { MMC CTM }
    }
    ruleDef {
      { minCoWidth 0.25 }
      { minCoSpace 0.27 }
      { minCo2Cap1Space 0.8 }
      { minCo2Cap1Enclosure 1.2 }
      { minCo2Cap2Enclosure 0.4 }
      { minCap1Width 0.8 }
      { minCap2Width 2.8 }
      { minCap2Notch 0.3 }
      { minCap1Space 2.3 }
      { minCap2Space 0.3 }
      { minCo2MMCEnclosure 0.6 }
    }
  }
  contactDevice {
    contactDeviceName { M1_M2 }
    layerDef {
      { Layer1 ME1 }
      { Layer2 ME2 }
      { Co VIA1 }
    }
    ruleDef {
      { defCoWidth 0.25 }
      { defCoLength 0.25 }
      { minCoWidth 0.25 }
      { defCoSpaceX 0.27 }
      { defCoSpaceY 0.27 }
      { minCoSpace 0.27 }
      { minCo2Lay1RangeEnclosure { 0.1 0.1 } }
      { minCo2Lay2RangeEnclosure { {0.125 0.125} {0.125 0.125} } }
    }
  }
  contactDevice {
    contactDeviceName { M2_M3 }
    layerDef {
      { Layer1 ME2 }
      { Layer2 ME3 }
      { Co VIA2 }
    }
    ruleDef {
      { defCoWidth 0.25 }
      { defCoLength 0.25 }
      { minCoWidth 0.25 }
      { defCoSpaceX 0.27 }
      { defCoSpaceY 0.27 }
      { minCoSpace 0.27 }
      { minCo2Lay1RangeEnclosure { 0.125 0.125 } }
      { minCo2Lay2RangeEnclosure { {0.125 0.125} {0.125 0.125} } }
    }
  }
  contactDevice {
    contactDeviceName { M3_M4 }
    layerDef {
      { Layer1 ME3 }
      { Layer2 ME4 }
      { Co VIA3 }
    }
    ruleDef {
      { defCoWidth 0.25 }
      { defCoLength 0.25 }
      { minCoWidth 0.25 }
      { defCoSpaceX 0.27 }
      { defCoSpaceY 0.27 }
      { minCoSpace 0.27 }
      { minCo2Lay1RangeEnclosure { 0.125 0.125 } }
      { minCo2Lay2RangeEnclosure { {0.125 0.125} {0.125 0.125} } }
    }
  }
  contactDevice {
    contactDeviceName { M4_M5 }
    layerDef {
      { Layer1 ME4 }
      { Layer2 ME5 }
      { Co VIA4 }
    }
    ruleDef {
      { defCoWidth 0.25 }
      { defCoLength 0.25 }
      { minCoWidth 0.25 }
      { defCoSpaceX 0.27 }
      { defCoSpaceY 0.27 }
      { minCoSpace 0.27 }
      { minCo2Lay1RangeEnclosure { 0.125 0.125 } }
      { minCo2Lay2RangeEnclosure { {0.125 0.125} {0.125 0.125} } }
    }
  }
  contactDevice {
    contactDeviceName { M5_M6 }
    layerDef {
      { Layer1 ME5 }
      { Layer2 ME6 }
      { Co VIA5 }
    }
    ruleDef {
      { defCoWidth 0.25 }
      { defCoLength 0.25 }
      { minCoWidth 0.25 }
      { defCoSpaceX 0.27 }
      { defCoSpaceY 0.27 }
      { minCoSpace 0.27 }
      { minCo2Lay1RangeEnclosure { 0.125 0.125 } }
      { minCo2Lay2RangeEnclosure { 1.125 1.125 } }
    }
  }
  contactDevice {
    contactDeviceName { M1_Pl }
    layerDef {
      { Layer1 PO1 }
      { Layer2 ME1 }
      { Co CONT }
    }
    ruleDef {
      { defCoWidth 0.23 }
      { defCoLength 0.23 }
      { minCoWidth 0.23 }
      { defCoSpaceX 0.25 }
      { defCoSpaceY 0.25 }
      { minCoSpace 0.25 }
      { minCo2Lay1RangeEnclosure { 0.12 0.12 } }
      { minCo2Lay2RangeEnclosure { 0.11 0.11 } }
    }
  }
  guardRing {
    guardRingName { PGR }
    layerDef {
      { Body DIFF }
      { Co CONT }
      { Met ME1 }
      { Imp PIMP
        { { generate on } { stretchable on } { extend none } }
      }
    }
    ruleDef {
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.1 }
      { minCo2BodyEnclosure 0.12 }
      { minBodyWidth 0.22 }
      { minBodyNotch 0.28 }
      { minMetWidth 0.23 }
      { minMetNotch 0.23 }
      { minBodySpace 0.28 }
      { minBody2ImpEnclosure 0.18 }
    }
  }
  guardRing {
    guardRingName { NGR }
    layerDef {
      { Body DIFF }
      { Co CONT }
      { Met ME1 }
      { Imp NIMP
        { { generate on } { stretchable on } { extend none } }
      }
    }
    ruleDef {
      { minCoWidth 0.23 }
      { minCoSpace 0.25 }
      { minCo2MetEnclosure 0.1 }
      { minCo2BodyEnclosure 0.12 }
      { minBodyWidth 0.22 }
      { minBodyNotch 0.28 }
      { minMetWidth 0.23 }
      { minMetNotch 0.23 }
      { minBodySpace 0.28 }
      { minBody2ImpEnclosure 0.2 }
    }
  }
}
#
#*********************************************************************************
#    Connection Definition                                                        
#*********************************************************************************
#       Layer1                Layer2                Via Layer       Stop Layer    
#---------------------------------------------------------------------------------
tfLayoutConnection {
  def { ME1                   ME2                   VIA1 }
  def { ME2                   ME3                   VIA2 }
  def { ME3                   ME4                   VIA3 }
  def { ME4                   ME5                   VIA4 }
  def { ME5                   ME6                   VIA5                  CTM }
  def { PO1                   ME1                   CONT }
}
