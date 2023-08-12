public class DatabaseAssig {
    public static void test() {
  List<account> newAccounts = new list<account>{
            new account(name = 'Steve', phone= '9765235741'), //innocent
            new account(name = 'Alex', phone= '9645387063'),
            new account(name = 'Ricky', phone= '9547920931'),
            new account(name = 'Jeff', phone= '9765235721'),
            new account(name = 'Mike', phone= '9765695741'),
        };
         List<Database.SaveResult> allRes = Database.insert(newAccounts, false);
           
        for (database.SaveResult eachResult : allRes) {
            if (eachResult.isSuccess()) {
                system.debug('Succesfully Saved- ID =>' + eachResult.getId());
            } else {
                system.debug('ERROR =>: ' + eachResult.getErrors());
    for (database.error eachError : eachResult.getErrors()) {
                    system.debug('Fields=> ' + eachError.getFields());
                    system.debug('Message=> ' + eachError.getMessage());
                    system.debug('Status Code=> ' + eachError.getStatusCode());
    
    
    }
}
        }
    }
}