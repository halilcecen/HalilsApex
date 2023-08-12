public  class dmlhw13 {
    public static void test() {
        sobject emp10 = new employee__c(First_name__c='Peter', Last_name__c='Parker',salary__c=235000);
        insert emp10;
        employee__c emp20= new employee__c(First_name__c='David' , Last_name__c='Massey', salary__c=65000);
        list<employee__c> NewTest=new list<employee__c>();
        NewTest.add(emp20);
        list<sobject>E10 =[select id, First_name__c,Last_name__c, email__c, salary__c from employee__c where First_name__c='Peter'];
        
        for(sobject eacEmp: E10 ){
            employee__c e1= (employee__c)eacEmp;
            e1.email__c='peter@parker.com';
        NewTest.add(e1);
        
    }
   
upsert NewTest;
system.debug(NewTest);
    }
}