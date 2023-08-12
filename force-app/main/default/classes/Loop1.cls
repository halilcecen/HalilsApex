public class Loop1{
    public static void reverseAssignment1(){
        integer num = 784;
        integer reverseNum = 0;
        
        reverseNum = math.mod(num, 10); //4
        reverseNum = reverseNum*10; //40
        
        num = num/10; //78
        reverseNum += math.mod(num, 10); //==> 48
        reverseNum = reverseNum*10; // ==> 480
        
		num = num/10; //7   
        reverseNum += math.mod(num, 10); //==> 487
        
        num = num/10; //0 
    }
    public static void reverseAssignmentWhile(){
        integer num = 7894;
        integer reverseNum = 0;
        
        while(num > 0){
            system.debug('---start---');
            system.debug('1. reverseNum => ' + reverseNum);
            reverseNum = reverseNum*10;
            system.debug('2. reverseNum*10 => ' + reverseNum);
            reverseNum += math.mod(num, 10);  
            system.debug('3. reverseNum += math.mod(num, 10) => ' + reverseNum);
            num = num/10; 
        	system.debug('4. num/10 => ' + num);
            system.debug('---end---');
        }
    }

}