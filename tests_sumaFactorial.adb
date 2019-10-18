with Ada.Text_IO; use Ada.Text_IO;
with Ejer_6; use Ejer_6;

procedure Tests_Factorial with SPARK_Mode is

   procedure Test_1 is
   begin
      Put_Line (" Test 1............................");
      pragma Assert(sumaFactorial(2) = 3);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put_Line ("Test 2..............................");
      pragma Assert(sumaFactorial(4) = 10);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
   begin
      Put_Line ("Test 3..............................");
      pragma Assert(sumaFactorial(5) = 15);
      Put_Line ("OK");
   end Test_3;
   procedure Test_4 is
   begin
      Put_Line ("Test 4 .............................");
      pragma Assert(sumaFactorial(10) = 55);
      Put_Line ("OK");
   end Test_4;
   procedure Test_5 is
   begin
      Put_Line ("test 5..............................");
      pragma Assert(sumaFactorial(15) = 120);
      Put_Line ("OK");
   end Test_5;
   procedure Test_6 is
   begin
      Put_Line ("test 6...............................");
      pragma Assert(sumaFactorial(46340) = 1073720970);
      Put_Line ("OK");
   end Test_6;

begin
   Put_Line ("******************* Tests_sumaFactorial **********************");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
end Tests_Factorial;
