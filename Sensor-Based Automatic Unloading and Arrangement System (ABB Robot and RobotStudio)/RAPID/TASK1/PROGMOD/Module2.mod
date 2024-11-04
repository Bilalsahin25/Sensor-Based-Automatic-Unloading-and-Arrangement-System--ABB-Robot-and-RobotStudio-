MODULE Module2
    ! Nokta tanimlamalari
    CONST robtarget Home_B := [[1469.306281547,51.40189417,1200.003031287],[0.001487356,0.033392917,-0.999441141,0.000325215],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p1_bosalt := [[1053.653,-942.165975426,-532.462080248],[0,1,0,0],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p11_bosalt := [[-854.396, 2266.384024574, -510.176080248], [0, 1, 0, 0], [1, 0, 3, 0], [9E+09, 9E+09, 9E+09, 9E+09, 9E+09, 9E+09]];
    CONST robtarget p2_bosalt10:=[[2176.97,253.60,17.54],[6.24724E-10,-1,2.19018E-8,-5.36287E-9],[0,-1,-2,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
    !CONST robtarget p2_bosalt20:=[[2176.97,253.60,17.54],[6.24724E-10,-1,2.19018E-8,-5.36287E-9],[0,-1,-2,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];

    VAR num dx_bosalt := 0;
    VAR num dy_bosalt := 0;
    VAR num dz_bosalt := 0;

    ! Döndürme sonrasi X ve Y eksenindeki öteleme miktarlari
    VAR num offset_x1 := -35+12;
    VAR num offset_y1 := 35;
    VAR num offset_x2 := 6;
    VAR num offset_Y2 := 0;
    ! Bosaltim için kullanicidan deger alma
    !VAR num toplam_kat_bosalt := 0;
    VAR num baslangic_kati_bosalt := 0;
    VAR num baslangic_x_bosalt := 0;
    VAR num baslangic_y_bosalt := 0;
    

    PROC main_Bosaltim()
        TPErase;  ! Ekrani temizle
        ! Kullanicidan toplam kat sayisini al
       ! TPReadNum toplam_kat_bosalt, "Lütfen dizili ürünlerin toplam kat sayisini giriniz:";
       
        ! Kullanicidan baslamak istedigi kati al
        TPReadNum baslangic_kati_bosalt, "Lütfen bosaltmaya baslamak istediginiz kati giriniz:";
        
        ! Kullanicidan baslamak istedigi X ve Y koordinatlarini al
        TPReadNum baslangic_x_bosalt, "Lütfen bosaltmaya baslamak istediginiz X koordinatini giriniz:";
        TPReadNum baslangic_y_bosalt, "Lütfen bosaltmaya baslamak istediginiz Y koordinatini giriniz:";
        
        FOR k FROM baslangic_kati_bosalt TO 1 STEP -1 DO
            ! Katin X ve Y koordinatlarini hesapla
            IF (k MOD 2 = 1) THEN !TEK SAYILI KATLAR
                dx_bosalt := 330 * (baslangic_x_bosalt - 1);  ! X konumunu hesapla
                dy_bosalt := 267.25 * (baslangic_y_bosalt - 1);  ! Y konumunu hesapla
                
            ELSE !ÇIFT SAYILI KATLAR
                dy_bosalt := 333 * (baslangic_y_bosalt - 1);  ! Y konumunu hesapla
                ! X konumunu hesapla ve uygun sekilde ayarla
                IF baslangic_x_bosalt = 1 THEN
                    dx_bosalt := 0;
                ELSEIF baslangic_x_bosalt = 2 THEN
                    dx_bosalt := 270;
                ELSEIF baslangic_x_bosalt = 3 THEN
                    dx_bosalt := 545;
                ELSEIF baslangic_x_bosalt = 4 THEN
                    dx_bosalt := 850;
                ELSEIF baslangic_x_bosalt = 5 THEN
                    dx_bosalt := 1165;
                ELSEIF baslangic_x_bosalt = 6 THEN
                    dx_bosalt := 1455;
                ELSEIF baslangic_x_bosalt = 7 THEN
                    dx_bosalt := 1720;
                ELSEIF baslangic_x_bosalt = 8 THEN
                    dx_bosalt := 1950;
                ENDIF
            ENDIF
            dz_bosalt := -150 * (k - 1);  ! Kat konumunu hesapla
            
            MoveHome_B;
            IF (k MOD 2 = 1) THEN ! TEK SAYILI KATLARI BOSALTMA(1-3-5-7-9)
                ! Birinci sira (5x6 ürün)
                FOR i FROM  baslangic_y_bosalt TO 1 STEP -1 DO
                    FOR j FROM 6 TO baslangic_x_bosalt STEP -1 DO
                        
                        Place_Bosalt;
                        MoveHome_B;
                        Pick_Bosalt2;   ! Yeni Pick_Bosalt2 prosedürü
                        MoveHome_B;
                        Pick_Bosalt;
                        MoveHome_B;
                        dx_bosalt := dx_bosalt + 330;  ! X eksenindeki artis
                    ENDFOR
                    baslangic_x_bosalt := 1;   ! Ilk döngüden sonra X ekseni sifirlanir
                    dx_bosalt := 0;            ! X eksenini sifirlama
                    dy_bosalt := dy_bosalt - 267.25;  ! Y eksenindeki artis
                ENDFOR
                       ! Ilk döngüden sonra Y ekseni sifirlanir
                dx_bosalt := 0;                ! X eksenindeki sifirlama
                dy_bosalt := 0;           ! Y eksenini y=5 çekme
                baslangic_y_bosalt := 4; ! Ilk döngüden sonra Y ekseni y =4 gönderme
            ELSE
                ! Ikinci sira (4x8 ürün)
                FOR i FROM baslangic_y_bosalt  TO 1 STEP -1 DO
                    FOR j FROM 7 TO baslangic_x_bosalt STEP -1 DO
                        
                        Place90Deg_Bosalt;
                        MoveHome_B;
                        Pick_Bosalt2;   ! Yeni Pick_Bosalt2 prosedürü
                        MoveHome_B;
                        Pick_Bosalt;
                        MoveHome_B;
                        ! X eksenindeki artislari dinamik olarak belirleme
                         ! X eksenindeki artislari dinamik olarak belirleme
                        IF baslangic_x_bosalt = 1 THEN
                            IF j = 7 THEN
                                   dx_bosalt := dx_bosalt + 270;
                            ELSEIF j = 6 THEN
                                    dx_bosalt := dx_bosalt + 275;
                            ELSEIF j = 5 THEN
                                    dx_bosalt := dx_bosalt + 305;
                             ELSEIF j = 4 THEN
                                    dx_bosalt := dx_bosalt + 315;
                            ELSEIF j = 3 THEN
                                   dx_bosalt := dx_bosalt + 290;
                             ELSEIF j = 2 THEN
                                    dx_bosalt := dx_bosalt + 265;
                          ELSEIF j = 1 THEN
                                    dx_bosalt := dx_bosalt + 230;
                            ENDIF
                        
                        ELSEIF baslangic_x_bosalt = 2 THEN
                            IF j = 7 THEN
                                   dx_bosalt := dx_bosalt + 275;
                            ELSEIF j = 6 THEN
                                    dx_bosalt := dx_bosalt + 305;
                            ELSEIF j = 5 THEN
                                    dx_bosalt := dx_bosalt + 315;
                             ELSEIF j = 4 THEN
                                    dx_bosalt := dx_bosalt + 290;
                            ELSEIF j = 3 THEN
                                   dx_bosalt := dx_bosalt + 265;
                            ELSEIF j = 2 THEN
                                    dx_bosalt := dx_bosalt + 230;
                            !ELSEIF j = 1 THEN
                                   ! dx_bosalt := dx_bosalt + 230;
                            ENDIF
                        
                        ELSEIF baslangic_x_bosalt = 3 THEN
                            IF j = 7 THEN
                                   dx_bosalt := dx_bosalt + 305;
                            ELSEIF j = 6 THEN
                                    dx_bosalt := dx_bosalt + 315;
                            ELSEIF j = 5 THEN
                                    dx_bosalt := dx_bosalt + 290;
                             ELSEIF j = 4 THEN
                                    dx_bosalt := dx_bosalt + 265;
                            ELSEIF j = 3 THEN
                                   dx_bosalt := dx_bosalt + 230;
                            !ELSEIF j = 2 THEN
                                    !dx_bosalt := dx_bosalt + 265;
                             !ELSEIF j = 1 THEN
                                    !dx_bosalt := dx_bosalt + 230;
                            ENDIF
                        
                        ELSEIF baslangic_x_bosalt = 4 THEN
                            IF j = 7 THEN
                                   dx_bosalt := dx_bosalt + 315;
                            ELSEIF j = 6 THEN
                                    dx_bosalt := dx_bosalt + 290;
                            ELSEIF j = 5 THEN
                                    dx_bosalt := dx_bosalt + 265;
                             ELSEIF j = 4 THEN
                                    dx_bosalt := dx_bosalt + 230;
                            !ELSEIF j = 3 THEN
                                  ! dx_bosalt := dx_bosalt + 290;
                             !ELSEIF j = 2 THEN
                                    !dx_bosalt := dx_bosalt + 265;
                          !ELSEIF j = 1 THEN
                                    !dx_bosalt := dx_bosalt + 230;
                            ENDIF
                        
                        ELSEIF baslangic_x_bosalt = 5 THEN
                            IF j = 7 THEN
                                   dx_bosalt := dx_bosalt + 290;
                            ELSEIF j = 6 THEN
                                    dx_bosalt := dx_bosalt + 265;
                            ELSEIF j = 5 THEN
                                    dx_bosalt := dx_bosalt + 230;
                             !ELSEIF j = 4 THEN
                                    !dx_bosalt := dx_bosalt + 315;
                            !ELSEIF j = 3 THEN
                                   !dx_bosalt := dx_bosalt + 290;
                             !ELSEIF j = 2 THEN
                                    !dx_bosalt := dx_bosalt + 265;
                         ! ELSEIF j = 1 THEN
                                   ! dx_bosalt := dx_bosalt + 230;
                            ENDIF
                        
                        ELSEIF baslangic_x_bosalt = 6 THEN
                             IF j = 7 THEN
                                       dx_bosalt := dx_bosalt + 265;
                             ELSEIF j = 6 THEN
                                       dx_bosalt := dx_bosalt + 230;
                           ! ELSEIF j = 5 THEN
                           !          dx_bosalt := dx_bosalt + 305;
                           !  ELSEIF j = 4 THEN
                           !           dx_bosalt := dx_bosalt + 315;
                           !  ELSEIF j = 3 THEN
                           !           dx_bosalt := dx_bosalt + 290;
                           ! ELSEIF j = 2 THEN
                           !           dx_bosalt := dx_bosalt + 265;
                           ! ELSEIF j = 1 THEN
                           !          dx_bosalt := dx_bosalt + 230;
                            ENDIF
                        
                        ELSEIF baslangic_x_bosalt = 7 THEN
                             IF j = 7 THEN
                                      dx_bosalt := dx_bosalt + 230;
                             !ELSEIF j = 6 THEN
                             !         dx_bosalt := dx_bosalt + 275;
                             !ELSEIF j = 5 THEN
                             !         dx_bosalt := dx_bosalt + 305;
                             ! ELSEIF j = 4 THEN
                             !         dx_bosalt := dx_bosalt + 315;
                             !ELSEIF j = 3 THEN
                                      !dx_bosalt := dx_bosalt + 290;
                             !ELSEIF j = 2 THEN
                             !         dx_bosalt := dx_bosalt + 265;
                             !ELSEIF j = 1 THEN
                                      !dx_bosalt := dx_bosalt + 230;
                            ENDIF
                        
                        ENDIF
                    ENDFOR
                    baslangic_x_bosalt := 1;  ! Ilk döngüden sonra X ekseni sifirlanir
                    dx_bosalt := 0;  ! X eksenini sifirlama
                    dy_bosalt := dy_bosalt -333;  ! Y eksenindeki artis
                ENDFOR
               
                dx_bosalt := 0;  ! X eksenindeki sifirlama
                dy_bosalt :=0;  ! Y eksenindeki sifirlanma
                baslangic_y_bosalt := 5;  ! Ilk döngüden sonra Y ekseni y=4 gönderme
            ENDIF
        ENDFOR
        !MoveL p2_bosalt,v1000,z100,gripper_1\WObj:=wobj0;
    ENDPROC

    PROC MoveHome_B()
        WaitTime 1;
        MoveJ Home_B, v1000, fine, gripper_1\WObj:=wobj0;
        
       ! MoveL p2_bosalt10, v500, fine, gripper_1;
        !MoveJ p2_bosalt20, v500, fine, gripper_1;
       
    ENDPROC

    PROC Pick_Bosalt()
        ! ÜRÜNÜ BIRAKMA
        MoveJ RelTool(p1_bosalt, 0, 0, -1000), v500, z0, gripper_1\WObj:=wobj0;
        WaitTime 1;
        MoveL RelTool(p1_bosalt, 0, 0, -500), v500, z0, gripper_1\WObj:=wobj0;
        MoveL p1_bosalt, v500, fine, gripper_1\WObj:=wobj0;
        WaitTime 1;
        Reset a_griper;
        WaitTime 1;
        MoveL RelTool(p1_bosalt, 0, 0, -500), v500, z0, gripper_1\WObj:=wobj0;
    ENDPROC

    PROC Place_Bosalt()
        ! ÜRÜNÜ ARABADAN ALMA
        MoveJ RelTool(p11_bosalt, dx_bosalt+offset_x2, dy_bosalt+offset_Y2, dz_bosalt-200), v500, fine, gripper_1\WObj:=wobj0;
        WaitTime 1;
        MoveL RelTool(p11_bosalt, dx_bosalt+offset_x2, dy_bosalt+offset_Y2, dz_bosalt-150), v500, fine, gripper_1\WObj:=wobj0;
        MoveL RelTool(p11_bosalt, dx_bosalt+offset_x2, dy_bosalt+offset_Y2, dz_bosalt), v100, fine, gripper_1\WObj:=wobj0;
        WaitTime 1;
        SET a_griper;
        WaitTime 1;
        MoveL RelTool(p11_bosalt, dx_bosalt, dy_bosalt, dz_bosalt-150), v500, fine, gripper_1\WObj:=wobj0;
    ENDPROC

    PROC Place90Deg_Bosalt()
        ! 90 DERECE DÖNMÜS ÜRÜNÜ ALMA
        MoveJ RelTool(p11_bosalt, dx_bosalt+offset_x1, dy_bosalt+offset_y1, dz_bosalt-200\Rz:=90), v500, fine, gripper_1\WObj:=wobj0;
        WaitTime 1;
        MoveL RelTool(p11_bosalt, dx_bosalt+offset_x1, dy_bosalt+offset_y1, dz_bosalt-150\Rz:=90), v500, fine, gripper_1\WObj:=wobj0;
        MoveL RelTool(p11_bosalt, dx_bosalt+offset_x1, dy_bosalt+offset_y1, dz_bosalt\Rz:=90), v100, fine, gripper_1\WObj:=wobj0;
        WaitTime 1;
        SET a_griper;
        WaitTime 1;
        MoveJ RelTool(p11_bosalt, dx_bosalt+offset_x1, dy_bosalt+offset_y1, dz_bosalt-200\Rz:=90), v500, fine, gripper_1\WObj:=wobj0;
        
          ENDPROC
          
        PROC Pick_Bosalt2()
       ! ÜRÜNÜ BIRAKMA BOSALTMA ISTASYONUNA BIRAKMA 
        MoveJ RelTool(p2_bosalt10, 0, 0, -500), v500, fine, gripper_1\WObj:=wobj0;
        MoveL p2_bosalt10, v500, fine, gripper_1\WObj:=wobj0;
        WaitTime 1;
        Reset a_griper;  
        WaitTime 1;
        MoveL RelTool(p2_bosalt10, 0, 0, -500), v500, fine, gripper_1\WObj:=wobj0;
        MoveJ Home_B, v1000, fine, gripper_1\WObj:=wobj0;
        WaitTime 5;
         MoveL RelTool(p2_bosalt10, 0, 0, -500), v500, fine, gripper_1\WObj:=wobj0;
        MoveL p2_bosalt10, v500, fine, gripper_1\WObj:=wobj0;
        WaitTime 1;
        SET a_griper;
        WaitTime 1;
        MoveL RelTool(p2_bosalt10, 0, 0, -500), v500, fine, gripper_1\WObj:=wobj0;
        
        
    ENDPROC
        
        
    
  
ENDMODULE
