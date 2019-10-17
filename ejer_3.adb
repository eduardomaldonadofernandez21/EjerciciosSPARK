package body Ejer_3 with SPARK_Mode is

   function Potencia(value : Natural) return Natural is
      N : Natural := 0;
      Pot : Natural := 1;
   begin -- Potencia
      if (value = 1 or value = 0) then
         return Pot;
      end if;
      while Pot < value loop
         N := N + 1;
         Pot := 2**N;
         pragma Loop_Invariant(Pot = 2**N);
         pragma Loop_Variant(Increases => Pot);
         pragma Loop_Variant(Increases => N);
      end loop;
      return Pot;
   end Potencia;

end Ejer_3;
