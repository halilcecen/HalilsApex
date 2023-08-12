public class StaticDemo {
    final static integer fs;
    static integer s = 20;

    static{
        system.debug('static block called');
        fs = 100;
        s = 200;//this will override declaration
    }

    public static void show() {
        system.debug('fs => ' + fs);
        system.debug('s  -> ' + s);
    }
}