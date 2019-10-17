package Ejer_4 with SPARK_Mode is

   type Vector is array (Integer range <>) of Integer;

   procedure Delete(vect: in out Vector; num: in Integer; result: out Boolean)
     with
       Depends => (result => (num, vect), vect => (num, vect)),
       Post=>(if result then
                (for all J in vect'Range => vect(J) /= num or vect(J) = 0));

end Ejer_4;
