public  class dmlhw11 {
    public static void test() {
        list<sobject>DJ1=[select id, First_name__c, Last_name__c, salary__c,JoinDate__c,department__c ,email__c, country__c from employee__c where First_name__c='Dwayne' AND Last_name__c='Johnson'];
       list<employee__c>NewDwayne= new list<employee__c>();
        for(sobject eachemp: DJ1){
            employee__c e12=(employee__c)eachemp;
            if(e12.First_name__c=='Dwayne' && e12.Last_name__c=='Johnson'){
                e12.country__c='USA';
                e12.email__c='dwayne@johnson.com';
                NewDwayne.add(e12);
                
            }
        }
update NewDwayne;
system.debug('New version of Employee==>'+NewDwayne);
        }

}