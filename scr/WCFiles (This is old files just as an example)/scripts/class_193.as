package
{
   import flash.display.MovieClip;
   import com.adverserealms.log.Logger;
   import package_22.ResourceManager;
   import package_31.class_97;
   import package_31.class_785;
   import package_32.SaveManager;
   
   public class class_193 extends Object
   {
      
      public static var var_2571:Array = [];
      
      public static var var_29:MovieClip;
       
      public function class_193()
      {
         super();
      }
      
      public static function Process(param1:Array) : void
      {
         var _loc2_:Array = null;
         var _loc3_:* = NaN;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         for each(_loc2_ in param1)
         {
            Logger.debug(class_2.method_7(-1820300213));
            if(Math.random() * class_31.const_8.Get() > 75)
            {
               _loc3_ = 0.07 + Math.random() * 0.05;
            }
            else
            {
               _loc3_ = 0.02 + Math.random() * 0.02;
            }
            _loc4_ = 1 + Math.random() * 2;
            _loc5_ = ResourceManager.method_22.method_214(_loc4_) * _loc3_;
            class_97.class_2206(new class_785(_loc4_,_loc2_[1],_loc2_[3],_loc5_));
            method_261(_loc2_[0],_loc4_,_loc5_);
         }
      }
      
      private static function method_261(param1:String, param2:int, param3:int) : void
      {
         var_2571.push(param1);
         BASE.method_261(param2,param3);
         SaveManager.class_2093.Base.method_38();
      }
   }
}
