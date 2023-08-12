public  class DmlUpdate {
    public static void Test() {
list<account> allAccounts = [Select Id, Name, Site from account];

List<account> UpdatedAccounts= new list<account>();

for(account EachAcc : allAccounts){
    Integer i=1;
    i++;
    EachAcc.site='NEW UPDATED SITE'+ i;
    UpdatedAccounts.add(EachAcc);

}
 update UpdatedAccounts;   
}


    }
