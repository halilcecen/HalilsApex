public class Switch1 {
    public static void practice37() {
        
        integer a= 4;
        switch on a{
            when 1, 2, 3{
                system.debug('First Quarter'); 
            }
            when  4 , 5, 6 {
                system.debug('Second Quarter');
            }
            when 9, 7 , 8 {
                system.debug('Third Quarter');
            }
            
            when 10, 11 , 12 {
                system.debug('Fourth Quarter');
            }
            
            
            when else{
                system.debug('ERROR! Invalid month of year' );
            }
            
            
            
        }
    }
}