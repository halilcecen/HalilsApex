trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update) {
 
  if (Trigger.isAfter) {
        if(Trigger.isInsert){
        OpportunityTriggerHandler.updateNumberOfOppsInAcc(Trigger.new, Trigger.newMap);
     }
   }

   }