trigger AcTri on Account (before insert, after insert, before update, after update) {

 /*   if (Trigger.isBefore && Trigger.islnsert) {
        //check if annual revenue is less than 5k then throw error
        for (Account accNew : Trigger.new) {
        if (accNew.AnnualRevenue<5000) {
        // throw error on RECORD
        //accNew.addError( 'Annual revene cannot be less than 5000. Come on user! I);
        // throw error on the field
        accNew.AnnualRevenue.addError('Annual revene cannot be less than 5000 come on user! ');

        }
        }
    }


        //When account is created and active__c field is selected as 'Yes', update description as 'Acccount is now active! Enjoy' else 'Record created'
      /*  if (Trigger.isBefore && Trigger.isInsert) {
    
            for (Account acc : Trigger.new) {
                acc.Description = 'Record created';
                //check if active__c == 'yes'
                if (acc.Active__c == 'Yes') {
                    acc.Description = 'Account is now active. Enjoy buddy!';
                }
            }
        }
    
    
    
        // //check if trigger is running in before insert context
        // if (Trigger.isBefore && Trigger.isInsert) {
        //     //why for loop?
        //         //Trigger.new is list
        //             //Trigger.new is READ ONLY in AFTER Triggers
        //     for (Account newAcc : Trigger.new) {
        //         newAcc.Ownership = 'Public';
        //         newAcc.Description = 'Description updated from trigger.';
        //     }
        // }
    
        //HOW to GET DAta which is Being inserted or updated?
        //Trigger.new
        // List<account> newAccounts = Trigger.new;
        // //Map <id, account>  //record id as KEY //record itself as VALUE 
        // Map<id,account> newAccountsMap = Trigger.newMap;
    
    
        // List<account> oldAccounts = Trigger.old;
        // Map<id, account> oldAccountsMap = Trigger.oldMap;
    
        // if (Trigger.isBefore && Trigger.isInsert) {
        //     system.debug('--BEFORE INSERT--');
        //     system.debug('Trigger.New --> ' + Trigger.new);
        //     system.debug('Trigger.NewMap --> ' + Trigger.newMap);
        //     system.debug('Trigger.old --> ' + Trigger.old);
        //     system.debug('Trigger.oldMap --> ' + Trigger.oldMap);
        // }
        
        
        // if (Trigger.isBefore && Trigger.isUpdate) {
        //     system.debug('--BEFORE UPDATE--');
        //     system.debug('Trigger.New --> ' + Trigger.new);
        //     for (Account newAcc : trigger.new) {
        //         system.debug('new acc name: ' + newAcc.Name);
        //         system.debug('new acc website: ' + newAcc.Website);
        //     }
        //     //system.debug('Trigger.NewMap --> ' + Trigger.newMap);
        //     system.debug('Trigger.old --> ' + Trigger.old);
        //     for (Account oldAcc : trigger.old) {
        //         system.debug('old acc name: ' + oldAcc.Name);
        //         system.debug('old acc website: ' + oldAcc.Website);
        //     }
        //     //system.debug('Trigger.oldMap --> ' + Trigger.oldMap);
        // }
        // if (Trigger.isAFTER && Trigger.isUpdate) {
        //     system.debug('--AFTER UPDATE--');
        //     system.debug('Trigger.New --> ' + Trigger.new);
        //     for (Account newAcc : trigger.new) {
        //         system.debug('new acc name: ' + newAcc.Name);
        //         system.debug('new acc website: ' + newAcc.Website);
        //     }
        //     //system.debug('Trigger.NewMap --> ' + Trigger.newMap);
        //     system.debug('Trigger.old --> ' + Trigger.old);
        //     for (Account oldAcc : trigger.old) {
        //         system.debug('old acc name: ' + oldAcc.Name);
        //         system.debug('old acc website: ' + oldAcc.Website);
        //     }
        //     //system.debug('Trigger.oldMap --> ' + Trigger.oldMap);
        // }
    
        // if (Trigger.isBefore && Trigger.isInsert) {
        //     system.debug('account before insert trigger called.');
    
        //     //get data using trigger.new
        //     system.debug('newly inserted account record (BEFORE): ' + newAccounts);
        //     for (Account newAcc : Trigger.new) {
        //         system.debug('newAcc name : ' + newAcc.Name);
        //     }
        // }
    
        // if (Trigger.isafter && Trigger.isInsert) {
        //     system.debug('account after insert trigger called.');
    
        //     //get data using trigger.new
        //     system.debug('newly inserted account record (AFTER): ' + trigger.new);
        //     system.debug('newMap AFTER -> ' + trigger.newMap);
        //     system.debug('total records inserted: ' + newAccounts.size()); //list method list.size()
        //     system.debug('total records inserted (context variable trigger.size): ' + trigger.size);
        // }
    
        // if (Trigger.isBefore) {
        //     system.debug('BEFORE TRIGGER CALLED.');
        //     if (Trigger.isInsert) {
        //         system.debug('account before insert trigger called.');
        //     } 
        //     if(Trigger.isUpdate){
        //         system.debug('account before Update trigger called.');
        //     }
        // }
        // if (Trigger.isAfter) {
        //      system.debug('AFTER TRIGGER CALLED.');
        //     if (Trigger.isInsert) {
        //         system.debug('account after insert trigger called.');
        //     } 
        //     if(Trigger.isUpdate){
        //         system.debug('account after Update trigger called.');
        //     }
        // }
        
        // system.debug('Trigger isInsert will be true when we CREATE record -> ' + Trigger.isInsert);
        // system.debug('Trigger isUpdate will be true when we UPDATE record -> ' + Trigger.isUpdate);
        // if(Trigger.isBefore && Trigger.isInsert){
        //     system.debug('account before insert trigger called.');
        // }
        // if(Trigger.isAfter && Trigger.isInsert){
        //     system.debug('account after insert trigger called.');
        // }
    
        //  if(Trigger.isBefore && Trigger.isUpdate){
        //     system.debug('account before Update trigger called.');
        // }
        // if(Trigger.isAfter && Trigger.isUpdate){
        //     system.debug('account after Update trigger called.');
        // }
    
        system.debug('--------');
    
        // //isAfter will be True when Trigger is executing in After Context (after insert or after update)
        // if(Trigger.isAfter){
        //     //we want to print below ONLY in after insert
        //     system.debug('account AFTER insert trigger called');
        //     system.debug('account AFTER UPDATE trigger called');
        // }
        // //isBefore will be True when Trigger is executing in Before context (before insert or before update)
        // if(Trigger.isBefore){
        //      //we want to print ONLY in before insert
        //     system.debug('account before insert trigger called.');
        //     system.debug('account BEFORE UPDATE trigger called.');
        // }
    }
    //Salesforce allows us to create More than 1 trigger PER OBJECT.
        //But
    //WE SHOULD NOT. We should not create more than one trigger per sObject.

if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
    AccountTriggerHandler.accountValidation1(trigger.new);
} 
} 

if(Trigger.isAfter && Trigger.isInsert) {
    //call method to create contact
    AccountTriggerHandler.createRelatedContact(Trigger.new);
} */

//if(Trigger.isAfter && Trigger.isInsert) {
    //call method to create contact
   // AccountTriggerHandler.TestAccOp(Trigger.new);
}
