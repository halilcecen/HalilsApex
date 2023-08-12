public class CreateDefaultContact {
    @invocableMethod
    public static void CreateContact(List<id> accIds) {
        list<account> ListAccount =[select id, name, rating from account where id in: accIds];
        list<contact> CreateContacts = new list<contact>();
        for (account eachAcc : ListAccount){
            contact c = new contact();
            c.FirstName= eachAcc.Rating;
            c.LastName= eachAcc.Name;
            c.accountId=eachAcc.id;
            c.Phone='9196582565';
            CreateContacts.add(c);

        }
    insert CreateContacts;
    }

}