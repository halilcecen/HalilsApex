public class  dmlhw15 {
public static void test(){
 employee__c empp= [select First_name__c, Last_name__c from employee__c where First_name__c='David' AND Last_name__c='Massey'];
 delete empp;




}
    }
