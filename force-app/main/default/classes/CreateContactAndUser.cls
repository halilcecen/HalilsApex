public class CreateContactAndUser {
    public static void TestIU(String Ln) {
        List<Contact> NewCo = new list<Contact>{
               new Contact(FirstName = 'Halil',   LastName = Ln, Phone = '546486465',  Email = 'Cecen@Halil.com') 

           };
           insert NewCo;
           
           UserUtility.insertUser('idUse37', 'Halil@Cecen.com', 'halil@acc223132.com', 'IdentityUser Test1', 'Identity User', 'COO');
   }
}
