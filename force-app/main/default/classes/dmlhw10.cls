public class dmlhw10 {
    public static void test() {
        list<classroom__c> cls1= [select id from classroom__c where standard__c in (5)];
        sobject student12= new student__c(First_name__c='John', Last_name__c='Wick', Joining_Date__c=date.newinstance(2023,06,01),classroom__c=cls1[0].id);
        insert student12;
        list<sobject>stuList=[select id, First_name__c, Last_name__c, Joining_Date__c, classroom__c from student__c where First_name__c='John' ];
        for(sobject eachSt: stuList){
            student__c s11=(student__c)eachSt;
            system.debug('Student ID= '+s11.id);
        system.debug('First Name= '+s11.First_name__c);
        system.debug('Last Name= '+ s11.Last_name__c);

        }
        system.debug(student12);
    }

}