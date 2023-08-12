@isTest
public class OpportunityTriggerTest {
@isTest
private static void testOppInsert1(){
    Opportunity opp= new Opportunity();
    opp.Name='new opp test';
    opp.CloseDate= date.today();
    opp.StageName='Prospecting';
    insert opp;
    assert.isNull(opp.Id);
}
}