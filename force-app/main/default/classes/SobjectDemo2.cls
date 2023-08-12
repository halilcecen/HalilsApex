public class SobjectDemo2 {
    public static void sObjectDml2() {
          list<sobject> listSO = new list<sobject>{
              new account(name = 'Lacrose', website = 'www.lacrose.com'), //0
              new account(name = 'Lactose', website = 'www.lactose.com'), //1
              new contact(firstname = 'titan', LastName = 'king', email = 'tital@king.com'), //2
              new Department__c(Name__c = 'Training')
          };
          system.debug('before: ' + listSO);
          insert listSO;
          system.debug('after: ' + listSO);
  
          //we are trying to assign generic sobject to account
          account a1 = (account)listSO[0];
          account a2 = (account)listSO[1];
          contact c1 = (contact)listSO[2];
          system.debug('a1.name  : ' + a1.Name + ' & website ' + a1.Website);
          system.debug('a2.name  : ' + a2.Name + ' & website ' + a2.Website);
          system.debug('c1.name  : ' + c1.firstname + ' & email ' + c1.email);
  
          Department__c d1 = (Department__c)listSO[3];
          system.debug('d1.name  : ' + d1.name__c);
         
          sObject s1 = new account();
          s1.put('Name', 'Williomson');



      }
  }