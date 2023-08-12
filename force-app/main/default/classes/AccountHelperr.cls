  public class AccountHelperr {

   
       @invocableMethod
           public static void accountWebsiteUpdate(List<id> accIds) {
              system.debug('invocable method called. AccIds are : ' + accIds);
              list<account>listAccountToUpdate= new list<account>();
              for(Id eachId : AccIds){
                account acc = new account();
                acc.id= eachId;
                acc.Website= 'www.google.com';
                listAccountToUpdate.add(acc);
              }
           update listAccountToUpdate;
            }

        }
