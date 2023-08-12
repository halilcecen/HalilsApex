public class dmlhw8 {
    public static void test() {
        list<classroom__c> clslist= [select id from classroom__c where standard__c in (8,10)];
        sobject student1= new student__c(First_name__c='Harry', Last_name__c='Potter',Age__c=11, Joining_Date__c=date.today(),classroom__c=clslist[0].id);
        insert student1;
        system.debug(student1);
        list<sobject>stuLi= [select id, First_name__c, Last_name__c, Age__c,Joining_Date__c,classroom__c from student__c where First_name__c='Harry' AND Last_name__c='Potter'];
        

        list<student__c> UpdateStu = new list<student__c>();
        for(sobject eachS: stuLi){
            student__c s1 =(student__c)eachS;
            if(s1.First_name__c=='Harry' && s1.Last_name__c=='Potter'){
                s1.Age__c=12;
                UpdateStu.add(s1);

            }

        }
    update UpdateStu;
    system.debug('AFTER UPDATE---> '+UpdateStu);
    }

}