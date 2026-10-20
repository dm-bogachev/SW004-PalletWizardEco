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
N_WX3    "i.line.safe[1]"
N_WX4    "i.line.safe[2]"
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
N_INT9    "di.reset.main"
N_INT10    "do.home"
N_INT11    "s.apply.product[1]"
N_INT12    "s.apply.product[2]"
N_INT13    "s.upd.prod.list"
N_INT14    "s.prime.main"
N_INT15    "s.prime.home"
N_INT16    "s.prime.teach"
N_INT17    "s.prime.service"
N_INT18    "s.apply.pal.sht[1]"
N_INT19    "s.apply.pal.sht[2]"
N_INT20    "s.apply.bag[1]"
N_INT21    "s.apply.bag[2]"
N_INT22    "s.apply.layer[1]"
N_INT23    "s.apply.layer[2]"
N_INT101    "s.bag.ready[1]"
N_INT102    "s.bag.ready[2]"
N_INT103    "s.line.safe[1]"
N_INT104    "s.line.safe[2]"
N_INT105    "s.btn.stop[1]"
N_INT106    "s.btn.stop[2]"
N_INT107    "s.btn.start[1]"
N_INT108    "s.btn.start[2]"
N_INT111    "s.bag.defect[1]"
N_INT112    "s.bag.defect[2]"
N_INT133    "s.fin.l.opened"
N_INT134    "s.fin.r.opened"
N_INT135    "s.fin.l.closed"
N_INT136    "s.fin.r.closed"
N_INT137    "s.plt.l.opened"
N_INT138    "s.plt.r.opened"
N_INT139    "s.plt.l.closed"
N_INT140    "s.plt.r.closed"
N_INT141    "s.clamp.up"
N_INT142    "s.clamp.down"
N_INT143    "s.air.on"
N_INT201    "x.bag.ready[1]"
N_INT202    "x.bag.ready[2]"
N_INT203    "x.line.safe[1]"
N_INT204    "x.line.safe[2]"
N_INT205    "x.btn.stop[1]"
N_INT206    "x.btn.stop[2]"
N_INT207    "x.btn.start[1]"
N_INT208    "x.btn.start[2]"
N_INT211    "x.bag.defect[1]"
N_INT212    "x.bag.defect[2]"
N_INT233    "x.fin.l.opened"
N_INT234    "x.fin.r.opened"
N_INT235    "x.fin.l.closed"
N_INT236    "x.fin.r.closed"
N_INT237    "x.plt.l.opened"
N_INT238    "x.plt.r.opened"
N_INT239    "x.plt.l.closed"
N_INT240    "x.plt.r.closed"
N_INT241    "x.clamp.up"
N_INT242    "x.clamp.down"
N_INT243    "x.air.on"
N_INT300    "x.line.started[1]"
N_INT301    "x.line.started[2]"
N_INT302    "x.pick.ready[1]"
N_INT303    "x.pick.ready[2]"
N_INT304    "x.pallet.full[1]"
N_INT305    "x.pallet.full[2]"
N_INT306    "x.stop[1]"
N_INT307    "x.stop[2]"
N_INT308    "x.defect.put[1]"
N_INT309    "x.defect.put[2]"
N_INT310    "x.move.to.home"
N_INT311    "x.pallet.free[1]"
N_INT312    "x.pallet.free[2]"
N_INT313    "x.pg.selected[1]"
N_INT314    "x.pg.selected[2]"
.END
.INTER_PANEL_D
0,2,"","  SELECT","  PRODUCT","",10,4,3,2003,0
1,9,7,5,8
6,10,""," RESET","AUTOSTART","",10,4,6,1,"PCEXECUTE autostart.pc",0
7,2,"","  LINE 1","  RESET","",10,2,13,2105,0
8,1,"PAL 1 FREE","","","",10,15,4,10,2311,0
9,1,"PAL 1 FULL","","","",10,15,4,10,2304,0
11,2,""," PRIME"," MAIN","",10,4,6,2014,0
12,2,""," RESET"," MAIN","",9,4,1,2009,-1
13,2,""," PRIME"," HOME","",10,4,11,2015,0
14,2,"","  LINE 2","  RESET","",10,2,13,2106,0
15,1,"PAL 2 FREE","","","",10,15,4,10,2312,0
16,1,"PAL 2 FULL","","","",10,15,4,10,2305,0
21,9,8,3,15
24,2,""," PALLET","CORRECTION","",10,4,3,2006,0
25,2,"","  CONTROL","","",10,4,3,2002,0
26,2,"","  LOG","","",10,4,3,2004,0
27,2,""," DEBUG","","",10,4,3,2005,-1
28,1," BAG 1 RDY","","","",10,15,4,10,2201,0
29,1," BAG 2 RDY","","","",10,15,4,10,2202,0
30,4,2,"FINGERS","CLOSE","OPEN","",10,4,4,34,33,0
31,1," FIN L OP","","","",10,15,4,10,2233,0
32,1," FIN R OP","","","",10,15,4,10,2234,0
33,1," FIN L CL","","","",10,15,4,10,2235,0
34,1," FIN R CL","","","",10,15,4,10,2236,0
35,1,"LINE 1 SAF","","","",10,15,4,10,2203,0
36,1,"LINE 2 SAF","","","",10,15,4,10,2204,0
37,4,2,"PLATE","CLOSE","OPEN","",10,4,4,36,35,0
38,1,"PLATE L OP","","","",10,15,4,10,2237,0
39,1,"PLATE R OP","","","",10,15,4,10,2238,0
40,1,"PLATE L CL","","","",10,15,4,10,2239,0
41,1,"PLATE R CL","","","",10,15,4,10,2240,0
42,1,"BAG 1 DEF","","","",10,15,4,10,2211,0
43,1,"BAG 2 DEF","","","",10,15,4,10,2212,0
44,4,2,"CLAMP","UP","DOWN","",10,4,4,0,37,0
45,1," CLAMP UP","","","",10,15,4,10,2241,0
46,1,"CLAMP DOWN","","","",10,15,4,10,2242,0
47,3,"","  LINE 1","  START ","",10,4,14,0,0,2107,2,-1
48,3,"","  LINE 2","  START ","",10,4,14,0,0,2108,3,-1
49,2,"","   MAIN","<---------","",10,4,11,2001,0
50,2,""," DEBUG","","",10,4,3,2005,0
53,1,"  AIR ON","","","",10,15,4,10,2243,-1
54,2,"","  LINE 1","   STOP","",10,10,0,2105,-1
55,2,"","  LINE 2","   STOP","",10,10,0,2106,-1
56,8,"ifp.prod.no[1]"," LINE 1","PRODUCT NO",10,4,3,1,0
57,2," LINE 1 "," APPLY"," PRODUCT","",10,6,11,2011,-1
58,9,4,4,9
62,10,"","   PREV","   PAGE","",10,4,9,3,"ifp.list.page = ifp.list.page - 1",0
63,8,"ifp.prod.no[2]"," LINE 2","PRODUCT NO",10,4,3,1,0
64,2," LINE 2"," APPLY"," PRODUCT","",10,6,11,2012,-1
65,9,5,4,9
69,8,"ifp.list.page","","   PAGE",10,15,2,1,0
72,9,6,4,9
76,10,"","   NEXT","   PAGE","",10,4,9,2,"ifp.list.page = ifp.list.page + 1",0
77,2,"","   MAIN","<---------","",10,4,11,2001,0
78,2,"  UPDATE","  PRODUCT","   LIST","",10,4,3,2013,-1
79,9,7,5,8
84,9,1,7,15
91,9,2,7,15
98,9,3,7,15
105,2,"","   MAIN","<---------","",10,4,11,2001,0
112,4,2,"BAG 1 RDY","","FORCE","",10,4,4,0,2101,0
113,4,2,"BAG 2 RDY","","FORCE","",10,4,4,0,2102,0
115,4,2,"FIN L OP","","FORCE","",10,4,4,0,2133,0
116,4,2,"FIN R OP","","FORCE","",10,4,4,0,2134,0
117,4,2,"FIN L CL","","FORCE","",10,4,4,0,2135,0
118,4,2,"FIN R CL","","FORCE","",10,4,4,0,2136,0
119,4,2,"LINE 1 SAF","","FORCE","",10,4,4,0,2103,0
120,4,2,"LINE 2 SAF","","FORCE","",10,4,4,0,2104,0
122,4,2,"PLATE L OP","","FORCE","",10,4,4,0,2137,0
123,4,2,"PLATE R OP","","FORCE","",10,4,4,0,2138,0
124,4,2,"PLATE L CL","","FORCE","",10,4,4,0,2139,0
125,4,2,"PLATE R CL","","FORCE","",10,4,4,0,2140,0
126,4,2,"BAG 1 DEF","","FORCE","",10,4,4,0,2111,0
127,4,2,"BAG 2 DEF","","FORCE","",10,4,4,0,2112,0
128,8,"cur.layer[1]","LINE 1","LAYER",10,8,2,1,-1
129,8,"cur.bag[1]","LINE 1","BAG",10,8,2,1,-1
130,4,2,"CLAMP UP","","FORCE","",10,4,4,0,2141,0
131,4,2,"CLAMP DOWN","","FORCE","",10,4,4,0,2142,0
132,4,2,"AIR ON","","FORCE","",10,4,4,0,2143,0
133,2,"","   MAIN","<---------","",10,4,11,2001,0
134,2,"","  CONTROL","","",10,4,3,2002,0
135,8,"cur.layer[2]","LINE 2","LAYER",10,8,2,1,-1
136,8,"cur.bag[2]","LINE 2","BAG",10,8,2,1,-1
138,2,""," PRIME"," TEACH","",10,4,11,2016,0
139,2,""," PRIME"," SERVICE","",10,4,11,2017,0
140,8,"line.product.no[1]"," LINE 1","CURRENT NO",10,4,3,1,-1
144,8,"line.product.no[2]"," LINE 2","CURRENT NO",10,4,3,1,-1
147,8,"ifp.pal.z.shift[1]","LINE 1 Z","PAL SHIFT",10,6,5,2,0
148,8,"ifp.pal.x.shift[1]","LINE 1 X","PAL SHIFT",10,6,5,2,0
149,8,"ifp.pal.a.shift[1]","LINE 1 A","PAL SHIFT",10,6,5,2,0
151,8,"ifp.pal.z.shift[2]","LINE 2 Z","PAL SHIFT",10,6,5,2,0
152,8,"ifp.pal.x.shift[2]","LINE 2 X","PAL SHIFT",10,6,5,2,0
153,8,"ifp.pal.a.shift[2]","LINE 2 A","PAL SHIFT",10,6,5,2,0
154,8,"ifp.pal.y.shift[1]","LINE 1 Y","PAL SHIFT",10,6,5,2,0
156,2," APPLY TO"," PALLET","","",10,4,5,2018,0
158,8,"ifp.pal.y.shift[2]","LINE 2 Y","PAL SHIFT",10,6,5,2,0
160,2," APPLY TO"," PALLET","","",10,4,5,2019,0
161,2,"","   MAIN","<---------","",10,4,11,2001,0
162,2,"","  BAG","CORRECTION","",10,4,3,2007,0
163,2,""," PICK","CORRECTION","",10,4,3,2008,0
168,8,"line.product.no[1]"," LINE 1","CURRENT NO",10,4,3,1,-1
169,8,"ifp.curr.layer[1]","LINE 1","SEL LAYER",10,8,2,1,0
170,8,"ifp.curr.bag[1]","LINE 1","SEL BAG",10,8,2,1,0
172,8,"line.product.no[2]"," LINE 2","CURRENT NO",10,4,3,1,-1
173,8,"ifp.curr.layer[2]","LINE 2","SEL LAYER",10,8,2,1,0
174,8,"ifp.curr.bag[2]","LINE 2","SEL BAG",10,8,2,1,0
175,8,"ifp.bag.z.shift[1]","LINE 1 Z","BAG SHIFT",10,6,5,2,0
176,8,"ifp.bag.x.shift[1]","LINE 1 X","BAG SHIFT",10,6,5,2,0
179,8,"ifp.bag.z.shift[2]","LINE 2 Z","BAG SHIFT",10,6,5,2,0
180,8,"ifp.bag.x.shift[2]","LINE 2 X","BAG SHIFT",10,6,5,2,0
182,8,"ifp.bag.y.shift[1]","LINE 1 Y","BAG SHIFT",10,6,5,2,0
184,2," APPLY TO","SINGLE BAG","","",10,4,5,2020,0
186,8,"ifp.bag.y.shift[2]","LINE 2 Y","BAG SHIFT",10,6,5,2,0
188,2," APPLY TO","SINGLE BAG","","",10,4,5,2021,0
189,2,"","   MAIN","<---------","",10,4,11,2001,0
190,2,""," PALLET","CORRECTION","",10,4,3,2006,0
191,2,""," PICK","CORRECTION","",10,4,3,2008,0
196,8,"pick.z.shift[1]","PICK 1","Z SHIFT",10,6,5,2,0
197,8,"pick.x.shift[1]","PICK 1","X SHIFT",10,6,5,2,0
201,8,"pick.z.shift[2]","PICK 2","Z SHIFT",10,6,5,2,0
202,8,"pick.x.shift[2]","PICK 2","X SHIFT",10,6,5,2,0
203,8,"pick.y.shift[1]","PICK 1","Y SHIFT",10,6,5,2,0
204,8,"pick.a.shift[1]","PICK 1","A SHIFT",10,6,5,2,0
208,8,"pick.y.shift[2]","PICK 2","Y SHIFT",10,6,5,2,0
209,8,"pick.a.shift[2]","PICK 2","A SHIFT",10,6,5,2,0
217,2,"","   MAIN","<---------","",10,4,11,2001,0
218,2,""," PALLET","CORRECTION","",10,4,3,2006,0
219,2,"","  BAG","CORRECTION","",10,4,3,2007,0
.END
.INTER_PANEL_TITLE
"Main",1
"Control",1
"Select product",1
"Log",1
"Debug",1
"Pallet correction",1
"Bag correction",1
"Pick correction",1
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
  CALL log ("Main program executed")
  ;
  ; Set robot basic parameters
  WEIGHT 120, 0, 0, 350, 0.1, 0.1, 0.1
  TOOL tool.gripper
  CALL safe.home
  ;
  SIGNAL -x.defect.put[1], -x.defect.put[2]
  ;
  WHILE TRUE DO
    FOR .i = 1 TO 2
      IF SIG (x.pick.ready[.i]) THEN
        CALL pick (.i)
        IF NOT SIG (x.defect.put[.i]) THEN
          CALL put.pallet (.i)
        ELSE
          SIGNAL -x.defect.put[.i]
          CALL put.defect (.i)
        END
      END
    END
    IF SIG(x.move.to.home) THEN
      BREAK
      CALL safe.home
    END
  END
