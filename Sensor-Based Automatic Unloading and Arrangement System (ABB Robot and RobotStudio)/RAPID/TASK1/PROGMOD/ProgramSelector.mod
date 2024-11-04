
MODULE ProgramSelector
    PROC main()
        VAR num choice;
           TPErase;  ! Ekrani temizle 
        ! Operatöre hangi programi çalistirmak istedigini sor (1 veya 2)
        TPReadNum choice, "Lütfen çalistirmak istediginiz programi seçin (1 = dizim, 2 = bosaltim):";
        
        ! Seçime göre ilgili programi çalistir
        IF choice = 1 THEN
            ! Module1'in ana prosedürünü çalistir
          main_A;
        ELSEIF choice = 2 THEN
            ! Module2'nin ana prosedürünü çalistir
      main_Bosaltim;
        ELSE
            ! Geçersiz bir seçim yapildiysa kullaniciyi bilgilendir
            TPWrite "Geçersiz seçim. Lütfen 1 veya 2 giriniz.";
        ENDIF
		MoveL p2_bosalt,v1000,z100,gripper_1\WObj:=wobj0;
    ENDPROC
ENDMODULE
