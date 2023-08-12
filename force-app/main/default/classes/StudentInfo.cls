public class StudentClass {
    public static void show2(){
    list <Student__c> StudentO = [select  First_Name__c, Last_Name__c, gender__c from Student__c where createddate =last_week];
    for(Student__c eachStud: StudentO){ 
    system.debug('Student Name='+ eachStud.First_Name__c+ ' '+ eachStud.Last_Name__c);
    system.debug('Student Age = ' + eachStud.Age__c);
    }
    }
    }

