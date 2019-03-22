package
{
   import com.cc.utils.SecNum;
   import com.cc.build.BldgFoundation;
   import com.cc.utils.js_utils.WCJSON;
   import package_22.ResourceManager;
   import package_15.class_43;
   import com.cc.build.C_Buildings;
   import package_20.class_158;
   import package_31.class_97;
   import package_32.SaveManager;
   import package_11.class_28;
   import com.cc.ui.UI;
   import package_31.class_253;
   import package_31.class_251;
   import com.adverserealms.log.Logger;
   import package_31.class_124;
   import com.cc.build.class_255;
   import com.cc.utils.class_9;
   import package_4.class_216;
   import com.cc.units.Units;
   import com.cc.units.UnitData;
   import com.cc.units.UnitLevelData;
   import com.cc.tests.class_13;
   import com.cc.build.class_130;
   import package_31.class_192;
   import package_31.class_254;
   import flash.events.MouseEvent;
   
   public class class_32 extends Object
   {
      
      public static const const_245:SecNum = new SecNum(300);
      
      public static const const_4467:int = 10;
      
      public static const const_194:Number = 1.08;
      
      public static const const_813:int = 0;
      
      public static const const_1324:int = 1;
      
      public static const const_1600:int = 2;
      
      public static const const_2466:Number = 1.0E-5;
      
      public static const const_4042:Number = 1.0E-5;
      
      public static const const_4443:Number = 8.0E-4;
      
      public static const const_297:int = 1800;
      
      public static var var_185:Object;
      
      public static var var_1062:Object;
      
      private static var var_2160:Array;
      
      public static var var_197:Object;
      
      public static var _busy:Boolean;
      
      public static var var_1849:Function;
      
      public static var var_569:BldgFoundation;
      
      public static var var_4217:int = 1;
      
      public static var var_4457:int = 2;
      
      public static var var_3921:int = 3;
       
      public function class_32()
      {
         super();
      }
      
      public static function Data(param1:Object, param2:Object, param3:Object = null) : void
      {
         var_2160 = [[StoreItem.const_108 + class_2.method_7(-1820303287),StoreItem.const_108 + class_2.method_7(-1820303288),StoreItem.const_108 + class_2.method_7(-1820303284)],[StoreItem.const_108 + class_2.method_7(-1820303178),StoreItem.const_108 + class_2.method_7(-1820303253),StoreItem.const_108 + class_2.method_7(-1820303254)],[StoreItem.const_509,StoreItem.const_367]];
         var_185 = {};
         var_197 = {};
         var_1062 = {};
         if(param1 == null || param2 == null)
         {
            return;
         }
         var_185 = param1;
         method_4363();
         var_197 = param2;
         if(param3 != null)
         {
            method_3541(param3);
         }
         method_1911();
         method_1074();
      }
      
      public static function method_4363() : void
      {
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         for(_loc1_ in var_185)
         {
            if(var_185[_loc1_])
            {
               _loc2_ = var_185[_loc1_].c as Array;
               if(_loc2_)
               {
                  var_185[_loc1_].c = [];
                  _loc4_ = 0;
                  while(_loc4_ < _loc2_.length)
                  {
                     var_185[_loc1_].c.push(new SecNum(_loc2_[_loc4_]));
                     _loc4_++;
                  }
               }
               _loc3_ = var_185[_loc1_].fbc_cost as Array;
               if(_loc3_)
               {
                  var_185[_loc1_].fbc_cost = [];
                  _loc4_ = 0;
                  while(_loc4_ < _loc3_.length)
                  {
                     var_185[_loc1_].fbc_cost.push(new SecNum(_loc3_[_loc4_]));
                     _loc4_++;
                  }
                  continue;
               }
               continue;
            }
         }
      }
      
      public static function method_5075(param1:int) : Array
      {
         return var_2160[param1 - 1];
      }
      
      private static function method_3541(param1:Object) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            var_1062[_loc2_] = new SecNum(param1[_loc2_]);
         }
      }
      
      public static function method_6561() : String
      {
         var _loc2_:String = null;
         var _loc1_:Object = {};
         for(_loc2_ in var_1062)
         {
            _loc1_[_loc2_] = var_1062[_loc2_].Get();
         }
         return WCJSON.encode(_loc1_);
      }
      
      public static function method_1911() : void
      {
         var _loc8_:Object = null;
         var _loc9_:* = 0;
         while(true)
         {
            _loc9_ = ResourceManager.method_22.method_214(1) * 0.1;
            _loc8_ = var_185[StoreItem.const_108 + 1 + "1"];
            _loc8_.t = class_43.getString(class_2.method_7(-1820309792),{class_2.method_7(-1820309336):class_31.method_330(1)});
            if(ResourceManager.method_22.method_191(1) + ResourceManager.method_22.method_214(1) * 0.1 < ResourceManager.method_22.method_214(1))
            {
               _loc8_.c = [new SecNum(method_308(_loc9_))];
               _loc8_.d = class_43.getString(class_2.method_7(-1820298955),{
                  "amount":class_31.method_35(_loc9_),
                  class_2.method_7(-1820309336):class_31.method_330(1)
               });
               _loc8_.quantity = _loc9_;
            }
            else
            {
               _loc8_.d = class_43.getString(class_2.method_7(-1820303097),{class_2.method_7(-1820309336):class_31.method_330(1)});
               _loc8_.c = [new SecNum(0)];
               _loc8_.quantity = 0;
            }
            _loc9_ = ResourceManager.method_22.method_214(1) * 0.5;
            _loc8_ = var_185[StoreItem.const_108 + 1 + "2"];
            _loc8_.t = class_43.getString(class_2.method_7(-1820296549),{class_2.method_7(-1820309336):class_31.method_330(1)});
            if(ResourceManager.method_22.method_191(1) + ResourceManager.method_22.method_214(1) * 0.5 < ResourceManager.method_22.method_214(1))
            {
               _loc8_.c = [new SecNum(method_308(_loc9_))];
               _loc8_.d = class_43.getString(class_2.method_7(-1820298955),{
                  "amount":class_31.method_35(_loc9_),
                  class_2.method_7(-1820309336):class_31.method_330(1)
               });
               _loc8_.quantity = _loc9_;
            }
            else
            {
               _loc8_.d = class_43.getString(class_2.method_7(-1820300508),{class_2.method_7(-1820309336):class_31.method_330(1)});
               _loc8_.c = [new SecNum(0)];
               _loc8_.quantity = 0;
            }
            _loc8_ = var_185[StoreItem.const_108 + 1 + "3"];
            _loc8_.t = class_43.getString(class_2.method_7(-1820308696),{class_2.method_7(-1820309336):class_31.method_330(1)});
            if(ResourceManager.method_22.method_214(1) > ResourceManager.method_22.method_191(1))
            {
               _loc9_ = ResourceManager.method_22.method_214(1) - ResourceManager.method_22.method_191(1);
               _loc8_.c = [new SecNum(method_308(_loc9_))];
               _loc8_.d = class_43.getString(class_2.method_7(-1820311046),{
                  class_2.method_7(-1820309336):class_31.method_330(1),
                  "limit":class_31.method_35(ResourceManager.method_22.method_214(1))
               });
               _loc8_.quantity = _loc9_;
            }
            else
            {
               _loc8_.d = class_43.getString(class_2.method_7(-1820310296),{class_2.method_7(-1820309336):class_31.method_330(1)});
               _loc8_.c = [new SecNum(0)];
               _loc8_.quantity = 0;
            }
            _loc1_++;
         }
      }
      
      public static function method_8299(param1:String) : void
      {
         var _loc4_:* = 0;
         var _loc6_:* = 0;
         var _loc2_:* = false;
         var _loc3_:int = var_2160.length;
         while(0 < _loc3_)
         {
            _loc4_ = var_2160[0].length;
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               if(var_2160[0][_loc6_].substr(0,3) == param1)
               {
                  _loc2_ = true;
                  break;
               }
               _loc6_++;
            }
            if(_loc2_)
            {
               break;
            }
            _loc5_++;
         }
         if(_loc2_)
         {
            if(var_1062[param1])
            {
               var_1062[param1].Add(1);
            }
            else
            {
               var_1062[param1] = new SecNum(1);
            }
            class_97.method_18();
            SaveManager.class_2093.Base.method_38();
         }
      }
      
      public static function method_8190(param1:String) : int
      {
         if(param1.substr(0,2) == class_2.method_7(-1820301690))
         {
            var param1:String = param1.substr(0,3);
         }
         if(var_1062[param1])
         {
            return var_1062[param1].Get();
         }
         return 0;
      }
      
      public static function Show(param1:int) : void
      {
         if(class_105.method_23() && class_28.method_30 && !UI.method_5185())
         {
            if(!class_97.method_76(class_253.class_32))
            {
               if(class_31.var_270)
               {
                  class_31.var_270.method_306();
               }
               C_Buildings.Hide();
               class_97.Show(new class_251(param1));
            }
         }
      }
      
      public static function method_2725(param1:int) : int
      {
         if(param1 == 0)
         {
            return class_31.const_3834;
         }
         return class_31.const_900;
      }
      
      public static function method_84(param1:StoreItem, param2:Function = null) : void
      {
         var _loc4_:String = null;
         if(param1 == null)
         {
            Logger.error(class_2.method_7(-1820300302));
            return;
         }
         if(class_31.method_829)
         {
            if(BASE.method_1226() || !SaveManager.class_2093.Base.method_430() || _busy)
            {
               POPUPS.method_78(class_43.getString(class_2.method_7(-1820309017)),class_43.getString(class_2.method_7(-1820309445)));
               return;
            }
         }
         if(class_105.method_768)
         {
            _loc4_ = class_105.method_81()?class_43.getString(class_2.method_7(-1820302539)):class_43.getString(class_2.method_7(-1820302238));
            POPUPS.method_78(class_43.getString(class_2.method_7(-1820309017)),_loc4_);
            return;
         }
         var _loc3_:* = param1.var_61.Get() == 0;
         if(_loc3_)
         {
            param1.method_1742(false);
            if(param2 != null)
            {
               param2();
            }
         }
         else if(BASE.var_217.Get() >= param1.var_61.Get())
         {
            method_1549(param1,param2);
         }
         else
         {
            method_1230(param1,param2);
         }
      }
      
      public static function method_1230(param1:StoreItem, param2:Function = null) : void
      {
         class_133.Show(class_43.getString(class_2.method_7(-1820308753)));
         _busy = true;
         var_1849 = param2;
         class_31.method_454();
         class_252.Show(param1 != null?param1.method_1287():null);
         UPDATES.method_6265();
      }
      
      private static function method_1549(param1:StoreItem, param2:Function) : void
      {
         var _loc3_:* = 0;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:* = 0;
         var _loc7_:Object = null;
         if(param1 != null && param1.method_5902 && BASE.var_217.Get() >= param1.var_61.Get())
         {
            _loc3_ = 1;
            _loc4_ = var_185[param1.storeCode];
            if(_loc4_ != null)
            {
               _loc5_ = _loc4_.fbc_cost as Array;
               if(_loc5_ != null && _loc5_.length > 0)
               {
                  _loc6_ = 0;
                  if(var_197 != null)
                  {
                     _loc7_ = var_197[param1.storeCode];
                     if(_loc7_ != null && "q" in _loc7_ && _loc7_.q is int && _loc7_.q > 0 && _loc7_.q < _loc5_.length)
                     {
                        _loc6_ = _loc7_.q;
                     }
                  }
                  if(_loc5_[_loc6_] is SecNum)
                  {
                     _loc3_ = _loc5_[_loc6_].Get();
                  }
               }
               if(_loc3_ <= 0)
               {
                  _loc3_ = 1;
               }
               if(param1.method_5387)
               {
                  BASE.method_84(param1.storeCode,param1.var_61.Get() / _loc3_,param1.method_3592());
               }
               param1.method_1742(false);
               if(param2 != null)
               {
                  param2();
               }
            }
            else
            {
               FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820310330) + param1.storeCode + ".");
               return;
            }
         }
      }
      
      public static function method_2895(param1:StoreItem) : void
      {
         if(_busy || BASE.method_52())
         {
            class_133.Hide();
            _busy = false;
            UPDATES.method_3294();
            method_1549(param1,var_1849);
            var_1849 = null;
         }
      }
      
      public static function method_3301(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc2_:* = false;
         if(param1 == "0")
         {
            _loc2_ = true;
         }
         else
         {
            _loc3_ = WCJSON.decode(param1);
            if(_loc3_.status && _loc3_.status == class_2.method_7(-1820296495))
            {
               _loc2_ = true;
            }
         }
         if(_loc2_)
         {
            class_133.Hide();
            _busy = false;
            var_1849 = null;
            UPDATES.method_3294();
         }
      }
      
      public static function method_2628() : void
      {
         ResourceManager.class_2093.method_260();
         UI.Tick();
         method_1074();
         class_97.Message(class_124.const_1424);
      }
      
      public static function method_1074() : void
      {
         if(class_105.method_23())
         {
            method_2115(var_197);
         }
         class_31.var_5268 = 1;
         class_31.var_1640 = 1;
         if(class_105.method_23() && var_197[StoreItem.const_509])
         {
            class_31.var_1640 = class_31.var_1640 + 0.1 * var_197[StoreItem.const_509].q;
         }
         class_31.var_1640 = int(class_31.var_1640 * class_31.const_8.Get()) / class_31.const_8.Get();
         class_97.method_18();
      }
      
      public static function method_2115(param1:Object) : void
      {
         var _loc4_:* = 0;
         var _loc2_:int = BASE.const_1281;
         var _loc3_:int = BASE.const_1468;
         if(param1[StoreItem.const_367])
         {
            _loc4_ = 0;
            while(_loc4_ < param1[StoreItem.const_367].q)
            {
               _loc2_ = _loc2_ * const_194;
               _loc3_ = _loc3_ * const_194;
               _loc4_++;
            }
            _loc2_ = Math.ceil(_loc2_ / 20) * 20;
            _loc3_ = Math.ceil(_loc3_ / 20) * 20;
         }
         if(BASE.var_215 != _loc2_ || BASE.var_222 != _loc3_)
         {
            BASE.var_215 = _loc2_;
            BASE.var_222 = _loc3_;
            MAP.method_1932();
         }
      }
      
      public static function updateCredits(param1:String) : void
      {
         var _loc2_:Object = WCJSON.decode(param1);
         if(_loc2_.error == 0)
         {
            if(class_68.method_2166(param1))
            {
               BASE.var_217.Set(int(_loc2_.credits));
               class_255.method_1100(true);
            }
            else
            {
               FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820301970) + param1);
            }
         }
         else
         {
            class_31.method_74(class_9.const_3052,class_2.method_7(-1820302277) + _loc2_.error);
         }
      }
      
      private static function method_3793(param1:int, param2:Boolean = false) : Number
      {
         var _loc3_:Number = Math.pow(param1 / 2,0.30375);
         if(param2)
         {
            return _loc3_ / 10;
         }
         return Math.ceil(_loc3_) / 10;
      }
      
      public static function method_308(param1:int, param2:Boolean = false) : Number
      {
         if(!class_28.method_30)
         {
            return 0;
         }
         var _loc3_:Number = method_3793(param1,param2);
         if(_loc3_ < 1)
         {
            _loc3_ = 1;
         }
         return param2?_loc3_:int(_loc3_);
      }
      
      private static function method_4095(param1:int, param2:Number, param3:Boolean = false) : Number
      {
         if(param1 <= 0)
         {
            return 0;
         }
         if(!class_28.method_30)
         {
            return 0;
         }
         var _loc4_:Number = param1 * param2;
         if(_loc4_ < 1)
         {
            _loc4_ = 1;
         }
         return param3?_loc4_:int(_loc4_);
      }
      
      public static function method_153(param1:int, param2:Number = 1800, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:* = NaN;
         if(param3)
         {
            class_31.method_74(class_9.const_2245,class_2.method_7(-1820295514));
            return 0;
         }
         if(param1 == 0)
         {
            return 0;
         }
         if(param1 <= const_245.Get() && !param4)
         {
            return 0;
         }
         if(!class_28.method_30)
         {
            return 0;
         }
         var _loc7_:Number = 1;
         if(param2 == 0)
         {
            _loc7_ = Math.pow(param1 + 400000,0.47) - 429.32;
            if(!param6)
            {
               _loc7_ = Math.ceil(_loc7_);
            }
         }
         else
         {
            _loc8_ = param2 / 1000;
            _loc7_ = _loc8_ * param1 / 3600;
            if(!param6)
            {
               _loc7_ = Math.ceil(_loc7_);
            }
         }
         if(_loc7_ < 1)
         {
            if(param1 > const_245.Get())
            {
               _loc7_ = 1;
            }
            else
            {
               _loc7_ = 0;
            }
         }
         return param6?_loc7_:int(_loc7_);
      }
      
      public static function method_4431(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : Number
      {
         if(param1 <= 0)
         {
            return 0;
         }
         if(param1 <= const_245.Get())
         {
            return 0;
         }
         var _loc5_:Number = Math.min(param1 / param2,1) * param3;
         if(_loc5_ < 1)
         {
            if(param1 > const_245.Get())
            {
               _loc5_ = 1;
            }
            else
            {
               _loc5_ = 0;
            }
         }
         return param4?_loc5_:int(_loc5_);
      }
      
      public static function method_193(param1:int, param2:int, param3:int, param4:Number = 1800, param5:Boolean = false, param6:Boolean = false, param7:int = 0, param8:Boolean = false, param9:Boolean = false) : Number
      {
         var _loc10_:* = NaN;
         switch(param7)
         {
            case const_813:
               _loc10_ = const_2466;
               break;
            case const_1324:
               _loc10_ = const_4042;
               break;
            case const_1600:
               _loc10_ = const_4443;
               break;
            default:
               _loc10_ = const_2466;
         }
         var _loc11_:Number = method_308(param1,param9) + method_4095(param2,_loc10_,param9) + method_153(param3,param4,param5,param6,param8,param9);
         return param9?_loc11_:Math.ceil(_loc11_);
      }
      
      public static function method_1808(param1:class_216) : int
      {
         return method_193(param1.metal + param1.oil,param1.thorium,param1.time);
      }
      
      public static function method_7569(param1:int, param2:int, param3:uint) : int
      {
         var _loc4_:UnitData = Units.GetData(param1);
         if(_loc4_ == null || !_loc4_.usesXpToLevelUp || param2 > _loc4_.maxLevel)
         {
            return 0;
         }
         var _loc5_:UnitLevelData = Units.GetLevelData(param1,param2);
         if(_loc5_ == null || _loc5_.xpLevelThreshold <= 0)
         {
            return 0;
         }
         if(param3 >= _loc5_.xpLevelThreshold)
         {
            return 0;
         }
         var _loc6_:Number = 1 - param3 / _loc5_.xpLevelThreshold;
         return Math.ceil(_loc5_.xpLevelGoldCost * _loc6_);
      }
      
      public static function method_351(param1:BldgFoundation) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:String = null;
         var_569 = param1;
         var _loc2_:SecNum = new SecNum(0);
         if(param1._repairing)
         {
            _loc5_ = param1.method_590();
            _loc2_.Set(class_32.method_153(_loc5_));
            _loc3_ = class_43.getString(class_2.method_7(-1820308912));
            _loc4_ = "repairing";
         }
         else if(param1.method_286())
         {
            if(class_13.FastBuildTimes())
            {
               return;
            }
            _loc5_ = param1.method_143();
            _loc2_.Set(class_32.method_153(_loc5_));
            _loc3_ = class_43.getString(class_2.method_7(-1820301528));
            _loc4_ = class_2.method_7(-1820302782);
         }
         else if(param1.isUpgrading())
         {
            if(class_13.FastBuildTimes())
            {
               return;
            }
            _loc5_ = param1.method_143();
            _loc6_ = param1.method_1732(param1.level + 1);
            _loc2_.Set(class_32.method_153(_loc5_,_loc6_,false,false,true));
            _loc3_ = class_43.getString(class_2.method_7(-1820296682));
            _loc4_ = class_2.method_7(-1820309376);
         }
         else if(param1 is class_130 && class_130(param1).isEquipping())
         {
            _loc5_ = param1.method_143();
            _loc2_.Set(class_32.method_153(_loc5_));
            _loc3_ = class_43.getString(class_2.method_7(-1820299298));
            _loc4_ = class_2.method_7(-1820311380);
         }
         else if(param1.isChanging)
         {
            _loc5_ = param1.method_143();
            _loc2_.Set(class_32.method_153(_loc5_));
            _loc3_ = class_43.getString(class_2.method_7(-1820309224));
            _loc4_ = class_2.method_7(-1820311230);
         }
         if(_loc2_.Get() == 0)
         {
            if(!class_28.method_30)
            {
               method_1682();
            }
            else
            {
               class_97.Show(new class_192(class_43.getString(class_2.method_7(-1820311183)),class_43.getString(class_2.method_7(-1820300556)),true,class_43.getString(class_2.method_7(-1820311183)),method_1682));
            }
         }
         else
         {
            _loc7_ = "";
            if(param1.type == class_158.const_300)
            {
               _loc7_ = class_43.getString(class_2.method_7(-1820306747),{"time":class_31.method_39(_loc5_,class_31.const_136,false)});
            }
            else if(param1.name_8 == C_Buildings.CLASS_TOWER && param1.level > 0)
            {
               _loc7_ = class_43.getString(class_2.method_7(-1820302217),{"time":class_31.method_39(_loc5_,class_31.const_136,false)});
            }
            else if(param1.type == class_158.const_256 && param1.level > 0)
            {
               _loc7_ = class_43.getString(class_2.method_7(-1820299242),{"time":class_31.method_39(_loc5_,class_31.const_136,false)});
            }
            else if(_loc4_ == "repairing")
            {
               _loc7_ = class_43.getString(class_2.method_7(-1820300808),{"time":class_31.method_39(_loc5_,class_31.const_136,false)});
            }
            else if(_loc4_ == class_2.method_7(-1820302782))
            {
               _loc7_ = class_43.getString(class_2.method_7(-1820299893),{"time":class_31.method_39(_loc5_,class_31.const_136,false)});
            }
            else if(_loc4_ == class_2.method_7(-1820309376))
            {
               _loc7_ = class_43.getString(class_2.method_7(-1820301562),{"time":class_31.method_39(_loc5_,class_31.const_136,false)});
            }
            else if(_loc4_ == class_2.method_7(-1820311230))
            {
               _loc7_ = class_43.getString(class_2.method_7(-1820296852),{"time":class_31.method_39(_loc5_,class_31.const_136,false)});
            }
            else if(_loc4_ == class_2.method_7(-1820311380))
            {
               _loc7_ = class_43.getString(class_2.method_7(-1820299752),{"time":class_31.method_39(_loc5_,class_31.const_136,false)});
            }
            class_97.Show(new class_254(_loc3_,_loc7_,class_43.getString(class_2.method_7(-1820297749)),_loc2_.Get(),method_1682));
         }
      }
      
      public static function method_1682(param1:MouseEvent = null) : void
      {
         if(var_569._repairing)
         {
            method_84(StoreItem.method_6452(var_569));
         }
         else if(var_569.method_286())
         {
            method_84(StoreItem.method_7300(var_569));
         }
         else if(var_569.isUpgrading())
         {
            method_84(StoreItem.method_6919(var_569));
         }
         else if(var_569.isChanging)
         {
            method_84(StoreItem.method_4871(var_569,var_569.changeType));
         }
         else if(var_569 is class_130 && class_130(var_569).isEquipping())
         {
            method_84(StoreItem.method_5301(var_569));
         }
      }
      
      public static function method_4034(param1:String) : int
      {
         var _loc2_:Object = var_185[param1];
         var _loc3_:int = _loc2_.quantity;
         var _loc4_:* = 1;
         if(_loc2_.i)
         {
            _loc4_ = _loc3_;
         }
         if(var_197[param1])
         {
            var_197[param1].q = var_197[param1].q + _loc4_;
            if(_loc2_.du > 0)
            {
               var_197[param1].s = class_31.method_28();
               var_197[param1].e = class_31.method_28() + _loc2_.du;
            }
         }
         else
         {
            var_197[param1] = {"q":_loc4_};
            if(_loc2_.du > 0)
            {
               var_197[param1].s = class_31.method_28();
               var_197[param1].e = class_31.method_28() + _loc2_.du;
            }
         }
         return var_197[param1].q;
      }
      
      public static function method_7920() : int
      {
         if(var_197 != null && var_197[StoreItem.const_367] != null && var_197[StoreItem.const_367].q != null)
         {
            return var_197[StoreItem.const_367].q;
         }
         return 0;
      }
   }
}
