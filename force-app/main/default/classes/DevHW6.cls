public class DevHW6 {
Public static void hwwww() {
String Original = 'Salesforce is #1 CRM Software in the world. Salesforce uses Apex as a Programming Language and I love Salesforce';
system.debug(original.remove('Salesforce'));
system.debug(original.removeStart('Salesforce'));
 system.debug(original.removeEnd('Salesforce'));
}
}