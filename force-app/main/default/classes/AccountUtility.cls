public  class AccountUtility {
    public static void create10Acc1() {
        List<Account>AccList1 = new list<Account>();
        for( integer i =0 ; i<15 ; i++ ){
            Account ac = new Account(Name= 'Test Account' + i);
            Acclist1.add(ac);

        }
        insert AccList1;
 }

    public static void DeleteAllAcc1(){
        List<Account>AccList1 =[select id from Account where Name ='Contigo'];
        
        delete AccList1;
 
    }
    public static void UpdateAlLAcc1(){
        List<Account> AccList1= [select id from Account];

        for(Account ac : AccList1){
            ac.Rating='Hot';
        
        }
    update AccList1;
    }

}