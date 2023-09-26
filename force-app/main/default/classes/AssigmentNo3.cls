public with sharing class AssigmentNo3 {
    public static void TestEmp() {
        list<employee__c> EmpList= [Select First_Name__c , Last_Name__c, Salary__c, Department__c FROM Employee__c WHERE Salary__c> 20000 WITH USER_MODE ];
        system.debug(EmpList);

    }
}