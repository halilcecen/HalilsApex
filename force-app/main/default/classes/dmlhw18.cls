public class dmlhw18 {
public static void test() {
list<classroom__c> listC= [select id from classroom__c where Standard__c IN (4)];
Student__c GG = new Student__c(First_name__c='Gal', Last_name__c='Gadot',  classroom__c= listC[0].id);
insert GG;
delete [select id from Student__c where Last_name__c='Gadot'];

Student__c GG2 =[select First_name__c, Last_name__c FROM Student__c where Last_name__c='Gadot' All ROWS];
undelete GG2;

}
}