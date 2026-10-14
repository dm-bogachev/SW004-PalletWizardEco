.AUXDATA
N_OX1    "do.teach"
N_OX2    "o.lamp.green[1]"
N_OX3    "o.lamp.green[2]"
N_OX30    "do.error"
N_OX31    "do.cs"
N_OX32    "do.motor"
N_OX33    "o.fingers.open"
N_OX34    "o.fingers.close"
N_OX35    "o.plate.open"
N_OX36    "o.plate.close"
N_OX37    "o.clamp.down"
N_WX1    "i.bag.ready[1]"
N_WX2    "i.bag.ready[2]"
N_WX3    "i.line.ready[1]"
N_WX4    "i.line.ready[2]"
N_WX5    "i.btn.stop[1]"
N_WX6    "i.btn.stop[2]"
N_WX7    "i.btn.start[1]"
N_WX8    "i.btn.start[2]"
N_WX11    "i.bag.defect[1]"
N_WX12    "i.bag.defect[2]"
N_WX30    "di.error"
N_WX31    "di.cs"
N_WX32    "di.motor"
N_WX33    "i.fin.l.opened"
N_WX34    "i.fin.r.opened"
N_WX35    "i.fin.l.closed"
N_WX36    "i.fin.r.closed"
N_WX37    "i.plt.l.opened"
N_WX38    "i.plt.r.opened"
N_WX39    "i.plt.l.closed"
N_WX40    "i.plt.r.closed"
N_WX41    "i.clamp.up"
N_WX42    "i.clamp.down"
N_WX43    "i.air.on"
N_INT1    "di.ifp.page[1]"
N_INT2    "di.ifp.page[2]"
N_INT3    "di.ifp.page[3]"
N_INT4    "di.ifp.page[4]"
N_INT5    "di.ifp.page[5]"
N_INT6    "di.ifp.page[6]"
N_INT7    "di.ifp.page[7]"
N_INT8    "di.ifp.page[8]"
N_INT10    "do.home"
N_INT11    "s.apply.product[1]"
N_INT12    "s.apply.product[2]"
N_INT13    "s.upd.prod.list"
.END
.INTER_PANEL_D
0,9,7,4,8
6,2,"","  CONTROL","","",10,4,3,2003,0
13,2,"","  SELECT","  PRODUCT","",10,4,3,2003,0
14,10,"","PCEXECUTE ","AUTOSTART","",10,4,6,1,"PCEXECUTE autostart.pc",0
21,9,8,6,15
27,2,"","  TEACH","","",10,4,11,2003,0
28,1," BAG 1 RDY","","","",10,15,4,10,1001,0
29,1,"BAG 1 DEF","","","",10,15,4,10,1011,0
30,1,"LINE 1 RDY","","","",10,15,4,10,1003,0
35,1," BAG 2 RDY","","","",10,15,4,10,1002,0
36,1,"BAG 2 DEF","","","",10,15,4,10,1012,0
37,1,"LINE 2 RDY","","","",10,15,4,10,1004,0
42,1," BAG 2 RDY","","","",10,15,4,10,33,0
43,1," BAG 2 RDY","","","",10,15,4,10,34,0
56,8,"ifp.prod.no[1]"," LINE 1","PRODUCT NO",10,4,3,1,0
57,2," LINE 1 "," APPLY"," PRODUCT","",10,6,11,2011,-1
58,9,4,4,9
62,10,"","   PREV","   PAGE","",10,4,8,3,"ifp.list.page = ifp.list.page - 1",0
63,8,"ifp.prod.no[2]"," LINE 2","PRODUCT NO",10,4,3,1,0
64,2," LINE 2"," APPLY"," PRODUCT","",10,6,11,2012,-1
65,9,5,4,9
69,8,"ifp.list.page","","   PAGE",10,15,2,1,0
72,9,6,4,9
76,10,"","   NEXT","   PAGE","",10,4,8,2,"ifp.list.page = ifp.list.page + 1",0
77,2,"","   MAIN","<---------","",10,4,11,2001,0
79,2,"  UPDATE","  PRODUCT","   LIST","",10,4,3,2013,-1
80,9,7,4,8
142,2,"","   IO","","",10,4,11,2002,0
168,9,1,6,9
169,9,2,6,9
170,9,3,6,15
.END
.INTER_PANEL_TITLE
"",0
"",0
"",0
"",0
"",0
"",0
"",0
"",0
"",0
"",0
"",0
"",0
"",0
"",0
"",0
"",0
.END
.INTER_PANEL_COLOR_D
182,3,224,244,28,159,252,255,251,255,0,31,2,241,52,255,
.END
.PROGRAM a.home()@26/10/13 16:54 #0
;
; Set small speed
  SPEED 100 MM/S ALWAYS
  ACCURACY 0.01 ALWAYS
; Move to home pos
  HOME
;
.END
.PROGRAM a.main()@26/10/13 16:54 #0
  ;
  SPEED 100 ALWAYS
  ACCURACY 500 ALWAYS
  ;
  WEIGHT 120, 0, 0, 350, 0.1, 0.1, 0.1
  ;
  HOME
  ;
  TOOL tool.gripper
  ;
  SIGNAL -34
  ;
  cur.layer[1] = 1
  cur.bag[1] = 1
  ;
  cur.layer[2] = 1
  cur.bag[2] = 1
  ;
  TIMER 2 = 0
  WHILE TRUE DO
    TIMER 1 = 0
    IF cur.layer[1] > w.max.layers[1] THEN
      CALL pick (1)
      IF NOT SIG (2111) THEN
        CALL put.pallet (1)
      ELSE
        CALL put.defect (1)
        SIGNAL -2111
      END
    END
    IF cur.layer[2] > w.max.layers[2] THEN
      CALL pick (2)
      IF NOT SIG (2112) THEN
        CALL put.pallet (2)
      ELSE
        CALL put.defect (2)
        SIGNAL -2112
      END
    END
    PRINT "1", TIMER (1)
  END
  PRINT "2:", TIMER (2)
  ;IF cur.layer[2] <= w.max.layers[2]
  ;  CALL pick (2)
  ;  CALL put (2)
  ;END
  ;
  ;END
  ;
.END
.PROGRAM a.transport()@26/10/13 16:54 #0
;
; Set small speed
  SPEED 100 MM/S ALWAYS
  ACCURACY 0.01 ALWAYS
; Move to home and home standby pos
  JMOVE #transport
;
.END
.PROGRAM autostart.pc()@26/10/13 16:54 #0
;
  CALL initialize.pc
;
  WHILE TRUE DO
    CALL ifp.pc
    CALL limits.pc
  END
;
.END
.PROGRAM calc.points(.line.no)@26/10/13 17:16 #0
  ;
  CALL log ("Calculating points for line" + $ENCODE (.line.no))
  ;
  FOR .layer = 1 TO w.max.layers[.line.no]
    FOR .bag = 1 TO w.layer.bags[.line.no, .layer]
      ; Get temporary point from DB
      POINT .temp = pb[.layer, .bag]
      POINT .temp.ang = .temp
      ; Get coordinates array
      DECOMPOSE .c[1] = .temp
      ;
      POINT/OAT .temp = NULL
      POINT .temp = .temp + TRANS(w.pallet.x.shif[.line.no], w.pallet.y.shif[.line.no])
      POINT/Z .temp = TRANS(0, 0, -.c[3])
      POINT/OAT .temp = .temp.ang
      POINT put.base[.line.no, .layer, .bag] = .temp
    END
  END
  ;
.END
.PROGRAM ciner(.$var.name,.var,.default)@26/10/13 16:54 #32
;
  IF NOT EXISTREAL(.$var.name) THEN
    CALL log("Variable "+.$var.name+" is not exist. Default:"+$ENCODE(.default))
    .var = .default
  END
;
.END
.PROGRAM disp.info.pc(.$cont.name)@26/10/13 17:03 #1
;
  .$robot.name = $SYSDATA(ZROB.NAME)
  .robot.sn = SYSDATA(ZROB.MGFNO)
  .cont.sn = SYSDATA(CONT.NO)
  .$robot.str = "Robot: "+.$robot.name+" S/N: C"+$ENCODE(/L,.robot.sn)
  .$cont.str = "Controller: "+.$cont.name+" S/N: C"+$ENCODE(/L,.cont.sn)
  IFPWPRINT 8,1,1,5,10=.$robot.str,.$cont.str," ","Powered by Robowizard Co.Ltd."
;
.END
.PROGRAM disp.list()@26/10/13 17:16 #1
;
  ifp.list.page = MAXVAL(ifp.list.page,1)
  ifp.list.page = MINVAL(ifp.list.page,22)
;
  FOR .i = 1 TO 12
    .text.color = color.black
    .window.no = INT((.i-1)/4)+4
    .line.no = (.i-1) MOD 4+1
    .column.no = 1
    .bg.color = color.white
;
    .id = (ifp.list.page-1)*12+.i
    .$id = $ENCODE(/I3,.id)
;
    .$tmp = "$product.names["+.$id+"]"
    IF EXISTCHAR(.$tmp) THEN
      .$text = .$id+": "+$product.names[.id]
      IFPWOVERWRITE .window.no,.line.no,.column.no,.bg.color,.text.color=.$text
    ELSE
      IFPWOVERWRITE .window.no,.line.no,.column.no,.bg.color,.text.color=" "
    END
  END
;
.END
.PROGRAM disp.product()@26/10/13 17:16 #4
;
  .product.window = 7
  .row = 1
  .col = 1
;
  FOR .i = 1 TO 2
    .$i = $ENCODE(/L,.i)
;
    IF line.product.no[.i]<=0 THEN
      IF line.product.no[.i]==0 THEN
        .$line[.i] = "Line "+.$i+" product: Not selected"
      ELSE
        .$line[.i] = "Line "+.$i+" product: Wrong program"
      END
    ELSE
      .$line[.i] = "Line "+.$i+" product: "+$product.names[line.product.no[.i]]
    END
;
  END
  IFPWOVERWRITE .product.window,.row,.col,color.yellow,color.black=.$line[1]," ",.$line[2]," "
;
.END
.PROGRAM grip.check.open ()
  ;
  ; Check if gripper is opened
  SWAIT i.fin.l.opened, i.fin.r.opened
  SWAIT i.plt.l.opened, i.plt.r.opened
  SWAIT i.clamp.up
  ;
.END
.PROGRAM grip.release ()
;
  SIGNAL -o.clamp.down
  SIGNAL o.plate.open,-o.plate.close
  SIGNAL o.fingers.open,-o.fingers.close
;
.END
.PROGRAM ifp.pc()@26/10/13 16:58 #1749111
  ;
  IF ifp.list.page <> ifp.last.page THEN
    CALL disp.list
    ifp.last.page = ifp.list.page
  END
  ;
  FOR .i = 1 TO 2
    ;
    IF SIG (s.apply.product[.i]) AND NOT SWITCH (CS ) THEN
      IF ifp.prod.no[.i] > 0 THEN
        CALL set.product (.i)
      END
      ifp.prod.no[.i] = -1
    END
    ;
    IF SIG (s.upd.prod.list) AND NOT SWITCH (CS ) THEN
      CALL load.products
      CALL disp.list
    END
    ;
  END
.END
.PROGRAM initialize.pc()@26/10/13 17:03 #1
;
  CALL log.init
  CALL set.switches.pc
  CALL set.io.pc
  CALL set.vars.pc
  CALL disp.info.pc("E03")
;
  CALL load.products
  CALL disp.list
;
  MC PRIME a.main
  TWAIT 0.5
;
  CALL log.pc1("Robot boot initialize completed")
;
.END
.PROGRAM limits.pc()@26/10/13 16:54 #1749111
;
  ifp.prod.no[1] = MINVAL(ifp.prod.no[1],255)
  ifp.prod.no[1] = MAXVAL(ifp.prod.no[1],-1)
  ifp.prod.no[2] = MINVAL(ifp.prod.no[2],255)
  ifp.prod.no[2] = MAXVAL(ifp.prod.no[2],-1)
;
.END
.PROGRAM load.prod.data (.line.no)
  ;
  .$pg.name = "product" + $ENCODE (/L, line.product.no[.line.no])
  IF EXISTPGM (.$pg.name) THEN
    SCALL .$pg.name
    CALL log ("Selected product " + $product.names[line.product.no[.line.no]] + " for line" + $ENCODE (.line.no))
  ELSE
    CALL log ("Selected product not found in database")
  END
  ;
  w.bag.length[.line.no] = bag.length
  w.bag.width[.line.no] = bag.width
  w.bag.height[.line.no] = bag.height
  w.bag.weight[.line.no] = bag.weight
  ;
  w.pallet.length[.line.no] = pallet.length
  w.pallet.width[.line.no] = pallet.width
  w.pallet.height[.line.no] = pallet.height
  ;
  w.pallet.x.shif[.line.no] = pallet.x.shift
  w.pallet.y.shif[.line.no] = pallet.y.shift
  ;
  w.max.layers[.line.no] = max.layers
  FOR .i = 1 TO w.max.layers[.line.no]
    w.layer.bags[.line.no, .i] = layer.bags[.i]
  END
  ;
.END
.PROGRAM load.products()@26/10/13 17:16 #1
;
  .product.count = 0
;
  .$temp = "Getting loaded products"
  CALL log(.$temp)
;
  FOR .i = 1 TO max.product.cnt
    .$pg.name = "product"+$ENCODE(/L,.i)
    IF EXISTPGM(.$pg.name) THEN
      SCALL .$pg.name
      $product.names[.i] = $product.name
      .product.count = .product.count+1
    ELSE
      $product.names[.i] = "Empty"
    END
  END
;
  .$temp = "Found"+$ENCODE(.product.count)+" products"
  CALL log(.$temp)
;
  CALL disp.product
;
.END
.PROGRAM log(.$msg)@26/10/13 16:54 #13
;
  IF LEN(.$msg)>55 THEN
    .$msg = $LEFT(.$msg,55)
  END
