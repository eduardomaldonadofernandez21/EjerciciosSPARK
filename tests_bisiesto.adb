with Ada.Text_IO; use Ada.Text_IO;
with Ejer_5; use Ejer_5;

procedure Tests_Bisiesto with SPARK_Mode is

   procedure Test_1 is

      type years is array (Integer range <>) of Natural;
      arr_year : constant years (1 .. 4) := (2016, 2020, 2024, 2028);

   begin

      Put_Line("Test_1: Group of leap years ......................... ");

      for y in arr_year'Range loop
         Put (Natural'Image(arr_year(y)) & ".....");
         pragma Assert (Year(arr_year(y)) = true);
         Put_Line (Boolean'Image(Year(arr_year(y))));

      end loop;

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is

      type years is array (Integer range <>) of Natural;
      arr_year : constant years (1 .. 4) := (2013, 2021, 2023, 2027);

   begin

      Put_Line("Test_1: Group of non-leap years ...................... ");

      for y in arr_year'Range loop
         Put (Natural'Image(arr_year(y)) & ".....");
         pragma Assert (Year(arr_year(y)) = False);
         Put_Line (Boolean'Image(Year(arr_year(y))));

      end loop;

      Put_Line ("OK");
   end Test_2;

begin
   Put_Line ("********************* Test_Bisiesto");
   Test_1;
   Test_2;


end Tests_Bisiesto;
