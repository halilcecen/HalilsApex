public class DevHW {
Public static void hw(){
integer x=1991;
   integer y=0; 
    while(x>0){
        y=y*10;
      y += math.mod(x, 10);
        system.debug(y);
        x=x/10;
       
    }
system.debug(y);

}
    
    
}