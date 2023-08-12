public class BatchOppUpdate implements Database.Batchable<SObject>, Database.stateful {
    integer OppRecordsUpdate = 0;

    public Database.QueryLocator start(Database.BatchableContext op){
     
        Database.QueryLocator allRecords = Database.getQueryLocator('Select id, name, StageName from opportunity');
        return allRecords;
    }

    public void excute(Database.BatchableContext op, List<Opportunity> listOpp){
       
        list<Opportunity> updateOpp= new list<Opportunity>();
        for (Account eachOpp : listOpp) {
            if(eachOpp.StageName == 'Qualification'){
                eachOpp.StageName = 'Needs Analysis';
               
                updateOpp.add(eachOpp);
            }
        }
        update updateOpp;
        
        system.debug('Total number of Opp updated ==> ' + updateAcc.size());
        OppRecordsUpdate += updateOpp.size();
        system.debug('Total number of Opp updated until now (Inside of OppUpdate) ==>  ' + OppRecordsUpdate);
    }
    public void finish(Database.BatchableContext op){
        system.debug('Total Record inside of Finish ==> ' + OppRecordsUpdate );
    }

}