.END
.PROGRAM a.service ()
  ;
  SPEED 20 ALWAYS
  ACCURACY 1 ALWAYS
  ;
  POINT .service = #put[1]
  POINT .service.appro = SHIFT(.service BY 0, 0, 400)
  ;
  JMOVE .service.appro
  ;
.END
.PROGRAM a.teach ()
  ;
  ; CALL STEP 10 TO LINE 1 STEP 18 TO LINE 2
  ; CALL STEP 26 TO DEFECT
  ;
  SPEED 20 ALWAYS
  ACCURACY 1 ALWAYS
  ;
  HOME
  ;
  LAPPRO #pick[1], 400
  LMOVE #pick[1] ; *** TEACH POINT ***
  LAPPRO #pick[1], 400
  ;
  LAPPRO #put[1], 800
  LMOVE #put[1] ; *** TEACH POINT ***
  LAPPRO #put[1], 800
  ;
  LAPPRO #pick[2], 400
  LMOVE #pick[2] ; *** TEACH POINT ***
  LAPPRO #pick[2], 400
  ;
  LAPPRO #put[2], 800
  LMOVE #put[2] ; *** TEACH POINT ***
  LAPPRO #put[2], 800
  ;
  LAPPRO #put.defect, 800
  LMOVE #put.defect ; *** TEACH POINT ***
  LAPPRO #put.defect, 800
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
    ;
    CALL ifp.pc
    ;
    IF TASK(6002) <> 1 THEN
      MC NUMEXECUTE
      TWAIT 0.5
    END
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
    .$i = $ENCODE (/L, .i)
    ;
    IF line.product.no[.i] <= 0 THEN
      IF line.product.no[.i] == 0 THEN
        .$line[.i] = "Line " + .$i + " product: Not selected"
      ELSE
        .$line[.i] = "Line " + .$i + " product: Wrong program"
      END
    ELSE
      .$line[.i] = "Line " + .$i + " product: " + $product.names[line.product.no[.i]]
    END
    ;
  END
  ;
  IFPWPRINT .product.window, .row, .col, color.pink, color.black = .$line[1], " ", .$line[2]
  ;
.END
.PROGRAM grip.check.open ()
  ;
  CALL log ("Check if gripper is opened")
  ; 
  SWAIT x.fin.l.opened, x.fin.r.opened
  SWAIT x.plt.l.opened, x.plt.r.opened
  SWAIT x.clamp.up
  ;
.END
.PROGRAM grip.release ()
  ;
  CALL log ("Open gripper")
  ;
  SIGNAL -o.clamp.down
  SIGNAL o.plate.open, -o.plate.close
  SIGNAL o.fingers.open, -o.fingers.close
  ;
