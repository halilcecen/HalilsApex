public class Stu {
    public static void show() {
       // list<Student__c>ls1= [select id, First_Name__c, Last_Name__c,Age__c from Student__c limit 10];
 for(Student__c eachS:[select id, First_Name__c, Last_Name__c,Gender__c from Student__c where createddate=LAST_90_DAYS]){
            system.debug('Student Name= '+eachS.First_Name__c+' '+eachS.Last_Name__c);
            system.debug('Student Age= '+eachS.Age__C);
        } 
        
        
    }
}