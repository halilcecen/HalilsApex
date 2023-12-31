public class ExceptionDemo {
   public static void demo1(string s){
        try{
            system.debug('s is ' + s);
            string str2 = s.toUpperCase(); //it will throw error. And code does NOT run any further.
            system.debug('str2 = ' + str2);
        } catch(NullPointerException npe){
            system.debug('s CANNOT be NULL.');
        }
        system.debug('code completed');
      }
 public static void demo2(string n) {
       
        try {
            string nCaps = n.toUpperCase();
            account a = new account();
            a.Name = nCaps;
            insert a;
            
        } catch (Exception ex) {
            system.debug('Exception occurred.');
            system.debug('ex message: ' + ex.getMessage());
            
        }
   }
public static void demo2(string n) {
       
        try {
            string nCaps = n.toUpperCase();
            integer x = n.length()/0;
            account a = new account();
            //a.Name = nCaps;
            insert a;
            
        } catch(NullPointerException npe){
            system.debug('CANNOT pass null to string parameter');
            system.debug('npe error : ' + npe);

        } catch(DmlException de){
            system.debug('Fill all required field, please');
            system.debug('de exception: ' + de);
        } catch (Exception ex) {
            system.debug('Exception occurred.');
            system.debug('ex message: ' + ex.getMessage());
            system.debug('ex: ' + ex);
        }
   }

}
public static void assig(string hc){


try {
    Account h = [SELECT Name FROM Account WHERE Name = 'Halil'];
account hc = new account();
insert hc;
} catch(QueryException hll) {
    System.debug('Exception has occurred: ' + hll.getMessage());    
}
catch(DmlEx hc) {
    system.debug('Its a DmlException' + hc);
}
}






