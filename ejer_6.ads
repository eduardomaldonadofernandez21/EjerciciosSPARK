package Ejer_6 with SPARK_Mode is
   function sumaFactorial
     (Value : Natural) return Natural
     with
        Global  =>  null,
        Depends =>  (sumaFactorial'Result => Value),
        Pre     =>  (if Value > 0 then Value  <= Natural'Last / Value
                    and then Value * Value <= Natural'Last - Value),
        Post    =>  (for all j in 1..Value => j*(j+1)/2 <= sumaFactorial'Result);
end Ejer_6;
