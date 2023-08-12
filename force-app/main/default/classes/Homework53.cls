public class Homework53 {
    public static void practice(){
        
        Integer num = 3211; 
        string sinteger= string.valueOf(num);
        Boolean isDuck = false;
        do {
            Integer lastDigit = num /10; 
            if (sinteger.contains('0')) {
                isDuck = true; 
            }
            num /= 10;
        } while (num > 0);
        
        if (isDuck) {
            System.debug('The number is a Duck Number.');
        } else {
            System.debug('The number is not a Duck Number.');
        }
        
    }
}