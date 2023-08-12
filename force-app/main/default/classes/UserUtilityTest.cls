@isTest
public class UserUtilityTest {
    @isTest
    private static void testMethod1() {
        //prepare data


        //while writing test for Async Apex
            //then StartTest and StopTest is MANDATORY 
        Test.startTest();
        UserUtility.insertUser('idhc334', 'Halil@yoll.io','identityUserTest@halil.com', 'IdentityUser Demo1', 'Identity User', 'COO');
        Test.stopTest();

        //assert if user is created or not.
        user u = [select id, lastname from user where alias = 'idhc334'];
        assert.isNotNull(u);

    }
}