public class SOQLHW{
public static void Practice(){
list<Student__c> S1 = [select id, First_Name__c,Last_Name__c,Joining_Date__c,Age__C from Student__c];
for (Student__c eachSName:s1 ){
system.debug(eachSName);
SYSTEM.DEBUG('Name= '+ eachSName.First_Name__c+' '+eachSName.last_Name__c);
SYSTEM.DEBUG('Age= '+ eachSName.Age__c);
system.debug('Joining Date= '+eachSName.Joining_Date__c);
}

}
}
