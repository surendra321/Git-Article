public class TestPoint{
     testMethod static public void testPoint(){
          Point p1=new Point(9,8);
          //p1.getValues();
          p1.setValues(2,3,4,5);
          decimal d = p1.distance();
          system.debug('dist b/w the two point is:'+d);
          decimal s = p1.slope();
          system.debug('slope b/w the two point is:'+s);
          p1.getValues();
          }
          }