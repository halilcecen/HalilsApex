trigger ContactTestTrigger on Contact (after update) {

        List<Account> AccUpdateList = new List<Account>();
        
        Map<Id, Integer> AccountCount = new Map<Id, Integer>();
        
        for (Contact eachC : Trigger.new) {
            if (EachC.AccountId != null) {
                if (!AccountCount.containsKey(EachC.Id)) {
                    AccountCount.put(EachC.AccountId, 1);
                } else {
                    AccountCount.put(EachC.Id, AccountCount.get(EachC.AccountId) + 1);
                }
            }
        }
        
        AccUpdateList = [SELECT Id, (Select Accountid from Contacts) FROM Account WHERE Id IN :AccountCount.keySet()];
        
    
        for (Account eachAcc : AccUpdateList) {
            eachAcc.Total_Number_of_Contact__c = AccountCount.get(eachAcc.Id);
        }
    
        if (!AccUpdateList.isEmpty()) {
            update AccUpdateList;
            system.debug('Trigger.operationType enum: ' + trigger.operationType);

            system.debug('season enum values: ' + season.values());
        string sName = s.name();
        system.debug('s name ==> ' + sName);
        integer sOrdrinal = s.ordinal();
        system.debug('s ordinal ==> ' + sOrdrinal);
            switch on Trigger.OperationType {
                when BEFORE_INSERT {
                    system.debug('before insert trigger called');
                    ContactTriggerHandler.contactValidation1(Trigger.new);
                }
                when AFTER_INSERT {
                    system.debug('after insert trigger called.');
                     List<contact> allContacts = [select id, name, phone from contact where id in :trigger.new];
        
                    ContactUpdateQueueable cq = new ContactUpdateQueueable(allContacts);
                    system.enqueueJob(cq);
                } 
            }
       
       
        }
    }
    
