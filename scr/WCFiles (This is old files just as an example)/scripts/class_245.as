package
{
   import package_31.class_97;
   import package_31.class_103;
   import com.adverserealms.log.Logger;
   import package_15.class_43;
   import com.cc.utils.class_44;
   import com.cc.units.Units;
   import package_15.class_291;
   
   public class class_245 extends Object
   {
      
      public static const const_272:int = 0;
      
      public static const const_180:int = 1;
      
      public static const LEVEL:int = 2;
      
      public static const BATTLE:int = 3;
      
      public static const const_2019:int = 4;
      
      public static const class_193:int = 5;
      
      public static const OPERATION:int = 6;
      
      public static const const_1271:int = 7;
      
      public static const TECH:int = 8;
      
      public static const const_2332:int = 9;
      
      public static const const_152:int = 10;
      
      public static const const_2323:int = 11;
      
      private static var var_2987:Object;
      
      private static var var_3458:Vector.<String> = new <String>[class_2.method_7(-1820303323),class_2.method_7(-1820295443),class_2.method_7(-1820297136),class_2.method_7(-1820296186),class_2.method_7(-1820298635)];
      
      private static const SHARED_CONFIG_DATA_NAME:String = "StreamPostData";
       
      public function class_245()
      {
         super();
      }
      
      public static function Popup(param1:int, param2:Object = null) : Boolean
      {
         var eventType:int = param1;
         var args:Object = param2;
         var info:Object = GetData(eventType,args);
         if(info)
         {
            if(info.stream_button && info.stream_button != "")
            {
               class_97.Show(new class_103(info.popup_title,info.popup_body,true,info.stream_button,function():void
               {
                  StreamPost(eventType,args);
               }));
            }
            else
            {
               class_97.Show(new class_103(info.popup_title,info.popup_body));
            }
            return true;
         }
         Logger.error(class_2.method_7(-1820302967));
         return false;
      }
      
      public static function StreamPost(param1:int, param2:Object = null) : void
      {
         var _loc3_:Object = GetData(param1,param2);
         method_1767(_loc3_);
      }
      
      public static function method_7143(param1:Object) : void
      {
         method_1767(param1);
      }
      
      private static function method_1767(param1:Object) : void
      {
         var _loc2_:String = null;
         if(param1)
         {
            _loc2_ = method_4283();
            Logger.debug(class_2.method_7(-1820298308) + param1.stream_title + " " + param1.stream_body + " " + _loc2_);
            class_31.method_215(class_2.method_7(-1820299187),[param1.stream_flag,param1.stream_title,param1.stream_body,_loc2_]);
         }
         else
         {
            Logger.error(class_2.method_7(-1820306772));
         }
      }
      
      public static function method_4283() : String
      {
         var _loc1_:int = Math.random() * var_3458.length;
         return var_3458[_loc1_];
      }
      
      public static function method_1463(param1:Object) : Object
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = {
               class_2.method_7(-1820300669):class_2.method_7(-1820300792),
               class_2.method_7(-1820300307):class_2.method_7(-1820306844),
               class_2.method_7(-1820295465):class_2.method_7(-1820301443)
            };
            param1.popup_title = class_43.getString(param1.popup_title,_loc2_);
            param1.popup_body = class_43.getString(param1.popup_body,_loc2_);
            param1.stream_button = class_43.getString(param1.stream_button,_loc2_);
            param1.stream_title = class_43.getString(param1.stream_title,_loc2_);
            param1.stream_body = class_43.getString(param1.stream_body,_loc2_);
         }
         return param1;
      }
      
      public static function GetData(param1:int, param2:Object = null) : Object
      {
         var _loc4_:String = null;
         var _loc3_:Object = null;
         if(!method_954)
         {
            class_44.assert(false,class_2.method_7(-1820296773));
            return null;
         }
         switch(param1)
         {
            case const_272:
               _loc3_ = method_147(param1,param2.uid,param2.lvl,param2.skin);
               if(_loc3_)
               {
                  _loc3_.stream_flag = _loc3_.stream_flag.replace(class_2.method_7(-1820301444),param2.uid);
                  _loc3_.stream_flag = _loc3_.stream_flag.replace(class_2.method_7(-1820300381),param2.lvl);
                  if(param2.name)
                  {
                     _loc3_.popup_body = _loc3_.popup_body.replace(class_2.method_7(-1820301443),param2.name);
                     _loc3_.stream_title = _loc3_.stream_title.replace(class_2.method_7(-1820301443),param2.name);
                     break;
                  }
                  _loc3_.popup_body = _loc3_.popup_body.replace(class_2.method_7(-1820301443),Units.GetData(param2.uid).name);
                  _loc3_.stream_title = _loc3_.stream_title.replace(class_2.method_7(-1820301443),Units.GetData(param2.uid).name);
                  break;
               }
               break;
            case const_180:
               _loc3_ = method_147(param1,param2.type,param2.lvl);
               if(_loc3_)
               {
                  _loc3_.stream_flag = _loc3_.stream_flag.replace(class_2.method_7(-1820301444),param2.type);
                  _loc3_.stream_flag = _loc3_.stream_flag.replace(class_2.method_7(-1820300381),param2.lvl);
                  break;
               }
               break;
            case LEVEL:
               _loc3_ = {};
               _loc3_.stream_title = class_43.getString(class_2.method_7(-1820297445),{class_2.method_7(-1820300669):class_2.method_7(-1820300792)});
               _loc3_.stream_body = class_43.getString(class_2.method_7(-1820301177),{class_2.method_7(-1820300669):class_2.method_7(-1820300792)});
               _loc3_.stream_flag = "level" + param2.lvl;
               break;
            case BATTLE:
               if(param2.ch == 1)
               {
                  _loc3_ = method_147(BATTLE,10);
                  break;
               }
               if(param2.dep == 1)
               {
                  _loc3_ = method_147(BATTLE,2 + class_105.method_49().var_299);
                  break;
               }
               if(param2.pl == 1)
               {
                  _loc3_ = method_147(BATTLE,6);
                  break;
               }
               if(param2.wm == 1)
               {
                  if(param2.at && param2.at == 1)
                  {
                     _loc3_ = method_147(BATTLE,2);
                     break;
                  }
                  if(param2[class_2.method_7(-1820301974)] == 1)
                  {
                     _loc3_ = method_147(BATTLE,9);
                     break;
                  }
                  _loc3_ = method_147(BATTLE,1);
                  break;
               }
               _loc3_ = method_147(BATTLE,0);
               _loc3_.stream_title = _loc3_.stream_title.replace(class_2.method_7(-1820306844),param2.name);
               break;
            case const_2019:
               _loc3_ = method_147(param1,param2.uid);
               if(_loc3_)
               {
                  _loc3_.stream_flag = _loc3_.stream_flag.replace(class_2.method_7(-1820301444),param2.uid);
                  break;
               }
               break;
            case class_193:
               _loc3_ = method_147(param1,param2.res);
               break;
            case OPERATION:
               _loc3_ = method_147(param1,param2.operation,param2.index);
               break;
            case const_1271:
               _loc3_ = method_147(param1,param2.type,param2.lvl);
               if(_loc3_)
               {
                  _loc3_.stream_flag = _loc3_.stream_flag.replace(class_2.method_7(-1820301444),param2.type);
                  _loc3_.stream_flag = _loc3_.stream_flag.replace(class_2.method_7(-1820300381),param2.lvl);
                  break;
               }
               break;
            case const_2332:
            case TECH:
               _loc3_ = method_147(param1,param2.type);
               if(_loc3_)
               {
                  _loc3_.stream_flag = _loc3_.stream_flag.replace(class_2.method_7(-1820301444),param2.type);
                  _loc3_.stream_flag = _loc3_.stream_flag.replace(class_2.method_7(-1820300381),1);
                  break;
               }
               break;
            case const_152:
               _loc3_ = method_4360(param1,param2.sku);
               break;
            case const_2323:
               _loc3_ = method_147(param1,param2.uid);
               if(_loc3_)
               {
                  _loc3_.stream_flag = _loc3_.stream_flag.replace(class_2.method_7(-1820301444),param2.uid);
                  break;
               }
               break;
         }
         if(_loc3_)
         {
            _loc4_ = class_68.name_1.method_285 + " " + class_68.name_1.method_889;
            if(_loc3_.stream_title && _loc3_.stream_title != "")
            {
               _loc3_.stream_title = _loc3_.stream_title.replace(class_2.method_7(-1820300792),_loc4_);
            }
            if(_loc3_.stream_body && _loc3_.stream_body != "")
            {
               _loc3_.stream_body = _loc3_.stream_body.replace(class_2.method_7(-1820300792),_loc4_);
            }
            if(_loc3_.popup_title && _loc3_.popup_title != "")
            {
               _loc3_.popup_title = _loc3_.popup_title.replace(class_2.method_7(-1820300792),_loc4_);
            }
         }
         return _loc3_;
      }
      
      private static function method_3622(param1:Object) : Boolean
      {
         return param1 != null && param1.hasOwnProperty("stream_body") && param1.hasOwnProperty("stream_title");
      }
      
      private static function method_4360(param1:int, param2:String, param3:int = -1, param4:int = 0) : Object
      {
         var _loc5_:Object = var_2987[param1][param2];
         _loc5_ = method_1702(_loc5_,param3,param4);
         _loc5_ = method_1463(_loc5_);
         return _loc5_;
      }
      
      public static function method_147(param1:int, param2:int, param3:int = -1, param4:int = 0) : Object
      {
         var _loc5_:Object = var_2987[param1][param2];
         _loc5_ = method_1702(_loc5_,param3,param4);
         _loc5_ = method_1463(_loc5_);
         return _loc5_;
      }
      
      private static function method_1702(param1:Object, param2:int, param3:int) : Object
      {
         if(param2 != -1 && param1 != null)
         {
            var param1:Object = param1[param2];
            if(param1 != null)
            {
               if(param3 == 0 && "1" in param1)
               {
                  var param3:* = 1;
               }
               if(param3 > 0 && param1[param3] != null)
               {
                  param1 = param1[param3];
               }
            }
         }
         if(!method_3622(param1))
         {
            return null;
         }
         return {
            "stream_body":param1.stream_body,
            class_2.method_7(-1820309882):param1.popup_title,
            "stream_flag":param1.stream_flag,
            "stream_title":param1.stream_title,
            class_2.method_7(-1820297265):param1.stream_button,
            class_2.method_7(-1820306752):param1.popup_body
         };
      }
      
      public static function Setup() : void
      {
      }
      
      public static function initSharedConfigLoadListener() : void
      {
         class_291.method_327(SHARED_CONFIG_DATA_NAME,handleSharedConfigCDNDataLoaded);
      }
      
      public static function handleSharedConfigCDNDataLoaded(param1:Object) : void
      {
         if(param1["name"] == SHARED_CONFIG_DATA_NAME)
         {
            var_2987 = param1["data"];
         }
      }
      
      public static function get method_954() : Boolean
      {
         return var_2987 != null;
      }
   }
}
