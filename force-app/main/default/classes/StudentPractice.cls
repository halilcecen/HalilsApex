
//HOMEWORK32

public class StudentPractice {
public static void show2(){
list <Student__c> StudentO = [select  First_Name__c, Last_Name__c, gender__c from Student__c where Joining_Date__c=today];
for(Student__c eachStud: StudentO){ 
system.debug('Student Name='+ eachStud.First_Name__c+ ' '+ eachStud.Last_Name__c);
system.debug('Student Age = ' + eachStud.Age__c);
}

}
//HOMEWORK33

public static void show2(){
list<account> listAcc = [select id, name, phone,(select name, email from contacts) from account];
for( account eachAcc: listAcc)
}
}