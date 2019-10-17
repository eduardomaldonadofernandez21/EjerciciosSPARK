with Ada.Text_IO; use Ada.Text_IO;
with Ejer_1;     use Ejer_1;

procedure Tests_ChangeString is

   procedure Test_1 is
      StringExample : S_String (1..16) := "Hace un buen dia";
      StringResult : constant S_String(1..16)  := "H1c1 1n b11n d11";
   begin
      Put ("Test_1: ");
      changeString(StringExample);
      Put_Line(String(StringExample));
      pragma Assert (StringExample = StringResult);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      StringExample : S_String (1..29) := "Me gusta los helados de menta";
      StringResult : constant S_String(1..29)  := "M1 g1st1 l1s h1l1d1s d1 m1nt1";
   begin
      Put ("Test_2: ");
      changeString(StringExample);
      pragma Assert (StringExample = StringResult);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      StringExample : S_String (1..16) := "estuve en agaete";
      StringResult : constant S_String(1..16)  := "1st1v1 1n 1g11t1";
   begin
      Put ("Test_3: ");
      changeString(StringExample);
      pragma Assert (StringExample = StringResult);
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      StringExample : S_String(1..26) := "Me gusta la musica clasica";
      StringResult : constant S_String(1..26) := "M1 g1st1 l1 m1s1c1 cl1s1c1";
   begin
      Put("Test_4: ");
      changeString(StringExample);
      pragma Assert (StringExample = StringResult);
      Put_Line ("OK");
   end Test_4;


begin
   Put_Line ("********************* Tests: ChangeString (function)");
   Test_1;
   Test_2;
   Test_3;
   Test_4;

end;
