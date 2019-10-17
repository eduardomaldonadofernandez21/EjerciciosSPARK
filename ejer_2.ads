package Ejer_2 with SPARK_Mode is

   type letters is array (Integer range <>) of Character;
   list : constant letters (0 .. 22) := "TRWAGMYFPDXBNJZSQVHLCKE";

   function dameDni (dni : Natural) return Character
     with
      Global =>  (null),
      Depends => (dameDni'Result => (dni)),
      Pre => dni < Natural'Last,
      Post => (For some I in list'Range => list(I) = dameDni'Result);

--Nivel 1 fast

end Ejer_2;
