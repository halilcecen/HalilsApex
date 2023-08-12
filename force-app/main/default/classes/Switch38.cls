public class Switch38 {
    public static void Practice(){
        
        string Month= 'April';
        switch on Month{
            
            when 'January', 'March' ,'May', 'July' ,'August', 'October', 'December'{
                system.debug('31');
            }
            when 'April', 'June', 'September', 'November'{
                system.debug('30');
            }
            when 'Febuary'{
                System.debug('28');
            }
            when else{
                system.debug('ERROR: Invalid Month Name');
                
            }
        }
    }
}