public class LoopDemo {
    
    public static void NivenNumber(){
        integer num=375;
        integer sum=3+5+7;
        while(sum>=15){ 
            
            integer niven= math.mod(num, sum);
            sum=sum-niven;
            --sum;
            
            if(niven==0){ 
                system.debug(num+ 'is a niven number');
            }
            
            else{
                system.debug(num+ 'is a NOT niven number');   
            }
        }
    }
    
    
    
    
    
}