//M(WorkpieceSetup)
;FB422 mart 2026

DEF DefinicijaKonture = (I/* 0="Ravno",1="Korekcija konusa", 2="Korekcija u dve tacke", 3="Korisnicka kontura"/0/,"Definicija","","."/WR2///235,,185/395,,160)
DEF Precnik = (R4/0,450/100/,"Precnik konture","D",$89068/WR2///235,,185/395,,160)
DEF Pocetak = (R4/-1000,1000/0/,"Pocetak konture","Z1",$89068/WR2///235,,185/395,,160)
DEF Kraj = (R4/-1000,1000/0/,"Kraj konture","Z2",$89068/WR2///235,,185/395,,160)
DEF Korekcija1 = (R4/0,1/0/,"Korekcija na kraju","K1",$89068/WR2///235,,185/395,,160)
DEF Korekcija2 = (R4/0,1/0/,"Korekcija u sredini","K2",$89068/WR2///235,,185/395,,160)
DEF NazivKonture = (S///,"Naziv konture","",".spf"/WR2///235,,185/395,,160)
Def NacinUlaza = (I/*0="Bez ulaza",1="Konusno"/0/,"Nacin ulaza u konturu",,"."/wr2///235,,185/395,,160)
Def DuzinaUlaza = (R1/0,25/0/,"Duzina ulaza","L1",$89068/wr2///235,,185/395,,160)
Def UgaoUlaza = (R1/-30,30/0/,"Ugao ulaza","A1",$89072/wr2///235,,185/395,,160)
Def NacinIzlaza = (I/*0="Bez izlaza",1="Konusno"/0/,"Nacin izlaza iz konture",,"."/wr2///235,,185/395,,160)
Def DuzinaIzlaza = (R1/0,25/0/,"Duzina izlaza","L2",$89068/wr2///235,,185/395,,160)
Def UgaoIzlaza = (R1/-30,30/0/,"Ugao izlaza","A2",$89072/wr2///235,,185/395,,160)


DEF Lineta = (I/* 0="Bez Linete",1="Sa Linetom"/0/,"Nacin rada","-","."/WR2///235,,185/395,,160)
DEF PozUose = (R4/0,400/0/,"Pozicija ose","U",$89068/WR2///235,,185/395,,160)
DeF UlazLinete=(R1/0,400/0/,"Pozicija ulaska","L1",$89068/WR2///235,,185/395,,160)
DeF IzlazLinete=(R1/0,400/0/,"Pozicija ulaska","L1",$89068/WR2///235,,185/395,,160)
DeF StatusLinete=(IDD/0,400/0/,"Status","",""/WR4///235,,185/395,,160)



VS8=("OK",,se1)
VS7=($89842,,se1)

OUTPUT(NCCODE3)
  "_Workpiece_Setup(""" NazivKonture """," DefinicijaKonture "," Precnik "," Pocetak "," Kraj "," Korekcija1 "," Korekcija2 "," NacinUlaza "," DuzinaUlaza "," UgaoUlaza "," NacinIzlaza "," DuzinaIzlaza "," UgaoIzlaza "," Lineta "," PozUose "," UlazLinete "," IzlazLinete "," StatusLinete  ")"
END_OUTPUT

PRESS(VS8)
  GC("NCCODE3")
  EXIT
END_PRESS

PRESS(VS7)
  EXIT
END_PRESS

LOAD

END_LOAD

//END

