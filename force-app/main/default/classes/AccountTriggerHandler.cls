public class AccountTriggerHandler {

    public static void accountValidation1(List<account> accTriggerNew){
         //check if annual revenue is less than 5k then throw error
         for (Account accNew : accTriggerNew) {
             if (accNew.AnnualRevenue < 5000) {
                 //throw error on RECORD
                 //accNew.addError('Annual revene cannot be less than 5000. Come on user!');
                 
                 //throw error on the field
                 accNew.AnnualRevenue.addError('Annual revene cannot be less than 5000. Come on user! (via Handler)');
             }
 
             system.debug('accNew.Industry = ' +accNew.Industry );
             if (accNew.Industry == null) {
                 accNew.Industry.addError('Industry CANNOT be blank (via Handler)');
             }
             if (accNew.Rating == null) {
                 accNew.Rating.addError('Rating CANNOT be blank (via Handler)');
             }
         }
    }
 
 
    public static void accountValidation2(List<account> accTriggerNew, List<account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
 
         for (Account newAcc : accTriggerNew) {
             system.debug('new acc name: ' + newAcc.Name);
             //get old account name. Id of new and old record remains the same.
             Account oldAcc = accTriggerOldMap.get(newAcc.id);
             
             //to check if name is changed, just compare oldAcc name and New acc name
             if (oldAcc.Name != newAcc.Name) {
                 //for insert and update.
                     //addError can be used on trigger.new or newmap 
                     //addError CANNOT be used with Trigger.old or oldmap
                newAcc.addError('CANNOT change Account name. Okay?');
             }
         }
    }
 
    //when user creates a new account, create a related contact by default.
     //since it is AFTER INSERT, we don't need old and oldMap
    public static void createRelatedContact(List<account> accTriggerNew) {
         
         list<contact> createContacts = new list<contact>();
         for (account newAcc : accTriggerNew) {
             //create contat record
             Contact c = new contact(
                 FirstName = 'Mark', 
                 LastName = 'Khan', 
                 Email = 'ak@ak.com',
                 accountid = newAcc.id
             );
            createContacts.add(c);
         }
         try {
             insert createContacts;
         } catch (Exception Ex) {
             system.debug('Something went wrong buddy: ' + ex);
             for (account newAcc : accTriggerNew) {
                 newAcc.addError('Not able to create default contact. Please contact your admin, not developer.');
             }
         } 
    }
 
    public static void createRelatedOpportunity(List<account> accTriggerNew) {
         List<Opportunity> createNewOpps = new List<Opportunity>();
 
         for (account newAcc : accTriggerNew) {
             Opportunity op = new Opportunity();
             op.Name = 'Opportunity 1';
             op.AccountId = newAcc.Id;
             op.CloseDate = date.today();
             op.StageName = 'Prospecting';
             createNewOpps.add(op);
         }
         if (!createNewOpps.isEmpty()) {
             insert createNewOpps;
         }  
    }
 
    //update all related contact's phone number if account's phone is changed
    public static void updateRelatedContactPhone(List<account> accTriggerNew, List<account> accTriggerOld, 
     Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
 
         //1st create set<id> to store account whose phone field is changed.
         set<id> accIds = new set<id>();
         for (account newAcc : accTriggerNew) {
             Account oldAcc = accTriggerOldMap.get(newAcc.id);
             //check if phone field is changed
             if (newAcc.Phone != oldAcc.Phone) {
                 accIds.add(newAcc.Id);
             }
         }
         system.debug('acc ids where phone field is changed: ' + accIds);
         if (!accIds.isEmpty()) {
             //2nd get all contacts of all the accounts in set<id> of step 1
             List<contact> allContacts = [select id, lastname, AccountId from contact where AccountId in :accIds];
 
             //3rd update all contacts with respective accountids.
             for (Contact eachContact : allContacts) {
                 //get account phone field here.
                 account newAccount = accTriggerNewMap.get(eachContact.accountId);
                 eachContact.Phone = newAccount.Phone;
             }
             update allContacts;
         }
    }
 
    public static void validateAccDelete(List<account> accTriggerOld) {
         //when we are deleting record.
         //we can throw error on trigger.old or oldmap. [there is NO new.]
         for (account oldAcc : accTriggerOld) {
             if (oldAcc.Active__c == 'Yes') {
                 oldAcc.addError('Cannot Delete Active account. Go away');
             }
         }
    }
    public static void EmployeeDelete(List<Employee__c> EmpOldTrigger){
        //List<Employee__c> AllEmp =[Select id, name, Department__r.name from Employee__c where department__c !=NULL];
        for(Employee__c eachEmp: EmpOldTrigger){
          if (eachEmp.department__c!=NULL) {
                eachEmp.addError('The employee has deparment info, you can not delete the employee!');
                
            }
        }
        
        
        }
        
    
 public static void Homew10(List<Contact> ContTri){
    for(Contact Cont: ContTri ){
        if(Cont.Phone== NULL){
            Cont.addError('A contact record should have a phone number to be created!');
        }
    }


 }
 public static void StudentDelete(List<student__c> StuOldTri,Map<id,student__c> StuOldTriMap){
    List<student__c>AllStudents= [Select Id, name ,(Select id from Exam_Details__r) from Student__c where id in:StuOldTriMap.keySet()];
    for(student__c eachStu: AllStudents){
        Integer examNumber= eachStu.Exam_Details__r.size();
        if(examNumber> 0){
            student__c oldStu= StuOldTriMap.get(eachStu.id);
            oldStu.addError('Exam details are present, you dont have any permisson for delete!');
        }
    }

}
public static void DeleteAcc(List<Account> AccTrig, Map<id, Account> AccTrigMap){
List<Account> AllAcc= [Select id, name, (select id from Contacts), (select id from Opportunities) from Account where id in :AccTrigMap.keyset()];
for(Account Ac : AllAcc){
    Integer A = Ac.Contacts.size();
    Integer B= Ac.Opportunities.size();
    if(A+B > 0){ 
        Account AB= AccTrigMap.get(Ac.Id);
        AB.addError('You dont have any permisson to delete, Account is associated with Contact or opportunity');

    }
}

}


    //validate if account has related contact or opportunity
    public static void validateAccDelete2(List<account> accTriggerOld, Map<id, account> accTriggerOldMap) {
        list<account> allAccDetails = [select id, name, 
                                 (select id from contacts), 
                                 (select id from Opportunities) 
                                 from account where id in :accTriggerOldMap.keySet()];
         for (account eachAcc : allAccDetails) {
             //check if more than 0 contact or opportunity
             integer countContact = eachAcc.contacts.size();
             integer countOpp = eachAcc.Opportunities.size();
             if (countContact > 0 || countOpp > 0) {
                 //throw error
                 account oldAcc = accTriggerOldMap.get(eachAcc.Id);
                 oldAcc.addError('Cannot delete account. Contacts or Opportunities are present');
             }
         }
    }

public static void AddTempAcc(List<Account> AccTriOld , Map<id, Account> AccTriOldMap){

    Account tempAccount = [SELECT Id, name FROM Account WHERE Name = 'Temporary Account' LIMIT 1];
    Map<Id, List<Opportunity>> accountIdToOpportunitiesMap = new Map<Id, List<Opportunity>>();

    // Collect the related opportunities for all the deleted Accounts
    for (Account acc : AccTriOld) {
        List<Opportunity> relatedOpps = [SELECT Id, AccountId FROM Opportunity WHERE AccountId = :acc.Id];
        accountIdToOpportunitiesMap.put(acc.Id, relatedOpps);
    }

    // Update the AccountId of related opportunities to point to the "Temporary Account"
    List<Opportunity> opportunitiesToUpdate = new List<Opportunity>();
    for (List<Opportunity> opps : accountIdToOpportunitiesMap.values()) {
        for (Opportunity opp : opps) {
            opp.AccountId = tempAccount.Id;
            opportunitiesToUpdate.add(opp);
        }
    }

    update opportunitiesToUpdate;
}
public static void collectOppCont(List<Account> AccTriOld , Map<id, Account> AccTriOldMap){
    Set<Id> DeleteRelatedIdO= new set<id>();
   Set<Id> DeleteRelatedIdC = new Set<Id>();

   List<Contact> CollectCon = new List<Contact>();
   List<Opportunity> CollectOpp = new List<Opportunity>();
   List<SObject> CollectAll = new List<SObject>();
    for(Account acc :AccTriOld){
        DeleteRelatedIdC.add(Acc.Id);
    }
    for(Contact Con :[Select id,name, AccountId From Contact Where AccountId IN :DeleteRelatedIdC] ){
        CollectCon.add(Con);
    }
    for(Account Acc1: AccTriOld){
        DeleteRelatedIdO.add(Acc1.id);
  }
    for(Opportunity opp:[Select id, AccountId From Opportunity Where AccountId IN :DeleteRelatedIdO] ){
        CollectOpp.add(opp);
}
CollectAll.addAll(CollectOpp);
CollectAll.addAll(CollectCon);
if(CollectCon.size()>0) {
    delete CollectCon;
 } 
}

    public void sendEmailToContacts(Set<Id> accountIds) {
        List<Contact> contactsToSendEmail = [SELECT Id, Email
                                             FROM Contact
                                             WHERE AccountId IN :accountIds
                                             AND Email != null];

        if (!contactsToSendEmail.isEmpty()) {
            List<Messaging.SingleEmailMessage> emailMessages = new List<Messaging.SingleEmailMessage>();
            for (Contact contact : contactsToSendEmail) {
                Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
                email.setToAddresses(new List<String>{contact.Email});
                email.setSubject('Important: Account Undeleted');
                email.setPlainTextBody('Dear ' + contact.Name + ',\n\nWe are happy to inform you that the associated Account has been undeleted. If you have any questions or need further assistance, please feel free to contact us.\n\nThank you.\n\nBest regards,\n[Your Name]');
                emailMessages.add(email);
            }

            Messaging.SendEmailResult[] sendResults = Messaging.sendEmail(emailMessages);
            for (Messaging.SendEmailResult result : sendResults) {
                if (!result.isSuccess()) {
                    System.debug('Email sending failed with the following error: ' + result.getErrors()[0].getMessage());
                    // You can handle the error here as per your requirement.
                }
            }
        }
    }




    public static void sendEmailToContacts(Set<Id> accountIds) {
        List<Contact> contactsToSendEmail = [SELECT Id, Email FROM Contact WHERE AccountId IN :accountIds AND Email != null];

        if (!contactsToSendEmail.isEmpty()) {
            List<Messaging.SingleEmailMessage> emailMessages = new List<Messaging.SingleEmailMessage>();
            for (Contact contact : contactsToSendEmail) {
                Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
                email.setToAddresses(new List<String>{contact.Email});
                email.setSubject('Important: Account Undeleted');
                email.setPlainTextBody('Dear ' + contact.Name + ',\n\nWe are happy to inform you that the associated Account has been undeleted. If you have any questions or need further assistance, please feel free to contact us.\n\nThank you.\n\nBest regards,\n[Your Name]');
                emailMessages.add(email);
            }

            Messaging.SendEmailResult[] sendResults = Messaging.sendEmail(emailMessages);
            for (Messaging.SendEmailResult result : sendResults) {
                if (!result.isSuccess()) {
                    System.debug('Email sending failed with the following error: ' + result.getErrors()[0].getMessage());
                    // You can handle the error here as per your requirement.
                }
            }
        }
    

    Set<Id> undeletedAccountIds = new Set<Id>();
    for(Account undeletedAccount : Trigger.new) {
        // Check if the undeleted Account is associated with Contacts
        if (undeletedAccount.Contacts != null && !undeletedAccount.Contacts.isEmpty()) {
            undeletedAccountIds.add(undeletedAccount.Id);
        }
    }

    if (!undeletedAccountIds.isEmpty()) {
        sendEmailToContacts(undeletedAccountIds);
    }

//list<account> allAccDetails = [select id, name, (select id from Opportunities) from account where id in :AccTriOldMap.keySet()];
//for(Account eachAcc: allAccDetails){
//integer countOpp = eachAcc.Opportunities.size();
//if (countOpp > 0) {
  ///  List<Account> OppInAcc = [select id, name, (select id from Opportunities) from Account where name ='Temporary Account'];

    //for(Account eachF : OppInAcc){
    //eachAcc.Opportunities.add(eachAcc.Opportunities);
//}
///}
//}
//}
    }
}