;
  FOR .i = 1 TO log.max.count-1
    $log.entry[.i] = $log.entry[.i+1]
  END
  $log.entry[log.max.count] = $TIME+" "+.$msg
;
  FOR .i = 0 TO 11
    .$tmp[.i] = $log.entry[log.max.count-(11-.i)]
  END
;
  IFPWPRINT 1,1,1,9,10=.$tmp[0],.$tmp[1],.$tmp[2],.$tmp[3]
  IFPWPRINT 2,1,1,9,10=.$tmp[4],.$tmp[5],.$tmp[6],.$tmp[7]
  IFPWPRINT 3,1,1,9,10=.$tmp[8],.$tmp[9],.$tmp[10],.$tmp[11]
;
.END
.PROGRAM log.clear()@26/10/13 16:54 #0
;
  FOR .i = 1 TO log.max.count
    $log.entry[.i] = ""
  END
;
.END
.PROGRAM log.init()@26/10/13 16:54 #7
;
; Change this number if needed
  log.max.count = 256
;
  .$tmp1 = $ENCODE(/L,log.max.count)
  .$tmp2 = "$log.entry["+.$tmp1+"]"
  IF NOT EXISTCHAR(.$tmp2) THEN
    FOR .i = 1 TO log.max.count
      $log.entry[.i] = ""
    END
  END
;
.END
.PROGRAM log.pc1(.$msg)@26/10/13 16:54 #6
;
  IF LEN(.$msg)>55 THEN
    .$msg = $LEFT(.$msg,55)
  END
;
  FOR .i = 1 TO log.max.count-1
    $log.entry[.i] = $log.entry[.i+1]
  END
  $log.entry[log.max.count] = $TIME+" "+.$msg
;
  FOR .i = 0 TO 11
    .$tmp[.i] = $log.entry[log.max.count-(11-.i)]
  END
;
  IFPWPRINT 1,1,1,9,10=.$tmp[0],.$tmp[1],.$tmp[2],.$tmp[3]
  IFPWPRINT 2,1,1,9,10=.$tmp[4],.$tmp[5],.$tmp[6],.$tmp[7]
  IFPWPRINT 3,1,1,9,10=.$tmp[8],.$tmp[9],.$tmp[10],.$tmp[11]
;
.END
.PROGRAM pg0()@26/10/13 16:54 #0
;
  CALL a.main
;
.END
.PROGRAM pick (.line.no)
  ;
  ; Points calculation
  ;
  .layer = cur.layer[.line.no]
  .bag = cur.bag[.line.no]
  ;
  POINT .pick = #pick[.line.no]
  POINT .put.base = #put[.line.no]
  POINT .put = .put.base + put.base[.line.no, .layer, .bag]
  ;
  .pick.z = DZ (.pick) + pick.appro[.line.no]
  .put.z = DZ (.put) + put.appro[.line.no]
  .z.appro = MAXVAL (.put.z, .pick.z)
  ;
  POINT .pick.appro = .pick
  POINT/Z .pick.appro = TRANS (0, 0, .z.appro)
  POINT .pick.depart = .pick.appro
  ;
  ; Open gripper for just in case
  CALL grip.release
  ;
  ; Motion
  SPEED 100 ALWAYS
  ACCURACY 500 ALWAYS
  ;
  ; Approach
  JMOVE .pick.appro
  CALL grip.check.open
  ;
  ; Pick point
  ACCURACY 1
  LMOVE .pick
  BREAK
  ;
  ; Close gripper
  SIGNAL o.plate.close, -o.plate.open
  TWAIT 0.1
  SIGNAL o.fingers.close, -o.fingers.open
  ;
  ; Wait for sensors
  SWAIT i.plt.l.closed, i.plt.r.closed
  SWAIT i.fin.l.closed, i.fin.r.closed
  ;
  ; Depart
  LMOVE .pick.depart
  ;
  ; Down clamp while move
  SIGNAL o.clamp.down
  ;
.END
.PROGRAM product.demo ()
  ;
  $product.name = "Cement 41x37x11"
  ;
  bag.length = 445
  bag.width = 305
  bag.height = 120
  ;
  bag.weight = 25
  ;
  pallet.length = 1200
  pallet.width = 1000
  pallet.height = 150
  ;
  .l = bag.length
  .w = bag.width
  .h = bag.height
  .g1 = 10
  .d1 = 10
  .g2 = (3 * .w + 3 * .d1 - 2 * .l) / 2
  .d2 = 3 * .w + 2 * .g1 - 2 * .l
  ;
  pallet.x.shift = (pallet.width - (2 * .l + .d2)) / 2
  pallet.y.shift = (pallet.length - (4 * .w + 3 * .d1)) / 2
  ;
  ; Default layout
  ;
  max.layers = 7
  ;
  layer.bags[1] = 8
  POINT pb[1, 1] = TRANS (0.5 * .w, 0.5 * .l, .h, 0)
  POINT pb[1, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, .h, 0)
  POINT pb[1, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, .h, 0)
  POINT pb[1, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, .h, 90)
  POINT pb[1, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, .h, 90)
  ;
  layer.bags[2] = 8
  POINT pb[2, 1] = TRANS (0.5 * .l, 0.5 * .w, 2*.h, 90)
  POINT pb[2, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 2*.h, 90)
  POINT pb[2, 3] = TRANS (0.5 * .l, 2.5 * .w + 2*.d1, 2*.h, 90)
  POINT pb[2, 4] = TRANS (0.5 * .l, 3.5 * .w + 3*.d1, 2*.h, 90)
  POINT pb[2, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 2*.h, 90)
  POINT pb[2, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 2*.h, 90)
  POINT pb[2, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2*.d1, 2*.h, 90)
  POINT pb[2, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3*.d1, 2*.h, 90)
  ;
  layer.bags[3] = 8
  POINT pb[3, 1] = TRANS (0.5 * .w, 0.5 * .l, 3*.h, 0)
  POINT pb[3, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 3*.h, 0)
  POINT pb[3, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 3*.h, 0)
  POINT pb[3, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 3*.h, 0)
  POINT pb[3, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 3*.h, 0)
  POINT pb[3, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 3*.h, 0)
  POINT pb[3, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 3*.h, 90)
  POINT pb[3, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 3*.h, 90)
  ;
  layer.bags[4] = 8
  POINT pb[4, 1] = TRANS (0.5 * .l, 0.5 * .w, 4*.h, 90)
  POINT pb[4, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 4*.h, 90)
  POINT pb[4, 3] = TRANS (0.5 * .l, 2.5 * .w + 2*.d1, 4*.h, 90)
  POINT pb[4, 4] = TRANS (0.5 * .l, 3.5 * .w + 3*.d1, 4*.h, 90)
  POINT pb[4, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 4*.h, 90)
  POINT pb[4, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 4*.h, 90)
  POINT pb[4, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2*.d1, 4*.h, 90)
  POINT pb[4, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3*.d1, 4*.h, 90)
  ;
  layer.bags[5] = 8
  POINT pb[5, 1] = TRANS (0.5 * .w, 0.5 * .l, 5*.h, 0)
  POINT pb[5, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 5*.h, 0)
  POINT pb[5, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 5*.h, 0)
  POINT pb[5, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 5*.h, 0)
  POINT pb[5, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 5*.h, 0)
  POINT pb[5, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 5*.h, 0)
  POINT pb[5, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 5*.h, 90)
  POINT pb[5, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 5*.h, 90)
  ;
  layer.bags[6] = 8
  POINT pb[6, 1] = TRANS (0.5 * .l, 0.5 * .w, 6*.h, 90)
  POINT pb[6, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 6*.h, 90)
  POINT pb[6, 3] = TRANS (0.5 * .l, 2.5 * .w + 2*.d1, 6*.h, 90)
  POINT pb[6, 4] = TRANS (0.5 * .l, 3.5 * .w + 3*.d1, 6*.h, 90)
  POINT pb[6, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 6*.h, 90)
  POINT pb[6, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 6*.h, 90)
  POINT pb[6, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2*.d1, 6*.h, 90)
  POINT pb[6, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3*.d1, 6*.h, 90)
  ;
  layer.bags[7] = 8
  POINT pb[7, 1] = TRANS (0.5 * .w, 0.5 * .l, 7*.h, 0)
  POINT pb[7, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 7*.h, 0)
  POINT pb[7, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 7*.h, 0)
  POINT pb[7, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 7*.h, 0)
  POINT pb[7, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 7*.h, 0)
  POINT pb[7, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 7*.h, 0)
  POINT pb[7, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 7*.h, 90)
  POINT pb[7, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 7*.h, 90)
  ;
.END
.PROGRAM product1()@26/10/13 16:54 #4
  ;
  $product.name = "Program  1: 58x49.5x11, 30kg, 9x5"
  ;
  bag.length = 620
  bag.width = 420
  bag.height = 120
  ;
  bag.weight = 30
  ;
  pallet.length = 1200
  pallet.width = 1000
  pallet.height = 150
  ;
  .l = bag.length
  .w = bag.width
  .h = bag.height
  .g1 = 5
  .g2 = 5
  .g3 = 3 * .w - 2 * .l + 2 * .g2
  ;
  pallet.x.shift = (pallet.width - (.w + .l + .g1)) / 2
  pallet.y.shift = (pallet.length - (2 * .l + .g2)) / 2
  ;
  ; Default layout
  ;
  max.layers = 9
  ;
  layer.bags[1] = 5
  POINT pb[1, 1] = TRANS (0.5 * .w, 0.5 * .l, .h, 0)
  POINT pb[1, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, .h, 0)
  POINT pb[1, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, .h, 90)
  POINT pb[1, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, .h, 90)
  POINT pb[1, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, .h, 90)
  ;
  layer.bags[2] = 5
  POINT pb[2, 1] = TRANS (0.5 * .l, 0.5 * .w, 2 * .h, 90)
  POINT pb[2, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 2 * .h, 90)
  POINT pb[2, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 2 * .h, 90)
  POINT pb[2, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 2 * .h, 0)
  POINT pb[2, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 2 * .h, 0)
  ;
  layer.bags[3] = 5
  POINT pb[3, 1] = TRANS (0.5 * .w, 0.5 * .l, 3 * .h, 0)
  POINT pb[3, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 3 * .h, 0)
  POINT pb[3, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 3 * .h, 90)
  POINT pb[3, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 3 * .h, 90)
  POINT pb[3, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 3 * .h, 90)
  ;
  layer.bags[4] = 5
  POINT pb[4, 1] = TRANS (0.5 * .l, 0.5 * .w, 4 * .h, 90)
  POINT pb[4, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 4 * .h, 90)
  POINT pb[4, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 4 * .h, 90)
  POINT pb[4, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 4 * .h, 0)
  POINT pb[4, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 4 * .h, 0)
  ;
  layer.bags[5] = 5
  POINT pb[5, 1] = TRANS (0.5 * .w, 0.5 * .l, 5 * .h, 0)
  POINT pb[5, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 5 * .h, 0)
  POINT pb[5, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 5 * .h, 90)
  POINT pb[5, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 5 * .h, 90)
  POINT pb[5, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 5 * .h, 90)
  ;
  layer.bags[6] = 5
  POINT pb[6, 1] = TRANS (0.5 * .l, 0.5 * .w, 6 * .h, 90)
  POINT pb[6, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 6 * .h, 90)
  POINT pb[6, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 6 * .h, 90)
  POINT pb[6, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 6 * .h, 0)
  POINT pb[6, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 6 * .h, 0)
  ;
  layer.bags[7] = 5
  POINT pb[7, 1] = TRANS (0.5 * .w, 0.5 * .l, 7 * .h, 0)
  POINT pb[7, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 7 * .h, 0)
  POINT pb[7, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 7 * .h, 90)
  POINT pb[7, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 7 * .h, 90)
  POINT pb[7, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 7 * .h, 90)
  ;
  layer.bags[8] = 5
  POINT pb[8, 1] = TRANS (0.5 * .l, 0.5 * .w, 8 * .h, 90)
  POINT pb[8, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 8 * .h, 90)
  POINT pb[8, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 8 * .h, 90)
  POINT pb[8, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 8 * .h, 0)
  POINT pb[8, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 8 * .h, 0)
  ;
  layer.bags[9] = 5
  POINT pb[9, 1] = TRANS (0.5 * .w, 0.5 * .l, 9 * .h, 0)
  POINT pb[9, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 9 * .h, 0)
  POINT pb[9, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 9 * .h, 90)
  POINT pb[9, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 9 * .h, 90)
  POINT pb[9, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 9 * .h, 90)
  ;
