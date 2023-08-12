public class PrimitiveDataTypeDemo {
   public static void printDT() {
        system.debug ('we will print all datatypes here.');
        //STRING
        string name = 'Alex';   
        system.debug ('First name is' + name);
        name = 'Vitap';
        string lastName = 'Telles';
        system.debug ('Lastname is ' + lastName );
        //INTEGER
        integer participants = 50;
        system.debug ('number of participants is ' + participants);
        //Long
        long people = 123123L;
        system.debug('number of people on earth ' + people);
        //Double
        double water = 80.7;
        system.debug ('water volume is ' +  water );
        //Decimal
        decimal xyx = 55.50;
        system.debug ('xyz value is' + xyx );
        
        double var1 = 2.0/3.0;
        decimal var2 = 2.0/3.0;
        system.debug ('var1 ' + var1); // 16 numbers after decimal
        system.debug ('var2 ' + var2); // 32 numbers after decimal
        
    }

public static void printDT2(){
    boolean flag = true;
    system.debug ('flag value is' + flag );
    flag = false;
        system.debug ('flag value is' + flag );
    flag = null;
        system.debug ('flag value is' + flag );
   ID accId = 'ddn000007n1qwma' ;
    system.debug('account id is' + accId ); 
}
}