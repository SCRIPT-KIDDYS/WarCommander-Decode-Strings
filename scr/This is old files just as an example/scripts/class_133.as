package
{
   import package_31.class_97;
   import package_31.class_253;
   import package_31.class_224;
   import package_31.class_124;
   import package_31.class_101;
   
   public class class_133 extends Object
   {
       
      public function class_133()
      {
         super();
      }
      
      public static function method_76() : Boolean
      {
         return class_97.method_76(class_253.const_429);
      }
      
      public static function Show(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:class_224 = null;
         if(method_76())
         {
            class_97.Message(class_124.const_429,{"s":param1});
         }
         else
         {
            _loc3_ = new class_224();
            _loc3_.method_310 = param1;
            class_97.Show(_loc3_,true,param2);
         }
      }
      
      public static function method_18(param1:String) : void
      {
         if(method_76())
         {
            class_97.Message(class_124.const_429,{"s":param1});
         }
      }
      
      public static function Hide() : void
      {
         var _loc1_:class_101 = class_97.method_756(class_253.const_429);
         if(_loc1_ != null)
         {
            _loc1_.Hide();
         }
      }
   }
}
