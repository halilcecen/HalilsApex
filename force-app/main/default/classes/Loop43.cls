public class Loop43 {
    public static void practice(){
        
 integer x=7;
    for(x=0;x<=x;x++)
    {
        integer count=0;
integer y=0;
        for( y=x; y>=1;y--)
        {
            
            if(math.mod(x,y)==0 )
            {
                count++;
            }
        }
        if(count==2 || count==1){
            
                         system.debug(x);
                   
                }                     
                 
            else{
                system.debug('This is not prime number ');      
                }
    }
  }

}