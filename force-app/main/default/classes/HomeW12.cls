public  class HomeW12 {
    String AccountNumber;
    string AccountName;
    decimal BalanceAmount;
 
    public void CreateAccount(string ANO,string ANAME,decimal BA) {
        AccountNumber=ANO;
        AccountName=ANAME;
        BalanceAmount=BA;
        system.debug('ACCOUNT INFORMATIONS');
        system.debug('Account Number= '+AccountNumber);
        system.debug('Account Name= '+AccountName);
        system.debug('Acount Balance= '+ BalanceAmount);
    }
    public void Deposit(decimal DepositA){
        BalanceAmount=depositA+BalanceAmount;
        system.debug('AMOUNT DEPOSITED SUCCESFULLY!');
        system.debug('Amount Deposited= '+DepositA);
        system.debug('Current Balance='+BalanceAmount);
    }
    public void Withdrawn(decimal withdrawA){
    if(withdrawA<BalanceAmount){
        BalanceAmount=BalanceAmount-withdrawA;
        system.debug('AMOUNT WITHDRAWN SUCCESFULLY!');
        system.debug('Amount Drawned= '+withdrawA);
        system.debug('Current Balance='+BalanceAmount);

    }Else{
system.debug('ERORR! YOU CAN NOT WITHDRAWN MORE THAN YOUR CURRENT BALANCE!');

    }
    }
    public void AccountDetails(){
       system.debug('Account Number= '+AccountNumber);
         system.debug('Account Name= '+AccountName);
       system.debug('Avaible Balance= '+ BalanceAmount);


    }


    }





