public class HW8CAR2 {
public static void show() {
    HW8CAR Car1 = new HW8CAR();
    Car1.accept('Subaru', 'BRZ',2015, 24500.00);
    String carBrand= car1.getCompany1();
    string carModel=car1.getModel1();
    integer carYear=car1.getMfgYear1();
    decimal carPrice=car1.price1();
    system.debug('Company= '+ carBrand);
    system.debug('Model= '+ carModel);
    system.debug('Year= '+ carYear);
    system.debug('Price= '+ carPrice);
    
    Car1.accept2('Mazda', 'MX-5',2016, 26000.00);
    String carBrand2= car1.getCompany2();
    string carModel2=car1.getModel2();
    integer carYear2=car1.getMfgYear2();
    decimal carPrice2=car1.price2();
    system.debug('Company= '+ carBrand2);
    system.debug('Model= '+ carModel2);
    system.debug('Year= '+ carYear2);
    system.debug('Price= '+ carPrice2);
    




}
}