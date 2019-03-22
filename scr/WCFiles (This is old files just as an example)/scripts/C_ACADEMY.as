package
{
   import org.osflash.signals.class_59;
   import package_4.class_725;
   import flash.events.EventDispatcher;
   import package_133.class_729;
   import flash.events.Event;
   import com.cc.units.UnitData;
   import com.cc.units.Units;
   import package_20.class_132;
   import com.adverserealms.log.Logger;
   import com.cc.tech.TechManager;
   import package_91.class_523;
   import com.cc.units.UnitManager;
   import package_20.class_158;
   import com.cc.utils.class_44;
   import package_20.class_203;
   import com.cc.build.BldgFoundation;
   import package_37.class_240;
   import com.cc.build.class_599;
   import package_31.class_97;
   import package_31.class_724;
   import package_31.class_102;
   import package_31.class_723;
   import package_31.class_728;
   import package_31.class_124;
   import package_4.class_216;
   import package_37.class_574;
   import package_15.class_43;
   import com.cc.battle.class_118;
   import package_121.class_560;
   import package_56.class_566;
   import package_32.SaveManager;
   import package_20.class_206;
   import com.cc.units.UnitLevelData;
   import package_44.class_169;
   import com.cc.units.AbstractUnit;
   import com.cc.units.class_136;
   import com.cc.units.C_Platoon;
   import com.cc.units.PlatoonManager;
   import package_31.class_192;
   import package_32.class_440;
   import package_32.class_441;
   import package_31.class_253;
   import package_31.class_726;
   import package_20.class_548;
   import package_133.class_696;
   
   public class C_ACADEMY extends Object
   {
      
      public static const const_1734:String = "unit_skin_change_event";
      
      public static var var_971:class_59 = new class_59(int,int,Number);
      
      private static var var_2611:Boolean = false;
      
      private static var var_34:Vector.<class_725> = new Vector.<class_725>(class_132.const_112,true);
      
      private static var _eventDispatcher:EventDispatcher;
      
      private static var var_409:int;
      
      private static var var_364:class_729 = new class_729();
      
      private static var var_2480:Boolean = false;
       
      public function C_ACADEMY()
      {
         super();
      }
      
      public static function get method_954() : Boolean
      {
         return var_2611;
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(_eventDispatcher == null)
         {
            _eventDispatcher = new EventDispatcher();
         }
         _eventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(_eventDispatcher == null)
         {
            _eventDispatcher = new EventDispatcher();
         }
         _eventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      protected static function dispatchEvent(param1:Event) : void
      {
         if(_eventDispatcher == null)
         {
            _eventDispatcher = new EventDispatcher();
         }
         _eventDispatcher.dispatchEvent(param1);
      }
      
      public static function Data(param1:Object) : void
      {
         var _loc2_:UnitData = null;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:class_725 = null;
         for each(_loc2_ in Units.getUnitDataList())
         {
            if(_loc2_ && _loc2_.levelData[0].upgradeAcademyLevel == 0)
            {
               if(!param1.hasOwnProperty("u" + _loc2_.type))
               {
                  param1["u" + _loc2_.type] = {"l":1};
               }
            }
         }
         var_34 = new Vector.<class_725>(class_132.const_112,true);
         for(_loc3_ in param1)
         {
            _loc4_ = int(_loc3_.replace("u",""));
            _loc5_ = int(param1[_loc3_].l);
            _loc6_ = int(param1[_loc3_].t);
            _loc7_ = int(param1[_loc3_].sk);
            _loc8_ = int(param1[_loc3_].c);
            if(_loc5_ > Units.GetMaxLevel(_loc4_))
            {
               FrameworkLogger.Log(FrameworkLogger.KEY_UNIT_LEVEL_HACK,class_2.method_7(-1820295415) + _loc4_ + class_2.method_7(-1820300029) + _loc5_ + class_2.method_7(-1820296837) + Units.GetMaxLevel(_loc4_) + ".");
               _loc5_ = Units.GetMaxLevel(_loc4_);
            }
            if(!(_loc4_ == class_132.const_2676 || _loc4_ == class_132.const_1983))
            {
               _loc9_ = new class_725();
               _loc9_.level = _loc5_;
               if(_loc6_ > 0)
               {
                  _loc9_.time = _loc6_;
               }
               if(_loc7_ > 0)
               {
                  _loc9_.skin = _loc7_;
                  if(_loc9_.level == 0)
                  {
                     _loc9_.time = 0;
                     _loc9_.level = 1;
                  }
               }
               if(_loc8_ > 0)
               {
                  _loc9_.var_2272 = true;
               }
               if(Units.shouldBlockResearchForUnitType(_loc4_) && _loc9_.level > 0)
               {
                  Logger.warn(class_2.method_7(-1820309950) + _loc4_);
                  FrameworkLogger.Log(FrameworkLogger.KEY_UNIT_TYPE_HACK,class_2.method_7(-1820309950) + _loc4_);
               }
               else
               {
                  var_34[_loc4_] = _loc9_;
               }
            }
         }
         var_2611 = true;
         if(TechManager.instance.rawDesignData != null && class_105.method_131())
         {
            TechManager.instance.processDesigns(TechManager.instance.rawDesignData);
         }
      }
      
      public static function method_3104(param1:Object) : void
      {
         var _loc2_:Object = null;
         var_364.clear();
         for each(_loc2_ in param1)
         {
            var_364.method_1342(_loc2_.uid,_loc2_.level,_loc2_.xp,_loc2_.type);
         }
      }
      
      public static function method_2089() : void
      {
         if(class_105.method_23() && !var_2480)
         {
            if(class_523.instance.method_7379)
            {
               var_2480 = true;
               class_523.instance.method_3351.remove(method_2089);
               UnitManager.class_2093.method_5304(var_364.method_7054());
            }
            else
            {
               class_523.instance.method_3351.add(method_2089);
            }
         }
      }
      
      public static function method_4053(param1:int) : int
      {
         var _loc2_:int = Units.GetData(param1).group;
         var _loc3_:int = class_158.const_139;
         switch(_loc2_)
         {
            case class_203.const_14:
               _loc3_ = class_158.const_101;
               break;
            case class_203.const_30:
               _loc3_ = class_158.const_29;
               break;
            case class_203.const_46:
               _loc3_ = class_158.const_104;
               break;
            case class_203.const_24:
            case class_203.const_43:
               _loc3_ = class_158.const_91;
               break;
            default:
               class_44.assert(false,class_2.method_7(-1820297379) + param1 + class_2.method_7(-1820311078) + _loc2_);
         }
         return _loc3_;
      }
      
      public static function method_323(param1:int) : BldgFoundation
      {
         var _loc3_:BldgFoundation = null;
         var _loc2_:int = Units.GetData(param1).group;
         switch(_loc2_)
         {
            case class_203.const_14:
               _loc3_ = BASE.method_29(class_158.const_101);
               break;
            case class_203.const_30:
               _loc3_ = BASE.method_29(class_158.const_29);
               break;
            case class_203.const_46:
               _loc3_ = BASE.method_29(class_158.const_104);
               break;
            case class_203.const_24:
            case class_203.const_43:
               _loc3_ = BASE.method_29(class_158.const_91);
               break;
            default:
               class_44.assert(false,class_2.method_7(-1820309884) + param1 + class_2.method_7(-1820311078) + _loc2_);
         }
         return _loc3_;
      }
      
      public static function method_1826(param1:int) : String
      {
         var _loc2_:int = Units.GetData(param1).group;
         var _loc3_:String = class_240.const_1062;
         switch(_loc2_)
         {
            case class_203.const_14:
               _loc3_ = class_240.const_1062;
               break;
            case class_203.const_24:
            case class_203.const_43:
               _loc3_ = class_240.const_594;
               break;
            case class_203.const_46:
               _loc3_ = class_240.const_1613;
               break;
            case class_203.const_30:
               _loc3_ = class_240.const_594;
               break;
            default:
               class_44.assert(false,class_2.method_7(-1820297741) + param1 + class_2.method_7(-1820301526) + _loc2_);
         }
         return _loc3_;
      }
      
      public static function Setup() : void
      {
         var _loc2_:BldgFoundation = null;
         while(0 < var_34.length)
         {
            if(var_34[0] && var_34[0].time && class_105.method_184())
            {
               _loc2_ = method_323(0);
               if(_loc2_)
               {
                  _loc2_.var_92 = true;
               }
            }
            _loc1_++;
         }
      }
      
      public static function method_101() : Object
      {
         var _loc3_:String = null;
         var _loc1_:Object = {};
         while(0 < var_34.length)
         {
            if(var_34[0] && (var_34[0].level || var_34[0].time || var_34[0].skin))
            {
               _loc3_ = "u" + 0;
               _loc1_[_loc3_] = {};
               if(var_34[0].level)
               {
                  _loc1_[_loc3_].l = var_34[0].level;
               }
               if(var_34[0].time)
               {
                  _loc1_[_loc3_].t = var_34[0].time;
               }
               if(var_34[0].skin)
               {
                  _loc1_[_loc3_].sk = var_34[0].skin;
               }
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function method_2205() : Vector.<class_725>
      {
         var _loc2_:* = 0;
         var _loc3_:class_725 = null;
         var _loc1_:Vector.<class_725> = new Vector.<class_725>(class_132.const_112,true);
         if(var_34)
         {
            _loc2_ = 0;
            while(_loc2_ < var_34.length)
            {
               _loc3_ = var_34[_loc2_];
               if(_loc3_)
               {
                  _loc1_[_loc2_] = _loc3_.clone();
               }
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      public static function Show(param1:class_599) : void
      {
         if(class_97.Count == 0)
         {
            class_97.Show(new class_724(param1));
         }
      }
      
      public static function method_4247(param1:int) : void
      {
         var _loc2_:class_102 = null;
         if(method_517(param1))
         {
            class_97.method_151();
            switch(Units.GetData(param1).group)
            {
               case class_203.const_14:
                  _loc2_ = new class_724(BASE.method_29(class_158.const_101) as class_599,class_724.const_4606);
                  break;
               case class_203.const_43:
                  _loc2_ = new class_724(BASE.method_29(class_158.const_91) as class_599,class_724.const_3428);
                  break;
               case class_203.const_24:
                  _loc2_ = new class_724(BASE.method_29(class_158.const_91) as class_599,class_724.const_3162);
                  break;
               case class_203.const_30:
                  _loc2_ = new class_723(BASE.method_29(class_158.const_29),class_723.const_4417);
                  break;
               case class_203.const_46:
                  _loc2_ = new class_728(class_728.const_1346);
                  break;
            }
            if(_loc2_ != null)
            {
               class_97.Show(_loc2_);
               class_97.Message(class_124.const_422,{"id":param1});
            }
         }
      }
      
      public static function method_1479(param1:int) : Object
      {
         var locked:Boolean = false;
         var building:BldgFoundation = null;
         var costs:class_216 = null;
         var purchaseToken:String = null;
         var itemData:class_574 = null;
         var unitType:int = param1;
         var error:Boolean = false;
         var errorMessage:String = "";
         var status:String = class_43.getString(class_2.method_7(-1820299087));
         if(Units.shouldBlockResearchForUnitType(unitType))
         {
            errorMessage = class_43.getString(class_2.method_7(-1820300709),{"type":unitType});
            FrameworkLogger.Log(FrameworkLogger.KEY_UNIT_TYPE_HACK,errorMessage);
            Logger.warn(errorMessage);
            status = errorMessage;
         }
         else
         {
            locked = true;
            if(var_34[unitType] && var_34[unitType].level > 0)
            {
               locked = false;
               status = class_43.getString(class_2.method_7(-1820311274),{"level":var_34[unitType].level});
            }
            else if(!var_34[unitType])
            {
               var_34[unitType] = new class_725();
            }
            building = method_323(unitType);
            if(building && !building.var_92)
            {
               if(var_34[unitType])
               {
                  if(var_34[unitType].level < Units.GetMaxLevel(unitType))
                  {
                     if(method_293(unitType))
                     {
                        var UpgradeCallbackSuccess:Function = function():void
                        {
                           if(costs.metal + costs.oil + costs.thorium == 0)
                           {
                              FrameworkLogger.Log(FrameworkLogger.KEY_FREE_ACADEMY_UPGRADE_RESOURCES,"C_ACADEMY::StartUpgrade - Free upgrade for " + Units.GetData(unitType).name + " to level " + var_34[unitType].level + 1);
                           }
                           var_34[unitType].time = costs.time;
                           building.var_92 = true;
                           class_118.battle.startUnitUpgrade(unitType,costs.time);
                           class_560.method_989(var_34[unitType].level + 1,unitType,0,false,costs.metal,costs.oil,costs.thorium,class_566.const_110,method_180(unitType),Units.GetData(unitType).group);
                           SaveManager.class_2093.Base.method_38();
                           building.method_121(class_206.const_5,costs.metal);
                           building.method_121(class_206.const_6,costs.oil);
                           building.method_121(class_206.const_7,costs.thorium);
                        };
                        var UpgradeCallbackFailure:Function = function():void
                        {
                           POPUPS.method_78(class_43.getString("common__error"),class_43.getString("common_body__not_enough_resources"));
                        };
                        costs = method_223(unitType);
                        purchaseToken = method_1826(unitType);
                        itemData = class_240.method_192(purchaseToken,unitType,var_34[unitType].level + 1);
                        class_240.class_2093.method_637(itemData,costs,UpgradeCallbackSuccess,UpgradeCallbackFailure);
                     }
                     else
                     {
                        error = true;
                        errorMessage = class_43.getString(class_2.method_7(-1820296307));
                        status = class_43.getString(class_2.method_7(-1820296307));
                     }
                  }
                  else
                  {
                     error = true;
                     errorMessage = class_43.getString(class_2.method_7(-1820297494));
                     status = class_43.getString(class_2.method_7(-1820300611),{"level":var_34[unitType].level});
                  }
               }
            }
            else
            {
               error = true;
               errorMessage = class_43.getString(class_2.method_7(-1820300929));
               if(var_34[unitType] && var_34[unitType].time)
               {
                  status = class_43.getString(class_2.method_7(-1820297025),{
                     "level":var_34[unitType].level + 1,
                     "time":class_31.method_39(var_34[unitType].time)
                  });
               }
            }
         }
         if(error)
         {
            POPUPS.method_78(class_43.getString(class_2.method_7(-1820309017)),errorMessage);
         }
         return {
            "error":error,
            "errorMessage":errorMessage,
            "status":status
         };
      }
      
      public static function method_223(param1:int) : class_216
      {
         var _loc3_:UnitLevelData = null;
         var _loc2_:UnitData = Units.GetData(param1);
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.getSpecificLevelData(method_44(param1) + 1);
            if(_loc3_ != null)
            {
               return _loc3_.createUpgradeCosts();
            }
         }
         return new class_216();
      }
      
      public static function method_625(param1:int) : void
      {
         if(!var_34[param1])
         {
            var_34[param1] = new class_725();
         }
         var _loc2_:BldgFoundation = method_323(param1);
         if(_loc2_)
         {
            if(var_34[param1])
            {
               if(var_34[param1].level < Units.GetMaxLevel(param1))
               {
                  if(method_293(param1))
                  {
                     class_32.method_84(StoreItem.method_6562(param1));
                  }
               }
            }
         }
         class_97.Message(class_124.const_854,{"id":param1});
      }
      
      public static function method_1238(param1:int, param2:int) : void
      {
         if(!var_34[param1])
         {
            var_34[param1] = new class_725();
         }
         var _loc3_:class_725 = var_34[param1];
         if(param2 > Units.GetMaxLevel(param1) || _loc3_.level >= param2)
         {
            return;
         }
         if(_loc3_.time)
         {
            method_1177(param1);
            return;
         }
         if(param1 == class_132.const_69 && param2 == 1)
         {
            class_169.method_1377(class_169.const_1208);
         }
         _loc3_.level = _loc3_.level + 1;
         class_138.method_272();
         class_97.Message(class_124.const_347);
         method_1275(param1);
         method_1586(param1);
         var_971.dispatch(param1,_loc3_.level,0);
      }
      
      private static function method_1586(param1:int) : void
      {
         var _loc3_:AbstractUnit = null;
         var _loc6_:class_136 = null;
         var _loc7_:C_Platoon = null;
         var _loc2_:class_725 = var_34[param1];
         if(!_loc2_)
         {
            return;
         }
         class_118.battle.finishUnitUpgrade(param1,_loc2_.level);
         var _loc4_:Vector.<class_136> = UnitManager.class_2093.method_1577(false);
         if(_loc4_)
         {
            for each(_loc6_ in _loc4_)
            {
               if(_loc6_)
               {
                  for each(_loc3_ in _loc6_.method_95())
                  {
                     if(_loc3_ != null && _loc3_.type == param1)
                     {
                        _loc3_.method_2126();
                     }
                  }
               }
            }
         }
         var _loc5_:Vector.<C_Platoon> = PlatoonManager.class_2093.method_592();
         if(_loc5_)
         {
            for each(_loc7_ in _loc5_)
            {
               if(_loc7_)
               {
                  for each(_loc3_ in _loc7_.class_579)
                  {
                     if(_loc3_ != null && _loc3_.type == param1)
                     {
                        _loc3_.method_2126();
                     }
                  }
               }
            }
         }
      }
      
      public static function method_900(param1:int) : int
      {
         return method_223(param1).credits;
      }
      
      public static function method_293(param1:int) : Boolean
      {
         var _loc2_:BldgFoundation = method_323(param1);
         if(_loc2_ != null)
         {
            return _loc2_.level >= Units.GetLevelData(param1,var_34[param1]?var_34[param1].level + 1:1).upgradeAcademyLevel;
         }
         return false;
      }
      
      public static function method_517(param1:int) : Boolean
      {
         var _loc2_:BldgFoundation = null;
         if(!method_204(param1) && method_44(param1) == 0 && !method_423(param1))
         {
            _loc2_ = method_323(param1);
            if(_loc2_ != null)
            {
               return _loc2_.method_83();
            }
         }
         return false;
      }
      
      public static function method_448(param1:int) : void
      {
         if(var_409 != 0)
         {
            class_97.Show(new class_192("",class_43.getString(class_2.method_7(-1820308059))));
            return;
         }
         var_409 = param1;
         var _loc2_:BldgFoundation = method_323(var_409);
         if(_loc2_ != null)
         {
            _loc2_.var_92 = false;
         }
         class_118.battle.cancelUnitUpgrade(var_409);
         class_97.method_18();
         var_34[var_409].time = 0;
         var _loc4_:class_216 = method_223(param1);
         class_560.method_989(0 + 1,var_409,0,false,_loc4_.metal,_loc4_.oil,_loc4_.thorium,class_566.const_39,method_180(var_409),Units.GetData(var_409).group);
         SaveManager.class_2093.addEventListener(class_440.const_80,class_441.const_86,method_4245);
         BASE.method_529(_loc4_.metal,_loc4_.oil);
         SaveManager.class_2093.Base.method_38(true);
      }
      
      private static function method_4245(param1:class_440) : void
      {
         SaveManager.class_2093.removeEventListener(class_440.const_80,class_441.const_86,method_4245);
         var _loc2_:class_216 = new class_216();
         var _loc3_:class_216 = method_223(var_409);
         _loc2_.thorium = _loc3_.thorium;
         var _loc4_:String = method_1826(var_409);
         var _loc5_:class_574 = class_240.method_192(_loc4_,var_409,method_44(var_409) + 1);
         if(_loc2_.thorium)
         {
            class_240.class_2093.method_657(_loc5_,_loc2_,method_2087);
         }
         else
         {
            method_2087();
         }
      }
      
      private static function method_2087() : void
      {
         var_409 = 0;
      }
      
      public static function method_433(param1:int) : void
      {
         if(method_44(param1) < Units.GetMaxLevel(param1))
         {
            class_32.method_84(StoreItem.method_6238(param1));
         }
         else
         {
            Logger.error(class_2.method_7(-1820308395) + param1 + class_2.method_7(-1820311501));
         }
      }
      
      public static function method_1177(param1:int) : void
      {
         var _loc2_:class_725 = var_34[param1];
         var _loc3_:class_726 = class_97.method_756(class_253.const_1302) as class_726;
         if(_loc3_ != null)
         {
            _loc3_.method_3164(class_548.const_195,param1);
         }
         if(!_loc2_ || !_loc2_.time)
         {
            return;
         }
         if(_loc2_.level >= Units.GetMaxLevel(param1))
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_UNIT_LEVEL_HACK,class_2.method_7(-1820295968) + param1 + class_2.method_7(-1820311501));
            return;
         }
         _loc2_.time = 0;
         if(!_loc2_.level)
         {
            _loc2_.level = 1;
            if(param1 == class_132.const_69)
            {
               class_169.method_1377(class_169.const_1208);
            }
         }
         else
         {
            _loc2_.level = _loc2_.level + 1;
         }
         class_138.method_272();
         var _loc4_:BldgFoundation = method_323(param1);
         if(_loc4_ != null)
         {
            _loc4_.var_92 = false;
         }
         method_1275(param1);
         method_1586(param1);
         var_971.dispatch(param1,_loc2_.level,0);
         class_97.method_18();
         class_240.class_2093.method_1301(class_240.method_192(class_240.const_594,param1));
      }
      
      public static function method_1275(param1:int) : void
      {
         var _loc2_:class_725 = null;
         if(class_105.method_23())
         {
            _loc2_ = var_34[param1];
            class_245.Popup(class_245.const_272,{
               "uid":param1,
               class_2.method_7(-1820296659):_loc2_.level,
               "skin":(_loc2_.skin?_loc2_.skin:0)
            });
         }
      }
      
      public static function method_496(param1:int) : int
      {
         var _loc2_:Vector.<int> = Units.getUnitTypeListByGroup(param1);
         while(0 < _loc2_.length)
         {
            if(var_34[_loc2_[0]] && var_34[_loc2_[0]].time)
            {
               return _loc2_[0];
            }
            _loc3_++;
         }
         return 0;
      }
      
      public static function method_2275(param1:BldgFoundation) : int
      {
         var _loc4_:class_725 = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc2_:* = 0;
         while(0 < var_34.length)
         {
            _loc4_ = var_34[0];
            if(_loc4_ && _loc4_.time)
            {
               _loc5_ = Units.GetData(0).group;
               for each(_loc6_ in param1.var_555)
               {
                  if(_loc5_ == _loc6_ && _loc4_.time > _loc2_)
                  {
                     _loc2_ = _loc4_.time;
                  }
               }
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function method_344(param1:int) : int
      {
         if(param1 >= 0 && param1 < var_34.length && var_34[param1] != null && var_34[param1].time > 0)
         {
            return var_34[param1].time;
         }
         return 0;
      }
      
      public static function Tick(param1:int, param2:BldgFoundation) : void
      {
         var _loc4_:class_725 = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         while(0 < var_34.length)
         {
            _loc4_ = var_34[0];
            if(_loc4_ && _loc4_.time)
            {
               _loc5_ = Units.GetData(0).group;
               for each(_loc6_ in param2.var_555)
               {
                  if(_loc5_ == _loc6_)
                  {
                     if(_loc4_.time > param1)
                     {
                        _loc4_.time = _loc4_.time - param1;
                        break;
                     }
                     method_1177(0);
                     _loc4_.time = 0;
                     break;
                  }
               }
            }
            _loc3_++;
         }
      }
      
      public static function method_7064(param1:int) : Object
      {
         var _loc2_:UnitLevelData = Units.GetData(param1).getSpecificLevelData(method_44(param1));
         return {
            "r1":_loc2_.productionCostR1,
            "r2":_loc2_.productionCostR2,
            "r3":_loc2_.productionCostR3
         };
      }
      
      public static function method_4308(param1:int, param2:int, param3:Boolean = true) : void
      {
         Logger.debug(class_2.method_7(-1820310851) + param1 + " " + param2);
         if(!var_34[param1])
         {
            var_34[param1] = new class_725();
         }
         if(param2 > 0)
         {
            if(param3 && var_34[param1].level == 0)
            {
               var_34[param1].level = 1;
            }
            var_34[param1].skin = param2;
            class_560.method_989(1,param1,0,false,0,0,0,class_566.const_85,param2,Units.GetData(param1).group);
         }
         else
         {
            var_34[param1].skin = 0;
         }
         class_97.method_18();
         dispatchEvent(new Event(const_1734));
      }
      
      public static function method_791(param1:int) : Boolean
      {
         var _loc2_:* = 0;
         if(Units.GetData(param1).requires && Units.GetData(param1).requires != 0)
         {
            _loc2_ = Units.GetData(param1).requires;
            if(method_204(_loc2_))
            {
               return method_791(_loc2_);
            }
            if(!var_34[_loc2_] || var_34[_loc2_].level < 1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function method_4908(param1:int) : Boolean
      {
         return !method_204(param1) && method_44(param1) > 0;
      }
      
      public static function method_204(param1:int) : Boolean
      {
         if(class_105.method_23() && method_180(param1) > 0)
         {
            return false;
         }
         if(!class_105.method_23() && class_215.method_296(param1) > 0)
         {
            return false;
         }
         if(Units.GetData(param1) != null)
         {
            return Units.GetData(param1).blocked;
         }
         return true;
      }
      
      public static function method_2269(param1:Number, param2:int) : void
      {
         if(method_339(param1) != null)
         {
            Logger.error(class_2.method_7(-1820297030));
            return;
         }
         var_364.method_1342(param1,1,0,param2);
      }
      
      public static function method_2367(param1:Number) : void
      {
         var_364.method_3396(param1);
      }
      
      public static function method_2010(param1:Number, param2:int, param3:uint) : void
      {
         var _loc4_:class_696 = method_339(param1);
         if(_loc4_ == null)
         {
            Logger.warn(class_2.method_7(-1820301763) + param1);
            return;
         }
         var_364.method_1443(param1,param2,param3);
      }
      
      public static function method_339(param1:Number) : class_696
      {
         return var_364.method_394(param1);
      }
      
      public static function method_6040() : class_729
      {
         return var_364.clone();
      }
      
      public static function method_44(param1:int, param2:Number = -1) : int
      {
         var _loc3_:class_696 = null;
         if(param2 != -1 && Units.usesXpToLevelUp(param1))
         {
            _loc3_ = var_364.method_394(param2);
            if(_loc3_ != null)
            {
               return _loc3_.level;
            }
            return 1;
         }
         if(param1 >= 0 && param1 < var_34.length && var_34[param1] != null)
         {
            return var_34[param1].level;
         }
         return 0;
      }
      
      public static function method_2105(param1:Number) : uint
      {
         var _loc2_:class_696 = method_339(param1);
         if(_loc2_ != null)
         {
            return _loc2_.xp;
         }
         return 0;
      }
      
      public static function method_2292(param1:Number, param2:int = -1) : void
      {
         if(var_364 == null)
         {
            return;
         }
         var _loc3_:class_696 = var_364.method_394(param1);
         if(_loc3_ == null)
         {
            return;
         }
         if(param2 < 0)
         {
            var param2:int = _loc3_.level + 1;
         }
         var_364.method_1443(param1,param2,0);
         var _loc4_:AbstractUnit = UnitManager.class_2093.method_92(param1);
         if(_loc4_ != null)
         {
            var_971.dispatch(_loc4_.type,_loc4_.level,param1);
         }
      }
      
      public static function method_180(param1:int) : int
      {
         if(param1 >= 0 && param1 < var_34.length && var_34[param1] != null && var_34[param1].skin > 0)
         {
            return var_34[param1].skin;
         }
         return 0;
      }
      
      public static function method_423(param1:int) : Boolean
      {
         return method_344(param1) > 0;
      }
      
      public static function method_629() : Vector.<int>
      {
         var _loc1_:Vector.<int> = new Vector.<int>();
         while(0 < var_34.length)
         {
            if(var_34[0] && var_34[0].level > 0 && !method_4150(0) && Units.GetData(0) && Units.GetData(0).storage > 0)
            {
               _loc1_.push(0);
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function method_1747(param1:int, param2:int, param3:int) : void
      {
         if(param2 == 0 || param2 == -1 && param3 == 0)
         {
            method_2480(param1);
         }
         else if(Units.shouldBlockResearchForUnitType(param1))
         {
            Logger.warn(class_2.method_7(-1820309950) + param1);
            FrameworkLogger.Log(FrameworkLogger.KEY_UNIT_TYPE_HACK,class_2.method_7(-1820309950) + param1);
         }
         else
         {
            method_3548(param1,param2,param3);
         }
      }
      
      private static function method_3548(param1:int, param2:int, param3:int) : void
      {
         if(!var_34[param1])
         {
            var_34[param1] = new class_725();
            var_34[param1].level = 1;
         }
         if(param2 != -1 && param2 != var_34[param1].level)
         {
            if(var_34[param1].time > 0)
            {
               method_448(param1);
            }
            var_34[param1].level = param2;
         }
         if(param3 != -1)
         {
            method_4308(param1,param3);
         }
      }
      
      public static function method_2480(param1:int) : void
      {
         if(var_34[param1])
         {
            if(var_34[param1].time)
            {
               method_448(param1);
            }
            var_34[param1] = null;
         }
      }
      
      public static function method_5375(param1:int) : Boolean
      {
         return var_34 != null && param1 >= 0 && param1 < var_34.length && var_34[param1] != null && var_34[param1].var_2272;
      }
      
      public static function method_5835() : void
      {
         var _loc1_:class_725 = null;
         if(var_34 != null)
         {
            for each(_loc1_ in var_34)
            {
               if(_loc1_ != null)
               {
                  _loc1_.var_2272 = false;
               }
            }
         }
      }
      
      public static function method_4150(param1:int) : Boolean
      {
         switch(param1)
         {
            case class_132.const_2773:
            case class_132.const_1609:
            case class_132.const_2708:
            case class_132.const_2602:
            case class_132.const_1752:
            case class_132.const_1940:
            case class_132.const_1987:
            case class_132.const_1392:
               return true;
            default:
               return false;
         }
      }
   }
}
