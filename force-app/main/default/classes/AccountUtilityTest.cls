@istest
public class AccountUtilityTest {
    @istest
    public static void create10Acc1() {
        test.startTest();
        AccountUtility.create10Acc1();
        List<Account> Acclist1= [select id from Account];
        system.assertEquals(15, Acclist1.size());

        test.stopTest();
    }
    @istest
    public static void DeleteAllAcc1(){
        test.startTest();
        AccountUtility.DeleteAllAcc1();
        test.stopTest();
    }
    @istest
    public static void UpdateAllAcc1(){

        test.startTest();
        AccountUtility.UpdateAlLAcc1();
        test.stopTest();
    
    }
}