.END
.PROGRAM ifp.pc()@26/10/13 16:58 #1749111
  ;
  IF ifp.list.page <> ifp.last.page THEN
    CALL disp.list
    ifp.last.page = ifp.list.page
  END
  ; Work with products
  FOR .line = 1 TO 2
    ;
    ifp.prod.no[.line] = MINVAL (ifp.prod.no[.line], 255)
    ifp.prod.no[.line] = MAXVAL (ifp.prod.no[.line], -1)
    ;
    ; Select product
    IF SIG (s.apply.product[.line]) AND NOT SWITCH (CS ) THEN
      IF ifp.prod.no[.line] > 0 THEN
        CALL set.product (.line)
      END
      ifp.prod.no[.line] = -1
    END
    ; Update product list
    IF SIG (s.upd.prod.list) THEN
      CALL load.products
      CALL disp.list
    END
  END
  ;
  ; Prime buttons
  IF SIG (s.prime.main) AND NOT SWITCH (CS) AND WHICHTASK ("a.main") <> 1 THEN
    CALL log.pc1 ("a.main program was set to execute")
    MC PRIME a.main
  END
  ;
  IF SIG (s.prime.home) AND NOT SWITCH (CS) AND WHICHTASK ("safe.home") <> 1 THEN
    CALL log.pc1 ("safe.home program was set to execute")
    MC PRIME safe.home
  END
  ;
  IF SIG (s.prime.teach) AND NOT SWITCH (REPEAT) AND WHICHTASK ("a.teach") <> 1 THEN
    CALL log.pc1 ("a.teach program was set to execute")
    MC PRIME a.teach
  END
  ;
  IF SIG (s.prime.service) AND NOT SWITCH (REPEAT) AND WHICHTASK ("a.service") <> 1 THEN
    CALL log.pc1 ("a.service program was set to execute")
    MC PRIME a.service
  END
  ;
  CALL proc.correct.pc
  ;
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
.PROGRAM numpg ()
  ;
  ; Green lamp flicker
  SFLK z.line.blink[1] = 2
  SFLK z.line.blink[2] = 2
  ;
  ; Reset timers
  STIM z.reset.tmr[1] = x.btn.stop[1], 5
  STIM z.reset.tmr[2] = x.btn.stop[2], 5
  ;
  ; Input from ifp and physical
  SOUT x.bag.ready[1] = s.bag.ready[1] OR i.bag.ready[1]
  SOUT x.bag.ready[2] = s.bag.ready[2] OR i.bag.ready[2]
  ;
  SOUT x.line.safe[1] = s.line.safe[1] OR i.line.safe[1]
  SOUT x.line.safe[2] = s.line.safe[2] OR i.line.safe[2]
  ;
  SOUT x.btn.stop[1] = s.btn.stop[1] OR i.btn.stop[1]
  SOUT x.btn.stop[2] = s.btn.stop[2] OR i.btn.stop[2]
  ;
  SOUT x.btn.start[1] = s.btn.start[1] OR i.btn.start[1]
  SOUT x.btn.start[2] = s.btn.start[2] OR i.btn.start[2]
  ;
  SOUT x.bag.defect[1] = s.bag.defect[1] OR i.bag.defect[1]
  SOUT x.bag.defect[2] = s.bag.defect[2] OR i.bag.defect[2]
  ;
  SOUT x.fin.l.opened = s.fin.l.opened OR i.fin.l.opened
  SOUT x.fin.r.opened = s.fin.r.opened OR i.fin.r.opened
  SOUT x.fin.l.closed = s.fin.l.closed OR i.fin.l.closed
  SOUT x.fin.r.closed = s.fin.r.closed OR i.fin.r.closed
  ;
  SOUT x.plt.l.opened = s.plt.l.opened OR i.plt.l.opened
  SOUT x.plt.r.opened = s.plt.r.opened OR i.plt.r.opened
  SOUT x.plt.l.closed = s.plt.l.closed OR i.plt.l.closed
  SOUT x.plt.r.closed = s.plt.r.closed OR i.plt.r.closed
  ;
  SOUT x.clamp.up = s.clamp.up OR i.clamp.up
  SOUT x.clamp.down = s.clamp.down OR i.clamp.down
  ;
  SOUT x.air.on = s.air.on OR i.air.on
  ;
  IF line.product.no[1] == -1 THEN
    SIGNAL -x.pg.selected[1]
  ELSE
    SIGNAL x.pg.selected[1]
  END
  IF line.product.no[2] == -1 THEN
    SIGNAL -x.pg.selected[2]
  ELSE
    SIGNAL x.pg.selected[2]
  END
  ;
  ; Lamp if pallet is free
  IF cur.layer[1] == 1 AND cur.bag[1] == 1 THEN
    SIGNAL x.pallet.free[1]
  ELSE
    SIGNAL -x.pallet.free[1]
  END
  IF cur.layer[2] == 1 AND cur.bag[2] == 1 THEN
    SIGNAL x.pallet.free[2]
  ELSE
    SIGNAL -x.pallet.free[2]
  END
  ;
  ; Check if pallet is full
  IF cur.layer[1] > w.max.layers[1] THEN
    SIGNAL x.pallet.full[1]
  ELSE
    SIGNAL -x.pallet.full[1]
  END
  IF cur.layer[2] > w.max.layers[2] THEN
    SIGNAL x.pallet.full[2]
  ELSE
    SIGNAL -x.pallet.full[2]
  END
  ; Line ready blink
  SOUT o.lamp.green[1] = NOT x.pallet.full[1] AND (x.pg.selected[1] AND z.line.blink[1] OR x.line.started[1])
  SOUT o.lamp.green[2] = NOT x.pallet.full[2] AND (x.pg.selected[2] AND z.line.blink[2] OR x.line.started[2])
  ;
  ; Stop conditions
  SOUT x.stop[1] = x.btn.stop[1] OR x.pallet.full[1]
  SOUT x.stop[2] = x.btn.stop[2] OR x.pallet.full[2]
  ;
  ; Line start/stop
  SOUT x.line.started[1] = x.btn.start[1] AND x.pg.selected[1] OR x.line.started[1] AND NOT x.stop[1] 
  SOUT x.line.started[2] = x.btn.start[2] AND x.pg.selected[2] OR x.line.started[2] AND NOT x.stop[2]
  ;
  ; Bag pick ready
  SOUT x.pick.ready[1] = x.line.started[1] AND x.line.safe[1] AND x.air.on AND x.line.started[1] AND x.bag.ready[1]
  SOUT x.pick.ready[2] = x.line.started[2] AND x.line.safe[2] AND x.air.on AND x.line.started[2] AND x.bag.ready[2]
  ;
  ; Check if bag is defect
  SOUT x.defect.put[1] = i.bag.defect[1] OR s.bag.defect[1] OR x.defect.put[1]
  SOUT x.defect.put[2] = i.bag.defect[2] OR s.bag.defect[2] OR x.defect.put[2]
  ;
  ; Reset pallet
  IF SIG (z.reset.tmr[1]) AND NOT SIG(x.line.started[1]) THEN
    cur.layer[1] = 1
    cur.bag[1] = 1
  END
  IF SIG (z.reset.tmr[2]) AND NOT SIG(x.line.started[2]) THEN
    cur.layer[2] = 1
    cur.bag[2] = 1
  END
  ;
  ; Move to home
  SOUT x.move.to.home = NOT x.line.started[1] AND NOT x.line.started[2] AND NOT do.home
  ;
.END
.PROGRAM pallet.reset (.line.no)
  ;
  CALL log("Pallet" + $ENCODE(.line.no) + " reset")
  cur.layer[.line.no] = 1
  cur.bag[.line.no] = 1
  ;
.END
.PROGRAM pg0()@26/10/13 16:54 #0
;
  CALL a.main
;
.END
.PROGRAM pick (.line.no)
  ;
  .layer = cur.layer[.line.no]
  .bag = cur.bag[.line.no]
  CALL log("Pick bag from line:" + $ENCODE(.line.no) + "")
  ;
  ; Points calculation
  ;
  POINT .pick = #pick[.line.no]
  POINT .put.base = #put[.line.no]
  POINT .put = .put.base + put.base[.line.no, .layer, .bag]
  ;
  .pick.z = DZ (.pick) + pick.appro[.line.no]
  .put.z = DZ (.put) + put.appro[.line.no]
  .z.appro = MAXVAL (.put.z, .pick.z)
  ;
  CALL log("Calculated z.appro for pick:" + $ENCODE(.z.appro))
  ;
  POINT .pick = .pick + TRANS(pick.x.shift[.line.no], pick.y.shift[.line.no], pick.z.shift[.line.no], pick.a.shift[.line.no])
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
  SWAIT x.plt.l.closed, x.plt.r.closed
  SWAIT x.fin.l.closed, x.fin.r.closed
  ;
  ; Depart
  LMOVE .pick.depart
  ;
  ; Down clamp while move
  SIGNAL o.clamp.down
  ;
