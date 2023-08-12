// Second Part
DateCalculatorHW dateCalculator1 = new DateCalculatorHW();

Date startDate = Date.newInstance(2023, 1, 1);
Date endDate = Date.newInstance(2023, 5, 8);
DateCalculatorHW dateCalculator2 = new DateCalculatorHW(startDate, endDate);


System.debug('DateCalculatorDemo 1  Start Date= ' + dateCalculator1.getStartDate().format());
System.debug('DateCalculatorDemo 1 End Date= ' + dateCalculator1.getEndDate().format());
System.debug('DateCalculatorDemo 2 Start Date= ' + dateCalculator2.getStartDate().format());
System.debug('DateCalculatorDemo 2  End Date= ' + dateCalculator2.getEndDate().format());


dateCalculator1.daysBetweenDates();
dateCalculator2.daysBetweenDates();


Account a = [select id from account limit 1];
List<Opportunity> createNewOpps = new List<Opportunity>();

       for(integer i = 0; i < 400; i++) {
            Opportunity op = new Opportunity();
            op.Name = 'Opportunity 1';
            op.AccountId = a.Id;
            op.CloseDate = date.today();
            op.StageName = 'Qualification';
            createNewOpps.add(op);
        }
        if (!createNewOpps.isEmpty()) {
            insert createNewOpps;
        } 