MODULE MainModule
    CONST string myjob_1:="ra1903.job";
    VAR cameratarget mycameratarget27;
    VAR num xshift;
    VAR num yshift;
    VAR signaldi signaldi1;
    CONST robtarget p10:=[[-39.60,601.62,820.79],[0.00198004,0.0479873,0.998839,-0.00365777],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p20:=[[189.89,748.57,290.99],[0.00261929,0.718733,0.695281,-0.000697024],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p30:=[[189.89,748.62,174.21],[0.002602,0.718736,0.695278,-0.000692031],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p40:=[[193.02,383.13,1088.16],[0.00237396,0.999667,-0.0256604,0.00142414],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p50:=[[193.04,383.11,1385.28],[0.00237745,0.999667,-0.0256527,0.00143092],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR num parcadurumu;
    VAR num kameracekimsayi;
    VAR num myexposuretime;
    VAR num kat;
    VAR robtarget posgiris;
    VAR robtarget pos10;
    CONST robtarget p60:=[[213.00,42.68,954.55],[0.009786,-0.999244,0.0375576,-0.00235812],[1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR num bekle;
    VAR robtarget hatapos;
    VAR num x;
    VAR num y;
    VAR num z;
    VAR num aa;
    VAR num bb;
    VAR num cc;

    VAR num b;
    VAR num j;
    VAR num k;

    VAR num x_sifir;
    VAR num y_sifir;
    VAR num z_sifir;

    PERS num x_sira;
    PERS num y_sira;
    PERS num z_sira;

    VAR num reg27;

    VAR string jump1;
    VAR string jump2;

    VAR num x_offset;
    VAR num x_offreal:=100;
    VAR num y_offset;
    VAR num y_offreal:=100;


    VAR num edge_1;
    VAR num edge_2;
    VAR num fark;


    CONST robtarget p70:=[[-51.53,1207.29,69.72],[0.00817875,0.686777,-0.726774,0.00840895],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p80:=[[713.87,-345.14,1687.14],[0.708861,-0.00770219,-0.00454961,0.705292],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p90:=[[1074.93,422.53,1137.97],[0.000233822,0.0405655,0.99911,-0.0115539],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p100:=[[1167.17,407.68,109.99],[0.000233513,0.0405957,0.999109,-0.0115512],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p110:=[[1167.10,407.55,1022.77],[0.00022728,0.0405511,0.99911,-0.0115903],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p120:=[[-39.52,841.71,820.59],[0.00369736,0.998436,-0.0557384,0.00204794],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p130:=[[-448.58,-280.07,291.80],[0.708885,-0.00769839,-0.00454139,0.705267],[1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR num sensdurum;
    VAR num hatadurumu;
    VAR robtarget pos1;
    VAR robtarget pos2;
    VAR robtarget pos3;
    VAR robtarget pos4;
    PERS num deger_y_sbt:=-21.4263;
    PERS num deger_x_sbt:=-559.251;
    PERS num deger_z_sbt:=301.093;
    VAR num deger_y;
    VAR num deger_x;
    VAR num deger_z;
    VAR num offs_x;
    VAR num offs_y;
    VAR num offs_z;
    VAR num aci;
    VAR num bilal;
    CONST robtarget p140:=[[-250.28,206.76,61.33],[0.99952,-0.00201947,-0.00874113,-0.0296402],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p150:=[[1338.31,-920.31,1696.97],[0.999794,-0.00587466,-0.0061078,-0.01843],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p160:=[[1843.51,-967.46,1603.34],[0.999129,-0.00572784,-0.00574211,-0.0409329],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p170:=[[1881.65,-975.41,1476.24],[0.999131,-0.00578832,-0.00618845,-0.0408195],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p180:=[[1078.00,-920.32,1696.85],[0.999794,-0.00587578,-0.00604033,-0.0184431],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p190:=[[1078.02,-920.31,1921.61],[0.999794,-0.00587306,-0.00605999,-0.0184489],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p200:=[[1339.48,-936.29,1992.15],[0.999794,-0.00587632,-0.00610457,-0.018449],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p210:=[[1192.75,-1363.89,2077.11],[0.9195,0.0064624,0.0181981,-0.392616],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p220:=[[633.54,-2146.16,1533.82],[0.680447,-0.0014851,0.019296,-0.732542],[-2,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p230:=[[634.17,-2153.46,128.97],[0.675843,0.00839169,0.00784949,-0.736956],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p240:=[[636.17,-2130.33,281.83],[0.680154,0.00803268,0.00815635,-0.73298],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p250:=[[566.62,-2098.53,341.24],[0.680167,0.00802642,0.00814892,-0.732968],[-2,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p260:=[[573.10,-2098.16,281.82],[0.680175,0.00806684,0.00819273,-0.732959],[-2,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p270:=[[1612.21,-954.01,1639.97],[0.999238,-0.00577264,-0.00617401,-0.0380932],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p280:=[[1645.79,-954.00,1639.97],[0.718561,-0.00844749,-9.9767E-05,0.695413],[-1,-1,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS num x_ekle;
    PERS num y_ekle;
    PERS num z_ekle;
    VAR num y_hile;
    VAR num z_hile;
    VAR num varÖlcüm;
    VAR num varBosaltmaDolu;
    VAR num y4z4;

    PERS num x_okumadan{8}:=[-16.6022,-4.36255,6.66522,7.5683,19.9299,16.9575,22.5409,32.29];
    PERS num y_okumadan{8}:=[1.87302,4.17751,-0.00739479,11.7257,18.7289,0.125587,5.32855,-9.11301];
    PERS num z_okumadan{8}:=[-17.902,-11.9825,-11.8669,-9.91251,-0.50705,-6.65982,-4.99088,-8.28702];

    PROC main()

        x_ekle := 15;
        y_ekle:=0;
        z_ekle:=0;
        hatadurumu:=0;
        y4z4:=0;
        varÖlcüm:=0;
        varBosaltmaDolu:=0;
        Reset doGripper;
        Work_27_Bosaltma;
    ENDPROC

    PROC Sensör_Kalibre()
        MoveJ p130,v100,fine,Tool_27\WObj:=wobj27;
        MoveJ Offs(p130,0,0,0),v100,fine,Tool_27\WObj:=wobj27;
        SearchL\Stop,diSensor,pos1,Offs(p130,0,450,0),v50,Tool_27\WObj:=wobj27;
        IF hatadurumu=1 THEN
            home27;
        ENDIF
        pos3:=pos1;
        deger_y_sbt:=pos1.trans.y;
        MoveL Offs(pos1,-230,50,0),v100,fine,Tool_27\WObj:=wobj27;
        SearchL\Stop,diSensor,pos2,Offs(pos1,0,50,0),v50,Tool_27\WObj:=wobj27;
        IF hatadurumu=1 THEN
            home27;
        ENDIF
        deger_x_sbt:=pos2.trans.x;
        pos3.trans.x:=deger_x_sbt;
        MoveL Offs(pos3,95,10,200),v100,fine,Tool_27\WObj:=wobj27;
        SearchL\Stop,diSensor,pos4,Offs(pos3,95,10,0),v50,Tool_27\WObj:=wobj27;
        IF hatadurumu=1 THEN
            home27;
        ENDIF
        deger_z_sbt:=pos4.trans.z;



    ERROR
        IF ERRNO=ERR_WHLSEARCH THEN
            Hata;
            hatadurumu:=1;
            TRYNEXT;
        ENDIF


    ENDPROC


    PROC Hata()
        hatapos:=CRobT(\Tool:=Tool_27\WObj:=wobj27);
        hatapos.trans.z:=hatapos.trans.z+200;
        MoveL hatapos,v100,fine,Tool_27\WObj:=wobj27;
    ENDPROC

    PROC Ölcüm()
        y_hile:=0;
        z_hile:=0;

        !  MoveJ p130,v100,fine,Tool_27\WObj:=wobj27;
        !MoveJ Offs(p130,k,j,(b+400)),v100,fine,Tool_27\WObj:=wobj27;
        IF z_sira<5 THEN
            MoveL Offs(p130,k,j + 50,b - 5), v600, fine, Tool_27\WObj:=wobj27;
            SearchL\Stop,diSensor,pos1,Offs(p130,(0+k),(j+450),(b-90)),v50,Tool_27\WObj:=wobj27;
        ENDIF

        IF z_sira>=5 THEN
            MoveL Offs(p130,k,j,b - 45),v500,fine,Tool_27\WObj:=wobj27;
            SearchL\Stop, diSensor, pos1, Offs(p130,(0+k),(j+450),(b-90)), v100, Tool_27\WObj:=wobj27;
        ENDIF


        IF hatadurumu=1 THEN
            home27;
            GOTO bitir;
        ENDIF
        pos3:=pos1;
        deger_y:=pos1.trans.y;
        MoveL Offs(pos1,-250,50,10), v200, fine, Tool_27\WObj:=wobj27;
        SearchL\Stop, diSensor, pos2, Offs(pos1,0,50,0), v100, Tool_27\WObj:=wobj27;
        IF hatadurumu=1 THEN
            home27;
            GOTO bitir;
        ENDIF
        deger_x:=pos2.trans.x;
        pos3.trans.x:=deger_x;
        MoveL Offs(pos3,95,10,175), v200, fine, Tool_27\WObj:=wobj27;
        SearchL\Stop, diSensor, pos4, Offs(pos3,95,10,-75), v100, Tool_27\WObj:=wobj27;
        IF hatadurumu=1 THEN
            home27;
            GOTO bitir;
        ENDIF
        deger_z:=pos4.trans.z;
        offs_x:=(deger_x-k)-(deger_x_sbt);
        offs_y:=(deger_y-j)-(deger_y_sbt);
        offs_z:=(deger_z-b)-(deger_z_sbt);

        IF y_sira=4 AND z_sira=4 THEN
            x_okumadan{x_sira}:=offs_x;
            y_okumadan{x_sira}:=offs_y;
            z_okumadan{x_sira}:=offs_z;

        ENDIF


        IF z_sira>5 THEN
            aci:=ATan2(offs_y,b);
        ELSEIF z_sira<=4 THEN
            aci:=0;
        ENDIF

        IF aci>5 THEN
            aci:=5;
        ENDIF

        IF aci<-5 THEN
            aci:=-5;
        ENDIF

        IF y_sira=2 OR y_sira=3 THEN
            aci:=0;
        ENDIF

        IF y_sira=1 AND z_sira>=6 AND aci>=2 THEN
            y_hile:=15;
            z_hile:=-10;
        ENDIF

        IF y_sira=4 AND z_sira>=6 AND aci<=-2 THEN
            y_hile:=-10;
            z_hile:=-10;
        ENDIF

        varÖlcüm:=1;
        y4z4:=0;


        bitir:


    ERROR
        IF ERRNO=ERR_WHLSEARCH THEN
            Hata;
            hatadurumu:=1;
            TRYNEXT;
        ENDIF


    ENDPROC


    PROC Alma_Nok()
        MoveJ p140,v100,fine,Tool_27\WObj:=wobj27;
    ENDPROC




    PROC Work_27_Bosaltma()


        x:=8;
        y:=1;
        z:=1;

        x_sira:=GInput(gi_X_Anlik);
        y_sira:=GInput(gi_Y_Anlik);
        z_sira:=GInput(gi_Z_Anlik);

        z_sifir:=z_sira;
        y_sifir:=y_sira;
        x_sifir:=x_sira;



        FOR aa FROM z_sifir TO z STEP -1 DO
            !! Z eksen sayisi
            b:=((aa-1)*(145));
            FOR bb FROM y_sifir TO y STEP -1 DO
                !! Y eksen sayisi
                j:=(bb-4)*(-320);
                FOR cc FROM x_sifir TO x DO
                    !! X eksen sayisi
                    k:=(cc-1)*255;

                    home27;
                    IF y_sira=4 AND z_sira<4 THEN
                        y_hile:=0;
                        z_hile:=0;
                        aci:=0;
                        offs_x:=0;
                        offs_y:=0;
                        offs_z:=0;
                        y4z4:=1;
                        GOTO ölçümolmadan;
                    ENDIF
                    y4z4:=0;


                    IF varÖlcüm=1 THEN
                        GOTO ölçümolmadan;
                    ENDIF

                    IF varÖlcüm=0 AND y4z4=0 THEN
                        Ölcüm;
                    ENDIF
                    IF hatadurumu=1 THEN
                        GOTO devam1;
                    ENDIF


                    ölçümolmadan:

                    !!!!
                    IF varBosaltmaDolu=1 THEN
                        home27;
                        Place27_Part2;
                        home27;
                    ENDIF

                    IF varBosaltmaDolu=0  THEN
                        pick_2;
                    ENDIF
                    home27;
                    place27;
                    home27;
                    sayi_arttirma;
                    GOTO devam2;

                    devam1:
                    WaitDI diHataDevam,1;
                    WaitTime 1;
                    hatadurumu:=0;
                    WaitTime 1;


                    devam2:
                    !!!!!!
                    !sayi_arttirma;

                ENDFOR
            ENDFOR
        ENDFOR


    ENDPROC

    PROC home27()
        MoveJ p80, v600, fine, Tool_27\WObj:=wobj27;
    ENDPROC

    PROC sayi_arttirma()
        x_sira:=x_sira+1;

        IF x_sira>x THEN
            x_sira:=1;
            x_sifir:=x_sira;
            y_sira:=y_sira-1;
        ENDIF

        IF y_sira<y THEN
            y_sira:=4;
            y_sifir:=y_sira;
            z_sira:=z_sira-1;
        ENDIF

        IF z_sira<z THEN
            z_sira:=9;
            z_sifir:=z_sira;
        ENDIF

    ENDPROC


    PROC pick_2()
        WaitTime 1;
        IF y4z4=1 THEN
            MoveJ Offs(RelTool(p140,0,0,(b+400)+z_okumadan{x_sira},\Rx:=-aci\Ry:=0\Rz:=0),(k+x_ekle+x_okumadan{x_sira}),(j+y_ekle+y_hile+y_okumadan{x_sira}),(0+z_ekle)),v400,fine,Tool_27\WObj:=wobj27;
            MoveJ Offs(RelTool(p140,0,0,(b+200)+z_okumadan{x_sira},\Rx:=-aci\Ry:=0\Rz:=0),(k+x_ekle+x_okumadan{x_sira}),(j+y_ekle+y_hile+y_okumadan{x_sira}),(0+z_ekle)),v100,fine,Tool_27\WObj:=wobj27;
        ENDIF
        IF y4z4=0 THEN
            MoveJ Offs(RelTool(p140,0,0,(b + 150) + offs_z\Rx:=-aci\Ry:=0\Rz:=0),(k + offs_x + x_ekle),(j + offs_y + y_ekle + y_hile),(0 + z_ekle)), v500, fine, Tool_27\WObj:=wobj27;
        ENDIF
        posgiris:=CRobT(\Tool:=Tool_27\WObj:=wobj27);
        MoveL RelTool(posgiris,0,0,(-170 + z_hile)),v100,fine,Tool_27\WObj:=wobj27;
        Set doGripper;
        WaitTime 2;
        MoveL RelTool(posgiris,0,0,50),v100,fine,Tool_27\WObj:=wobj27;
        varÖlcüm:=0;


    ENDPROC

    PROC Place27()
        bekle:=0;
        Set doBosaltmaHazirla;
        WaitDI diStart,1;
        Reset doBosaltmaHazirla;
        MoveJ p150,v500,z0,Tool_27\WObj:=wobj27;
        MoveL p160,v500,z0,Tool_27\WObj:=wobj27;
        MoveL p170,v100,fine,Tool_27\WObj:=wobj27;
        Reset doGripper;
        WaitTime 0.5;
        MoveL p160,v500,z0,Tool_27\WObj:=wobj27;
        MoveL p270,v500,z0,Tool_27\WObj:=wobj27;
        MoveL p180,v500,fine,Tool_27\WObj:=wobj27;
        PulseDO\PLength:=1,doKoydum;
        varBosaltmaDolu:=1;

    ENDPROC


    PROC Place27_Part2()
        MoveL p180,v500,fine,Tool_27\WObj:=wobj27;
        WaitDI diParcaAl,1;
        MoveL p160,v500,fine,Tool_27\WObj:=wobj27;
        MoveL p170,v100,fine,Tool_27\WObj:=wobj27;
        Set doGripper;
        WaitTime 1;
        MoveL p160,v100,fine,Tool_27\WObj:=wobj27;
        MoveL p180,v1000,z0,Tool_27\WObj:=wobj27;
        MoveL p220,v1000,z0,Tool_27\WObj:=wobj27;
        MoveL p240,v1000,z0,Tool_27\WObj:=wobj27;
        IF diKonveyor=1 THEN
            WaitDI diKonveyor,0;
            WaitTime 10;
        ENDIF
        fr:
        MoveL p230,v200,fine,Tool_27\WObj:=wobj27;
        Reset doGripper;
        WaitTime 0.5;
        MoveL p220,v1000,fine,Tool_27\WObj:=wobj27;
        PulseDO\PLength:=1,doislemBitti;
        PulseDO\PLength:=1,doBosaltmaHazirla;
        MoveL p210,v1000,fine,Tool_27\WObj:=wobj27;
        varBosaltmaDolu:=0;
        bekle:=0;

    ERROR
        IF ERRNO=ERR_WHLSEARCH THEN
            bekle:=1;
            TRYNEXT;

        ENDIF
    ENDPROC

    PROC Pick_Noktasi()
        MoveJ p140,v100,fine,Tool_27\WObj:=wobj27;
    ENDPROC


ENDMODULE