public class dmlhw16 {
public static void test() {
Student__c AJ= [select First_name__c, Last_name__c FROM Student__c where First_name__c='Angelina' AND Last_name__c='Jolie'];
delete AJ;

}
}