public class Dmltest {
    public static void testing() {
Contact  cont = new Contact (FirstName='Donald',LastName='Trump', MobilePhone='9823376' );
insert cont;
Contact cont1 = new Contact();
cont1.FirstName='George';
cont1.LastName='Bush';
insert cont1;
insert new Contact(FirstName='Barack', LastName='Obama');

list<Contact> ContactList= new List<Contact>();
Contact conta1 = new Contact(FirstName='Ronald',LastName='Reagan');
Contact conta2= new Contact (FirstName='John' ,LastName='Kennedy'); 
ContactList.add(conta1);
ContactList.add(conta2);

   insert ContactList;
    


}
}