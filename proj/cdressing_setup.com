
//M(DressingSetup/$89151)
;FB422
;FEBRUAR 2026

DEF BRTOC = (S//"krug1"/$89642,$89190////235,5,190/375,5,95//"pomoc.html","9007")
DEF DBROJTOC = (I/1,9/1/$89643,,"D1"////500,5,20/505,5,35//"pomoc.html","9008")

DEF BRAbriht = (S//"almaz1"/$89684,$89813////235,25,190/375,25,95//"pomoc.html","9301")
DEF DBROJAbriht = (I/1,9/1/$89685,,"D1"/wr1///500,25,20/505,25,35//"pomoc.html","9302")
DEF DBROJAbriht2 = (I/1,9/2/$89685,,"D2"/wr1///500,45,20/505,45,35//"pomoc.html","9302")
DEF UGAOB = (R3/-180,180/0/,$89453,"B",$89072/LI3,///235,,165/375,,200//"pomoc.html","9044")
DEF PRILAZ = (I/*-1=$89607,0=$89601,1=$89602,2=$89603,3=$89604/0/,$89605,,"."/WR2///235,,165/375,,200//"pomoc.html","9015")
DEF XSAFE = (R1//0/,$89606,"X",////235,,165/375,,60),
ZSAFE = (R1//0/,,"Z",$89068/WR2///465,,25/465,,110)
DEF NACINABRIHT = (I/* 0=$89135, 300="Jedna ostrica", 310="Dve ostrice", 320="Profilni"/0/,"Alat",,"-"/WR2///235/375,,200//"POMOC.HTML","9302")
DEF PROGABRIHTLEVO = (S//""/$89689,$89864,,".dsr"/WR2///235/375,,200//"pomoc.html","9314")
DEF PROGABRIHTDESNO = (S//""/$89689,$89864,,".dsr"/WR2///235/375,,200//"pomoc.html","9314")
DEF SMER = (I/* 0=$89191,1=$89192/0/,$89193,,"-"/wr2///235/375,,200)
DEF MARPOSS = (IDD/0,9/0/$89696,"Broj Marposs cikusa","","-"////235,,180/375,,200//"pomoc.html","9311")
DEF OBLIK = (IDD/* 0=$89401, 1=$89402/0/$89400,$89400,,"."/wr2///235,,195/375,,200//"pomoc.html","9022")
DEF KORPOZ = (R4/,/0/$89065,$89066,,$89068/LI3,///235,,190/375,,200)
DEF HLAD_A = (IDD/10,15/12/$89697,$89568,,$89067/WR2,ac2///235,,195/375,,200//"pomoc.html","9011")
DEF PODHODX = (R1/0,50/3/,$89058,"AX",$89068////235,,190/375,,200)
DEF PODHODZ = (R1/0,50/5/,,"AZ",$89068////235,,190/375,,200)
DEF KOMENT = (S///$89660,$89569,,"."////235,,80/375,,200//"pomoc.html","9024")
Def PADAJUCI=(IDD/* 0=$89862,2=$89863/0/,$89861,""," "/WR2///235,,180/375,,200)
DEF KOMADA = (IDD/0,100/0/$89055,$89199,"",$89073////235,,180/375,,200//"pomoc.html","9310")
DEF PREOSTALO = (IDD/0,100/0/$89696,$89167,"",$89073////235,,180/375,,200//"pomoc.html","9311")
DEF SLIKA = (I///,,,/WR1///0,0,250,350/0,320,25,32) 

VS8=("OK",,SE1)
VS7=("Cancel",,SE1)


OUTPUT(NCCODE3)
  "_DRESSING_SETUP(""" BRTOC """," DBROJTOC ",""" BrAbriht"""," DbrojAbriht ","  DbrojAbriht2 "," NacinAbriht ",""" ProgAbrihtLevo """,""" ProgAbrihtDesno """," Marposs "," PRILAZ "," XSAFE "," ZSAFE "," UGAOB "," Komada "," Preostalo "," HLAD_A "," OBLIK "," SMER "," KORPOZ "," PODHODX "," PODHODZ ",""" KOMENT  """)"
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