.END
.PROGRAM proc.correct.pc ()
  ; Correction tool
  FOR .line = 1 TO 2
    ;
    ifp.curr.layer[.line] = MAXVAL (ifp.curr.layer[.line], 1)
    ifp.curr.layer[.line] = MINVAL (ifp.curr.layer[.line], w.max.layers[.line])
    ifp.curr.bag[.line] = MAXVAL (ifp.curr.bag[.line], 1)
    ifp.curr.bag[.line] = MINVAL (ifp.curr.bag[.line], w.layer.bags[.line, ifp.curr.layer[.line]])
    ;
    ;
    .product = line.product.no[.line]
    .layer = ifp.curr.layer[.line]
    .bag = ifp.curr.bag[.line]
    ;
    .$line = $ENCODE (/L, .line)
    .$prod = $ENCODE (/L, .product)
    .$layer = $ENCODE (/L, .layer)
    .$bag = $ENCODE (/L, .bag)
    ;
    .prod.chg = ifp.last.prod[.line] <> line.product.no[.line]
    .prod.exist = line.product.no[.line] <> -1
    .layer.chg = ifp.last.layer[.line] <> ifp.curr.layer[.line]
    .bag.chg = ifp.last.bag[.line] <> ifp.curr.bag[.line]
    .load.data = (.prod.chg OR .layer.chg OR .bag.chg) AND .prod.exist
    ;
    IF .load.data  THEN
      ;
      IF .prod.chg THEN
        ifp.curr.layer[.line] = 1
        ifp.curr.bag[.line] = 1
      END
      ;
      ifp.last.prod[.line] = line.product.no[.line]
      ifp.last.layer[.line] = ifp.curr.layer[.line]
      ifp.last.bag[.line] = ifp.curr.bag[.line]
      
      ;
      ; Global pallet shifts
      IF .prod.chg THEN
        ; Check if already exists
        .$var = "pallet.shift[" +.$prod + "," + .$line + "]"
        IF NOT EXISTTRANS (.$var) THEN
          POINT pallet.shift[.product, .line] = NULL
        END
        ;
        ; Decompose to global coordinates
        DECOMPOSE .c[1] = pallet.shift[.product, .line]
        ifp.pal.x.shift[.line] = .c[1]
        ifp.pal.y.shift[.line] = .c[2]
        ifp.pal.z.shift[.line] = .c[3]
        ifp.pal.a.shift[.line] = .c[4]
        CALL log.pc1 ("Loaded pallet correction for product: " + .$prod + " line: " + .$line)
      END
      ;
      IF .line == 1 THEN
        .$var = "l1.bag.shift[" +.$prod + "," + .$layer + "," + .$bag + "]"
        IF NOT EXISTTRANS (.$var) THEN
          POINT l1.bag.shift[.product, .layer, .bag] = NULL
        END
        ;
        ; Decompose to global coordinates
        DECOMPOSE .c[1] = l1.bag.shift[.product, .layer, .bag]
      ELSE
        .$var = "l2.bag.shift[" +.$prod + "," + .$layer + "," + .$bag + "]"
        IF NOT EXISTTRANS (.$var) THEN
          POINT l2.bag.shift[.product, .layer, .bag] = NULL
        END
        ;
        ; Decompose to global coordinates
        DECOMPOSE .c[1] = l2.bag.shift[.product, .layer, .bag]
      END
      ifp.bag.x.shift[.line] = .c[1]
      ifp.bag.y.shift[.line] = .c[2]
      ifp.bag.z.shift[.line] = .c[3]
      CALL log.pc1 ("Loaded bag correction for product: " + .$prod + " line: " + .$line + " layer: " + .$layer + " bag: " + .$bag)
      ;
    END
    ;
    ; Global corrections
    IF SIG (s.apply.pal.sht[.line]) AND line.product.no[.line] <> -1  THEN
      .c[1] = ifp.pal.x.shift[.line]
      .c[2] = ifp.pal.y.shift[.line]
      .c[3] = ifp.pal.z.shift[.line]
      .c[4] = ifp.pal.a.shift[.line]
      ;
      POINT .temp = TRANS (.c[1], .c[2], .c[3], .c[4], 0, 0, 0)
      IF DISTANCE (.temp, pallet.shift[ifp.last.prod[.line], .line]) > 0 THEN
        POINT pallet.shift[ifp.last.prod[.line], .line] = TRANS (.c[1], .c[2], .c[3], .c[4], 0, 0, 0)
        CALL log.pc1 ("Saved pallet correction for product: " + .$prod + " line: " + .$line)
      END
    END
    ;
    IF SIG (s.apply.bag[.line]) AND line.product.no[.line] <> -1  THEN
      .c[1] = ifp.bag.x.shift[.line]
      .c[2] = ifp.bag.y.shift[.line]
      .c[3] = ifp.bag.z.shift[.line]
      ;
      POINT .temp = TRANS (.c[1], .c[2], .c[3], .c[4], 0, 0, 0)
      IF .line == 1 THEN
        IF DISTANCE (.temp, l1.bag.shift[.product, .layer, .bag]) > 0 THEN
          POINT l1.bag.shift[.product, .layer, .bag] = TRANS (.c[1], .c[2], .c[3], .c[4], 0, 0, 0)
        END
      ELSE
        IF DISTANCE (.temp, l2.bag.shift[.product, .layer, .bag]) > 0 THEN
          POINT l2.bag.shift[.product, .layer, .bag] = TRANS (.c[1], .c[2], .c[3], .c[4], 0, 0, 0)
        END
      END
      CALL log.pc1 ("Loaded bag correction for product: " + .$prod + " line: " + .$line + " layer: " + .$layer + " bag: " + .$bag)
    END
    ;
  END
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
.PROGRAM product11 ()
  ;
  $product.name = "Testing"
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
  max.layers = 3
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
  CALL log ("Put bag from line:" + $ENCODE (.line.no) + " to defect")
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
  .product = line.product.no[.line.no]
  .layer = cur.layer[.line.no]
  .bag = cur.bag[.line.no]
  .t.shift = pick.shift[.line.no] - w.bag.length[.line.no] / 2
  ;
  .$prod = $ENCODE (/L, .product)
  .$line = $ENCODE (/L, .line.no)
  .$layer = $ENCODE (/L, .layer)
  .$bag = $ENCODE (/L, .bag)
  ;
  .$no = $ENCODE (/L, .line.no)
  .$l = $ENCODE (/L, .layer)
  .$b = $ENCODE (/L, .bag)
  .$temp = "Put bag from line: " + .$no + " to layer: " + .$l + " bag: " + .$b
  CALL log (.$temp)
  ;
  ; Points calculation
  ;
  POINT .pick = #pick[.line.no]
  POINT .put.base = #put[.line.no]
  ;
  ; Calculate shifts
  .$var = "pallet.shift[" +.$prod + "," + .$line + "]"
  IF NOT EXISTTRANS (.$var) THEN
    POINT pallet.shift[.product, .line.no] = NULL
  END
  ;
  POINT .put.base = .put.base + pallet.shift[.product, .line.no]
  ;
  IF .line.no == 1 THEN
    .$var = "l1.bag.shift[" +.$prod + "," + .$layer + "," + .$bag + "]"
    IF NOT EXISTTRANS (.$var) THEN
      POINT l1.bag.shift[.product, .layer, .bag] = NULL
    END
    POINT .put.base = .put.base + l1.bag.shift[.product, .layer, .bag]
  ELSE
    .$var = "l2.bag.shift[" +.$prod + "," + .$layer + "," + .$bag + "]"
    IF NOT EXISTTRANS (.$var) THEN
      POINT l2.bag.shift[.product, .layer, .bag] = NULL
    END
    POINT .put.base = .put.base + l2.bag.shift[.product, .layer, .bag]
  END
  ;
  POINT .put = .put.base + put.base[.line.no, .layer, .bag]
  POINT .put = .put + TRANS (0, -.t.shift, 0)
  ;
  .pick.z = DZ (.pick) + pick.appro[.line.no]
  .put.z = DZ (.put) + put.appro[.line.no]
  .z.appro = MAXVAL (.put.z, .pick.z)
  CALL log ("Calculated z.appro for put:" + $ENCODE (.z.appro))
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
  TWAIT 2
  RETURN
