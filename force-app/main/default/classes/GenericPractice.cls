public class GenericPractice {
    public static void practice(){
list<sobject> TestList = new list<sobject>{
    new account(name = 'Mauro', website = 'Mauro.com'),
    new account(name = 'Milos', website = 'Milos.com'),
    new contact(firstname = 'Dries', lastname = 'Mertens', email ='Dmertens@hotmail.com') 
};
system.debug('Before'+ TestList);
insert TestList;
system.debug('After'+ TestList);
account a1 = (account)TestList[0];
account a2 = (account)TestList[1];
contact c1 = (contact)TestList[2];
system.debug('a1.name  : ' + a1.Name + ' & website ' + a1.Website);
system.debug('a2.name  : ' + a2.Name + ' & website ' + a2.Website);
system.debug('c1.name  : ' + c1.firstname + ' & email ' + c1.email);

}
public static void practice2(){
list<sObject> Testing= new list<sObject>{
    new contact(firstname= 'Stacie' , LastName='Robbie')
};
insert Testing;
contact ccc =(contact)Testing[0];
system.debug('First Name= '+ccc.firstname + ' '+Last Name= +'ccc.lastname');
}

}