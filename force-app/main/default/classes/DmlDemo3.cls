public class DmlDemo3 {
    public static void dmlUpsert1() {
        Contact c = new contact(FirstName = 'John', LastName = 'Cena');
        system.debug('before insert dml c: ' + c);
        
        insert c;
        system.debug('after insert dml c: ' + c);
        //once we insert, ID is generated.

        c.description = 'John Cenaaaa';

        Contact c2 = new contact(firstName = 'Sanjay', lastname = 'Patel');

        List<contact> listCon = new list<contact>{c, c2};

        system.debug('BEFORE UPSERT: listCon ==> ' + listCon);
        upsert listCon;
        system.debug('AFTER UPSERT: listCon ==> ' + listCon);
    }

    public static void dmlUpsert2() {
        list<contact> listCon = [select firstname, lastname, email from contact order by createddate desc limit 2];

        Contact c = new contact(FirstName = 'Don', LastName = 'Kixot');
        listCon.add(c);

        for (contact eachCon : listCon) {
            eachCon.email = eachCon.FirstName + '.' + eachCon.LastName + '@sfdc.com';
        }
        system.debug('BEFORE DML listCon: ' + listCon);
        upsert listCon; //update first 2 record from the list, and insert last record from the list
        system.debug('AFTER DML listCon: ' + listCon);

    }

    public static void dmlUpsert3() {
        

        Contact c = new contact(FirstName = 'Don', LastName = 'Lemon', email = 'Don.Lemon@sfdc.com', Description = 'Don last name is Lemon.');
        Contact c1 = new contact(FirstName = 'Don', LastName = 'Carolina', email = 'Don.Carolina@sfdc.com');

        List<contact> listCon = new list<contact>{c, c1};
        system.debug('BEFORE dml: ' + listCon);
        upsert listCon contact.fields.email;
        system.debug('AFTER dml: ' + listCon);
    }
}