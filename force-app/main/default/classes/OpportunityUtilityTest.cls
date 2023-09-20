@isTest
private class OpportunityUtilityTest {
    @isTest
   public static void create1Opp() {
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        Test.startTest();
        OpportunityUtility.create1Opp(testAccount.Id);
        Test.stopTest();

        Opportunity createdOpp = [SELECT Id, Name, AccountId FROM Opportunity WHERE AccountId = :testAccount.Id];
        System.assertEquals('Opportunity 1', createdOpp.Name);
    }

    @isTest
    public static void create10opp() {
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        Test.startTest();
        OpportunityUtility.create10opp(testAccount.Id);
        Test.stopTest();

        List<Opportunity> createdOpps = [SELECT Id, Name, AccountId FROM Opportunity WHERE AccountId = :testAccount.Id];
        System.assertEquals(10, createdOpps.size());
        for (Integer i = 1; i <= 10; i++) {
            System.assertEquals('Opportunity ' + i, createdOpps[i-1].Name);
        }
    }
    @isTest
   public static void StageOpp() {
        Opportunity testOpportunity = new Opportunity(
            Name = 'Test Opportunity',
            StageName = 'Prospect',
            CloseDate= date.newInstance(2020, 4, 12)
        );
        insert testOpportunity;
        
        OpportunityUtility.StageOpp( 'Closed Won',testOpportunity.Id);
        
        Opportunity updatedOpportunity = [SELECT Id, StageName FROM Opportunity WHERE Id = :testOpportunity.Id];
        System.assertEquals('Closed Won', updatedOpportunity.StageName);
    }
    
    @isTest
   public static void UpdateOppStage() {
        List<Opportunity> testOpportunities = new List<Opportunity>{
            new Opportunity(Name = 'Opportunity 1', StageName = 'Prospect' , CloseDate = date.newInstance(2022, 7, 15)),
            new Opportunity(Name = 'Opportunity 2', StageName = 'Qualified'  ,CloseDate = date.newInstance(2022, 5, 15))
        };
        insert testOpportunities;
        
        Map<Id, String> opportunityStageMap = new Map<Id, String>{
            testOpportunities[0].Id => 'Closed Lost',
            testOpportunities[1].Id => 'Closed Won'
        };
        OpportunityUtility.UpdateOppStage(opportunityStageMap);
        
        List<Opportunity> updatedOpportunities = [SELECT Id, StageName FROM Opportunity WHERE Id IN :opportunityStageMap.keySet()];
        System.assertEquals('Closed Lost', updatedOpportunities[0].StageName);
        System.assertEquals('Closed Won', updatedOpportunities[1].StageName);
    }
    
}
    

