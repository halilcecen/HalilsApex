public class dmlhw2 {
    public static void test2() {

     Employee__c Emp99 = new Employee__c();
     Emp99.First_name__c ='Mauro';
     Emp99.Last_name__c ='Icardi';
     Emp99.country__c ='Argentina';
     Emp99.JoinDate__c=Date.newInstance(2022,09,06);
     Emp99.email__c= 'icardi@hotmail.com';
     Emp99.salary__c= 50000;
     insert Emp99;
    
    }
}