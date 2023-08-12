public class Homework48 {
    public static void practice(){
        integer x=1324;
        integer i=0;
        string b='';
        while(x>0){
            integer dig= math.mod(x, 10);
            system.debug(dig);
            i+=dig;
            x=x/10;
        }
        system.debug('Total sum of numbers=' + i );
    }
}