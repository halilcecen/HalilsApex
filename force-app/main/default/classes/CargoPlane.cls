public class CargoPlane extends Airplane {
    public override void takeOff(){
     system.debug('flying cargo plane');
    }
    public override void land(){
     system.debug('stopping cargo plane');
    }
    public override void prepare(){
     system.debug('loading cargo plane');
    }
 }