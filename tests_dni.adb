with Ada.Text_IO; use Ada.Text_IO;
with Ejer_2; use Ejer_2;

procedure Tests_Dni is

   procedure Test_1 is
      tester : Integer;
   begin
      Put_Line("Test_1: Group of DNI's ......................... ");

      tester := 78825300;
      Put_Line("Trying with DNI " & Integer'Image(tester) & "Letter = " & Character'Image(dameDni(tester)));
      pragma Assert (dameDni(tester) = 'E');
      Put_Line ("OK");

      tester := 54123926;
      Put_Line("Trying with DNI " & Integer'Image(tester) & "Letter = " & Character'Image(dameDni(tester)));
      pragma Assert (dameDni(tester) = 'G');
      Put_Line ("OK");

      tester := 42223283;
      Put_Line("Trying with DNI " & Integer'Image(tester) & "Letter = " & Character'Image(dameDni(tester)));
      pragma Assert (dameDni(tester) = 'K');

      Put_Line ("OK");
   end Test_1;

begin
   Put_Line ("******* Test_Dni");
   Test_1;


end Tests_Dni;
