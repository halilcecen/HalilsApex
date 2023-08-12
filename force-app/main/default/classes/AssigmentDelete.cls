    public class AssigmentDelete{ 
        public static void Test() {
            Account acc = new account(name = 'Ronaldo');
            insert acc;
            delete [Select Id from account where name= 'Ronaldo' ];
            list<Account> AccList = [select id  from Account where name = 'Ronaldo' All Rows];
            undelete AccList;
       
    }


        }
