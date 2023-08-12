public  class EmployeeInfo {
    public static void show() {
   list<Employee__c> E1 = [SELECT First_Name__c, Last_Name__c, JoinDate__c FROM Employee__c order by JoinDate__c desc];
   
 for(Employee__c EachEmp: E1){
   system.debug('Employee NAme;'+ EachEmp.First_Name__c+ ' '+EachEmp.Last_Name__c);
date dt= EachEmp.JoinDate__c;
system.debug('EMPLOYEE JOINING DATE='+ dt);
system.debug('------------');


 }
}
public static void show2() {
    Employee__c emp = [select id, first_name__c, last_name__c, createddate from employee__c order by createddate desc];
    system.debug(emp.Id);
    system.debug(emp.First_Name__c);
}

}
