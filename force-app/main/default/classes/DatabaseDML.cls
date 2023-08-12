public  class DatabaseDML {
    public static void test() {
        List<account> newAccounts = new list<account>{
            new account(name = 'ac1'), //innocent
            new account(name = 'ac2'),
            new account()
        };
        //insert newAccounts; //how many accounts will be inserted?
        
        Database.insert(newAccounts, false);
    }
    public static void ddmlInsert1() {
        List<account> newAccounts = new list<account>{
            new account(name = 'apple'), //innocent
            new account(name = 'orange'),
            new account()
        };

        //false -> insert good ones, error bad ones
        //true -> insert ONLY if all are good. DO NOT INSERT any if any 1 is bad.
        List<Database.SaveResult> allResults = Database.insert(newAccounts, false);
            //for each record it returns the result.
        for (database.SaveResult eachResult : allResults) {
            if (eachResult.isSuccess()) {
                system.debug('record successfully saved. id is ' + eachResult.getId());
            } else {
                //not successful
                system.debug('errors: ' + eachResult.getErrors());
                //List<Database.Error> eachResErrors = eachResult.getErrors();
                for (database.error eachError : eachResult.getErrors()) {
                    system.debug('fields: ' + eachError.getFields());
                    system.debug('message: ' + eachError.getMessage());
                    system.debug('status code: ' + eachError.getStatusCode());
                }
            }
        }
    }
}