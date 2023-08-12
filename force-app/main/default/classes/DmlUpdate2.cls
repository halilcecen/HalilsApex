public class DmlUpdate2 {
    public static void Test() {
        list<account> allAccounts = [Select Id, Name, Site from account where BillingStreet= NULL];
        
        List<account> UpdatedAccounts= new list<account>();
        
        for(account EachAcc : allAccounts){
           
            EachAcc.site='NEW UPDATED SITE by Halil';
            UpdatedAccounts.add(EachAcc);
        
        }
         update UpdatedAccounts;   
        }
        public static void dmlInsertMultipleRight() {
        List<account> listAcc = new list<account>();

        for (Integer i = 0; i < 155; i++) {
            account a = new account();
            a.Name = 'new acc ' + i;
            listAcc.add(a);
        }
        insert listAcc;
    }
        
        
            }
        