package
{
   import com.adverserealms.log.Logger;
   import package_20.class_158;
   import com.cc.build.BldgFoundation;
   import package_22.class_69;
   import package_31.class_97;
   import package_31.class_948;
   
   public class class_327 extends Object
   {
      
      public static var var_2864:Boolean = false;
      
      public static var var_3183:int;
      
      public static var var_2800:Boolean = false;
      
      private static var var_269:Function = null;
      
      private static const const_3494:int = 2;
       
      public function class_327()
      {
         super();
      }
      
      public static function method_5276(param1:Function = null) : void
      {
         var_269 = param1;
         if(var_2800)
         {
            class_31.method_781(class_2.method_7(-1820298904),{"method":class_2.method_7(-1820309685)},method_7511,false,class_31.const_1414,method_6796);
         }
         else
         {
            if(var_269 != null)
            {
               var_269();
            }
            var_269 = null;
         }
      }
      
      private static function method_7511(... rest) : void
      {
         if(rest && rest.length >= 1)
         {
            var_3183 = int(rest[0]);
            Show(var_269);
         }
         else
         {
            Logger.error(class_2.method_7(-1820298642) + rest + "]");
            FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820310889) + rest + "]");
            if(var_269 != null)
            {
               var_269();
            }
         }
         var_269 = null;
      }
      
      private static function method_6796() : void
      {
         Logger.error(class_2.method_7(-1820301260));
         FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820300814));
         if(var_269 != null)
         {
            var_269();
         }
      }
      
      public static function Show(param1:Function = null) : void
      {
         var _loc2_:BldgFoundation = BASE.method_29(class_158.const_13);
         if(!var_2864 && var_3183 && _loc2_ != null && _loc2_.level >= 2 && _loc2_.level < 6 && class_31.method_824())
         {
            var_2864 = true;
            if(var_3183 == const_3494)
            {
               class_69.Set(class_69.const_1000,int(new Date().getTime() / 60000),true);
            }
            class_97.Show(new class_948(param1));
         }
         else if(var_269 != null)
         {
            var_269();
         }
      }
   }
}
