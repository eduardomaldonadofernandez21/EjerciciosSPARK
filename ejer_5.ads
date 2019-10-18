package Ejer_5 with SPARK_Mode is
   function Year
     (x: Natural) return Boolean

    with
        Global  =>  null,
        Depends =>  (Year'Result => x),
        Pre     =>  (x >= Natural'First and then x <= Natural'Last),
        Post    =>  (if (x rem 400 = 0 or else x rem 4 = 0) then
                     Year'Result /= False);

end Ejer_5;
