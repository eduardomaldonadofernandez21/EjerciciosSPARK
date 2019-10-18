  package body Ejer_4 with SPARK_Mode is

   procedure Delete(vect: in out Vector; num: in Integer) is

   begin -- Procedure
      result := False;
      for i in vect'Range loop
         if vect(i) = num then
            vect(i) := 0;
            result := True;
         end if;

         pragma Loop_Invariant
           (for all J in vect'First .. i =>
              vect (J) /= num or vect(J) = 0);
      end loop;
   end delete;

end Ejer_4;

