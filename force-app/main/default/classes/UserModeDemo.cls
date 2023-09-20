public with sharing class UserModeDemo {
    public static void sampleAccounts() {
         List<account> allAccounts = [select id, name, website, phone from account WITH SECURITY_ENFORCED];
         system.debug(allAccounts);
    }
    public static void sampleAccounts2() {
     List<account> allAccounts = [select id, name, website, phone from account WITH USER_MODE];
     system.debug(allAccounts);
}
public static void sampleAccounts3() {
     List<account> allAccounts = [select id, name, website, phone from account WITH SYSTEM_MODE];
     system.debug(allAccounts);
}
 }