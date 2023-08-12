public virtual class HW16OOP {
    protected  Decimal length;
    protected  Decimal breadth;

public void setLength(Decimal len) {
length = len;
}

public Decimal getLength() {
return length;
}

public void setBreadth(Decimal b) {
breadth = b;
}

public Decimal getBreadth() {
return breadth;
}

public virtual Decimal getArea() {
System.debug('Method to Return Area');
return length * breadth;
}

public virtual Decimal getPerimeter() {
    System.debug('Method to Return Perimeter');
return 2 * (length + breadth);
}
}
