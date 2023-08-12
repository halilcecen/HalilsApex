public class assignment11M7 {
public static void test() {
    List<account> newAccounts = new list<account>{
       new account(name ='Steve', phone='9765235741'),
       new account(name='Alex', phone ='9645387063'),
       new account(name='Ricky', phone ='9547920931'),
       new account(name='Jeff', phone ='8636762637'),
       new account(name='Mike', phone ='97636484688')         
   };

   List<database.SaveResult> allResults = database.insert(newAccounts, false);
   for (database.saveresult eachResult : allResults) {
       if (eachResult.isSuccess()) {
           system.debug('successfully inserted.');
       } else {
           system.debug('error it is');
       }
   }
}

public static void ddmlUpsertEtc() {
    //insert and update
        //saveresult
    account acc = [select id, name from account where name = 'orange' limit 1];
    acc.Name = 'blackberry';

    //upsert
        //upsertresult
    Database.UpsertResult result = Database.upsert(acc, false);
    system.debug('upsert result' + result);

    //delete
        //deleteresult
    Database.DeleteResult delResult = Database.delete(acc, false);
    system.debug('del result: ' + delResult);

    Database.UndeleteResult undelResult = database.undelete(acc.id, false);
    system.debug('undelete result: ' + undelResult);

}








}