.END
.PROGRAM product10 ()
  ;
  $product.name = "Program 10: 54x45x11,   40kg, 9x5"
  ;
  bag.length = 580
  bag.width = 380
  bag.height = 120
  ;
  bag.weight = 25
  ;
  pallet.length = 1200
  pallet.width = 1000
  pallet.height = 150
  ;
  .l = bag.length
  .w = bag.width
  .h = bag.height
  .g1 = 20
  .g2 = 20
  .g3 = 3 * .w - 2 * .l + 2 * .g2
  ;
  pallet.x.shift = (pallet.width - (.w + .l + .g1)) / 2
  pallet.y.shift = (pallet.length - (2 * .l + .g2)) / 2
  ;
  ; Default layout
  ;
  max.layers = 9
  ;
  layer.bags[1] = 5
  POINT pb[1, 1] = TRANS (0.5 * .w, 0.5 * .l, .h, 0)
  POINT pb[1, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, .h, 0)
  POINT pb[1, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, .h, 90)
  POINT pb[1, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, .h, 90)
  POINT pb[1, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, .h, 90)
  ;
  layer.bags[2] = 5
  POINT pb[2, 1] = TRANS (0.5 * .l, 0.5 * .w, 2 * .h, 90)
  POINT pb[2, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 2 * .h, 90)
  POINT pb[2, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 2 * .h, 90)
  POINT pb[2, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 2 * .h, 0)
  POINT pb[2, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 2 * .h, 0)
  ;
  layer.bags[3] = 5
  POINT pb[3, 1] = TRANS (0.5 * .w, 0.5 * .l, 3 * .h, 0)
  POINT pb[3, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 3 * .h, 0)
  POINT pb[3, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 3 * .h, 90)
  POINT pb[3, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 3 * .h, 90)
  POINT pb[3, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 3 * .h, 90)
  ;
  layer.bags[4] = 5
  POINT pb[4, 1] = TRANS (0.5 * .l, 0.5 * .w, 4 * .h, 90)
  POINT pb[4, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 4 * .h, 90)
  POINT pb[4, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 4 * .h, 90)
  POINT pb[4, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 4 * .h, 0)
  POINT pb[4, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 4 * .h, 0)
  ;
  layer.bags[5] = 5
  POINT pb[5, 1] = TRANS (0.5 * .w, 0.5 * .l, 5 * .h, 0)
  POINT pb[5, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 5 * .h, 0)
  POINT pb[5, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 5 * .h, 90)
  POINT pb[5, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 5 * .h, 90)
  POINT pb[5, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 5 * .h, 90)
  ;
  layer.bags[6] = 5
  POINT pb[6, 1] = TRANS (0.5 * .l, 0.5 * .w, 6 * .h, 90)
  POINT pb[6, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 6 * .h, 90)
  POINT pb[6, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 6 * .h, 90)
  POINT pb[6, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 6 * .h, 0)
  POINT pb[6, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 6 * .h, 0)
  ;
  layer.bags[7] = 5
  POINT pb[7, 1] = TRANS (0.5 * .w, 0.5 * .l, 7 * .h, 0)
  POINT pb[7, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 7 * .h, 0)
  POINT pb[7, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 7 * .h, 90)
  POINT pb[7, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 7 * .h, 90)
  POINT pb[7, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 7 * .h, 90)
  ;
  layer.bags[8] = 5
  POINT pb[8, 1] = TRANS (0.5 * .l, 0.5 * .w, 8 * .h, 90)
  POINT pb[8, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 8 * .h, 90)
  POINT pb[8, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 8 * .h, 90)
  POINT pb[8, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 8 * .h, 0)
  POINT pb[8, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 8 * .h, 0)
  ;
  layer.bags[9] = 5
  POINT pb[9, 1] = TRANS (0.5 * .w, 0.5 * .l, 9 * .h, 0)
  POINT pb[9, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 9 * .h, 0)
  POINT pb[9, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 9 * .h, 90)
  POINT pb[9, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 9 * .h, 90)
  POINT pb[9, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 9 * .h, 90)
  ;
.END
.PROGRAM product2 ()
  ;
  $product.name = "Program  2: 54x45x11,   30kg, 9x5"
  ;
  bag.length = 580
  bag.width = 380
  bag.height = 120
  ;
  bag.weight = 25
  ;
  pallet.length = 1200
  pallet.width = 1000
  pallet.height = 150
  ;
  .l = bag.length
  .w = bag.width
  .h = bag.height
  .g1 = 20
  .g2 = 20
  .g3 = 3 * .w - 2 * .l + 2 * .g2
  ;
  pallet.x.shift = (pallet.width - (.w + .l + .g1)) / 2
  pallet.y.shift = (pallet.length - (2 * .l + .g2)) / 2
  ;
  ; Default layout
  ;
  max.layers = 9
  ;
  layer.bags[1] = 5
  POINT pb[1, 1] = TRANS (0.5 * .w, 0.5 * .l, .h, 0)
  POINT pb[1, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, .h, 0)
  POINT pb[1, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, .h, 90)
  POINT pb[1, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, .h, 90)
  POINT pb[1, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, .h, 90)
  ;
  layer.bags[2] = 5
  POINT pb[2, 1] = TRANS (0.5 * .l, 0.5 * .w, 2 * .h, 90)
  POINT pb[2, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 2 * .h, 90)
  POINT pb[2, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 2 * .h, 90)
  POINT pb[2, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 2 * .h, 0)
  POINT pb[2, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 2 * .h, 0)
  ;
  layer.bags[3] = 5
  POINT pb[3, 1] = TRANS (0.5 * .w, 0.5 * .l, 3 * .h, 0)
  POINT pb[3, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 3 * .h, 0)
  POINT pb[3, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 3 * .h, 90)
  POINT pb[3, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 3 * .h, 90)
  POINT pb[3, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 3 * .h, 90)
  ;
  layer.bags[4] = 5
  POINT pb[4, 1] = TRANS (0.5 * .l, 0.5 * .w, 4 * .h, 90)
  POINT pb[4, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 4 * .h, 90)
  POINT pb[4, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 4 * .h, 90)
  POINT pb[4, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 4 * .h, 0)
  POINT pb[4, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 4 * .h, 0)
  ;
  layer.bags[5] = 5
  POINT pb[5, 1] = TRANS (0.5 * .w, 0.5 * .l, 5 * .h, 0)
  POINT pb[5, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 5 * .h, 0)
  POINT pb[5, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 5 * .h, 90)
  POINT pb[5, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 5 * .h, 90)
  POINT pb[5, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 5 * .h, 90)
  ;
  layer.bags[6] = 5
  POINT pb[6, 1] = TRANS (0.5 * .l, 0.5 * .w, 6 * .h, 90)
  POINT pb[6, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 6 * .h, 90)
  POINT pb[6, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 6 * .h, 90)
  POINT pb[6, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 6 * .h, 0)
  POINT pb[6, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 6 * .h, 0)
  ;
  layer.bags[7] = 5
  POINT pb[7, 1] = TRANS (0.5 * .w, 0.5 * .l, 7 * .h, 0)
  POINT pb[7, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 7 * .h, 0)
  POINT pb[7, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 7 * .h, 90)
  POINT pb[7, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 7 * .h, 90)
  POINT pb[7, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 7 * .h, 90)
  ;
  layer.bags[8] = 5
  POINT pb[8, 1] = TRANS (0.5 * .l, 0.5 * .w, 8 * .h, 90)
  POINT pb[8, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 8 * .h, 90)
  POINT pb[8, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 8 * .h, 90)
  POINT pb[8, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 8 * .h, 0)
  POINT pb[8, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 8 * .h, 0)
  ;
  layer.bags[9] = 5
  POINT pb[9, 1] = TRANS (0.5 * .w, 0.5 * .l, 9 * .h, 0)
  POINT pb[9, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 9 * .h, 0)
  POINT pb[9, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 9 * .h, 90)
  POINT pb[9, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 9 * .h, 90)
  POINT pb[9, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 9 * .h, 90)
  ;
.END
.PROGRAM product3 ()
  ;
  $product.name = "Program  3: 54x45x11,   40kg, 7x5"
  ;
  bag.length = 580
  bag.width = 380
  bag.height = 120
  ;
  bag.weight = 40
  ;
  pallet.length = 1200
  pallet.width = 1000
  pallet.height = 150
  ;
  .l = bag.length
  .w = bag.width
  .h = bag.height
  .g1 = 20
  .g2 = 20
  .g3 = 3 * .w - 2 * .l + 2 * .g2
  ;
  pallet.x.shift = (pallet.width - (.w + .l + .g1)) / 2
  pallet.y.shift = (pallet.length - (2 * .l + .g2)) / 2
  ;
  ; Default layout
  ;
  max.layers = 7
  ;
  layer.bags[1] = 5
  POINT pb[1, 1] = TRANS (0.5 * .w, 0.5 * .l, .h, 0)
  POINT pb[1, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, .h, 0)
  POINT pb[1, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, .h, 90)
  POINT pb[1, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, .h, 90)
  POINT pb[1, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, .h, 90)
  ;
  layer.bags[2] = 5
  POINT pb[2, 1] = TRANS (0.5 * .l, 0.5 * .w, 2 * .h, 90)
  POINT pb[2, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 2 * .h, 90)
  POINT pb[2, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 2 * .h, 90)
  POINT pb[2, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 2 * .h, 0)
  POINT pb[2, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 2 * .h, 0)
  ;
  layer.bags[3] = 5
  POINT pb[3, 1] = TRANS (0.5 * .w, 0.5 * .l, 3 * .h, 0)
  POINT pb[3, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 3 * .h, 0)
  POINT pb[3, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 3 * .h, 90)
  POINT pb[3, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 3 * .h, 90)
  POINT pb[3, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 3 * .h, 90)
  ;
  layer.bags[4] = 5
  POINT pb[4, 1] = TRANS (0.5 * .l, 0.5 * .w, 4 * .h, 90)
  POINT pb[4, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 4 * .h, 90)
  POINT pb[4, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 4 * .h, 90)
  POINT pb[4, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 4 * .h, 0)
  POINT pb[4, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 4 * .h, 0)
  ;
  layer.bags[5] = 5
  POINT pb[5, 1] = TRANS (0.5 * .w, 0.5 * .l, 5 * .h, 0)
  POINT pb[5, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 5 * .h, 0)
  POINT pb[5, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 5 * .h, 90)
  POINT pb[5, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 5 * .h, 90)
  POINT pb[5, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 5 * .h, 90)
  ;
  layer.bags[6] = 5
  POINT pb[6, 1] = TRANS (0.5 * .l, 0.5 * .w, 6 * .h, 90)
  POINT pb[6, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 6 * .h, 90)
  POINT pb[6, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 6 * .h, 90)
  POINT pb[6, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 6 * .h, 0)
  POINT pb[6, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 6 * .h, 0)
  ;
  layer.bags[7] = 5
  POINT pb[7, 1] = TRANS (0.5 * .w, 0.5 * .l, 7 * .h, 0)
  POINT pb[7, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 7 * .h, 0)
  POINT pb[7, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 7 * .h, 90)
  POINT pb[7, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 7 * .h, 90)
  POINT pb[7, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 7 * .h, 90)
  ;
.END
.PROGRAM product4 ()
  ;
  $product.name = "Program  4: 41x37x11,   25kg, 7x8"
  ;
  bag.length = 445
  bag.width = 305
  bag.height = 120
  ;
  bag.weight = 25
  ;
  pallet.length = 1200
  pallet.width = 1000
  pallet.height = 150
  ;
  .l = bag.length
  .w = bag.width
  .h = bag.height
  .g1 = 10
  .d1 = 5
  .g2 = (3 * .w + 3 * .d1 - 2 * .l) / 2
  .d2 = 3 * .w + 2 * .g1 - 2 * .l
  ;
  pallet.x.shift = (pallet.width - (2 * .l + .d2)) / 2
  pallet.y.shift = (pallet.length - (4 * .w + 3 * .d1)) / 2
  ;
  ; Default layout
  ;
  max.layers = 7
  ;
  layer.bags[1] = 8
  POINT pb[1, 1] = TRANS (0.5 * .w, 0.5 * .l, .h, 0)
  POINT pb[1, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, .h, 0)
  POINT pb[1, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, .h, 0)
  POINT pb[1, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, .h, 90)
  POINT pb[1, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, .h, 90)
  ;
  layer.bags[2] = 8
  POINT pb[2, 1] = TRANS (0.5 * .l, 0.5 * .w, 2*.h, 90)
  POINT pb[2, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 2*.h, 90)
  POINT pb[2, 3] = TRANS (0.5 * .l, 2.5 * .w + 2*.d1, 2*.h, 90)
  POINT pb[2, 4] = TRANS (0.5 * .l, 3.5 * .w + 3*.d1, 2*.h, 90)
  POINT pb[2, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 2*.h, 90)
  POINT pb[2, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 2*.h, 90)
  POINT pb[2, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2*.d1, 2*.h, 90)
  POINT pb[2, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3*.d1, 2*.h, 90)
  ;
  layer.bags[3] = 8
  POINT pb[3, 1] = TRANS (0.5 * .w, 0.5 * .l, 3*.h, 0)
  POINT pb[3, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 3*.h, 0)
  POINT pb[3, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 3*.h, 0)
  POINT pb[3, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 3*.h, 0)
  POINT pb[3, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 3*.h, 0)
  POINT pb[3, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 3*.h, 0)
  POINT pb[3, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 3*.h, 90)
  POINT pb[3, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 3*.h, 90)
  ;
  layer.bags[4] = 8
  POINT pb[4, 1] = TRANS (0.5 * .l, 0.5 * .w, 4*.h, 90)
  POINT pb[4, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 4*.h, 90)
  POINT pb[4, 3] = TRANS (0.5 * .l, 2.5 * .w + 2*.d1, 4*.h, 90)
  POINT pb[4, 4] = TRANS (0.5 * .l, 3.5 * .w + 3*.d1, 4*.h, 90)
  POINT pb[4, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 4*.h, 90)
  POINT pb[4, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 4*.h, 90)
  POINT pb[4, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2*.d1, 4*.h, 90)
  POINT pb[4, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3*.d1, 4*.h, 90)
  ;
  layer.bags[5] = 8
  POINT pb[5, 1] = TRANS (0.5 * .w, 0.5 * .l, 5*.h, 0)
  POINT pb[5, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 5*.h, 0)
  POINT pb[5, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 5*.h, 0)
  POINT pb[5, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 5*.h, 0)
  POINT pb[5, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 5*.h, 0)
  POINT pb[5, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 5*.h, 0)
  POINT pb[5, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 5*.h, 90)
  POINT pb[5, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 5*.h, 90)
  ;
  layer.bags[6] = 8
  POINT pb[6, 1] = TRANS (0.5 * .l, 0.5 * .w, 6*.h, 90)
  POINT pb[6, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 6*.h, 90)
  POINT pb[6, 3] = TRANS (0.5 * .l, 2.5 * .w + 2*.d1, 6*.h, 90)
  POINT pb[6, 4] = TRANS (0.5 * .l, 3.5 * .w + 3*.d1, 6*.h, 90)
  POINT pb[6, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 6*.h, 90)
  POINT pb[6, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 6*.h, 90)
  POINT pb[6, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2*.d1, 6*.h, 90)
  POINT pb[6, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3*.d1, 6*.h, 90)
  ;
  layer.bags[7] = 8
  POINT pb[7, 1] = TRANS (0.5 * .w, 0.5 * .l, 7*.h, 0)
  POINT pb[7, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 7*.h, 0)
  POINT pb[7, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 7*.h, 0)
  POINT pb[7, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 7*.h, 0)
  POINT pb[7, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 7*.h, 0)
  POINT pb[7, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 7*.h, 0)
  POINT pb[7, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 7*.h, 90)
  POINT pb[7, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 7*.h, 90)
  ;
