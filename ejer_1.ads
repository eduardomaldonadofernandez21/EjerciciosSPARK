package Ejer_1 with SPARK_Mode is

   type S_String is array (Natural range <>) of Character;
   num : constant S_String(1.. 5) := "aeiou";

   procedure changeString (text : in out S_String)
     with
       Global => null,
       Depends => (text => (text)),
       Pre => text'Length > 0,
       Post => (for all I in text'Range =>
                  (for some J in num'Range =>
                       text(I) /= num(J) or text(I) = text'Old(I)));


   --Nivel 0 de Proof
end Ejer_1;
