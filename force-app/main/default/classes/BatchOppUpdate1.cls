public class BatchOppUpdate1 implements Database.Batchable<SObject>, Database.stateful {
    integer OppRecordsUpdate = 0;

    public Database.QueryLocator start(Database.BatchableContext op){
     
        Database.QueryLocator allRecords = Database.getQueryLocator('Select id, name, StageName from opportunity');
        return allRecords;
    }

    public void execute(Database.BatchableContext op, List<Opportunity> listOpp){
       
        list<Opportunity> updateOpp= new list<Opportunity>();
        for (Opportunity eachOpp : listOpp) {
            if(eachOpp.StageName == 'Qualification'){
                eachOpp.StageName = 'Needs Analysis';
               
                updateOpp.add(eachOpp);
            }
        }
        update updateOpp;
        
        system.debug('Total number of Opp updated ==> ' + updateOpp.size());
        OppRecordsUpdate += updateOpp.size();
        system.debug('Total number of Opp updated until now (Inside of OppUpdate) ==>  ' + OppRecordsUpdate);
    }
    public void finish(Database.BatchableContext op){
        system.debug('Total Record inside of Finish ==> ' + OppRecordsUpdate );
    }

}