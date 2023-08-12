@isTest

public class BatchOppUpdateTest {
    public static void BatchOppUpdate1() {
        Test.startTest();
     
        BatchOppUpdate od = new BatchOppUpdate();
        Database.executeBatch(od, 800);
      
        test.stopTest();
        list<Opportunity> listOpp = [select id, name, StageName from Opportunity where StageName ='Qualification'];
        for(Opportunity eachOpp: listOpp){
            assert.isTrue(eachOpp.StageName.containsIgnoreCase('Need Analysis'));
        }
    }
}