.END
.PROGRAM product5 ()
  ;
  $product.name = "Program  5: 49x40x11,   25kg, 7x8"
  ;
  bag.length = 500
  bag.width = 330
  bag.height = 120
  ;
  bag.weight = 25
  ;
  pallet.length = 1200
  pallet.width = 1000
  pallet.height = 150
  ;
  .l = bag.length
  .w = bag.width
  .h = bag.height
  .g1 = 10
  .d1 = 5
  .g2 = (3 * .w + 3 * .d1 - 2 * .l) / 2
  .d2 = 3 * .w + 2 * .g1 - 2 * .l
  ;
  pallet.x.shift = (pallet.width - (2 * .l + .d2)) / 2
  pallet.y.shift = (pallet.length - (4 * .w + 3 * .d1)) / 2
  ;
  ; Default layout
  ;
  max.layers = 7
  ;
  layer.bags[1] = 8
  POINT pb[1, 1] = TRANS (0.5 * .w, 0.5 * .l, .h, 0)
  POINT pb[1, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, .h, 0)
  POINT pb[1, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, .h, 0)
  POINT pb[1, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, .h, 90)
  POINT pb[1, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, .h, 90)
  ;
  layer.bags[2] = 8
  POINT pb[2, 1] = TRANS (0.5 * .l, 0.5 * .w, 2*.h, 90)
  POINT pb[2, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 2*.h, 90)
  POINT pb[2, 3] = TRANS (0.5 * .l, 2.5 * .w + 2*.d1, 2*.h, 90)
  POINT pb[2, 4] = TRANS (0.5 * .l, 3.5 * .w + 3*.d1, 2*.h, 90)
  POINT pb[2, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 2*.h, 90)
  POINT pb[2, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 2*.h, 90)
  POINT pb[2, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2*.d1, 2*.h, 90)
  POINT pb[2, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3*.d1, 2*.h, 90)
  ;
  layer.bags[3] = 8
  POINT pb[3, 1] = TRANS (0.5 * .w, 0.5 * .l, 3*.h, 0)
  POINT pb[3, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 3*.h, 0)
  POINT pb[3, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 3*.h, 0)
  POINT pb[3, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 3*.h, 0)
  POINT pb[3, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 3*.h, 0)
  POINT pb[3, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 3*.h, 0)
  POINT pb[3, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 3*.h, 90)
  POINT pb[3, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 3*.h, 90)
  ;
  layer.bags[4] = 8
  POINT pb[4, 1] = TRANS (0.5 * .l, 0.5 * .w, 4*.h, 90)
  POINT pb[4, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 4*.h, 90)
  POINT pb[4, 3] = TRANS (0.5 * .l, 2.5 * .w + 2*.d1, 4*.h, 90)
  POINT pb[4, 4] = TRANS (0.5 * .l, 3.5 * .w + 3*.d1, 4*.h, 90)
  POINT pb[4, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 4*.h, 90)
  POINT pb[4, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 4*.h, 90)
  POINT pb[4, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2*.d1, 4*.h, 90)
  POINT pb[4, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3*.d1, 4*.h, 90)
  ;
  layer.bags[5] = 8
  POINT pb[5, 1] = TRANS (0.5 * .w, 0.5 * .l, 5*.h, 0)
  POINT pb[5, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 5*.h, 0)
  POINT pb[5, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 5*.h, 0)
  POINT pb[5, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 5*.h, 0)
  POINT pb[5, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 5*.h, 0)
  POINT pb[5, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 5*.h, 0)
  POINT pb[5, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 5*.h, 90)
  POINT pb[5, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 5*.h, 90)
  ;
  layer.bags[6] = 8
  POINT pb[6, 1] = TRANS (0.5 * .l, 0.5 * .w, 6*.h, 90)
  POINT pb[6, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 6*.h, 90)
  POINT pb[6, 3] = TRANS (0.5 * .l, 2.5 * .w + 2*.d1, 6*.h, 90)
  POINT pb[6, 4] = TRANS (0.5 * .l, 3.5 * .w + 3*.d1, 6*.h, 90)
  POINT pb[6, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 6*.h, 90)
  POINT pb[6, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 6*.h, 90)
  POINT pb[6, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2*.d1, 6*.h, 90)
  POINT pb[6, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3*.d1, 6*.h, 90)
  ;
  layer.bags[7] = 8
  POINT pb[7, 1] = TRANS (0.5 * .w, 0.5 * .l, 7*.h, 0)
  POINT pb[7, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 7*.h, 0)
  POINT pb[7, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 7*.h, 0)
  POINT pb[7, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 7*.h, 0)
  POINT pb[7, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 7*.h, 0)
  POINT pb[7, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 7*.h, 0)
  POINT pb[7, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 7*.h, 90)
  POINT pb[7, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 7*.h, 90)
  ;
.END
.PROGRAM product6 ()
  ;
  $product.name = "Program  6: 54x45x11,   25kg, 10x5"
  ;
  bag.length = 580
  bag.width = 380
  bag.height = 120
  ;
  bag.weight = 25
  ;
  pallet.length = 1200
  pallet.width = 1000
  pallet.height = 150
  ;
  .l = bag.length
  .w = bag.width
  .h = bag.height
  .g1 = 20
  .g2 = 20
  .g3 = 3 * .w - 2 * .l + 2 * .g2
  ;
  pallet.x.shift = (pallet.width - (.w + .l + .g1)) / 2
  pallet.y.shift = (pallet.length - (2 * .l + .g2)) / 2
  ;
  ; Default layout
  ;
  max.layers = 10
  ;
  layer.bags[1] = 5
  POINT pb[1, 1] = TRANS (0.5 * .w, 0.5 * .l, .h, 0)
  POINT pb[1, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, .h, 0)
  POINT pb[1, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, .h, 90)
  POINT pb[1, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, .h, 90)
  POINT pb[1, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, .h, 90)
  ;
  layer.bags[2] = 5
  POINT pb[2, 1] = TRANS (0.5 * .l, 0.5 * .w, 2 * .h, 90)
  POINT pb[2, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 2 * .h, 90)
  POINT pb[2, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 2 * .h, 90)
  POINT pb[2, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 2 * .h, 0)
  POINT pb[2, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 2 * .h, 0)
  ;
  layer.bags[3] = 5
  POINT pb[3, 1] = TRANS (0.5 * .w, 0.5 * .l, 3 * .h, 0)
  POINT pb[3, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 3 * .h, 0)
  POINT pb[3, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 3 * .h, 90)
  POINT pb[3, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 3 * .h, 90)
  POINT pb[3, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 3 * .h, 90)
  ;
  layer.bags[4] = 5
  POINT pb[4, 1] = TRANS (0.5 * .l, 0.5 * .w, 4 * .h, 90)
  POINT pb[4, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 4 * .h, 90)
  POINT pb[4, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 4 * .h, 90)
  POINT pb[4, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 4 * .h, 0)
  POINT pb[4, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 4 * .h, 0)
  ;
  layer.bags[5] = 5
  POINT pb[5, 1] = TRANS (0.5 * .w, 0.5 * .l, 5 * .h, 0)
  POINT pb[5, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 5 * .h, 0)
  POINT pb[5, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 5 * .h, 90)
  POINT pb[5, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 5 * .h, 90)
  POINT pb[5, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 5 * .h, 90)
  ;
  layer.bags[6] = 5
  POINT pb[6, 1] = TRANS (0.5 * .l, 0.5 * .w, 6 * .h, 90)
  POINT pb[6, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 6 * .h, 90)
  POINT pb[6, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 6 * .h, 90)
  POINT pb[6, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 6 * .h, 0)
  POINT pb[6, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 6 * .h, 0)
  ;
  layer.bags[7] = 5
  POINT pb[7, 1] = TRANS (0.5 * .w, 0.5 * .l, 7 * .h, 0)
  POINT pb[7, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 7 * .h, 0)
  POINT pb[7, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 7 * .h, 90)
  POINT pb[7, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 7 * .h, 90)
  POINT pb[7, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 7 * .h, 90)
  ;
  layer.bags[8] = 5
  POINT pb[8, 1] = TRANS (0.5 * .l, 0.5 * .w, 8 * .h, 90)
  POINT pb[8, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 8 * .h, 90)
  POINT pb[8, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 8 * .h, 90)
  POINT pb[8, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 8 * .h, 0)
  POINT pb[8, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 8 * .h, 0)
  ;
  layer.bags[9] = 5
  POINT pb[9, 1] = TRANS (0.5 * .w, 0.5 * .l, 9 * .h, 0)
  POINT pb[9, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 9 * .h, 0)
  POINT pb[9, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 9 * .h, 90)
  POINT pb[9, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 9 * .h, 90)
  POINT pb[9, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 9 * .h, 90)
  ;
  layer.bags[10] = 5
  POINT pb[10, 1] = TRANS (0.5 * .l, 0.5 * .w, 10 * .h, 90)
  POINT pb[10, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 10 * .h, 90)
  POINT pb[10, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 10 * .h, 90)
  POINT pb[10, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 10 * .h, 0)
  POINT pb[10, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 10 * .h, 0)
  ;
.END
.PROGRAM product7 ()
  ;
  $product.name = "Program  7: 41x37x11,   20kg, 8x8"
  ;
  bag.length = 445
  bag.width = 305
  bag.height = 120
  ;
  bag.weight = 25
  ;
  pallet.length = 1200
  pallet.width = 1000
  pallet.height = 150
  ;
  .l = bag.length
  .w = bag.width
  .h = bag.height
  .g1 = 10
  .d1 = 5
  .g2 = (3 * .w + 3 * .d1 - 2 * .l) / 2
  .d2 = 3 * .w + 2 * .g1 - 2 * .l
  ;
  pallet.x.shift = (pallet.width - (2 * .l + .d2)) / 2
  pallet.y.shift = (pallet.length - (4 * .w + 3 * .d1)) / 2
  ;
  ; Default layout
  ;
  max.layers = 8
  ;
  layer.bags[1] = 8
  POINT pb[1, 1] = TRANS (0.5 * .w, 0.5 * .l, .h, 0)
  POINT pb[1, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, .h, 0)
  POINT pb[1, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, .h, 0)
  POINT pb[1, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, .h, 0)
  POINT pb[1, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, .h, 90)
  POINT pb[1, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, .h, 90)
  ;
  layer.bags[2] = 8
  POINT pb[2, 1] = TRANS (0.5 * .l, 0.5 * .w, 2 * .h, 90)
  POINT pb[2, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 2 * .h, 90)
  POINT pb[2, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .d1, 2 * .h, 90)
  POINT pb[2, 4] = TRANS (0.5 * .l, 3.5 * .w + 3 * .d1, 2 * .h, 90)
  POINT pb[2, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 2 * .h, 90)
  POINT pb[2, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 2 * .h, 90)
  POINT pb[2, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2 * .d1, 2 * .h, 90)
  POINT pb[2, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3 * .d1, 2 * .h, 90)
  ;
  layer.bags[3] = 8
  POINT pb[3, 1] = TRANS (0.5 * .w, 0.5 * .l, 3 * .h, 0)
  POINT pb[3, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 3 * .h, 0)
  POINT pb[3, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 3 * .h, 0)
  POINT pb[3, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 3 * .h, 0)
  POINT pb[3, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 3 * .h, 0)
  POINT pb[3, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 3 * .h, 0)
  POINT pb[3, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 3 * .h, 90)
  POINT pb[3, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 3 * .h, 90)
  ;
  layer.bags[4] = 8
  POINT pb[4, 1] = TRANS (0.5 * .l, 0.5 * .w, 4 * .h, 90)
  POINT pb[4, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 4 * .h, 90)
  POINT pb[4, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .d1, 4 * .h, 90)
  POINT pb[4, 4] = TRANS (0.5 * .l, 3.5 * .w + 3 * .d1, 4 * .h, 90)
  POINT pb[4, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 4 * .h, 90)
  POINT pb[4, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 4 * .h, 90)
  POINT pb[4, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2 * .d1, 4 * .h, 90)
  POINT pb[4, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3 * .d1, 4 * .h, 90)
  ;
  layer.bags[5] = 8
  POINT pb[5, 1] = TRANS (0.5 * .w, 0.5 * .l, 5 * .h, 0)
  POINT pb[5, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 5 * .h, 0)
  POINT pb[5, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 5 * .h, 0)
  POINT pb[5, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 5 * .h, 0)
  POINT pb[5, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 5 * .h, 0)
  POINT pb[5, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 5 * .h, 0)
  POINT pb[5, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 5 * .h, 90)
  POINT pb[5, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 5 * .h, 90)
  ;
  layer.bags[6] = 8
  POINT pb[6, 1] = TRANS (0.5 * .l, 0.5 * .w, 6 * .h, 90)
  POINT pb[6, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 6 * .h, 90)
  POINT pb[6, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .d1, 6 * .h, 90)
  POINT pb[6, 4] = TRANS (0.5 * .l, 3.5 * .w + 3 * .d1, 6 * .h, 90)
  POINT pb[6, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 6 * .h, 90)
  POINT pb[6, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 6 * .h, 90)
  POINT pb[6, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2 * .d1, 6 * .h, 90)
  POINT pb[6, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3 * .d1, 6 * .h, 90)
  ;
  layer.bags[7] = 8
  POINT pb[7, 1] = TRANS (0.5 * .w, 0.5 * .l, 7 * .h, 0)
  POINT pb[7, 2] = TRANS (1.5 * .w + .g1, 0.5 * .l, 7 * .h, 0)
  POINT pb[7, 3] = TRANS (2.5 * .w + 2 * .g1, 0.5 * .l, 7 * .h, 0)
  POINT pb[7, 4] = TRANS (0.5 * .w, 1.5 * .l + .w + 2 * .g2, 7 * .h, 0)
  POINT pb[7, 5] = TRANS (1.5 * .w + .g1, 1.5 * .l + .w + 2 * .g2, 7 * .h, 0)
  POINT pb[7, 6] = TRANS (2.5 * .w + 2 * .g1, 1.5 * .l + .w + 2 * .g2, 7 * .h, 0)
  POINT pb[7, 7] = TRANS (0.5 * .l, .l + 0.5 * .w + .g2, 7 * .h, 90)
  POINT pb[7, 8] = TRANS (1.5 * .l + .d2, .l + 0.5 * .w + .g2, 7 * .h, 90)
  ;
  layer.bags[8] = 8
  POINT pb[8, 1] = TRANS (0.5 * .l, 0.5 * .w, 8 * .h, 90)
  POINT pb[8, 2] = TRANS (0.5 * .l, 1.5 * .w + .d1, 8 * .h, 90)
  POINT pb[8, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .d1, 8 * .h, 90)
  POINT pb[8, 4] = TRANS (0.5 * .l, 3.5 * .w + 3 * .d1, 8 * .h, 90)
  POINT pb[8, 5] = TRANS (1.5 * .l + .d2, 0.5 * .w, 8 * .h, 90)
  POINT pb[8, 6] = TRANS (1.5 * .l + .d2, 1.5 * .w + .d1, 8 * .h, 90)
  POINT pb[8, 7] = TRANS (1.5 * .l + .d2, 2.5 * .w + 2 * .d1, 8 * .h, 90)
  POINT pb[8, 8] = TRANS (1.5 * .l + .d2, 3.5 * .w + 3 * .d1, 8 * .h, 90)
  ;
