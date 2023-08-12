public class calcu2 {
    public static void show() {
        calcu2 calcu = new Calculator2();
        Calcu.accept(25, 3);
        integer sum = Calcu.getSummation();
        system.debug('summation is ' + sum);

        integer diff = Calcu.getDiffence();
        system.debug('difference is ' + diff);

        integer prod = Calcu.getProduct();
        system.debug('product is ' + prod);

        integer quo = Calcu.getQuotient();
        system.debug('quotient is ' + quo);
    }
}