package
{
   import com.cc.build.BldgFoundation;
   import com.cc.widget.class_638;
   import package_31.class_97;
   
   public class class_456 extends Object
   {
      
      public static var var_33:BldgFoundation;
      
      public static var var_522:class_638;
       
      public function class_456()
      {
         super();
      }
      
      public static function Show(param1:BldgFoundation) : void
      {
         if(var_522 != null || class_31.var_137 && class_31.var_137.isMoving || BASE.method_52())
         {
            return;
         }
         var_33 = param1;
         var_522 = new class_638(var_33,true);
         var_522.x = MAP._GROUND.x + var_33.x * MAP._GROUND.scaleX;
         var_522.y = MAP._GROUND.y + var_33.y * MAP._GROUND.scaleY;
         var_522.Setup();
         class_31.var_350.addChild(var_522);
      }
      
      public static function Hide(param1:BldgFoundation = null) : void
      {
         if(param1 != null && param1 != var_33 || var_522 == null)
         {
            return;
         }
         if(var_522)
         {
            if(var_522.parent)
            {
               var_522.parent.removeChild(var_522);
            }
            var_522 = null;
            if(class_97.Count == 0)
            {
               BASE.method_239();
            }
            var_33.method_810();
         }
      }
      
      public static function get method_76() : Boolean
      {
         return var_522 != null;
      }
   }
}
