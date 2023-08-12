 @isTest
public class DmlDemo2Test {
    @isTest
   private static void testDmlASsignment9pt2() {
        //prepare data
        account acc= new account ();
        acc.Name='ABC Corp';
        acc.Industry = 'Energy';
        acc.rating = 'Hot';
        insert acc;
        //after insertion, we will GET the ID.

        List<contact> createContacts = new list<contact>{
            new contact(FirstName = 'John', LastName = 'Mayor', phone='65432111', accountid = acc.Id),
            new contact(FirstName = 'Jane', LastName = 'Mayor', phone='65432111',accountid = acc.Id),
            new contact(FirstName = 'Manny', LastName = 'Mayor', phone='65432111',accountid = acc.Id),
            new contact(FirstName = 'Phil', LastName = 'Mayor',phone='65432111', accountid = acc.Id)
        };
        insert createContacts;

        Test.startTest();
        //call method
        DmlDemo2.dmlAssignment9pt2();

        //assertion
        list<contact> allContacts = [select id, name, LastReviewedDate__c from contact where accountid = :acc.id];
        assert.isNotNull(allContacts);
        for (Contact eachContact : allContacts) {
            assert.areEqual(date.newInstance(1990, 01, 01), eachContact.LastReviewedDate__c);
     
        }
   test.stopTest();
    }

}



