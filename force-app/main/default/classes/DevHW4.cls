public class DevHW4 {
    Public static void hw() {
string message = 'LOVE';       
string text = 'I love Salesforce';
Boolean result = text.contains(message);
Boolean result2 = text.containsIgnoreCase(message);
system.debug(result);
system.debug(result2);
    }
}