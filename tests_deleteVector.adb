with Ada.Text_IO; use Ada.Text_IO;
with Ejer_4; use Ejer_4;

procedure Tests_DeleteVector is

   procedure Test_1 is
      tester : Vector (1 .. 10) := (2,4,6,8,1,3,5,7,9,10);
      results : Boolean;
   begin
      Put_Line(Integer'Image(tester'First));
      Put_Line("Test_1: When the vector has the numbers .................... ");

      for x in tester'Range loop
         Put_Line("Trying to delete " & Integer'Image(tester(x)) & "......... ");
         Delete(tester, tester(x), results);
         pragma Assert(results);
         pragma Assert(tester(x) = 0);
         Put_Line("Result =" & Boolean'Image(results));
      end loop;

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      tester : Vector (1 .. 10) := (2,4,6,8,1,3,5,7,9,10);
      bad_tester : constant Vector (1 .. 10) := (11,22,33,44,55,66,77,88,99,100);
      results : Boolean;
   begin
      Put_Line("Test_2: When the vector doesn't have the numbers .................... ");

      for x in tester'Range loop
         Put_Line("Trying to delete " & Integer'Image(tester(x)) & "......... ");
         Delete(tester, bad_tester(x), results);
         pragma Assert(results = False);
         pragma Assert(tester(x) /= 0);
         Put_Line("Result =" & Boolean'Image(results));
      end loop;

      Put_Line ("OK");
   end Test_2;

begin
   Put_Line ("******* Test_Vector");
   Test_1;
   Test_2;

   --  Add here calls to your new tests
   --  ...

end Tests_DeleteVector;
