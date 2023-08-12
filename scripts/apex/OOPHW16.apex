
HW16OOP geom = new HW16OOP();

geom.setLength(5);
geom.setBreadth(10);

Decimal area = geom.getArea();
Decimal perimeter = geom.getPerimeter();

System.debug('Area: ' + area);
System.debug('Perimeter: ' + perimeter);


RectangleClass rect = new RectangleClass();

rect.setLength(5);
rect.setBreadth(10);


Decimal area = rect.getArea();
Decimal perimeter = rect.getPerimeter();

System.debug('Area: ' + area);
System.debug('Perimeter: ' + perimeter);


SquareClass square = new SquareClass();


square.setLength(5);


Decimal area = square.getArea();
Decimal perimeter = square.getPerimeter();

System.debug('Area: ' + area);
System.debug('Perimeter: ' + perimeter);
