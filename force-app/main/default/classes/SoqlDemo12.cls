public static void SoqlDemo12(){
        List<aggregateresult> listAg = [select Department__r.name__c dept, count(id), sum(salary__c) from employee__c group by Department__r.name__c];
        //we want to print each result one by one
        for(aggregateresult ag: listAg){
            system.debug('ag: ' + ag);
            system.debug('dept: ' + ag.get('dept'));
            system.debug('number of records: ' + ag.get('expr0'));//expression0
            system.debug('sum of salary: ' + ag.get('expr1'));//expression1
        }
    }