.END
.PROGRAM product8 ()
  ;
  $product.name = "Program  8: 58x49.5x11, 30kg, 12x5"
  ;
  bag.length = 620
  bag.width = 420
  bag.height = 120
  ;
  bag.weight = 30
  ;
  pallet.length = 1200
  pallet.width = 1000
  pallet.height = 150
  ;
  .l = bag.length
  .w = bag.width
  .h = bag.height
  .g1 = 5
  .g2 = 5
  .g3 = 3 * .w - 2 * .l + 2 * .g2
  ;
  pallet.x.shift = (pallet.width - (.w + .l + .g1)) / 2
  pallet.y.shift = (pallet.length - (2 * .l + .g2)) / 2
  ;
  ; Default layout
  ;
  max.layers = 12
  ;
  layer.bags[1] = 5
  POINT pb[1, 1] = TRANS (0.5 * .w, 0.5 * .l, .h, 0)
  POINT pb[1, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, .h, 0)
  POINT pb[1, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, .h, 90)
  POINT pb[1, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, .h, 90)
  POINT pb[1, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, .h, 90)
  ;
  layer.bags[2] = 5
  POINT pb[2, 1] = TRANS (0.5 * .l, 0.5 * .w, 2 * .h, 90)
  POINT pb[2, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 2 * .h, 90)
  POINT pb[2, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 2 * .h, 90)
  POINT pb[2, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 2 * .h, 0)
  POINT pb[2, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 2 * .h, 0)
  ;
  layer.bags[3] = 5
  POINT pb[3, 1] = TRANS (0.5 * .w, 0.5 * .l, 3 * .h, 0)
  POINT pb[3, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 3 * .h, 0)
  POINT pb[3, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 3 * .h, 90)
  POINT pb[3, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 3 * .h, 90)
  POINT pb[3, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 3 * .h, 90)
  ;
  layer.bags[4] = 5
  POINT pb[4, 1] = TRANS (0.5 * .l, 0.5 * .w, 4 * .h, 90)
  POINT pb[4, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 4 * .h, 90)
  POINT pb[4, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 4 * .h, 90)
  POINT pb[4, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 4 * .h, 0)
  POINT pb[4, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 4 * .h, 0)
  ;
  layer.bags[5] = 5
  POINT pb[5, 1] = TRANS (0.5 * .w, 0.5 * .l, 5 * .h, 0)
  POINT pb[5, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 5 * .h, 0)
  POINT pb[5, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 5 * .h, 90)
  POINT pb[5, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 5 * .h, 90)
  POINT pb[5, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 5 * .h, 90)
  ;
  layer.bags[6] = 5
  POINT pb[6, 1] = TRANS (0.5 * .l, 0.5 * .w, 6 * .h, 90)
  POINT pb[6, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 6 * .h, 90)
  POINT pb[6, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 6 * .h, 90)
  POINT pb[6, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 6 * .h, 0)
  POINT pb[6, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 6 * .h, 0)
  ;
  layer.bags[7] = 5
  POINT pb[7, 1] = TRANS (0.5 * .w, 0.5 * .l, 7 * .h, 0)
  POINT pb[7, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 7 * .h, 0)
  POINT pb[7, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 7 * .h, 90)
  POINT pb[7, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 7 * .h, 90)
  POINT pb[7, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 7 * .h, 90)
  ;
  layer.bags[8] = 5
  POINT pb[8, 1] = TRANS (0.5 * .l, 0.5 * .w, 8 * .h, 90)
  POINT pb[8, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 8 * .h, 90)
  POINT pb[8, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 8 * .h, 90)
  POINT pb[8, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 8 * .h, 0)
  POINT pb[8, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 8 * .h, 0)
  ;
  layer.bags[9] = 5
  POINT pb[9, 1] = TRANS (0.5 * .w, 0.5 * .l, 9 * .h, 0)
  POINT pb[9, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 9 * .h, 0)
  POINT pb[9, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 9 * .h, 90)
  POINT pb[9, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 9 * .h, 90)
  POINT pb[9, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 9 * .h, 90)
  ;
  layer.bags[10] = 5
  POINT pb[10, 1] = TRANS (0.5 * .l, 0.5 * .w, 10 * .h, 90)
  POINT pb[10, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 10 * .h, 90)
  POINT pb[10, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 10 * .h, 90)
  POINT pb[10, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 10 * .h, 0)
  POINT pb[10, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 10 * .h, 0)
  ;
  layer.bags[11] = 5
  POINT pb[11, 1] = TRANS (0.5 * .w, 0.5 * .l, 11 * .h, 0)
  POINT pb[11, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 11 * .h, 0)
  POINT pb[11, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 11 * .h, 90)
  POINT pb[11, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 11 * .h, 90)
  POINT pb[11, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 11 * .h, 90)
  ;
  layer.bags[12] = 5
  POINT pb[12, 1] = TRANS (0.5 * .l, 0.5 * .w, 12 * .h, 90)
  POINT pb[12, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 12 * .h, 90)
  POINT pb[12, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 12 * .h, 90)
  POINT pb[12, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 12 * .h, 0)
  POINT pb[12, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 12 * .h, 0)
  ;
.END
.PROGRAM product9 ()
  ;
  $product.name = "Program  9: 54x45x11,   30kg, 12x5"
  ;
  bag.length = 580
  bag.width = 380
  bag.height = 120
  ;
  bag.weight = 25
  ;
  pallet.length = 1200
  pallet.width = 1000
  pallet.height = 150
  ;
  .l = bag.length
  .w = bag.width
  .h = bag.height
  .g1 = 20
  .g2 = 20
  .g3 = 3 * .w - 2 * .l + 2 * .g2
  ;
  pallet.x.shift = (pallet.width - (.w + .l + .g1)) / 2
  pallet.y.shift = (pallet.length - (2 * .l + .g2)) / 2
  ;
  ; Default layout
  ;
  max.layers = 12
  ;
  layer.bags[1] = 5
  POINT pb[1, 1] = TRANS (0.5 * .w, 0.5 * .l, .h, 0)
  POINT pb[1, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, .h, 0)
  POINT pb[1, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, .h, 90)
  POINT pb[1, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, .h, 90)
  POINT pb[1, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, .h, 90)
  ;
  layer.bags[2] = 5
  POINT pb[2, 1] = TRANS (0.5 * .l, 0.5 * .w, 2 * .h, 90)
  POINT pb[2, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 2 * .h, 90)
  POINT pb[2, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 2 * .h, 90)
  POINT pb[2, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 2 * .h, 0)
  POINT pb[2, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 2 * .h, 0)
  ;
  layer.bags[3] = 5
  POINT pb[3, 1] = TRANS (0.5 * .w, 0.5 * .l, 3 * .h, 0)
  POINT pb[3, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 3 * .h, 0)
  POINT pb[3, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 3 * .h, 90)
  POINT pb[3, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 3 * .h, 90)
  POINT pb[3, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 3 * .h, 90)
  ;
  layer.bags[4] = 5
  POINT pb[4, 1] = TRANS (0.5 * .l, 0.5 * .w, 4 * .h, 90)
  POINT pb[4, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 4 * .h, 90)
  POINT pb[4, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 4 * .h, 90)
  POINT pb[4, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 4 * .h, 0)
  POINT pb[4, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 4 * .h, 0)
  ;
  layer.bags[5] = 5
  POINT pb[5, 1] = TRANS (0.5 * .w, 0.5 * .l, 5 * .h, 0)
  POINT pb[5, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 5 * .h, 0)
  POINT pb[5, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 5 * .h, 90)
  POINT pb[5, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 5 * .h, 90)
  POINT pb[5, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 5 * .h, 90)
  ;
  layer.bags[6] = 5
  POINT pb[6, 1] = TRANS (0.5 * .l, 0.5 * .w, 6 * .h, 90)
  POINT pb[6, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 6 * .h, 90)
  POINT pb[6, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 6 * .h, 90)
  POINT pb[6, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 6 * .h, 0)
  POINT pb[6, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 6 * .h, 0)
  ;
  layer.bags[7] = 5
  POINT pb[7, 1] = TRANS (0.5 * .w, 0.5 * .l, 7 * .h, 0)
  POINT pb[7, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 7 * .h, 0)
  POINT pb[7, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 7 * .h, 90)
  POINT pb[7, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 7 * .h, 90)
  POINT pb[7, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 7 * .h, 90)
  ;
  layer.bags[8] = 5
  POINT pb[8, 1] = TRANS (0.5 * .l, 0.5 * .w, 8 * .h, 90)
  POINT pb[8, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 8 * .h, 90)
  POINT pb[8, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 8 * .h, 90)
  POINT pb[8, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 8 * .h, 0)
  POINT pb[8, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 8 * .h, 0)
  ;
  layer.bags[9] = 5
  POINT pb[9, 1] = TRANS (0.5 * .w, 0.5 * .l, 9 * .h, 0)
  POINT pb[9, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 9 * .h, 0)
  POINT pb[9, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 9 * .h, 90)
  POINT pb[9, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 9 * .h, 90)
  POINT pb[9, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 9 * .h, 90)
  ;
  layer.bags[10] = 5
  POINT pb[10, 1] = TRANS (0.5 * .l, 0.5 * .w, 10 * .h, 90)
  POINT pb[10, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 10 * .h, 90)
  POINT pb[10, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 10 * .h, 90)
  POINT pb[10, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 10 * .h, 0)
  POINT pb[10, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 10 * .h, 0)
  ;
  layer.bags[11] = 5
  POINT pb[11, 1] = TRANS (0.5 * .w, 0.5 * .l, 11 * .h, 0)
  POINT pb[11, 2] = TRANS (0.5 * .w, 1.5 * .l + .g3, 11 * .h, 0)
  POINT pb[11, 3] = TRANS (.w + 0.5 * .l + .g1, 0.5 * .w, 11 * .h, 90)
  POINT pb[11, 4] = TRANS (.w + 0.5 * .l + .g1, 1.5 * .w + .g2, 11 * .h, 90)
  POINT pb[11, 5] = TRANS (.w + 0.5 * .l + .g1, 2.5 * .w + 2 * .g2, 11 * .h, 90)
  ;
  layer.bags[12] = 5
  POINT pb[12, 1] = TRANS (0.5 * .l, 0.5 * .w, 12 * .h, 90)
  POINT pb[12, 2] = TRANS (0.5 * .l, 1.5 * .w + .g1, 12 * .h, 90)
  POINT pb[12, 3] = TRANS (0.5 * .l, 2.5 * .w + 2 * .g1, 12 * .h, 90)
  POINT pb[12, 4] = TRANS (.l + 0.5 * .w + .g1, 0.5 * .l, 12 * .h, 0)
  POINT pb[12, 5] = TRANS (.l + 0.5 * .w + .g1, 1.5 * .l + .g3, 12 * .h, 0)
  ;
.END
.PROGRAM put.defect (.line.no)
  ;
  ; Points calculation
  ;
  POINT .pick = #pick[.line.no]
  POINT .put = #put.defect
  ;
  .pick.z = DZ (.pick) + pick.appro[.line.no]
  ;
  POINT .put.appro = .put
  POINT/Z .put.appro = TRANS (0, 0, .pick.z)
  POINT .put.depart = .put.appro
  ;
  ; Motion
  SPEED 100 ALWAYS
  ACCURACY 500 ALWAYS
  ;
  ; Approach
  JMOVE .put.appro
  ; Put point
  ACCURACY 1
  LMOVE .put
  BREAK
  ; Open gripper 
  SIGNAL -o.clamp.down
  SIGNAL o.fingers.open, -o.fingers.close
  SIGNAL o.plate.open, -o.plate.close
  ;
  CALL grip.check.open
  ;
  LMOVE .put.depart
  ;
