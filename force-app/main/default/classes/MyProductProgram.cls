public class MyProductProgram {
    public static void show() {
        MyProduct p1 = new MyProduct();
        p1.setProductName('Table');
        system.debug('name: ' + p1.getProductName());
        p1.setQuantity(100);
        system.debug('quantity: ' + p1.getQuantity());
        p1.setRate(25.75);
        system.debug('rate: ' + p1.getRate());
        system.debug('hidden cost: ' + p1.getHiddenCost());
        decimal p1Total = p1.getTotal();
        system.debug('total : ' + p1Total);
    }
}