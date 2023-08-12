trigger HW5 on Account (before insert, after insert, before update, after update) {
 /*   List<Account> accountsToUpdate = new List<Account>();    
   
    if(Trigger.isBefore && Trigger.isInsert && Trigger.isUpdate){
   
 for( Account act: Trigger.new){
    if(act.BillingStreet != NULL && act.Match_Billing_Address__c == True ){
    
    act.ShippingStreet = act.BillingStreet;
    act.ShippingCity = act.BillingCity;
    act.ShippingState = act.BillingState;
    act.ShippingPostalCode = act.BillingPostalCode;
    act.ShippingCountry = act.BillingCountry;
    accountsToUpdate.add(act);
    }
    }
    }
IF(Trigger.isBefore&& Trigger.isUpdate){
    for(Account acc: Trigger.new){
    Account acOld = Trigger.oldMap.get(acc.Id);
if(acc.Match_Billing_Address__c == True){
       acc.ShippingStreet = acc.BillingStreet;
       acc.ShippingCity = acc.BillingCity;
       acc.ShippingPostalCode = acc.BillingPostalCode;
       acc.ShippingCountry = acc.BillingCountry;
    
}
}
}
}

    // for( Account acc : accountsToUpdate){
    // acc.ShippingStreet = acc.BillingStreet;
    // acc.ShippingCity = acc.BillingCity;
   //  acc.ShippingState = acc.BillingState;
   //  acc.ShippingPostalCode = acc.BillingPostalCode;
    // acc.ShippingCountry = acc.BillingCountry;
    
   
//}
   // list<account> listAcc = [select name, BillingStreet,BillingCity, BillingState, BillingPostalCode, BillingCountry, Match_Billing_Address__c from account];
   // for( Account acc: listAcc){
       
       //if(acc.BillingStreet != NULL && acc.Match_Billing_Address__c == True ){
        
       // acc.ShippingStreet = acc.BillingStreet;
       // acc.ShippingCity = acc.BillingCity;
        //acc.ShippingState = acc.BillingState;
       // acc.ShippingPostalCode = acc.BillingPostalCode;
        //acc.ShippingCountry = acc.BillingCountry;
        
   // }
  
       // }
        
        //}

//}

*/

       }
    