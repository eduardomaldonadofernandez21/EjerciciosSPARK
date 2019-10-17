package body Ejer_2 with SPARK_Mode is

   function dameDni(dni : Natural) return Character is
      list : constant letters (0 .. 22) := "TRWAGMYFPDXBNJZSQVHLCKE";
      num : Integer;
   begin
      num := dni rem 23;
      return list(num);
   end dameDni;

end Ejer_2;
