@istest

public class DmlDemo1Test {
    @istest
    private static void testDml1() {
        //call method
        DmlDemo1.dml1(); // in this we are creating one account. Will it create record in the org? NO!
         account acc =[select id, name, website from account limit 1];
         system.assertEquals('Salesforce', acc.name);
         Assert.areEqual('Salesforce', acc.name);
    }
    @istest
    private static void testDml2(){
        DmlDemo1.dml2();
        Department__c dp = [select id, name__c, Short_Code__c from department__c limit 1];
        Assert.areEqual('HR', dp.Short_Code__c);
        Assert.areEqual('Human Resource', dp.Name__c);

    }
    @isTest
   private static void testDml5() {
        //step1: prepare data 
            //prepare data, create data which is NEEDED for our method
        //1. create new instance of sobject.
        account acc = new account();

        //2. set field names
        acc.Name = 'Test Account';
        acc.Website = 'salesforce.com';
        acc.Industry = 'Agriculture';
        acc.Rating = 'Warm';
        //dml
        insert acc;

        //step2: call method (or test actual code)
        DmlDemo1.dml5();

        //step3: assertion
        //verify if contact with lastname = biden is created or not
        contact c = [select id, lastname, accountid,phone from contact where lastname = 'Biden' and accountid = :acc.id];
        assert.areEqual(acc.id, c.accountid);
        assert.areEqual('78646213', c.phone);
   }
}