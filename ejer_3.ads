with Ada.Numerics.Elementary_Functions;
use  Ada.Numerics.Elementary_Functions;

package Ejer_3 with SPARK_Mode is

   function Potencia(value : Natural) return Natural
     with
       Global => null,
       Depends => (Potencia'Result => value),
       Pre => value >= 0 and then value <= 2**20,
       Post => (if (Log(Float(Potencia'Result), 2.0) - Float'Rounding(Log(Float(Potencia'Result), 2.0))) = 0.00 then
                  Potencia'Result >= value);

end Ejer_3;
