public class ControlFlow29 {
    public static void practice(){
        integer x= 105;
        if(x<10){
            system.debug(x +' ' +'is a single digit number');
        }
        else if((x<99)&&(x>10)){
            system.debug(x +' ' +'is a two digit number');
        }
        else if ((x>99)&&(x<1000)){   
            system.debug(x +' ' +'is a three digit number');
        }
        else {
            system.debug(x +' ' +'is a four or more than four digit number');
        }
    }    
}