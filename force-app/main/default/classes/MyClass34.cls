public class MyClass34 {
    public static void myMethod34() {
        integer countEven =0;
        for(integer i = 0 ; i<10 ; i++){
            if(math.mod(i, 2) == 0) {
                system.debug('I can count even' + i);
                CountEven++;
            }
            
        }
        system.debug('total even numbers are printed are' + CountEven);
    }
    
}