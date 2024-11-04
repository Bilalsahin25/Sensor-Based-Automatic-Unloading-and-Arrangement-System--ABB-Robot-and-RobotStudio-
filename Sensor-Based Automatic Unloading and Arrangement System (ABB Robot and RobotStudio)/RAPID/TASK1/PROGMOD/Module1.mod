
MODULE Module1
    CONST robtarget Home:=[[1469.306281547,51.40189417,1200.003031287],[0.001487356,0.033392917,-0.999441141,0.000325215],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p1:=[[1053.653,-942.165975426,-532.462080248],[0,1,0,0],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p11:=[[-854.396,2266.384024574,-510.176080248],[0,1,0,0],[1,0,3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p2_bosalt:=[[2176.967,253.596024574,17.537919752],[0,1,0,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR num dx := 0;
    VAR num dy := 0;
    VAR num dz := 0;

    ! Döndürme sonrasi X ve Y eksenindeki öteleme miktarlari
    VAR num offset_x := -35+6;
    VAR num offset_y := 35-6;

    VAR num toplam_kat := 0;
    VAR num baslangic_kati := 0;
    VAR num baslangic_x := 0;
    VAR num baslangic_y := 0;
	

    PROC main_A()
        TPErase;  ! Ekrani temizle 
        ! Kullanicidan toplam kat sayisini al
        TPReadNum toplam_kat, "Lütfen toplam kat sayisini giriniz:";
       
        ! Kullanicidan baslamak istedigi kati al
        TPReadNum baslangic_kati, "Lütfen baslamak istediginiz kati giriniz:";
        
        ! Kullanicidan baslamak istedigi X ve Y koordinatlarini al
        TPReadNum baslangic_x, "Lütfen baslamak istediginiz X koordinatini giriniz:";
        TPReadNum baslangic_y, "Lütfen baslamak istediginiz Y koordinatini giriniz:";
        
        FOR k FROM baslangic_kati TO toplam_kat DO
            IF (k MOD 2 = 1) THEN
                dx := 330 * (baslangic_x - 1);  ! X konumunu hesapla
                dy := 267.25 * (baslangic_y - 1);  ! Y konumunu hesapla
            ELSE
                dY := 333 * (baslangic_Y - 1);  ! Y konumunu hesapla
                ! X konumunu hesapla ve uygun sekilde ayarla
                IF baslangic_X = 1 THEN
                    dX := 0;
                ELSEIF baslangic_X = 2 THEN
                    dX := 270;
                ELSEIF baslangic_X = 3 THEN
                    dX := 545;
                ELSEIF baslangic_X = 4 THEN
                    dX := 850;
                ELSEIF baslangic_X = 5 THEN
                    dX := 1165;
                ELSEIF baslangic_X = 6 THEN
                    dX := 1455;
                ELSEIF baslangic_X = 7 THEN
                    dX := 1720;
                ELSEIF baslangic_X = 8 THEN
                    dX := 1950;
                ENDIF
            ENDIF
            dz := -150 * (k - 1);  ! Kat konumunu hesapla
            
            MoveHome;
            IF (k MOD 2 = 1) THEN
                ! Birinci sira (5x6 ürün)
                FOR i FROM baslangic_Y TO 5 DO
                    FOR j FROM baslangic_X TO 6 DO
                        Pick;
                        MoveHome;
                        Place;
                        MoveHome;
                        dX:= dX + 330;  ! X eksenindeki artis
                    ENDFOR
                    baslangic_X := 1;   ! Ilk döngüden sonra X ekseni sifirlanir
                    dX := 0;            ! X eksenini sifirlama
                    dY := dY + 267.25;     ! Y eksenindeki artis
                ENDFOR
                baslangic_Y := 1;       ! Ilk döngüden sonra Y ekseni sifirlanir
                dx := 0;                ! X eksenindeki sifirlama
                dy := 0;                ! Y eksenindeki sifirlama
            ELSE
                ! Ikinci sira (4x8 ürün)
                FOR i FROM baslangic_Y TO 4 DO
                    FOR j FROM baslangic_X TO 7 DO
                        Pick;
                        MoveHome;
                        Place90Deg;
                        MoveHome;
                        ! X eksenindeki artislari dinamik olarak belirleme
                        IF j = 1 THEN
                            dX := dX + 270;
                        ELSEIF j = 2 THEN
                            dX := dX + 275;
                        ELSEIF j = 3 THEN
                            dX := dX+ 305;
                        ELSEIF j = 4 THEN
                            dX := dX + 315;
                        ELSEIF j = 5 THEN
                            dX := dX + 290;
                        ELSEIF j = 6 THEN
                            dX := dX + 265;
                       ! ELSEIF j = 7 THEN
                            !dX := dX + 260;
                        ELSE
                            dX := dX+ 230;
                        ENDIF
                    ENDFOR
                    baslangic_X := 1;  ! Ilk döngüden sonra X ekseni sifirlanir
                    dX := 0;  ! Y eksenini sifirlama
                    dY := dY + 333;  ! Y eksenindeki artis
                ENDFOR
                baslangic_Y := 1;  ! Ilk döngüden sonra Y ekseni sifirlanir
                dx := 0;  ! X eksenindeki sifirlama
                dy := 0;  ! Y eksenindeki sifirlama
            ENDIF
        ENDFOR
       
        !MoveL p1,v1000,z100,gripper_1\WObj:=wobj0;
        !MoveL p1,v1000,z100,gripper_1\WObj:=wobj0;
        !MoveL p1,v1000,z100,gripper_1\WObj:=wobj0;
        !MoveL p1,v1000,z100,gripper_1\WObj:=wobj0;
        !MoveL Home,v1000,z100,gripper_1\WObj:=wobj0;
        !MoveL p1,v1000,z100,gripper_1\WObj:=wobj0;
        !MoveL Home,v1000,z100,gripper_1\WObj:=wobj0;
        !MoveL p11,v1000,z100,gripper_1\WObj:=wobj0;
    ENDPROC

    PROC MoveHome()
        MoveJ Home,v1000,fine,gripper_1\WObj:=wobj0;
    ENDPROC

    PROC Pick()
        Set a_conv;
        Reset a_conv;
        Reset a_griper;
        WaitDI a_sens, high;
        WaitTime 1;

        ! Ürünü al
        MoveJ RelTool(p1,0,0,-1000),v500,z0,gripper_1\WObj:=wobj0;
         WaitTime 1;
        MoveL RelTool(p1,0,0,-500),v500,z0,gripper_1\WObj:=wobj0;
        MoveL p1, v500, fine, gripper_1\WObj:=wobj0;
        WaitTime 1;
        Set a_griper;
        WaitTime 1;
        MoveL RelTool(p1,0,0,-500), v500, z0, gripper_1\WObj:=wobj0;
    ENDPROC

    PROC Place()
        ! Ürünü palete götür
        MoveJ RelTool(p11, dx, dy, dz-200),v500,fine,gripper_1\WObj:=wobj0; 
        WaitTime 1; 
        MoveL RelTool(p11, dx, dy, dz-150),v500,fine,gripper_1\WObj:=wobj0;
        MoveL RelTool(p11, dx, dy, dz), v500, fine, gripper_1\WObj:=wobj0;  

        WaitTime 1; 
        Reset a_griper;
        WaitTime 1;
        MoveL RelTool(p11, dx, dy+300, dz-200),v500,z0,gripper_1\WObj:=wobj0;
    ENDPROC

    PROC Place90Deg()
        ! Ürünü palete götür ve 90 derece döndür
       ! MoveJ RelTool(p11, dx+offset_x, dy+offset_y, dz-500),v500,z0,gripper_1\WObj:=wobj0;
       ! MoveJ RelTool(p11, dx+offset_x, dy+offset_y, dz-500),v500,z0,gripper_1\WObj:=wobj0;
        MoveJ RelTool(p11, dx+offset_x, dy+offset_y, dz-200\Rz:=90),v500,z0,gripper_1\WObj:=wobj0;  
        MoveL RelTool(p11, dx+offset_x, dy+offset_y, dz\Rz:=90), v500, fine, gripper_1\WObj:=wobj0;  

        WaitTime 1; 
        Reset a_griper;
        WaitTime 1;
        MoveL RelTool(p11, dx+offset_x, dy+offset_y, dz-200\Rz:=90), v500, fine, gripper_1\WObj:=wobj0;  
       ! MoveL RelTool(p11, dx+offset_x, dy+offset_y, dz-500),v500,z0,gripper_1\WObj:=wobj0;
        !MoveL RelTool(p11, dx+offset_x, dy+offset_y, dz-500), v500, z0, gripper_1\WObj:=wobj0;
    ENDPROC
ENDMODULE
