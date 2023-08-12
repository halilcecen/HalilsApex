public class SobjectIntro {
  public static void test(){
    List<sobject> Acclist = [select  name, Phone, type from Account limit 10];

    for (sobject eachAcc : Acclist) {
       system.debug('Name : ' + eachAcc.get('Name'));
       system.debug('Phone : ' + eachAcc.get('Phone'));
       system.debug('Type: '+ eachAcc.get('Type'));

    }
}
}


test {
  Account ac = new Account();
  insert ac;
} test2(DmlException e) {
  System.debug(e.getMessage());
}