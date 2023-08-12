public class ControlFlow33 {
    public static void practice(){
        Integer SG= 82;
        If(SG<=100&&SG>=95){
            SYSTEM.debug('Student Grade is A=' + SG);
        }else{
            if(SG<=94&&SG>=90){
                SYSTEM.debug('Student Grade is B=' + SG);
            }else{
                if(SG<=89&&SG>=85){
                    SYSTEM.debug('Student Grade is C=' + SG);
                }ELSE{
                    if(SG<=84&&SG>=80){ 
                        SYSTEM.debug('Student Grade is D=' + SG);
                    }Else{
                        if(SG<=79&&SG>=75){   
                            SYSTEM.debug('Student Grade is E=' + SG);
                            
                        }else{
                            IF(SG<75){
                                SYSTEM.debug('Student Reproved'); 
                                
                            }else{
                                if(SG>100||SG<100){
                                    SYSTEM.debug('ERROR: Please provide valid grade');
                                }
                            }
                            
                            
                        }
                    }              }
            }
        }
    }}