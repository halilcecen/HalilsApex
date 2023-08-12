public class ControlFlow27 {
    public static void practice(){
        Integer q= 12500;
        decimal r= 7.5;
        decimal t= q*r;
        IF(q>10000){
            system.debug('Total price =' + t);
            system.debug('Discount =' + (t/4));
            system.debug('Net price = '+ (t-(t/4)));
        }
        
        If(q<10000){
            system.debug('Total price =' + t);
            system.debug('Discount =' + (t/10));
            system.debug('Net price='+ (t-(t/10)));
        }
        
    }
}