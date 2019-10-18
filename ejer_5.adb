  package body Ejer_5 with SPARK_Mode is
   function Year(x: Natural) return Boolean is

   answer : Boolean := False;
   begin -- Year

      if (x rem 400 = 0 or else x rem 4 = 0) then
         answer := True;
      end if;

      return answer;

   end Year;

end Ejer_5;
