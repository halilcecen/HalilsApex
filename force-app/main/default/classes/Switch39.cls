public class Switch39 {
    public static void practice(){
        
        
        string Month= '01 / 30/ 2012';
        STRING MM=(Month.substring(0, 2));
        
        switch on mm{
            when '01'{
                system.debug('January');
            }
            when '02'{
                system.debug('Febuary');
            }
            when '03'{
                system.debug('March');
            }
            when '04'{
                system.debug('April');
            }
            when '05'{
                system.debug('May');
            }
            when '06'{
                system.debug('June');
            }
            when '07'{
                system.debug('July');
            }
            when '08'{
                system.debug('August');
            }
            when '09'{
                system.debug('September');
            }
            when '10'{
                system.debug('October');
            }
            when '11'{
                system.debug('November');
            }
            
            when'12'{
                system.debug('December');
            }
            
            when else{
                system.debug('ERROR: Invalid Month Name');
                
            }
            
        }
    }
}