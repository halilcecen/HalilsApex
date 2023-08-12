

public class ConstructorHW {
private Integer a;
private String str;
private Date d;

public ConstructorHW() {
// Default constructor
}

public ConstructorHW(Integer a) {
this.a = a;
}

public ConstructorHW(Integer a, String str) {
this.a = a;
this.str = str;
}

public ConstructorHW(Integer a, String str, Date d) {
this.a = a;
this.str = str;
this.d = d;
}

public Integer getA() {
return a;
}

public void setA(Integer a) {
this.a = a;
}

public String getStr() {
return str;
}

public void setStr(String str) {
this.str = str;
}

public Date getD() {
return d;
}

public void setD(Date d) {
this.d = d;
}
}
