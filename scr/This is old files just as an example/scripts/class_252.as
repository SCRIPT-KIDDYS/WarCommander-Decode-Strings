package
{
   import package_11.class_28;
   import flash.external.ExternalInterface;
   import com.adverserealms.log.Logger;
   import com.cc.utils.js_utils.WCJSON;
   import com.cc.build.BldgFoundation;
   import package_20.class_158;
   import package_31.class_97;
   import package_121.class_560;
   import package_56.class_566;
   import package_22.class_69;
   import package_56.class_180;
   import package_31.class_103;
   import package_15.class_43;
   import package_32.SaveManager;
   
   public class class_252 extends Object
   {
      
      private static var var_1810:Boolean = false;
       
      public function class_252()
      {
         super();
      }
      
      public static function Show(param1:Object = null) : void
      {
         var _loc2_:* = 0;
         var _loc3_:String = null;
         if(class_28.method_30)
         {
            class_31.method_6770(false);
            if(param1 == null)
            {
               _loc2_ = class_105.method_23()?class_68.name_1.method_237:class_105.method_49().baseID;
               _loc3_ = class_105.method_23()?"base":"deposit";
               var param1:Object = {class_2.method_7(-1820303304):{
                  "baseid":_loc2_.toString(),
                  "basetype":_loc3_
               }};
            }
            if(class_31.method_1821())
            {
               var_1810 = true;
               param1.dgp = 1;
               class_31.method_781(class_2.method_7(-1820308458),param1,method_4412,true,0);
            }
            else if(!class_31.const_138)
            {
               ExternalInterface.call(class_2.method_7(-1820297451),param1);
            }
            else
            {
               Logger.debug(class_2.method_7(-1820309941) + WCJSON.encode(param1));
            }
         }
      }
      
      public static function method_4412(... rest) : void
      {
         var _loc2_:* = 0;
         var _loc3_:BldgFoundation = null;
         if(rest && rest.length > 0)
         {
            _loc2_ = int(rest[0]);
            if(_loc2_ == 1)
            {
               _loc3_ = BASE.method_29(class_158.const_13);
               if(class_105.method_23() && _loc3_ != null && _loc3_.level < 6)
               {
                  _loc3_.method_240(0,false);
                  class_97.method_151();
                  if(var_1810)
                  {
                     var_1810 = false;
                     class_560.method_453(_loc3_.level,14,0,true,0,0,0,class_566.const_85);
                     class_69.Set(class_69.const_1000,0,true);
                     class_180.method_7346(1);
                  }
                  else
                  {
                     BASE.method_84(class_2.method_7(-1820296592),1);
                     class_560.method_453(_loc3_.level,14,0,true,0,0,0,class_566.const_85);
                     class_97.Show(new class_103(class_43.getString(class_2.method_7(-1820301027)),class_43.getString(class_2.method_7(-1820299659),{"level":_loc3_.level}),true,class_43.getString(class_2.method_7(-1820295891)),class_252.Show));
                  }
                  class_327.var_2800 = false;
                  SaveManager.class_2093.Base.method_38(true);
               }
            }
            else
            {
               class_32.method_3301("0");
            }
            return;
         }
         Logger.error(class_2.method_7(-1820308037) + rest + "]");
         FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820302266) + rest + "]");
      }
   }
}
