public  class dmlhw3 {
    public static void test3() {
       sobject sc = new student__c(First_name__c='Carlos', Last_name__c='Martinez',Age__c= 20, Joining_Date__c= date.newInstance(2022,11,02), gender__c='Male');
        system.debug(sc);
     student__c stu =(student__c)sc;
        SYSTEM.debug(stu.First_name__c);
        system.debug(stu.Last_name__c);
        system.debug(stu.Age__c);
        system.debug(stu.Joining_Date__c);
        system.debug(stu.gender__c);
    }
}