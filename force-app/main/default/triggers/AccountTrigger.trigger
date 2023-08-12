
 
    /*
    if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        AccountTriggerHandler.accountValidation1(trigger.new);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
       AccountTriggerHandler.accountValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

    if (Trigger.isBefore && Trigger.isDelete) {
        system.debug('acc getting deleted');
        //call method for validation if Acc is NOT active then only allow deleting
        AccountTriggerHandler.validateAccDelete(Trigger.Old);
        //call method to re-assign opportunities of account to 'Temporary Account'
       // AccountTriggerHandler2.reassignRelatedOpps(Trigger.old, trigger.OldMap);
    }

    if (Trigger.isAfter) {
        if (Trigger.isInsert) {
             //call method to create contact
            AccountTriggerHandler.createRelatedContact(Trigger.new);
            //call method to create default opp
            AccountTriggerHandler.createRelatedOpportunity(Trigger.new);
        }
        if (Trigger.isUpdate) {
            AccountTriggerHandler.updateRelatedContactPhone(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
        if (Trigger.isDelete) {
            system.debug('after delete account Trigger called.');
            //call method to delete all related contacts.
            //AccountTriggerHandler.deleteRelatedContacts(Trigger.old, Trigger.oldMap);
        }
    }*/
   // if (Trigger.isBefore && Trigger.isDelete) {
     //  AccountTriggerHandler.AddTempAcc(Trigger.old , Trigger.oldMap);
//}

//if(Trigger.isAfter && Trigger.isDelete){
    //AccountTriggerHandler.collectOppCont(Trigger.old , Trigger.oldMap);
     //}
/*If(Trigger.isAfter && Trigger.isUndelete){
   
 
    List<Messaging.SingleEmailMessage> emailOb =new list<Messaging.SingleEmailMessage>();
    FOR(Account acc : Trigger.new){
        Messaging.SingleEmailMessage emailO =new Messaging.SingleEmailMessage();
        List<string> emailaddress = new list<string>();
        emailaddress.add(UserInfo.getUserEmail());
        emailO.setToAddresses(emailaddress);
        emailO.setSubject('The Account has been restored '+ acc.name);
        emailO.setPlainTextBody('Hey there, Your account record has been restored. For more info please contact with us. ');
    
        emailOb.add(emailo);
    }
    Messaging.sendEmail(emailOb);
    
    }
*/

/*
    List<messaging.SingleEmailMessage> ListEmails = new list<messaging.SingleEmailMessage>();
   // List<Contact> relatedC = new list<Contact>();
     List<Contact> AccCon = [SELECT Id, name, AccountId FROM Contact WHERE AccountId = :acc.Id AND email !=null];
    for (Account acc : Trigger.new) {
       
        relatedC.addAll(AccCon);
    }
    
    for(Contact C : AccCon){
        Messaging.SingleEmailMessage email1 = new Messaging.SingleEmailMessage();
       list<string> emailAddress= new list<string>();
       emailAddress.add(c.Email);
       
       email1.setToAddresses(emailAddress);
       email1.setSubject('Account related contact has been restored.' +c.Name);
       email1.setPlainTextBody('Congratulations! Your contact information has been restored!');
       ListEmails.add(email1);
    
    }
    Messaging.sendEmail(ListEmails);
     
    }*/
  //  trigger SendEmailToContactsOnAccountUndelete on Account (after undelete) {
  trigger AccountTrigger on Account (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    //    If(Trigger.isAfter && Trigger.isUndelete){   
      //      set<ID> AccID= [SELECT Id, name, Email FROM Account WHERE AccountId !=NULL];
        //    AccountTriggerHandler.sendEmailToContacts(AccID);
   // }//
    
}

