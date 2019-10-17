package body Ejer_1 with SPARK_Mode is


   procedure changeString (text : in out S_String) is
   begin
      for I in text'Range loop
         for T in num'Range loop
            if text(I) = num(T) then
               text(I) := Character'Val(49);
            end if;
         end loop;
         pragma Loop_Invariant((for all J in text'First .. I =>
                                  (if text(J) = text'Loop_Entry(J) then
                                       (for all K in num'Range =>
                                            text(J) /= num(K))
                                   else
                                     (for some K in num'Range =>
                                          text'Loop_Entry(J) = num (K))
                                  )));

         pragma Loop_Invariant((for all E in (I)  .. text'Last =>
                                  (if E /= I then
                                     text(E) = text'Loop_Entry(E))));
      end loop;
   end changeString;

end Ejer_1;