.END
.PROGRAM put.pallet (.line.no)
  ;
  ; Points calculation
  ;
  .layer = cur.layer[.line.no]
  .bag = cur.bag[.line.no]
  .t.shift = pick.shift[.line.no] - w.bag.length[.line.no] / 2
  ;
  POINT .pick = #pick[.line.no]
  POINT .put.base = #put[.line.no]
  POINT .put = .put.base + put.base[.line.no, .layer, .bag]
  POINT .put = .put + TRANS (0, -.t.shift, 0)
  ;
  .pick.z = DZ (.pick) + pick.appro[.line.no]
  .put.z = DZ (.put) + put.appro[.line.no]
  .z.appro = MAXVAL (.put.z, .pick.z)
  ;
  POINT .put.appro = .put
  POINT .pick.appro = .pick
  POINT/Z .put.appro = TRANS (0, 0, .z.appro)
  POINT/Z .pick.appro = .put.appro
  POINT .put.depart = .put.appro
  ;
  ; Motion
  SPEED 100 ALWAYS
  ACCURACY 500 ALWAYS
  ;
  ; Approach
  JMOVE .put.appro
  ; Put point
  ACCURACY 1
  LMOVE .put
  BREAK
  ; Open gripper 
  SIGNAL -o.clamp.down
  SIGNAL o.fingers.open, -o.fingers.close
  SIGNAL o.plate.open, -o.plate.close
  ;
  CALL grip.check.open
  ;
  cur.bag[.line.no] = cur.bag[.line.no] + 1
  IF cur.bag[.line.no] > w.layer.bags[.line.no, .layer] THEN
    cur.layer[.line.no] = cur.layer[.line.no] + 1
    cur.bag[.line.no] = 1
  END
  ;
  LMOVE .put.depart
  JMOVE .pick.appro
  ;
.END
.PROGRAM safe.home()@26/10/13 16:54 #0;
;
; Check if robot already in home
  IF SIG(do.home) THEN
    CALL log("Robot is already in home position")
    CALL grip.release
    RETURN
  END
;
; Set small speed
  SPEED 10 ALWAYS
  ACCURACY 50 ALWAYS
;
; Motion
  HERE .pose
  POINT/Z .pose = #HOME(1)
  LMOVE .pose
  CALL log("Perform safe motion to home position: going up")
  HOME
  CALL log("Perform safe motion to home position: move to home")
  CALL grip.release
  RETURN
;
.END
.PROGRAM set.io.pc()@26/10/13 17:03 #1
;
; Robot internal I/O
;
; Outputs
;
  do.teach = 1
  o.lamp.green[1] = 2
  o.lamp.green[2] = 3
;
  do.error = 30
  do.cs = 31
  do.motor = 32
;
; Inputs
;
  i.bag.ready[1] = 1001
  i.bag.ready[2] = 1002
;
  i.line.ready[1] = 1003
  i.line.ready[2] = 1004
;
  i.btn.stop[1] = 1005
  i.btn.stop[2] = 1006
;
  i.btn.start[1] = 1007
  i.btn.start[2] = 1008
;
  i.bag.defect[1] = 1011
  i.bag.defect[2] = 1012
;
  di.error = 1030
  di.cs = 1031
  di.motor = 1032
;
;
; Gripper IO
;
; Gripper outputs
;
  o.fingers.open = 33
  o.fingers.close = 34
  o.plate.open = 35
  o.plate.close = 36
  o.clamp.down = 37
;
; Gripper input
;
  i.fin.l.opened = 1033
  i.fin.r.opened = 1034
  i.fin.l.closed = 1035
  i.fin.r.closed = 1036
;
  i.plt.l.opened = 1037
  i.plt.r.opened = 1038
  i.plt.l.closed = 1039
  i.plt.r.closed = 1040
;
  i.clamp.up = 1041
  i.clamp.down = 1042
;
  i.air.on = 1043
;
; Internal signals
; IFP page change 2001-2008
  di.ifp.page[1] = 2001
  di.ifp.page[2] = 2002
  di.ifp.page[3] = 2003
  di.ifp.page[4] = 2004
  di.ifp.page[5] = 2005
  di.ifp.page[6] = 2006
  di.ifp.page[7] = 2007
  di.ifp.page[8] = 2008
;
  do.home = 2010
;
  s.apply.product[1] = 2011
  s.apply.product[2] = 2012
  ;
  s.upd.prod.list = 2013
  ;
  s.line.permit[1] = 2014
  s.line.permit[2] = 2015
;
.END
.PROGRAM set.product(.line.no)@26/10/13 17:16 #3
;
  IF $product.names[ifp.prod.no[.line.no]]<>"Empty" THEN
;
    line.product.no[.line.no] = ifp.prod.no[.line.no]
    CALL load.prod.data(.line.no)
    CALL calc.points(.line.no)
;
    cur.layer[.line.no] = 1
    cur.bag[.line.no] = 1
;
  ELSE
;
    line.product.no[.line.no] = -1
  END
;
  CALL disp.product
;
.END
.PROGRAM set.switches.pc()@26/10/13 17:03 #1
;
; System switches
  CP ON
  PREFETCH.SIGINS OFF
  QTOOL OFF
  REP_ONCE ON
  HOLD.STEP ON
  DISP.EXESTEP ON
  PROG.DATE ON
  ABS.SPEED ON
  ERRSTART.PC ON
  autostart.pc ON
;
.END
.PROGRAM set.vars.pc()@26/10/13 17:06 #1
  ;
  POINT tool.gripper = TRANS (0, 0, 350, 0, 0, 0)
  SETHOME 100, #PPOINT (0, 0, 0, 0)
  POINT #transport = #PPOINT (0, -46, -34, 0)
  ;
  max.product.cnt = 255
  ;
  color.green = 4
  color.pink = 8
  color.yellow = 6
  color.black = 10
  color.white = 15
  ;
  ; Default pick and put approach distances
  CALL ciner ("pick.appro[1]", pick.appro[1], 400)
  CALL ciner ("pick.appro[2]", pick.appro[2], 400)
  ;
  CALL ciner ("clamp.appro[1]", clamp.appro[1], 100)
  CALL ciner ("clamp.appro[2]", clamp.appro[2], 100)
  ;
  CALL ciner ("put.appro[1]", put.appro[1], 400)
  CALL ciner ("put.appro[2]", put.appro[2], 400)
  ;
  CALL ciner ("drop.appro[1]", drop.appro[1], 100)
  CALL ciner ("drop.appro[2]", drop.appro[2], 100)
  ;
  CALL ciner ("line.product.no[1]", line.product.no[1], -1)
  CALL ciner ("line.product.no[2]", line.product.no[2], -1)
  ;
  CALL ciner ("pick.shift[1]", pick.shift[1], 342)
  CALL ciner ("pick.shift[2]", pick.shift[2], 342)
  ;
  CALL ciner("drop.appro.def", drop.appro.def, 200)
  ;
  ifp.prod.no[1] = -1
  ifp.prod.no[2] = -1
  ;
  ifp.list.page = 1
  ifp.last.page = 1
.END
.PROGRAM signals.pc ()
  ;
  SOUT s.line.permit[1] = 1
  ;
.END
.PROGRAM t.pick (.line.no)
  ;
  ; Points calculation
  ;
  .layer = cur.layer[.line.no]
  .bag = cur.bag[.line.no]
  ;
  POINT .pick = #pick[.line.no]
  ;
  .pick.z = DZ (.pick) + pick.appro[.line.no]
  .put.z = DZ (put.base[.line.no, .layer, .bag]) + put.appro[.line.no]
  .z.appro = MAXVAL (.put.z, .pick.z)
  ;
  POINT .pick.appro = .pick
  POINT .clamp.appro = .pick 
  POINT/Z .pick.appro = TRANS (0, 0, .z.appro)
  POINT .clamp.appro = .clamp.appro + TRANS (0, 0, -clamp.appro[.line.no])
  POINT .pick.depart = .pick.appro
  ;
  ; Open gripper for just in case
  CALL grip.release
  ;
  ; Motion
  SPEED 100 ALWAYS
  ACCURACY 500 ALWAYS
  ;
  ; Approach
  JMOVE .pick.appro
  CALL grip.check.open
  ;
  ; Approach to clamp
  ACCURACY 10
  LMOVE .clamp.appro
  ; Close gripper without BREAK
  SIGNAL o.plate.close, -o.plate.open
  SIGNAL o.fingers.close, -o.fingers.open
  ; Pick point
  ACCURACY 1
  LMOVE .pick
  ;BREAK
  ;
  ; Close gripper
  SWAIT i.plt.l.closed, i.plt.r.closed
  SWAIT i.fin.l.closed, i.fin.r.closed
  ;
  ; Depart
  LMOVE .pick.depart
  ;
  ; Down clamp while move
  SIGNAL o.clamp.down
  ;
.END
.PROGRAM t.put.defect (.line.no)
  ;
  ; Points calculation
  ;
  POINT .pick = #pick[.line.no]
  POINT .put = #put.defect
  ;
  .pick.z = DZ (.pick) + pick.appro[.line.no]
  ;
  POINT .put.appro = .put
  POINT .drop.appro = .put
  POINT/Z .put.appro = TRANS (0, 0, .pick.z)
  POINT .drop.appro = .drop.appro + TRANS (0, 0, -drop.appro.def)
  POINT .put.depart = .put.appro
  ;
  ; Motion
  SPEED 100 ALWAYS
  ACCURACY 500 ALWAYS
  ;
  ; Approach
  JMOVE .put.appro
  ; Approach to drop
  ACCURACY 10
  LMOVE .drop.appro
  ; Open gripper without BREAK
  SIGNAL -o.clamp.down
  SIGNAL o.fingers.open, -o.fingers.close
  SIGNAL o.plate.open, -o.plate.close
  ; Put point
  ACCURACY 1
  LMOVE .put
  ;
  CALL grip.check.open
  ;
  LMOVE .put.depart
  ;
.END
.PROGRAM t.put.pallet (.line.no)
  ;
  ; Points calculation
  ;
  .layer = cur.layer[.line.no]
  .bag = cur.bag[.line.no]
  .t.shift = pick.shift[.line.no] - w.bag.length[.line.no] / 2
  ;
  POINT .pick = #pick[.line.no]
  POINT .put.base = #put[.line.no]
  POINT .put = .put.base + put.base[.line.no, .layer, .bag]
  POINT .put = .put + TRANS (0, -.t.shift, 0)
  ;
  .pick.z = DZ (.pick) + pick.appro[.line.no]
  .put.z = DZ (put.base[.line.no, .layer, .bag]) + put.appro[.line.no]
  .z.appro = MAXVAL (.put.z, .pick.z)
  ;
  POINT .put.appro = .put
  POINT .drop.appro = .put
  POINT/Z .put.appro = TRANS (0, 0, .z.appro)
  POINT .drop.appro = .drop.appro + TRANS (0, 0, -drop.appro[.line.no])
  POINT .put.depart = .put.appro
  ;
  ; Motion
  SPEED 100 ALWAYS
  ACCURACY 500 ALWAYS
  ;
  ; Approach
  JMOVE .put.appro
  ; Approach to drop
  ACCURACY 10
  LMOVE .drop.appro
  ; Open gripper without BREAK
  SIGNAL -o.clamp.down
  SIGNAL o.fingers.open, -o.fingers.close
  SIGNAL o.plate.open, -o.plate.close
  ; Put point
  ACCURACY 1
  LMOVE .put
  ;
  CALL grip.check.open
  ;
  cur.bag[.line.no] = cur.bag[.line.no] + 1
  IF cur.bag[.line.no] > w.layer.bags[.line.no, .layer] THEN
    cur.layer[.line.no] = cur.layer[.line.no] + 1
    cur.bag[.line.no] = 1
  END
  ;
  LMOVE .put.depart
  ;
