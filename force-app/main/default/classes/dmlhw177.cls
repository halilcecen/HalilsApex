public class dmlhw177 {
public static void test()  {

employee__c SJ= new employee__c (First_name__c='Scarlett', Last_name__c='Johansson');
insert SJ;

delete [select id from employee__c where First_name__c='Scarlett' AND Last_name__c='Johansson'];

employee__c SJ2= [select First_name__c, Last_name__c from employee__c where First_name__c='Scarlett' AND Last_name__c='Johansson' ALL ROWS];
undelete SJ2;


}
}

        // classroom__c= listC[0].id