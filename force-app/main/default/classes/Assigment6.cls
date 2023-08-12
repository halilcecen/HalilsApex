public class Assigment6 {
    public static void Test2(){
        account act = new account (name= 'Alexis');
        insert act;
        act.AccountNumber= 'sss2f';
        upsert act;
        account act2 = new account(name='Jeffrey');
    
      List<account> listAcc = new list<account>{act, act2};
            System.debug('before upsert dml: ' + listAcc);
            upsert listacc;
            system.debug('after upsert dml: ' + listAcc); 
        }
    
    
            }
    