.END
.PROGRAM Comment___ () ; Comments for IDE. Do not use.
	; @@@ PROJECT @@@
	; @@@ PROJECTNAME @@@
	; PalletWizardEco
	; @@@ HISTORY @@@
	; @@@ INSPECTION @@@
	; pick.shift[1]
	; w.bag.width[1]
	; put.appro[1]
	; put.base[1,1,1]
	; @@@ CONNECTION @@@
	; KROSET R01
	; 127.0.0.1
	; 9105
	; @@@ PROGRAM @@@
	;   Group:MotionTesting:1
	;     1:t.put.defect:F
	;       .line.no 
	;       .pick 
	;       .put 
	;       .pick.z 
	;       .put.appro 
	;       .drop.appro 
	;       .put.depart 
	;     1:t.put.pallet:F
	;       .line.no 
	;       .layer 
	;       .bag 
	;       .t.shift 
	;       .pick 
	;       .put.base 
	;       .put 
	;       .pick.z 
	;       .put.z 
	;       .z.appro 
	;       .put.appro 
	;       .drop.appro 
	;       .put.depart 
	;       .c 
	;     1:t.pick:F
	;       .line.no 
	;       .layer 
	;       .bag 
	;       .pick 
	;       .pick.z 
	;       .put.z 
	;       .z.appro 
	;       .pick.appro 
	;       .clamp.appro 
	;       .pick.depart 
	;   Group:ProductData:2
	;     2:product1:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .g2 
	;       .g3 
	;       .d1 
	;       .d2 
	;     2:product2:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .g2 
	;       .g3 
	;     2:product3:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .g2 
	;       .g3 
	;     2:product4:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .d1 
	;       .g2 
	;       .d2 
	;     2:product5:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .d1 
	;       .g2 
	;       .d2 
	;     2:product6:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .g2 
	;       .g3 
	;     2:product7:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .d1 
	;       .g2 
	;       .d2 
	;     2:product8:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .g2 
	;       .g3 
	;     2:product9:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .g2 
	;       .g3 
	;     2:product10:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .g2 
	;       .g3 
	;     2:product.demo:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .d1 
	;       .g2 
	;       .d2 
	;   Group:Motion:3
	;     3:pick:F
	;       .line.no 
	;       .layer 
	;       .bag 
	;       .pick 
	;       .put.base 
	;       .put 
	;       .pick.z 
	;       .put.z 
	;       .z.appro 
	;       .pick.appro 
	;       .pick.depart 
	;     3:put.pallet:F
	;       .line.no 
	;       .layer 
	;       .bag 
	;       .t.shift 
	;       .pick 
	;       .put.base 
	;       .put 
	;       .pick.z 
	;       .put.z 
	;       .z.appro 
	;       .put.appro 
	;       .pick.appro 
	;       .put.depart 
	;     3:put.defect:F
	;       .line.no 
	;       .pick 
	;       .put 
	;       .pick.z 
	;       .put.appro 
	;       .put.depart 
	;   Group:Gripper:4
	;     4:grip.release:F
	;     4:grip.check.open:F
	;   Group:Auxilary:5
	;     5:a.home:F
	;     5:a.transport:F
	;     5:safe.home:F
	;       .pose 
	;     5:ciner:F
	;       .$var.name 
	;       .var 
	;       .default 
	;   Group:Log:6
	;     6:log:F
	;       .$msg 
	;       .i 
	;       .$tmp 
	;     6:log.init:F
	;       .$tmp1 
	;       .$tmp2 
	;       .i 
	;     6:log.pc1:F
	;       .$msg 
	;       .i 
	;       .$tmp 
	;     6:log.clear:F
	;       .i 
	;   0:a.main:F
	;     .i 
	;   0:pg0:F
	;   Group:Product:7
	;     7:load.products:B
	;       .product.count 
	;       .$temp 
	;       .i 
	;       .$pg.name 
	;     7:disp.product:B
	;       .product.window 
	;       .row 
	;       .col 
	;       .i 
	;       .$i 
	;       .$line 
	;     7:set.product:B
	;       .line.no 
	;     7:load.prod.data:B
	;       .line.no 
	;       .$pg.name 
	;       .i 
	;     7:calc.points:B
	;       .line.no 
	;       .layer 
	;       .bag 
	;       .temp 
	;       .temp.ang 
	;       .c 
	;     7:disp.list:B
	;       .i 
	;       .text.color 
	;       .window.no 
	;       .line.no 
	;       .column.no 
	;       .bg.color 
	;       .id 
	;       .$id 
	;       .$tmp 
	;       .$text 
	;   Group:Background:8
	;     8:ifp.pc:B
	;       .i 
	;     8:limits.pc:B
	;     8:signals.pc:B
	;   Group:Initialization:9
	;     9:initialize.pc:B
	;     9:set.io.pc:B
	;     9:set.switches.pc:B
	;     9:disp.info.pc:B
	;       .$cont.name 
	;       .$robot.name 
	;       .robot.sn 
	;       .cont.sn 
	;       .$robot.str 
	;       .$cont.str 
	;     9:set.vars.pc:B
	;   0:autostart.pc:B
	; @@@ TRANS @@@
	; bp[] 
	; pb[] 
	; put.base[] 
	; tool.gripper 
	; @@@ JOINTS @@@
	; #pick[] 
	; #transport Robot transport position
	; #put.defect 
	; #put[] 
	; @@@ REALS @@@
	; log.max.count 
	; color.black 
	; color.green 
	; color.white 
	; ifp.prod.no[] 
	; max.product.cnt 
	; pick.appro[] 
	; put.appro[] 
	; bag.height 
	; bag.length 
	; bag.weight 
	; bag.width 
	; cur.bag[] 
	; cur.layer[] 
	; ifp.last.page 
	; ifp.list.page 
	; layer.bags[] 
	; line.product.no[] 
	; max.layers 
	; pallet.height 
	; pallet.length 
	; pallet.width 
	; color.pink 
	; color.yellow 
	; pick.shift[] 
	; w.bag.height[] 
	; w.bag.length[] 
	; w.bag.weight[] 
	; w.bag.width[] 
	; w.layer.bags[] 
	; w.max.layers[] 
	; w.pallet.height[] 
	; w.pallet.length[] 
	; w.pallet.width[] 
	; pallet.x.shift 
	; pallet.y.shift 
	; @@@ STRINGS @@@
	; @@@ INTEGER @@@
	; @@@ SIGNALS @@@
	; di.ifp.page[] Interface panel change screen
	; di.cs 
	; di.error 
	; di.motor 
	; do.cs 
	; do.error 
	; do.home 
	; do.motor 
	; do.teach 
	; i.air.on 
	; i.bag.defect[] 
	; i.bag.ready[] 
	; i.btn.start[] 
	; i.btn.stop[] 
	; i.clamp.down 
	; i.clamp.up 
	; i.fin.l.closed 
	; i.fin.l.opened 
	; i.fin.r.closed 
	; i.fin.r.opened 
	; i.line.ready[] 
	; i.plt.l.closed 
	; i.plt.l.opened 
	; i.plt.r.closed 
	; i.plt.r.opened 
	; o.clamp.down 
	; o.plate.open 
	; o.plate.close 
	; o.lamp.green[] 
	; o.fingers.open 
	; o.fingers.close 
	; s.apply.product[] 
	; s.upd.prod.list 
	; @@@ TOOLS @@@
	; @@@ BASE @@@
	; @@@ FRAME @@@
	; @@@ BOOL @@@
	; @@@ DEFAULTS @@@
	; BASE: NULL
	; TOOL: NULL
	; @@@ WCD @@@
	; SIGNAME: sig1 sig2 sig3 sig4
	; SIGDIM: % % % %
