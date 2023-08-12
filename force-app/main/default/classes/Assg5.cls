public class Assg5 {
    public static void test() {
       // Account acc = [select id, name from Account where name = 'Alex' limit 1];
       // list<account> acc1 = [Select Id, Name, Site from account where ];
       Account acc = new Account( Name='Alex');
       insert acc;
      acc.AccountNumber='sss2f';
      upsert acc;
    Account acc2 = new Account( Name='Jeff');


delete [Select Id, Name, Site from account where naem= 'Jeff' ];



    }
}