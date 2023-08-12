public  class Homework9Handler {
public static void updateNoOppinAc(List<Opportunity> OppTriNew, Map<Id,Opportunity> oppTriNewMap,List<Opportunity> OppTriOld) {
    Set<Id> accountIds = new Set<Id>();
    for(Opportunity opp : OppTriNew) {
        if (opp.AccountId != null) {
            accountIds.add(opp.AccountId);
        }
    }
    
    // Query the related Accounts with their Opportunity count
    Map<Id, Account> accountsMap = new Map<Id, Account>([SELECT Id, (SELECT Id FROM Opportunities) FROM Account WHERE Id IN :accountIds]);
   
    
    // Update the "Number Of Opportunities" field on the related Accounts
    for (Account acc : accountsMap.values()) {
        acc.Number_Of_Opportunities__c = acc.Opportunities.size();
    }
    
    // Perform the update on the Accounts
    update accountsMap.values();
}
}