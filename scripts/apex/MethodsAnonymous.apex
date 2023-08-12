MethodsDemo md2 = new MethodsDemo();
md2.printTwoMessage('some', 'message to print');

string s = 'something';
string s2 = 'to print';
md2.printTwoMessage(s, s2);



MethodsDemo md3 = new MethodsDemo();
integer totalLength = md3.returnTotalLength('some string 1', 'some string again');
system.debug(totalLength);

string r = md3.returnNewMessage('some', 'message to print');
system.debug(r);