.END
.TRANS
bp[9,5] 785.000000 1237.500000 990.000000 0.000000 0.000000 0.000000
bp[9,4] 785.000000 742.500000 990.000000 0.000000 0.000000 0.000000
bp[9,3] 785.000000 247.500000 990.000000 0.000000 0.000000 0.000000
bp[9,2] 247.500000 870.000000 990.000000 90.000008 0.000000 0.000000
bp[9,1] 247.500000 290.000000 990.000000 90.000008 0.000000 0.000000
bp[8,5] 827.500000 870.000000 880.000000 90.000008 0.000000 0.000000
bp[8,4] 827.500000 290.000000 880.000000 90.000008 0.000000 0.000000
bp[8,3] 290.000000 1237.500000 880.000000 0.000000 0.000000 0.000000
bp[8,2] 290.000000 742.500000 880.000000 0.000000 0.000000 0.000000
bp[8,1] 290.000000 247.500000 880.000000 0.000000 0.000000 0.000000
bp[7,5] 785.000000 1237.500000 770.000000 0.000000 0.000000 0.000000
bp[7,4] 785.000000 742.500000 770.000000 0.000000 0.000000 0.000000
bp[7,3] 785.000000 247.500000 770.000000 0.000000 0.000000 0.000000
bp[7,2] 247.500000 870.000000 770.000000 90.000008 0.000000 0.000000
bp[7,1] 247.500000 290.000000 770.000000 90.000008 0.000000 0.000000
bp[6,5] 827.500000 870.000000 660.000000 90.000008 0.000000 0.000000
bp[6,4] 827.500000 290.000000 660.000000 90.000008 0.000000 0.000000
bp[6,3] 290.000000 1237.500000 660.000000 0.000000 0.000000 0.000000
bp[6,2] 290.000000 742.500000 660.000000 0.000000 0.000000 0.000000
bp[6,1] 290.000000 247.500000 660.000000 0.000000 0.000000 0.000000
bp[5,5] 785.000000 1237.500000 550.000000 0.000000 0.000000 0.000000
bp[5,4] 785.000000 742.500000 550.000000 0.000000 0.000000 0.000000
bp[5,3] 785.000000 247.500000 550.000000 0.000000 0.000000 0.000000
bp[5,2] 247.500000 870.000000 550.000000 90.000008 0.000000 0.000000
bp[5,1] 247.500000 290.000000 550.000000 90.000008 0.000000 0.000000
bp[4,5] 827.500000 870.000000 440.000000 90.000008 0.000000 0.000000
bp[4,4] 827.500000 290.000000 440.000000 90.000008 0.000000 0.000000
bp[4,3] 290.000000 1237.500000 440.000000 0.000000 0.000000 0.000000
bp[4,2] 290.000000 742.500000 440.000000 0.000000 0.000000 0.000000
bp[4,1] 290.000000 247.500000 440.000000 0.000000 0.000000 0.000000
bp[3,5] 785.000000 1237.500000 330.000000 0.000000 0.000000 0.000000
bp[3,4] 785.000000 742.500000 330.000000 0.000000 0.000000 0.000000
bp[3,3] 785.000000 247.500000 330.000000 0.000000 0.000000 0.000000
bp[3,2] 247.500000 870.000000 330.000000 90.000008 0.000000 0.000000
bp[3,1] 247.500000 290.000000 330.000000 90.000008 0.000000 0.000000
bp[2,5] 827.500000 870.000000 220.000000 90.000008 0.000000 0.000000
bp[2,4] 827.500000 290.000000 220.000000 90.000008 0.000000 0.000000
bp[2,3] 290.000000 1237.500000 220.000000 0.000000 0.000000 0.000000
bp[2,2] 290.000000 742.500000 220.000000 0.000000 0.000000 0.000000
bp[2,1] 290.000000 247.500000 220.000000 0.000000 0.000000 0.000000
bp[1,5] 785.000000 1237.500000 110.000000 0.000000 0.000000 0.000000
bp[1,4] 785.000000 742.500000 110.000000 0.000000 0.000000 0.000000
bp[1,3] 785.000000 247.500000 110.000000 0.000000 0.000000 0.000000
bp[1,2] 247.500000 870.000000 110.000000 90.000008 0.000000 0.000000
bp[1,1] 247.500000 290.000000 110.000000 90.000008 0.000000 0.000000
pb[1,1] 247.500000 290.000000 110.000000 0.000000 0.000000 0.000000
pb[1,2] 247.500000 870.000000 110.000000 0.000000 0.000000 0.000000
pb[1,3] 785.000000 247.500000 110.000000 90.000008 0.000000 0.000000
pb[1,4] 785.000000 742.500000 110.000000 90.000008 0.000000 0.000000
pb[1,5] 785.000000 1237.500000 110.000000 90.000008 0.000000 0.000000
pb[2,1] 290.000000 247.500000 220.000000 90.000008 0.000000 0.000000
pb[2,2] 290.000000 742.500000 220.000000 90.000008 0.000000 0.000000
pb[2,3] 290.000000 1237.500000 220.000000 90.000008 0.000000 0.000000
pb[2,4] 827.500000 290.000000 220.000000 0.000000 0.000000 0.000000
pb[2,5] 827.500000 870.000000 220.000000 0.000000 0.000000 0.000000
pb[3,1] 247.500000 290.000000 330.000000 0.000000 0.000000 0.000000
pb[3,2] 247.500000 870.000000 330.000000 0.000000 0.000000 0.000000
pb[3,3] 785.000000 247.500000 330.000000 90.000008 0.000000 0.000000
pb[3,4] 785.000000 742.500000 330.000000 90.000008 0.000000 0.000000
pb[3,5] 785.000000 1237.500000 330.000000 90.000008 0.000000 0.000000
pb[4,1] 290.000000 247.500000 440.000000 90.000008 0.000000 0.000000
pb[4,2] 290.000000 742.500000 440.000000 90.000008 0.000000 0.000000
pb[4,3] 290.000000 1237.500000 440.000000 90.000008 0.000000 0.000000
pb[4,4] 827.500000 290.000000 440.000000 0.000000 0.000000 0.000000
pb[4,5] 827.500000 870.000000 440.000000 0.000000 0.000000 0.000000
pb[5,1] 247.500000 290.000000 550.000000 0.000000 0.000000 0.000000
pb[5,2] 247.500000 870.000000 550.000000 0.000000 0.000000 0.000000
pb[5,3] 785.000000 247.500000 550.000000 90.000008 0.000000 0.000000
pb[5,4] 785.000000 742.500000 550.000000 90.000008 0.000000 0.000000
pb[5,5] 785.000000 1237.500000 550.000000 90.000008 0.000000 0.000000
pb[6,1] 290.000000 247.500000 660.000000 90.000008 0.000000 0.000000
pb[6,2] 290.000000 742.500000 660.000000 90.000008 0.000000 0.000000
pb[6,3] 290.000000 1237.500000 660.000000 90.000008 0.000000 0.000000
pb[6,4] 827.500000 290.000000 660.000000 0.000000 0.000000 0.000000
pb[6,5] 827.500000 870.000000 660.000000 0.000000 0.000000 0.000000
pb[7,1] 247.500000 290.000000 770.000000 0.000000 0.000000 0.000000
pb[7,2] 247.500000 870.000000 770.000000 0.000000 0.000000 0.000000
pb[7,3] 785.000000 247.500000 770.000000 90.000008 0.000000 0.000000
pb[7,4] 785.000000 742.500000 770.000000 90.000008 0.000000 0.000000
pb[7,5] 785.000000 1237.500000 770.000000 90.000008 0.000000 0.000000
pb[8,1] 290.000000 247.500000 880.000000 90.000008 0.000000 0.000000
pb[8,2] 290.000000 742.500000 880.000000 90.000008 0.000000 0.000000
pb[8,3] 290.000000 1237.500000 880.000000 90.000008 0.000000 0.000000
pb[8,4] 827.500000 290.000000 880.000000 0.000000 0.000000 0.000000
pb[8,5] 827.500000 870.000000 880.000000 0.000000 0.000000 0.000000
pb[9,1] 247.500000 290.000000 990.000000 0.000000 0.000000 0.000000
pb[9,2] 247.500000 870.000000 990.000000 0.000000 0.000000 0.000000
pb[9,3] 785.000000 247.500000 990.000000 90.000008 0.000000 0.000000
pb[9,4] 785.000000 742.500000 990.000000 90.000008 0.000000 0.000000
pb[9,5] 785.000000 1237.500000 990.000000 90.000008 0.000000 0.000000
put.base[1,1,1] 247.500000 290.000000 110.000000 0.000000 0.000000 0.000000
put.base[1,1,2] 247.500000 870.000000 110.000000 0.000000 0.000000 0.000000
put.base[1,1,3] 785.000000 247.500000 110.000000 90.000008 0.000000 0.000000
put.base[1,1,4] 785.000000 742.500000 110.000000 90.000008 0.000000 0.000000
put.base[1,1,5] 785.000000 1237.500000 110.000000 90.000008 0.000000 0.000000
put.base[1,2,1] 290.000000 247.500000 220.000000 90.000008 0.000000 0.000000
put.base[1,2,2] 290.000000 742.500000 220.000000 90.000008 0.000000 0.000000
put.base[1,2,3] 290.000000 1237.500000 220.000000 90.000008 0.000000 0.000000
put.base[1,2,4] 827.500000 290.000000 220.000000 0.000000 0.000000 0.000000
put.base[1,2,5] 827.500000 870.000000 220.000000 0.000000 0.000000 0.000000
put.base[1,3,1] 247.500000 290.000000 330.000000 0.000000 0.000000 0.000000
put.base[1,3,2] 247.500000 870.000000 330.000000 0.000000 0.000000 0.000000
put.base[1,3,3] 785.000000 247.500000 330.000000 90.000008 0.000000 0.000000
put.base[1,3,4] 785.000000 742.500000 330.000000 90.000008 0.000000 0.000000
put.base[1,3,5] 785.000000 1237.500000 330.000000 90.000008 0.000000 0.000000
put.base[1,4,1] 290.000000 247.500000 440.000000 90.000008 0.000000 0.000000
put.base[1,4,2] 290.000000 742.500000 440.000000 90.000008 0.000000 0.000000
put.base[1,4,3] 290.000000 1237.500000 440.000000 90.000008 0.000000 0.000000
put.base[1,4,4] 827.500000 290.000000 440.000000 0.000000 0.000000 0.000000
put.base[1,4,5] 827.500000 870.000000 440.000000 0.000000 0.000000 0.000000
put.base[1,5,1] 247.500000 290.000000 550.000000 0.000000 0.000000 0.000000
put.base[1,5,2] 247.500000 870.000000 550.000000 0.000000 0.000000 0.000000
put.base[1,5,3] 785.000000 247.500000 550.000000 90.000008 0.000000 0.000000
put.base[1,5,4] 785.000000 742.500000 550.000000 90.000008 0.000000 0.000000
put.base[1,5,5] 785.000000 1237.500000 550.000000 90.000008 0.000000 0.000000
put.base[1,6,1] 290.000000 247.500000 660.000000 90.000008 0.000000 0.000000
put.base[1,6,2] 290.000000 742.500000 660.000000 90.000008 0.000000 0.000000
put.base[1,6,3] 290.000000 1237.500000 660.000000 90.000008 0.000000 0.000000
put.base[1,6,4] 827.500000 290.000000 660.000000 0.000000 0.000000 0.000000
put.base[1,6,5] 827.500000 870.000000 660.000000 0.000000 0.000000 0.000000
put.base[1,7,1] 247.500000 290.000000 770.000000 0.000000 0.000000 0.000000
put.base[1,7,2] 247.500000 870.000000 770.000000 0.000000 0.000000 0.000000
put.base[1,7,3] 785.000000 247.500000 770.000000 90.000008 0.000000 0.000000
put.base[1,7,4] 785.000000 742.500000 770.000000 90.000008 0.000000 0.000000
put.base[1,7,5] 785.000000 1237.500000 770.000000 90.000008 0.000000 0.000000
put.base[1,8,1] 290.000000 247.500000 880.000000 90.000008 0.000000 0.000000
put.base[1,8,2] 290.000000 742.500000 880.000000 90.000008 0.000000 0.000000
put.base[1,8,3] 290.000000 1237.500000 880.000000 90.000008 0.000000 0.000000
put.base[1,8,4] 827.500000 290.000000 880.000000 0.000000 0.000000 0.000000
put.base[1,8,5] 827.500000 870.000000 880.000000 0.000000 0.000000 0.000000
put.base[1,9,1] 247.500000 290.000000 990.000000 0.000000 0.000000 0.000000
put.base[1,9,2] 247.500000 870.000000 990.000000 0.000000 0.000000 0.000000
put.base[1,9,3] 785.000000 247.500000 990.000000 90.000008 0.000000 0.000000
put.base[1,9,4] 785.000000 742.500000 990.000000 90.000008 0.000000 0.000000
put.base[1,9,5] 785.000000 1237.500000 990.000000 90.000008 0.000000 0.000000
tool.gripper 0.000000 0.000000 350.000000 0.000000 0.000000 0.000000
put.base[2,1,1] 247.500000 290.000000 110.000000 0.000000 0.000000 0.000000
put.base[2,1,2] 247.500000 870.000000 110.000000 0.000000 0.000000 0.000000
put.base[2,1,3] 785.000000 247.500000 110.000000 90.000008 0.000000 0.000000
put.base[2,1,4] 785.000000 742.500000 110.000000 90.000008 0.000000 0.000000
put.base[2,1,5] 785.000000 1237.500000 110.000000 90.000008 0.000000 0.000000
put.base[2,2,1] 290.000000 247.500000 220.000000 90.000008 0.000000 0.000000
put.base[2,2,2] 290.000000 742.500000 220.000000 90.000008 0.000000 0.000000
put.base[2,2,3] 290.000000 1237.500000 220.000000 90.000008 0.000000 0.000000
put.base[2,2,4] 827.500000 290.000000 220.000000 0.000000 0.000000 0.000000
put.base[2,2,5] 827.500000 870.000000 220.000000 0.000000 0.000000 0.000000
put.base[2,3,1] 247.500000 290.000000 330.000000 0.000000 0.000000 0.000000
put.base[2,3,2] 247.500000 870.000000 330.000000 0.000000 0.000000 0.000000
put.base[2,3,3] 785.000000 247.500000 330.000000 90.000008 0.000000 0.000000
put.base[2,3,4] 785.000000 742.500000 330.000000 90.000008 0.000000 0.000000
put.base[2,3,5] 785.000000 1237.500000 330.000000 90.000008 0.000000 0.000000
put.base[2,4,1] 290.000000 247.500000 440.000000 90.000008 0.000000 0.000000
put.base[2,4,2] 290.000000 742.500000 440.000000 90.000008 0.000000 0.000000
put.base[2,4,3] 290.000000 1237.500000 440.000000 90.000008 0.000000 0.000000
put.base[2,4,4] 827.500000 290.000000 440.000000 0.000000 0.000000 0.000000
put.base[2,4,5] 827.500000 870.000000 440.000000 0.000000 0.000000 0.000000
put.base[2,5,1] 247.500000 290.000000 550.000000 0.000000 0.000000 0.000000
put.base[2,5,2] 247.500000 870.000000 550.000000 0.000000 0.000000 0.000000
put.base[2,5,3] 785.000000 247.500000 550.000000 90.000008 0.000000 0.000000
put.base[2,5,4] 785.000000 742.500000 550.000000 90.000008 0.000000 0.000000
put.base[2,5,5] 785.000000 1237.500000 550.000000 90.000008 0.000000 0.000000
put.base[2,6,1] 290.000000 247.500000 660.000000 90.000008 0.000000 0.000000
put.base[2,6,2] 290.000000 742.500000 660.000000 90.000008 0.000000 0.000000
put.base[2,6,3] 290.000000 1237.500000 660.000000 90.000008 0.000000 0.000000
put.base[2,6,4] 827.500000 290.000000 660.000000 0.000000 0.000000 0.000000
put.base[2,6,5] 827.500000 870.000000 660.000000 0.000000 0.000000 0.000000
put.base[2,7,1] 247.500000 290.000000 770.000000 0.000000 0.000000 0.000000
put.base[2,7,2] 247.500000 870.000000 770.000000 0.000000 0.000000 0.000000
put.base[2,7,3] 785.000000 247.500000 770.000000 90.000008 0.000000 0.000000
put.base[2,7,4] 785.000000 742.500000 770.000000 90.000008 0.000000 0.000000
put.base[2,7,5] 785.000000 1237.500000 770.000000 90.000008 0.000000 0.000000
put.base[2,8,1] 290.000000 247.500000 880.000000 90.000008 0.000000 0.000000
put.base[2,8,2] 290.000000 742.500000 880.000000 90.000008 0.000000 0.000000
put.base[2,8,3] 290.000000 1237.500000 880.000000 90.000008 0.000000 0.000000
put.base[2,8,4] 827.500000 290.000000 880.000000 0.000000 0.000000 0.000000
put.base[2,8,5] 827.500000 870.000000 880.000000 0.000000 0.000000 0.000000
put.base[2,9,1] 247.500000 290.000000 990.000000 0.000000 0.000000 0.000000
put.base[2,9,2] 247.500000 870.000000 990.000000 0.000000 0.000000 0.000000
put.base[2,9,3] 785.000000 247.500000 990.000000 90.000008 0.000000 0.000000
put.base[2,9,4] 785.000000 742.500000 990.000000 90.000008 0.000000 0.000000
put.base[2,9,5] 785.000000 1237.500000 990.000000 90.000008 0.000000 0.000000
.END
.JOINTS
#pick[1] -34.336190 12.556730 -50.816590 32.933620 0.000000 0.000000
#transport 0.000000 -46.000000 -34.000000 0.000000 0.000000 0.000000
#pick[2] 39.336770 16.551800 -49.721910 52.344800 0.000000 0.000000
#put.defect 3.796430 37.918760 -82.519530 -5.198590 0.000000 0.000000
#put[1] -78.213710 70.964000 -47.698100 78.310720 0.000000 0.000000
#put[2] 70.766350 49.537300 -81.693640 -70.669210 0.000000 0.000000
.END
.REALS
di.ifp.page[1] = 2001
di.ifp.page[2] = 2002
di.ifp.page[3] = 2003
di.ifp.page[4] = 2004
di.ifp.page[5] = 2005
di.ifp.page[6] = 2006
di.ifp.page[7] = 2007
di.ifp.page[8] = 2008
di.cs = 1031
di.error = 1030
di.motor = 1032
do.cs = 31
do.error = 30
do.home = 2010
do.motor = 32
do.teach = 1
i.air.on = 1043
i.bag.defect[1] = 1011
i.bag.defect[2] = 1012
i.bag.ready[1] = 1001
i.bag.ready[2] = 1002
i.btn.start[1] = 1007
i.btn.start[2] = 1008
i.btn.stop[1] = 1005
i.btn.stop[2] = 1006
i.clamp.down = 1042
i.clamp.up = 1041
i.fin.l.closed = 1035
i.fin.l.opened = 1033
i.fin.r.closed = 1036
i.fin.r.opened = 1034
i.line.ready[1] = 1003
i.line.ready[2] = 1004
i.plt.l.closed = 1039
i.plt.l.opened = 1037
i.plt.r.closed = 1040
i.plt.r.opened = 1038
log.max.count = 256
o.clamp.down = 37
o.plate.open = 35
o.plate.close = 36
o.lamp.green[1] = 2
o.lamp.green[2] = 3
o.fingers.open = 33
o.fingers.close = 34
color.black = 10
color.green = 4
color.white = 15
ifp.prod.no[1] = -1
ifp.prod.no[2] = -1
max.product.cnt = 255
pick.appro[1] = 400
pick.appro[2] = 400
put.appro[1] = 400
put.appro[2] = 400
s.apply.product[1] = 2011
s.apply.product[2] = 2012
bag.height = 110
bag.length = 580
bag.weight = 30
bag.width = 495
cur.bag[1] = 1
cur.layer[1] = 3
ifp.last.page = 1
ifp.list.page = 1
layer.bags[1] = 5
layer.bags[2] = 5
layer.bags[3] = 5
layer.bags[4] = 5
layer.bags[5] = 5
layer.bags[6] = 5
layer.bags[7] = 5
layer.bags[8] = 5
layer.bags[9] = 5
line.product.no[1] = 1
max.layers = 9
pallet.height = 150
pallet.length = 1200
pallet.width = 1000
line.product.no[2] = 1
s.upd.prod.list = 2013
color.pink = 8
color.yellow = 6
cur.bag[2] = 1
cur.layer[2] = 1
pick.shift[1] = 342
pick.shift[2] = 342
w.bag.height[1] = 120
w.bag.height[2] = 120
w.bag.length[1] = 445
w.bag.length[2] = 445
w.bag.weight[1] = 25
w.bag.weight[2] = 25
w.bag.width[1] = 305
w.bag.width[2] = 305
w.layer.bags[1,1] = 5
w.layer.bags[1,2] = 5
w.layer.bags[1,3] = 5
w.layer.bags[1,4] = 5
w.layer.bags[1,5] = 5
w.layer.bags[1,6] = 5
w.layer.bags[1,7] = 5
w.layer.bags[1,8] = 5
w.layer.bags[1,9] = 5
w.layer.bags[2,1] = 5
w.layer.bags[2,2] = 5
w.layer.bags[2,3] = 5
w.layer.bags[2,4] = 5
w.layer.bags[2,5] = 5
w.layer.bags[2,6] = 5
w.layer.bags[2,7] = 5
w.layer.bags[2,8] = 5
w.layer.bags[2,9] = 5
w.max.layers[1] = 9
w.max.layers[2] = 9
w.pallet.height[1] = 150
w.pallet.height[2] = 150
w.pallet.length[1] = 1200
w.pallet.length[2] = 1200
w.pallet.width[1] = 1000
w.pallet.width[2] = 1000
pallet.x.shift = 10
pallet.y.shift = 10
.END
