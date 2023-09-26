public class OpportunityUtility {
  public static void create1Opp(Id accountId) {
      Opportunity opp = new Opportunity();
      opp.Name = 'Opportunity 1';
      opp.CloseDate= date.newInstance(2022, 5, 15);
      opp.StageName='Prospect';
      opp.AccountId = accountId;
      insert opp;
  }

  public static void create10opp(Id accountId) {
      List<Opportunity> opportunities = new List<Opportunity>();
      for (Integer i = 1; i <= 10; i++) {
          Opportunity opp = new Opportunity();

          opp.Name = 'Opportunity ' + i;
          opp.CloseDate= date.newInstance(2021, 7, 15);
          opp.StageName='Prospect';
          opp.AccountId = accountId;
          opportunities.add(opp);
      }
      insert opportunities;
  }


public static void StageOpp(string StageNa, id OppId ){
    Opportunity oppToUpdate = new Opportunity(Id = OppId, StageName = stageNa);
    
    update oppToUpdate;
}

public static void UpdateOppStage(Map<Id, String> opportunityStageMap) {
    List<Opportunity> opportunitiesToUpdate = new List<Opportunity>();
    
    for (Id oppId : opportunityStageMap.keySet()) {
        String stageName = opportunityStageMap.get(oppId);
        opportunitiesToUpdate.add(new Opportunity(Id = oppId, StageName = stageName));
    }
    
    update opportunitiesToUpdate;
}
}

