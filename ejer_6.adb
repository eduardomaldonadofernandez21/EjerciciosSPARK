package body Ejer_6 with SPARK_Mode is
 function sumaFactorial
     (Value : Natural) return Natural is
      num   : Natural :=0;
      suma  : Natural :=0;
   begin
      while (num < value) loop
         num:= num+1;
         suma := suma + num;
         pragma Loop_Invariant(suma = (num*(num+1)/2));
         pragma Loop_Variant(Increases => num);
         pragma Loop_Variant(Increases => suma);
      end loop;
      return suma;
   end sumaFactorial;
end Ejer_6;
