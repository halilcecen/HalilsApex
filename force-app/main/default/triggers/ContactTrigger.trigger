trigger ContactTrigger on Contact (before insert, before update, after insert, after update, after undelete) {
   // if (Trigger.isBefore && Trigger.isDelete) {
    //    system.debug('acc getting deleted');
        //call method for validation if Acc is NOT active then only allow deleting
        //AccountTriggerHandler.validateAccDelete(Trigger.Old);

        //call method to re-assign opportunities of account to 'Temporary Account'
      //  AccountTriggerHandler2.reassignRelatedOpps(Trigger.old, trigger.OldMap);

        //call method to validate if account has associated contact or opp. If so, then don't allow.
        //AccountTriggerHandler.validateAccDelete2(Trigger.old, Trigger.oldMap);
        //commnet out validateAccDelete2 because it will NOT allow to delete if account HAS contacts.
   // } 

//if (Trigger.isBefore && Trigger.isInsert) {
    //call validate contact method
    //ContactTriggerHandler.contactValidation1(Trigger.new);}

//if (Trigger.isUndelete) {
   // system.debug('undelete contact record.');
    //send email to USER who undeletes the record.
   // ContactTriggerHandler.sendEmailOnRestore(Trigger.New, Trigger.NewMap);}

//when contact is inserted/updated, if Title is blank, then update default title as 'Manager'
//before or after?
    //before
    //why? update (or populate in same record)
//insert or update? or both?
    //both.

//Can we do it in after?
    //yes. not efficient. but we can if we want to.
/*
 if (Trigger.isAfter) {
    //Trigger.new and Trigger.newMap is READONLY in after triggers.
         //because record is already saved in database by the time it reaches after trigger
    List<contact> updateCts = new list<contact>();
     for (Contact newContact : Trigger.new) {
        if(string.isblank(newContact.Title)){
            Contact c = new contact();
            c.id = newContact.Id;
             c.title = 'Manager';
           updateCts.add(c);
       }   }
    update updateCts;
 }



*/
if (Trigger.isAfter && Trigger.isInsert) {
    List<contact> allContacts = [select id, name, phone from contact where id in :trigger.new];

    ContactUpdateQueueable cq = new ContactUpdateQueueable(allContacts);
    system.enqueueJob(cq);
}
}