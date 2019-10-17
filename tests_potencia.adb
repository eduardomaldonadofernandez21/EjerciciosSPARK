with Ada.Text_IO; use Ada.Text_IO;
with Ejer_3; use Ejer_3;

procedure Tests_Potencia is

   procedure Test_1 is
      type arr_exact is array (Integer range <>) of Natural;
      exact : arr_exact (1 .. 4) := (4, 1024, 32768, 32);
   begin
      Put_Line("Test_1: Group of power of 2 numbers  ......................... ");
      for num in exact'Range loop
         Put_Line (Integer'Image(exact(num)) & " =" & Integer'Image(Potencia(exact(num))));
         pragma Assert (Potencia(exact(num)) = exact(num));
      end loop;
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      type arr_exact is array (Integer range <>) of Natural;
      exact : arr_exact (1 .. 4) := (3, 900, 10, 300);
   begin
      Put_Line("Test_2: Group of non-power of 2 numbers  ......................... ");
      for num in exact'Range loop
         Put_Line (Integer'Image(exact(num)) & " =" & Integer'Image(Potencia(exact(num))));
         pragma Assert (Potencia(exact(num)) > exact(num));
      end loop;
      Put_Line ("OK");
   end Test_2;

begin
   Put_Line ("******* Test_Potencia");
   Test_1;
   Test_2;

   --  Add here calls to your new tests
   --  ...

end Tests_Potencia;
