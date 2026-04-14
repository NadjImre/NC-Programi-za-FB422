
//S(Start)

HS3=($89075,,se1)
;aktivira vertikalni meni za brušenje
PRESS(HS3)
  LS("brusenje","ceditor.COM",1)
END_PRESS

HS4=($89151,,se1)
;aktivira vertikalni meni za poravanavnje
PRESS(HS4)
  LS("poravnavanje","ceditor.COM",1)
END_PRESS

HS5=($83534,,se1)
;aktivira vertikalni meni za merenje
PRESS(HS5)
  LS("merenje","ceditor.com",1)
END_PRESS

HS6=("",,se2)
;HS6=($89463,,se1)
;aktivira vertikalni meni za navoje i profile
PRESS(HS6)
  ;LS("navoj","ceditor.com",1)
END_PRESS

//END

//S(brusenje)
;definicije za brušenje

;rezimi obrade "feed and speeds"
VS1=("Grinding%nSetup",,se1)
PRESS(VS1)
  LM("GrindingSetup","cgrinding_setup.com",1)
END_PRESS

;brusenje osnovne funkcije ->usecanje, oscilacije, kombinovano, čelo, konus
VS2=($89075,,se1)
PRESS(VS2)
  LM("Grinding","cgrinding.com",1)
END_PRESS

;podesavanje brusenja navoja
VS3=("Thread%nSetup",,se1)
PRESS(VS3)
  LM("ThreadSetup","cthread_setup.com",1)
END_PRESS

;brusenje navoja
VS4=("Thread%nGrinding",,se1)
PRESS(VS4)
  LM("ThreadGrinding","cthread_grinding.com",1)
END_PRESS

;brušenje sa mernom glavom
VS5=($89783,,se1)
PRESS(VS5)
  LM("brusenjeMG","cbrusenje2.com")
END_PRESS

;podešavanje linete
VS6=("Steady rest%nSetup",,se1)
PRESS(VS6)
  LM("SteadyRest","csteady.com")
END_PRESS

;kontura brusenja
VS7=("Workpiece%nSetup",,se1)
PRESS(VS7)
  LM("WorkpieceSetup","cworkpiece.com")
END_PRESS

VS8=("<<",,se1)

PRESS(VS8)
  EXIT
END_PRESS

//END

//S(poravnavanje)

;Podesavanje oblika kamena
VS1=("Wheel%nSetup",,se1)
PRESS(VS1)
  LM("WheelSetup","cwheel_setup.com",1)
END_PRESS

;podesavanje abrihtera
VS2=("Dressing%nSetup",,se1)
PRESS(VS2)
  LM("DressingSetup","cdressing_setup.com",1)
END_PRESS

;PORAVNAVANJW
VS3=("Dressing",,se1)
PRESS(VS3)
  LM("dressing","cdressing.com",1)
END_PRESS

;korekcija precnika kamena - usaglasavanje stavrog precnika sa alatom
VS5=($89791,,se1)
PRESS(VS5)
  LM("Korekcija","cporavnavanje2.com",1)
END_PRESS

VS8=("<<",,se1)

PRESS(VS8)
  EXIT
END_PRESS

//END

//S(merenje)

;Podesavanje oblika kamena
VS1=("Measuring%nHead",,se1)
PRESS(VS1)
  LM("MeasurinHead","csonda.com",1)
END_PRESS

VS8=("<<",,se1)

PRESS(VS8)
  EXIT
END_PRESS

//END

//S(navoj)

VS1=("Thread%nSetup",,se1)

PRESS(VS1)
  LM("SetupNavoja","cnavoj.com",1)
END_PRESS

VS2=($89564,,se1)

PRESS(VS2)
  LM("ProfilKamena","cnavoj.com",1)
END_PRESS

VS3=($89674,,se1)

PRESS(VS3)
  LM("AbrihtNavoja","cnavoj.com",1)
END_PRESS

;rezimi obrade "feed and speeds"
VS4=($89171,,se1)
PRESS(VS4)
  LM("Rezimi22","crezimi_za_navoj.com",1)
END_PRESS

VS5=($89571,,se1)

PRESS(VS5)
  LM("BrusenjeProfila","cnavoj.com",1)
END_PRESS

VS6=($89866,,se1)

PRESS(VS6)
  LM("RadniPredmet","cnavoj.com",1)
END_PRESS

VS7=($89865 ,,se1)

PRESS(VS7)
  LM("Navoj","cnavoj.com",1)
END_PRESS


VS8=("<<",,se1)

PRESS(VS8)
  EXIT
END_PRESS

//END


