
MODULE ProgramSelector
    PROC main()
        VAR num choice;
           TPErase;  ! Ekrani temizle 
        ! Operat�re hangi programi �alistirmak istedigini sor (1 veya 2)
        TPReadNum choice, "L�tfen �alistirmak istediginiz programi se�in (1 = dizim, 2 = bosaltim):";
        
        ! Se�ime g�re ilgili programi �alistir
        IF choice = 1 THEN
            ! Module1'in ana prosed�r�n� �alistir
          main_A;
        ELSEIF choice = 2 THEN
            ! Module2'nin ana prosed�r�n� �alistir
      main_Bosaltim;
        ELSE
            ! Ge�ersiz bir se�im yapildiysa kullaniciyi bilgilendir
            TPWrite "Ge�ersiz se�im. L�tfen 1 veya 2 giriniz.";
        ENDIF
		MoveL p2_bosalt,v1000,z100,gripper_1\WObj:=wobj0;
    ENDPROC
ENDMODULE
