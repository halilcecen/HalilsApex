trigger Homework9 on Opportunity (before insert, after insert, before update, after update) {
   if (Trigger.isAfter) {
      if(Trigger.isUpdate){
           //call a method to update Number of Opp on account.
           Homework9Handler.updateNoOppinAc(Trigger.New, Trigger.NewMap, Trigger.Old);
    
        }

   }
}