;
.END
.PROGRAM set.io.pc()@26/10/15 18:46 #7
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
  s.bag.ready[1] = 2101
  x.bag.ready[1] = 2201
  ;
  i.bag.ready[2] = 1002
  s.bag.ready[2] = 2102
  x.bag.ready[2] = 2202
  ;
  i.line.safe[1] = 1003
  s.line.safe[1] = 2103
  x.line.safe[1] = 2203
  ;
  i.line.safe[2] = 1004
  s.line.safe[2] = 2104
  x.line.safe[2] = 2204
  ;
  i.btn.stop[1] = 1005
  s.btn.stop[1] = 2105
  x.btn.stop[1] = 2205
  ;
  i.btn.stop[2] = 1006
  s.btn.stop[2] = 2106
  x.btn.stop[2] = 2206
  ;
  i.btn.start[1] = 1007
  s.btn.start[1] = 2107
  x.btn.start[1] = 2207
  ;
  i.btn.start[2] = 1008
  s.btn.start[2] = 2108
  x.btn.start[2] = 2208
  ;
  i.bag.defect[1] = 1011
  s.bag.defect[1] = 2111
  x.bag.defect[1] = 2211
  ;
  i.bag.defect[2] = 1012
  s.bag.defect[2] = 2112
  x.bag.defect[2] = 2212
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
  s.fin.l.opened = 2133
  x.fin.l.opened = 2233
  ;
  i.fin.r.opened = 1034
  s.fin.r.opened = 2134
  x.fin.r.opened = 2234
  ;
  i.fin.l.closed = 1035
  s.fin.l.closed = 2135
  x.fin.l.closed = 2235
  ;
  i.fin.r.closed = 1036
  s.fin.r.closed = 2136
  x.fin.r.closed = 2236
  ;
  i.plt.l.opened = 1037
  s.plt.l.opened = 2137
  x.plt.l.opened = 2237
  ;
  i.plt.r.opened = 1038
  s.plt.r.opened = 2138
  x.plt.r.opened = 2238
  ;
  i.plt.l.closed = 1039
  s.plt.l.closed = 2139
  x.plt.l.closed = 2239
  ;
  i.plt.r.closed = 1040
  s.plt.r.closed = 2140
  x.plt.r.closed = 2240
  ;
  i.clamp.up = 1041
  s.clamp.up = 2141
  x.clamp.up = 2241
  ;
  i.clamp.down = 1042
  s.clamp.down = 2142
  x.clamp.down = 2242
  ;
  i.air.on = 1043
  s.air.on = 2143
  x.air.on = 2243
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
  di.reset.main = 2009
  ;
  do.home = 2010
  ;
  s.apply.product[1] = 2011
  s.apply.product[2] = 2012
  ;
  s.upd.prod.list = 2013
  ;
  s.prime.main = 2014
  s.prime.home = 2015
  s.prime.teach = 2016
  s.prime.service = 2017
  ;
  s.apply.pal.sht[1] = 2018
  s.apply.pal.sht[2] = 2019
  ;
  s.apply.bag[1] = 2020
  s.apply.bag[2] = 2021
  ;
  s.apply.layer[1] = 2022
  s.apply.layer[2] = 2023
  ;
  ;s.apply.even[1] 
  ;s.apply.even[2] 
  ;
  x.line.started[1] = 2300
  x.line.started[2] = 2301
  ;
  x.pick.ready[1] = 2302
  x.pick.ready[2] = 2303
  ;
  x.pallet.full[1] = 2304
  x.pallet.full[2] = 2305
  ;
  x.stop[1] = 2306
  x.stop[2] = 2307
  ;
  x.defect.put[1] = 2308
  x.defect.put[2] = 2309
  ;
  x.move.to.home = 2310
  ;
  x.pallet.free[1] = 2311
  x.pallet.free[2] = 2312
  ;
  x.pg.selected[1] = 2313
  x.pg.selected[2] = 2314
  ;
  z.line.blink[1] = 3065
  z.line.blink[2] = 3066
  ;
  z.reset.tmr[1] = 3001
  z.reset.tmr[2] = 3002
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
  CALL ciner("pick.x.shift[1]", pick.x.shift[1], 0)
  CALL ciner("pick.x.shift[2]", pick.x.shift[2], 0)
  CALL ciner("pick.y.shift[1]", pick.y.shift[1], 0)
  CALL ciner("pick.y.shift[2]", pick.y.shift[2], 0)
  CALL ciner("pick.z.shift[1]", pick.z.shift[1], 0)
  CALL ciner("pick.z.shift[2]", pick.z.shift[2], 0)
  ;
  ifp.prod.no[1] = -1
  ifp.prod.no[2] = -1
  ;
  ifp.list.page = 1
  ifp.last.page = 1
  ;
  ; Last selected elements for correction tool
  ifp.last.prod[1] = -1
  ifp.last.prod[2] = -1
  ;
  ifp.curr.layer[1] = 1
  ifp.curr.layer[2] = 1
  ifp.last.layer[1] = -1
  ifp.last.layer[2] = -1
  ;
  ifp.curr.bag[1] = 1
  ifp.curr.bag[2] = 1
  ifp.last.bag[1] = -1
  ifp.last.bag[2] = -1 
  ;
  ; Corrections on interface panel
  ifp.pal.x.shift[1] = 0
  ifp.pal.x.shift[2] = 0
  ifp.pal.y.shift[1] = 0
  ifp.pal.y.shift[2] = 0
  ifp.pal.z.shift[1] = 0
  ifp.pal.z.shift[2] = 0
  ifp.pal.a.shift[1] = 0
  ifp.pal.a.shift[2] = 0
  ;
  ifp.bag.x.shift[1] = 0
  ifp.bag.x.shift[2] = 0
  ifp.bag.y.shift[1] = 0
  ifp.bag.y.shift[2] = 0
  ifp.bag.z.shift[1] = 0
  ifp.bag.z.shift[2] = 0
  ;
  ;ifp.l1.x.shift
  ;ifp.locv.cur.y = 0
  ;ifp.locv.cur.z = 0
  ;ifp.locv.cur.a = 0
  ;
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
  SWAIT x.plt.l.closed, x.plt.r.closed
  SWAIT x.fin.l.closed, x.fin.r.closed
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
	; x.pallet.full[1]
	; x.btn.stop[1]
	; x.line.safe[1]
	; x.btn.start[1]
	; x.line.ready[1]
	; line.product.no[1]
	; x.pg.selected[1]
	; line.product.no[2]
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
	;     2:product11:F
	;       .l 
	;       .w 
	;       .h 
	;       .g1 
	;       .g2 
	;       .g3 
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
	;       .product 
	;       .layer 
	;       .bag 
	;       .t.shift 
	;       .$prod 
	;       .$line 
	;       .$layer 
	;       .$bag 
	;       .$no 
	;       .$l 
	;       .$b 
	;       .$temp 
	;       .pick 
	;       .put.base 
	;       .$var 
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
	;     5:pallet.reset:F
	;       .line.no 
	;     5:a.teach:F
	;     5:a.service:F
	;       .service 
	;       .service.appro 
	;       .line.no 
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
	;       .line 
	;       .c 
	;     8:proc.correct.pc:B
	;       .line 
	;       .product 
	;       .layer 
	;       .bag 
	;       .$line 
	;       .$prod 
	;       .$layer 
	;       .$bag 
	;       .prod.chg 
	;       .prod.exist 
	;       .layer.chg 
	;       .bag.chg 
	;       .load.data 
	;       .$var 
	;       .c 
	;       .temp 
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
	;   0:numpg:N
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
	; clamp.appro[] 
	; drop.appro[] 
	; drop.appro.def 
	; w.pallet.x.shif[] 
	; w.pallet.y.shif[] 
	; ifp.last.bag[] 
	; ifp.last.layer[] 
	; ifp.last.prod[] 
	; ifp.pal.a.shift[] 
	; ifp.pal.y.shift[] 
	; ifp.pal.x.shift[] 
	; x.line.ready[] 
	; x.pal.free[] 
	; x.start[] 
	; ifp.pal.z.shift[] 
	; x 
	; xxx 
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
	; i.line.safe[] 
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
	; s.clamp.down 
	; s.btn.stop[] 
	; s.btn.start[] 
	; s.air.on 
	; s.bag.defect[] 
	; s.bag.ready[] 
	; s.fin.l.closed 
	; s.clamp.up 
	; s.fin.r.closed 
	; s.fin.l.opened 
	; s.plt.l.closed 
	; s.line.safe[] 
	; s.plt.r.closed 
	; s.plt.l.opened 
	; s.prime.service 
	; s.prime.main 
	; s.prime.home 
	; s.plt.r.opened 
	; s.fin.r.opened 
	; x.line.started[] 
	; z.line.blink[] 
	; s.prime.teach 
	; x.air.on 
	; x.bag.defect[] 
	; x.bag.ready[] 
	; x.btn.start[] 
	; x.btn.stop[] 
	; x.clamp.down 
	; x.clamp.up 
	; x.fin.l.closed 
	; x.fin.l.opened 
	; x.fin.r.closed 
	; x.fin.r.opened 
	; x.line.safe[] 
	; x.plt.l.closed 
	; x.plt.l.opened 
	; x.plt.r.closed 
	; x.plt.r.opened 
	; x.pallet.full[] 
	; x.pick.ready[] 
	; x.stop[] 
	; x.defect.put[] 
	; z.reset.tmr[] 
	; x.move.to.home 
	; x.pallet.free[] 
	; di.reset.main 
	; x.pg.selected[] 
	; s.apply.pal.sht[] 
	; s.apply.bag[] 
	; s.apply.layer[] 
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
bp[9,2] 247.500000 870.000000 990.000000 90.000031 0.000000 0.000000
bp[9,1] 247.500000 290.000000 990.000000 90.000031 0.000000 0.000000
bp[8,5] 827.500000 870.000000 880.000000 90.000031 0.000000 0.000000
bp[8,4] 827.500000 290.000000 880.000000 90.000031 0.000000 0.000000
bp[8,3] 290.000000 1237.500000 880.000000 0.000000 0.000000 0.000000
bp[8,2] 290.000000 742.500000 880.000000 0.000000 0.000000 0.000000
bp[8,1] 290.000000 247.500000 880.000000 0.000000 0.000000 0.000000
bp[7,5] 785.000000 1237.500000 770.000000 0.000000 0.000000 0.000000
bp[7,4] 785.000000 742.500000 770.000000 0.000000 0.000000 0.000000
bp[7,3] 785.000000 247.500000 770.000000 0.000000 0.000000 0.000000
bp[7,2] 247.500000 870.000000 770.000000 90.000031 0.000000 0.000000
bp[7,1] 247.500000 290.000000 770.000000 90.000031 0.000000 0.000000
bp[6,5] 827.500000 870.000000 660.000000 90.000031 0.000000 0.000000
bp[6,4] 827.500000 290.000000 660.000000 90.000031 0.000000 0.000000
bp[6,3] 290.000000 1237.500000 660.000000 0.000000 0.000000 0.000000
bp[6,2] 290.000000 742.500000 660.000000 0.000000 0.000000 0.000000
bp[6,1] 290.000000 247.500000 660.000000 0.000000 0.000000 0.000000
bp[5,5] 785.000000 1237.500000 550.000000 0.000000 0.000000 0.000000
bp[5,4] 785.000000 742.500000 550.000000 0.000000 0.000000 0.000000
bp[5,3] 785.000000 247.500000 550.000000 0.000000 0.000000 0.000000
bp[5,2] 247.500000 870.000000 550.000000 90.000031 0.000000 0.000000
bp[5,1] 247.500000 290.000000 550.000000 90.000031 0.000000 0.000000
bp[4,5] 827.500000 870.000000 440.000000 90.000031 0.000000 0.000000
bp[4,4] 827.500000 290.000000 440.000000 90.000031 0.000000 0.000000
bp[4,3] 290.000000 1237.500000 440.000000 0.000000 0.000000 0.000000
bp[4,2] 290.000000 742.500000 440.000000 0.000000 0.000000 0.000000
bp[4,1] 290.000000 247.500000 440.000000 0.000000 0.000000 0.000000
bp[3,5] 785.000000 1237.500000 330.000000 0.000000 0.000000 0.000000
bp[3,4] 785.000000 742.500000 330.000000 0.000000 0.000000 0.000000
bp[3,3] 785.000000 247.500000 330.000000 0.000000 0.000000 0.000000
bp[3,2] 247.500000 870.000000 330.000000 90.000031 0.000000 0.000000
bp[3,1] 247.500000 290.000000 330.000000 90.000031 0.000000 0.000000
bp[2,5] 827.500000 870.000000 220.000000 90.000031 0.000000 0.000000
bp[2,4] 827.500000 290.000000 220.000000 90.000031 0.000000 0.000000
bp[2,3] 290.000000 1237.500000 220.000000 0.000000 0.000000 0.000000
bp[2,2] 290.000000 742.500000 220.000000 0.000000 0.000000 0.000000
bp[2,1] 290.000000 247.500000 220.000000 0.000000 0.000000 0.000000
bp[1,5] 785.000000 1237.500000 110.000000 0.000000 0.000000 0.000000
bp[1,4] 785.000000 742.500000 110.000000 0.000000 0.000000 0.000000
bp[1,3] 785.000000 247.500000 110.000000 0.000000 0.000000 0.000000
bp[1,2] 247.500000 870.000000 110.000000 90.000031 0.000000 0.000000
bp[1,1] 247.500000 290.000000 110.000000 90.000031 0.000000 0.000000
pb[1,1] 210.000000 310.000000 120.000000 0.000000 0.000000 0.000000
pb[1,2] 210.000000 960.000000 120.000000 0.000000 0.000000 0.000000
pb[1,3] 735.000000 210.000000 120.000000 90.000008 0.000000 0.000000
pb[1,4] 735.000000 635.000000 120.000000 90.000008 0.000000 0.000000
pb[1,5] 735.000000 1060.000000 120.000000 90.000008 0.000000 0.000000
pb[2,1] 310.000000 210.000000 240.000000 90.000008 0.000000 0.000000
pb[2,2] 310.000000 635.000000 240.000000 90.000008 0.000000 0.000000
pb[2,3] 310.000000 1060.000000 240.000000 90.000008 0.000000 0.000000
pb[2,4] 835.000000 310.000000 240.000000 0.000000 0.000000 0.000000
pb[2,5] 835.000000 960.000000 240.000000 0.000000 0.000000 0.000000
pb[3,1] 210.000000 310.000000 360.000000 0.000000 0.000000 0.000000
pb[3,2] 210.000000 960.000000 360.000000 0.000000 0.000000 0.000000
pb[3,3] 735.000000 210.000000 360.000000 90.000008 0.000000 0.000000
pb[3,4] 735.000000 635.000000 360.000000 90.000008 0.000000 0.000000
pb[3,5] 735.000000 1060.000000 360.000000 90.000008 0.000000 0.000000
pb[4,1] 310.000000 210.000000 480.000000 90.000008 0.000000 0.000000
pb[4,2] 310.000000 635.000000 480.000000 90.000008 0.000000 0.000000
pb[4,3] 310.000000 1060.000000 480.000000 90.000008 0.000000 0.000000
pb[4,4] 835.000000 310.000000 480.000000 0.000000 0.000000 0.000000
pb[4,5] 835.000000 960.000000 480.000000 0.000000 0.000000 0.000000
pb[5,1] 210.000000 310.000000 600.000000 0.000000 0.000000 0.000000
pb[5,2] 210.000000 960.000000 600.000000 0.000000 0.000000 0.000000
pb[5,3] 735.000000 210.000000 600.000000 90.000008 0.000000 0.000000
pb[5,4] 735.000000 635.000000 600.000000 90.000008 0.000000 0.000000
pb[5,5] 735.000000 1060.000000 600.000000 90.000008 0.000000 0.000000
pb[6,1] 310.000000 210.000000 720.000000 90.000008 0.000000 0.000000
pb[6,2] 310.000000 635.000000 720.000000 90.000008 0.000000 0.000000
pb[6,3] 310.000000 1060.000000 720.000000 90.000008 0.000000 0.000000
pb[6,4] 835.000000 310.000000 720.000000 0.000000 0.000000 0.000000
pb[6,5] 835.000000 960.000000 720.000000 0.000000 0.000000 0.000000
pb[7,1] 210.000000 310.000000 840.000000 0.000000 0.000000 0.000000
pb[7,2] 210.000000 960.000000 840.000000 0.000000 0.000000 0.000000
pb[7,3] 735.000000 210.000000 840.000000 90.000008 0.000000 0.000000
pb[7,4] 735.000000 635.000000 840.000000 90.000008 0.000000 0.000000
pb[7,5] 735.000000 1060.000000 840.000000 90.000008 0.000000 0.000000
pb[8,1] 310.000000 210.000000 960.000000 90.000008 0.000000 0.000000
pb[8,2] 310.000000 635.000000 960.000000 90.000008 0.000000 0.000000
pb[8,3] 310.000000 1060.000000 960.000000 90.000008 0.000000 0.000000
pb[8,4] 835.000000 310.000000 960.000000 0.000000 0.000000 0.000000
pb[8,5] 835.000000 960.000000 960.000000 0.000000 0.000000 0.000000
pb[9,1] 210.000000 310.000000 1080.000000 0.000000 0.000000 0.000000
pb[9,2] 210.000000 960.000000 1080.000000 0.000000 0.000000 0.000000
pb[9,3] 735.000000 210.000000 1080.000000 90.000008 0.000000 0.000000
pb[9,4] 735.000000 635.000000 1080.000000 90.000008 0.000000 0.000000
pb[9,5] 735.000000 1060.000000 1080.000000 90.000008 0.000000 0.000000
put.base[1,1,1] 210.000000 310.000000 -120.000000 0.000000 0.000000 0.000000
put.base[1,1,2] 210.000000 960.000000 -120.000000 0.000000 0.000000 0.000000
put.base[1,1,3] 735.000000 210.000000 -120.000000 90.000015 0.000000 0.000000
put.base[1,1,4] 735.000000 635.000000 -120.000000 90.000015 0.000000 0.000000
put.base[1,1,5] 735.000000 1060.000000 -120.000000 90.000015 0.000000 0.000000
put.base[1,2,1] 310.000000 210.000000 -240.000000 90.000015 0.000000 0.000000
put.base[1,2,2] 310.000000 635.000000 -240.000000 90.000015 0.000000 0.000000
put.base[1,2,3] 310.000000 1060.000000 -240.000000 90.000015 0.000000 0.000000
put.base[1,2,4] 835.000000 310.000000 -240.000000 0.000000 0.000000 0.000000
put.base[1,2,5] 835.000000 960.000000 -240.000000 0.000000 0.000000 0.000000
put.base[1,3,1] 210.000000 310.000000 -360.000000 0.000000 0.000000 0.000000
put.base[1,3,2] 210.000000 960.000000 -360.000000 0.000000 0.000000 0.000000
put.base[1,3,3] 735.000000 210.000000 -360.000000 90.000015 0.000000 0.000000
put.base[1,3,4] 735.000000 635.000000 -360.000000 90.000015 0.000000 0.000000
put.base[1,3,5] 735.000000 1060.000000 -360.000000 90.000015 0.000000 0.000000
put.base[1,4,1] 287.500000 187.500000 -480.000000 90.000023 0.000000 0.000000
put.base[1,4,2] 287.500000 612.500000 -480.000000 90.000023 0.000000 0.000000
put.base[1,4,3] 287.500000 1037.500000 -480.000000 90.000023 0.000000 0.000000
put.base[1,4,4] 812.500000 287.500000 -480.000000 0.000000 0.000000 0.000000
put.base[1,4,5] 812.500000 937.500000 -480.000000 0.000000 0.000000 0.000000
put.base[1,5,1] 187.500000 287.500000 -600.000000 0.000000 0.000000 0.000000
put.base[1,5,2] 187.500000 937.500000 -600.000000 0.000000 0.000000 0.000000
put.base[1,5,3] 712.500000 187.500000 -600.000000 90.000023 0.000000 0.000000
put.base[1,5,4] 712.500000 612.500000 -600.000000 90.000023 0.000000 0.000000
put.base[1,5,5] 712.500000 1037.500000 -600.000000 90.000023 0.000000 0.000000
put.base[1,6,1] 287.500000 187.500000 -720.000000 90.000023 0.000000 0.000000
put.base[1,6,2] 287.500000 612.500000 -720.000000 90.000023 0.000000 0.000000
put.base[1,6,3] 287.500000 1037.500000 -720.000000 90.000023 0.000000 0.000000
put.base[1,6,4] 812.500000 287.500000 -720.000000 0.000000 0.000000 0.000000
put.base[1,6,5] 812.500000 937.500000 -720.000000 0.000000 0.000000 0.000000
put.base[1,7,1] 187.500000 287.500000 -840.000000 0.000000 0.000000 0.000000
put.base[1,7,2] 187.500000 937.500000 -840.000000 0.000000 0.000000 0.000000
put.base[1,7,3] 712.500000 187.500000 -840.000000 90.000023 0.000000 0.000000
put.base[1,7,4] 712.500000 612.500000 -840.000000 90.000023 0.000000 0.000000
put.base[1,7,5] 712.500000 1037.500000 -840.000000 90.000023 0.000000 0.000000
put.base[1,8,1] 287.500000 187.500000 -960.000000 90.000023 0.000000 0.000000
put.base[1,8,2] 287.500000 612.500000 -960.000000 90.000023 0.000000 0.000000
put.base[1,8,3] 287.500000 1037.500000 -960.000000 90.000023 0.000000 0.000000
put.base[1,8,4] 812.500000 287.500000 -960.000000 0.000000 0.000000 0.000000
put.base[1,8,5] 812.500000 937.500000 -960.000000 0.000000 0.000000 0.000000
put.base[1,9,1] 187.500000 287.500000 -1080.000000 0.000000 0.000000 0.000000
put.base[1,9,2] 187.500000 937.500000 -1080.000000 0.000000 0.000000 0.000000
put.base[1,9,3] 712.500000 187.500000 -1080.000000 90.000023 0.000000 0.000000
put.base[1,9,4] 712.500000 612.500000 -1080.000000 90.000023 0.000000 0.000000
put.base[1,9,5] 712.500000 1037.500000 -1080.000000 90.000023 0.000000 0.000000
tool.gripper 0.000000 0.000000 350.000000 0.000000 0.000000 0.000000
put.base[2,1,1] 210.000000 310.000000 -120.000000 0.000000 0.000000 0.000000
put.base[2,1,2] 210.000000 960.000000 -120.000000 0.000000 0.000000 0.000000
put.base[2,1,3] 735.000000 210.000000 -120.000000 90.000015 0.000000 0.000000
put.base[2,1,4] 735.000000 635.000000 -120.000000 90.000015 0.000000 0.000000
put.base[2,1,5] 735.000000 1060.000000 -120.000000 90.000015 0.000000 0.000000
put.base[2,2,1] 310.000000 210.000000 -240.000000 90.000015 0.000000 0.000000
put.base[2,2,2] 310.000000 635.000000 -240.000000 90.000015 0.000000 0.000000
put.base[2,2,3] 310.000000 1060.000000 -240.000000 90.000015 0.000000 0.000000
put.base[2,2,4] 835.000000 310.000000 -240.000000 0.000000 0.000000 0.000000
put.base[2,2,5] 835.000000 960.000000 -240.000000 0.000000 0.000000 0.000000
put.base[2,3,1] 210.000000 310.000000 -360.000000 0.000000 0.000000 0.000000
put.base[2,3,2] 210.000000 960.000000 -360.000000 0.000000 0.000000 0.000000
put.base[2,3,3] 735.000000 210.000000 -360.000000 90.000015 0.000000 0.000000
put.base[2,3,4] 735.000000 635.000000 -360.000000 90.000015 0.000000 0.000000
put.base[2,3,5] 735.000000 1060.000000 -360.000000 90.000015 0.000000 0.000000
put.base[2,4,1] 287.500000 187.500000 -480.000000 90.000031 0.000000 0.000000
put.base[2,4,2] 287.500000 612.500000 -480.000000 90.000031 0.000000 0.000000
put.base[2,4,3] 287.500000 1037.500000 -480.000000 90.000031 0.000000 0.000000
put.base[2,4,4] 812.500000 287.500000 -480.000000 0.000000 0.000000 0.000000
put.base[2,4,5] 812.500000 937.500000 -480.000000 0.000000 0.000000 0.000000
put.base[2,5,1] 187.500000 287.500000 -600.000000 0.000000 0.000000 0.000000
put.base[2,5,2] 187.500000 937.500000 -600.000000 0.000000 0.000000 0.000000
put.base[2,5,3] 712.500000 187.500000 -600.000000 90.000031 0.000000 0.000000
put.base[2,5,4] 712.500000 612.500000 -600.000000 90.000031 0.000000 0.000000
put.base[2,5,5] 712.500000 1037.500000 -600.000000 90.000031 0.000000 0.000000
put.base[2,6,1] 287.500000 187.500000 -720.000000 90.000031 0.000000 0.000000
put.base[2,6,2] 287.500000 612.500000 -720.000000 90.000031 0.000000 0.000000
put.base[2,6,3] 287.500000 1037.500000 -720.000000 90.000031 0.000000 0.000000
put.base[2,6,4] 812.500000 287.500000 -720.000000 0.000000 0.000000 0.000000
put.base[2,6,5] 812.500000 937.500000 -720.000000 0.000000 0.000000 0.000000
put.base[2,7,1] 187.500000 287.500000 -840.000000 0.000000 0.000000 0.000000
put.base[2,7,2] 187.500000 937.500000 -840.000000 0.000000 0.000000 0.000000
put.base[2,7,3] 712.500000 187.500000 -840.000000 90.000031 0.000000 0.000000
put.base[2,7,4] 712.500000 612.500000 -840.000000 90.000031 0.000000 0.000000
put.base[2,7,5] 712.500000 1037.500000 -840.000000 90.000031 0.000000 0.000000
put.base[2,8,1] 287.500000 187.500000 -960.000000 90.000031 0.000000 0.000000
put.base[2,8,2] 287.500000 612.500000 -960.000000 90.000031 0.000000 0.000000
put.base[2,8,3] 287.500000 1037.500000 -960.000000 90.000031 0.000000 0.000000
put.base[2,8,4] 812.500000 287.500000 -960.000000 0.000000 0.000000 0.000000
put.base[2,8,5] 812.500000 937.500000 -960.000000 0.000000 0.000000 0.000000
put.base[2,9,1] 187.500000 287.500000 -1080.000000 0.000000 0.000000 0.000000
put.base[2,9,2] 187.500000 937.500000 -1080.000000 0.000000 0.000000 0.000000
put.base[2,9,3] 712.500000 187.500000 -1080.000000 90.000031 0.000000 0.000000
put.base[2,9,4] 712.500000 612.500000 -1080.000000 90.000031 0.000000 0.000000
put.base[2,9,5] 712.500000 1037.500000 -1080.000000 90.000031 0.000000 0.000000
pb[1,6] 782.500000 1012.500000 120.000000 0.000000 0.000000 0.000000
pb[1,7] 222.500000 617.500000 120.000000 90.000008 0.000000 0.000000
pb[1,8] 712.500000 617.500000 120.000000 90.000008 0.000000 0.000000
pb[2,6] 712.500000 462.500000 240.000000 90.000008 0.000000 0.000000
pb[2,7] 712.500000 772.500000 240.000000 90.000008 0.000000 0.000000
pb[2,8] 712.500000 1082.500000 240.000000 90.000008 0.000000 0.000000
pb[3,6] 782.500000 1012.500000 360.000000 0.000000 0.000000 0.000000
pb[3,7] 222.500000 617.500000 360.000000 90.000008 0.000000 0.000000
pb[3,8] 712.500000 617.500000 360.000000 90.000008 0.000000 0.000000
pb[4,6] 712.500000 462.500000 480.000000 90.000008 0.000000 0.000000
pb[4,7] 712.500000 772.500000 480.000000 90.000008 0.000000 0.000000
pb[4,8] 712.500000 1082.500000 480.000000 90.000008 0.000000 0.000000
pb[5,6] 782.500000 1012.500000 600.000000 0.000000 0.000000 0.000000
pb[5,7] 222.500000 617.500000 600.000000 90.000008 0.000000 0.000000
pb[5,8] 712.500000 617.500000 600.000000 90.000008 0.000000 0.000000
pb[6,6] 712.500000 462.500000 720.000000 90.000008 0.000000 0.000000
pb[6,7] 712.500000 772.500000 720.000000 90.000008 0.000000 0.000000
pb[6,8] 712.500000 1082.500000 720.000000 90.000008 0.000000 0.000000
pb[7,6] 782.500000 1012.500000 840.000000 0.000000 0.000000 0.000000
pb[7,7] 222.500000 617.500000 840.000000 90.000008 0.000000 0.000000
pb[7,8] 712.500000 617.500000 840.000000 90.000008 0.000000 0.000000
pb[8,6] 712.500000 462.500000 960.000000 90.000008 0.000000 0.000000
pb[8,7] 712.500000 772.500000 960.000000 90.000008 0.000000 0.000000
pb[8,8] 712.500000 1082.500000 960.000000 90.000008 0.000000 0.000000
pb[10,1] 290.000000 190.000000 1200.000000 90.000008 0.000000 0.000000
pb[10,2] 290.000000 590.000000 1200.000000 90.000008 0.000000 0.000000
pb[10,3] 290.000000 990.000000 1200.000000 90.000008 0.000000 0.000000
pb[10,4] 790.000000 290.000000 1200.000000 0.000000 0.000000 0.000000
pb[10,5] 790.000000 890.000000 1200.000000 0.000000 0.000000 0.000000
pb[11,1] 190.000000 290.000000 1320.000000 0.000000 0.000000 0.000000
pb[11,2] 190.000000 890.000000 1320.000000 0.000000 0.000000 0.000000
pb[11,3] 690.000000 190.000000 1320.000000 90.000008 0.000000 0.000000
pb[11,4] 690.000000 590.000000 1320.000000 90.000008 0.000000 0.000000
pb[11,5] 690.000000 990.000000 1320.000000 90.000008 0.000000 0.000000
pb[12,1] 290.000000 190.000000 1440.000000 90.000008 0.000000 0.000000
pb[12,2] 290.000000 590.000000 1440.000000 90.000008 0.000000 0.000000
pb[12,3] 290.000000 990.000000 1440.000000 90.000008 0.000000 0.000000
pb[12,4] 790.000000 290.000000 1440.000000 0.000000 0.000000 0.000000
pb[12,5] 790.000000 890.000000 1440.000000 0.000000 0.000000 0.000000
put.base[1,1,6] 840.000000 1017.500000 -120.000000 0.000000 0.000000 0.000000
put.base[1,1,7] 245.000000 600.000000 -120.000000 90.000031 0.000000 0.000000
put.base[1,1,8] 755.000000 600.000000 -120.000000 90.000031 0.000000 0.000000
put.base[1,2,6] 755.000000 432.500000 -240.000000 90.000031 0.000000 0.000000
put.base[1,2,7] 755.000000 767.500000 -240.000000 90.000031 0.000000 0.000000
put.base[1,2,8] 755.000000 1102.500000 -240.000000 90.000031 0.000000 0.000000
put.base[1,3,6] 840.000000 1017.500000 -360.000000 0.000000 0.000000 0.000000
put.base[1,3,7] 245.000000 600.000000 -360.000000 90.000031 0.000000 0.000000
put.base[1,3,8] 755.000000 600.000000 -360.000000 90.000031 0.000000 0.000000
put.base[1,4,6] 755.000000 432.500000 -480.000000 90.000031 0.000000 0.000000
put.base[1,4,7] 755.000000 767.500000 -480.000000 90.000031 0.000000 0.000000
put.base[1,4,8] 755.000000 1102.500000 -480.000000 90.000031 0.000000 0.000000
put.base[1,5,6] 840.000000 1017.500000 -600.000000 0.000000 0.000000 0.000000
put.base[1,5,7] 245.000000 600.000000 -600.000000 90.000031 0.000000 0.000000
put.base[1,5,8] 755.000000 600.000000 -600.000000 90.000031 0.000000 0.000000
put.base[1,6,6] 755.000000 432.500000 -720.000000 90.000031 0.000000 0.000000
put.base[1,6,7] 755.000000 767.500000 -720.000000 90.000031 0.000000 0.000000
put.base[1,6,8] 755.000000 1102.500000 -720.000000 90.000031 0.000000 0.000000
put.base[1,7,6] 840.000000 1017.500000 -840.000000 0.000000 0.000000 0.000000
put.base[1,7,7] 245.000000 600.000000 -840.000000 90.000031 0.000000 0.000000
put.base[1,7,8] 755.000000 600.000000 -840.000000 90.000031 0.000000 0.000000
put.base[1,10,1] 300.000000 200.000000 -1200.000000 90.000031 0.000000 0.000000
put.base[1,10,2] 300.000000 600.000000 -1200.000000 90.000031 0.000000 0.000000
put.base[1,10,3] 300.000000 1000.000000 -1200.000000 90.000031 0.000000 0.000000
put.base[1,10,4] 800.000000 300.000000 -1200.000000 0.000000 0.000000 0.000000
put.base[1,10,5] 800.000000 900.000000 -1200.000000 0.000000 0.000000 0.000000
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
i.line.safe[1] = 1003
i.line.safe[2] = 1004
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
bag.height = 120
bag.length = 620
bag.weight = 30
bag.width = 420
cur.bag[1] = 1
cur.layer[1] = 1
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
line.product.no[1] = 5
max.layers = 3
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
w.bag.length[1] = 500
w.bag.length[2] = 620
w.bag.weight[1] = 25
w.bag.weight[2] = 30
w.bag.width[1] = 330
w.bag.width[2] = 420
w.layer.bags[1,1] = 8
w.layer.bags[1,2] = 8
w.layer.bags[1,3] = 8
w.layer.bags[1,4] = 8
w.layer.bags[1,5] = 8
w.layer.bags[1,6] = 8
w.layer.bags[1,7] = 8
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
w.max.layers[1] = 7
w.max.layers[2] = 9
w.pallet.height[1] = 150
w.pallet.height[2] = 150
w.pallet.length[1] = 1200
w.pallet.length[2] = 1200
w.pallet.width[1] = 1000
w.pallet.width[2] = 1000
pallet.x.shift = -22.5
pallet.y.shift = -22.5
s.clamp.down = 2142
s.btn.stop[2] = 2106
s.btn.stop[1] = 2105
s.btn.start[2] = 2108
s.air.on = 2143
s.bag.defect[1] = 2111
s.bag.defect[2] = 2112
s.bag.ready[1] = 2101
s.fin.l.closed = 2135
s.clamp.up = 2141
s.btn.start[1] = 2107
s.bag.ready[2] = 2102
s.fin.r.closed = 2136
s.fin.l.opened = 2133
s.plt.l.closed = 2139
s.line.safe[2] = 2104
s.plt.r.closed = 2140
s.plt.l.opened = 2137
s.prime.service = 2017
s.prime.main = 2014
s.prime.home = 2015
s.plt.r.opened = 2138
s.line.safe[1] = 2103
s.fin.r.opened = 2134
clamp.appro[1] = 100
clamp.appro[2] = 100
drop.appro[1] = 100
drop.appro[2] = 100
drop.appro.def = 200
layer.bags[10] = 5
layer.bags[11] = 5
layer.bags[12] = 5
x.line.started[2] = 2301
x.line.started[1] = 2300
z.line.blink[2] = 3066
z.line.blink[1] = 3065
w.layer.bags[1,10] = 5
w.layer.bags[1,11] = 5
w.layer.bags[1,12] = 5
w.layer.bags[2,10] = 5
w.layer.bags[2,11] = 5
w.layer.bags[2,12] = 5
w.pallet.x.shif[1] = -5
w.pallet.x.shif[2] = -22.5
w.pallet.y.shif[1] = -67.5
w.pallet.y.shif[2] = -22.5
s.prime.teach = 2016
x.air.on = 2243
x.bag.defect[1] = 2211
x.bag.defect[2] = 2212
x.bag.ready[1] = 2201
x.bag.ready[2] = 2202
x.btn.start[1] = 2207
x.btn.start[2] = 2208
x.btn.stop[1] = 2205
x.btn.stop[2] = 2206
x.clamp.down = 2242
x.clamp.up = 2241
x.fin.l.closed = 2235
x.fin.l.opened = 2233
x.fin.r.closed = 2236
x.fin.r.opened = 2234
x.line.safe[1] = 2203
x.line.safe[2] = 2204
x.plt.l.closed = 2239
x.plt.l.opened = 2237
x.plt.r.closed = 2240
x.plt.r.opened = 2238
x.pallet.full[2] = 2305
x.pallet.full[1] = 2304
x.pick.ready[2] = 2303
x.pick.ready[1] = 2302
x.stop[1] = 2306
x.stop[2] = 2307
x.defect.put[1] = 2308
x.defect.put[2] = 2309
z.reset.tmr[1] = 3001
z.reset.tmr[2] = 3002
x.move.to.home = 2310
x.pallet.free[1] = 2311
x.pallet.free[2] = 2312
di.reset.main = 2009
x.pg.selected[1] = 2313
x.pg.selected[2] = 2314
ifp.last.bag[1] = -1
ifp.last.bag[2] = -1
ifp.last.layer[1] = -1
ifp.last.layer[2] = -1
ifp.last.prod[1] = 5
ifp.last.prod[2] = 1
s.apply.pal.sht[2] = 2019
s.apply.pal.sht[1] = 2018
ifp.pal.a.shift[2] = 0
ifp.pal.a.shift[1] = 0
ifp.pal.y.shift[2] = 0
ifp.pal.y.shift[1] = 2
ifp.pal.x.shift[2] = 0
ifp.pal.x.shift[1] = 11
x.line.ready[1] = 2300
x.pal.free[1] = 2311
x.pal.free[2] = 2312
x.start[1] = 2030
x.start[2] = 2031
ifp.pal.z.shift[1] = 11
ifp.pal.z.shift[2] = 0
x = 23
x.line.ready[2] = 2301
xxx = 23
s.apply.bag[1] = 2020
s.apply.bag[2] = 2021
s.apply.layer[1] = 2022
s.apply.layer[2] = 2023
.END
