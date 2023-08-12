public class dmlhw1 {
    public static void test() {

        List<Account> accountLi = [SELECT Name, Type, Phone FROM Account LIMIT 10];


        for (Account acc : accountLi) {
            System.debug('Name+> ' + acc.Name);
            System.debug('Account Type=> ' + acc.Type);
            System.debug('Phone=>' + acc.Phone);
            System.debug('---------------------');
        }
    }
}