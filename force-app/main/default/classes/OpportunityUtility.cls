public class OpportunityUtility {
  id acId;
  String OppName;

  List<Account> acIds= [select id, name from Account where name= 'Contigo' limit 1];

  public static void ParametersOpp(Id accid, string name){
 acId = accid;
 OppName= name;
}
 
}