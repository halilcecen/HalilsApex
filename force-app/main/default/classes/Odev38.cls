public class Odev38 {
    public static void practice() {
        
        integer a= 4;
        switch on a{
            when 1, 3 , 5 ,7 ,9{
                system.debug(a + '=Odd number'); 
            }
            when 2, 4 , 6 ,8{
                system.debug(a + '=Even number');
            }
            when else{
                system.debug('ERROR! Value should be between 1 to 9' );
            }
        }
    }
}