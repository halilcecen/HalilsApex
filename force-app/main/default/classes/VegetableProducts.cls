public class VegetableProducts implements Products {
public void getProductName() {
System.debug('Producct name= Tomato');
}
public void getDiscount(){
integer VegetablePrice=50;
integer VegetableDiscount= VegetablePrice/10;
system.debug('Discount= '+ VegetableDiscount);
}
public void getPrice (){
Decimal VegetablePrice=50;
Decimal  VegetableDiscount=VegetablePrice/10;
system.debug('Price of Vegetable= ' +(VegetablePrice-VegetableDiscount));
}
}