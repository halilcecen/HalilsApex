public class Assigment{ 
public static void Test() {
    Account acc = new account(name = 'Ronaldo');
    insert acc;
    delete [Select Id, Name from account where name= 'Ronaldo' ];
    list<Account> AccList = [select id from contact where firstname = 'Ronaldo' All Rows];
    undelete AccList;
}
}