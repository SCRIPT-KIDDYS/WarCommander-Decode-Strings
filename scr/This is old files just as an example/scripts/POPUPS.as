package
{
   import package_31.class_97;
   import package_15.class_43;
   import package_33.class_106;
   import com.cc.worldmap.class_23;
   import package_31.class_192;
   import package_115.class_516;
   import package_31.PopupResourceGift;
   import package_31.class_102;
   import package_76.class_250;
   import package_76.class_592;
   import package_129.class_594;
   import package_4.class_66;
   import package_31.class_103;
   import flash.events.MouseEvent;
   import package_128.class_591;
   import com.cc.units.class_166;
   import com.cc.build.BldgFoundation;
   import com.cc.build.class_130;
   import package_31.class_223;
   import package_54.class_176;
   import com.cc.utils.AudioController;
   import com.cc.units.class_136;
   import package_11.class_28;
   import package_54.class_590;
   import package_32.SaveManager;
   import com.cc.units.UnitManager;
   import com.cc.units.PlatoonManager;
   import package_31.class_593;
   
   public class POPUPS extends Object
   {
      
      private static const const_5738:String = "&#39;";
      
      private static const const_5293:String = "&#45;";
      
      public static var var_4021:Boolean = false;
      
      public static var var_2185:Boolean = false;
       
      public function POPUPS()
      {
         super();
      }
      
      public static function showAFKPopup() : void
      {
         class_31.method_454();
         var callReload:Function = function():void
         {
            class_31.method_548("POPUPS::showAFKPopup");
         };
         class_97.method_151();
         method_158(class_43.getString(class_2.method_7(-1820299325)),class_43.getString(class_2.method_7(-1820300267)),class_43.getString(class_2.method_7(-1820302674)),callReload,false,true);
         class_106.method_1388();
         class_31.method_215(class_2.method_7(-1820302777));
         class_31.method_1700(true,class_2.method_7(-1820301360));
         class_23.disconnect(class_2.method_7(-1820299790));
      }
      
      public static function method_78(param1:String, param2:String) : void
      {
         class_97.Show(new class_192(param1,param2));
      }
      
      public static function method_7116(param1:String) : void
      {
         class_97.method_151();
         if(class_31.method_520)
         {
            class_31.method_548(class_2.method_7(-1820309972));
         }
      }
      
      public static function method_4698(param1:class_516) : void
      {
         class_97.Show(new PopupResourceGift(param1,565,347,param1.title,true,class_102.const_963,false));
      }
      
      public static function method_2500(param1:Boolean = false) : void
      {
         var addPopupToStage:Function = null;
         var alwaysShow:Boolean = param1;
         addPopupToStage = function(param1:class_592):void
         {
            class_97.class_2206(param1);
         };
         if(class_250.method_2827() == false)
         {
            class_250.var_844 = method_2500;
            return;
         }
         var popupWhatsNewController:class_250 = new class_250(addPopupToStage,alwaysShow);
      }
      
      public static function method_2701() : void
      {
         var addPopupToStage:Function = null;
         addPopupToStage = function(param1:class_594):void
         {
            class_97.class_2206(param1);
         };
         if(BASE.method_2582 >= class_66.method_2494)
         {
            return;
         }
         var tos:class_594 = new class_594(addPopupToStage);
      }
      
      public static function method_158(param1:String, param2:String, param3:String = "", param4:Function = null, param5:Boolean = true, param6:Boolean = false) : void
      {
         class_97.Show(new class_103(param1,param2,param5,param3,param4),param6);
      }
      
      public static function displayBadConnectionPopup() : void
      {
         var callReload:Function = function():void
         {
            class_31.method_548("POPUPS::displayBadConnectionPopup");
         };
         method_158(class_43.getString(class_2.method_7(-1820300974)),class_43.getString(class_2.method_7(-1820302441)),class_43.getString(class_2.method_7(-1820302674)),callReload,false,true);
      }
      
      public static function method_1751() : void
      {
         class_31.method_1506(class_2.method_7(-1820307647),class_2.method_7(-1820301088));
         class_97.Show(new class_103(class_43.getString(class_2.method_7(-1820301989)),class_43.getString(class_2.method_7(-1820306769)),false),true);
      }
      
      public static function method_2825(param1:int, param2:int) : void
      {
         var StreamPost:Function = null;
         var oldLevel:int = param1;
         var newLevel:int = param2;
         StreamPost = function(param1:MouseEvent = null):void
         {
            class_245.StreamPost(class_245.LEVEL,{"lvl":newLevel});
         };
         if(class_591.method_6232(oldLevel,newLevel))
         {
            return;
         }
         POPUPS.method_158(class_43.getString(class_2.method_7(-1820300273)),class_43.getString(class_2.method_7(-1820301952),{"level":newLevel}),class_43.getString(class_2.method_7(-1820297851)),StreamPost);
      }
      
      public static function method_518() : void
      {
         var _loc1_:BldgFoundation = class_166.instance.targetBuilding;
         var _loc2_:String = class_2.method_7(-1820296294);
         if(_loc1_._repairing)
         {
            _loc2_ = _loc2_ + "_repairing";
         }
         if(_loc1_.method_286())
         {
            _loc2_ = _loc2_ + class_2.method_7(-1820307714);
         }
         else if(_loc1_.isUpgrading())
         {
            _loc2_ = _loc2_ + class_2.method_7(-1820309051);
         }
         else if(_loc1_ is class_130 && class_130(_loc1_).isEquipping())
         {
            _loc2_ = _loc2_ + class_2.method_7(-1820296412);
         }
         else if(_loc1_.isChanging)
         {
            _loc2_ = _loc2_ + class_2.method_7(-1820300266);
         }
         var _loc3_:String = _loc1_.buildingData.name;
         var _loc4_:int = _loc1_.method_143() + _loc1_.method_590();
         var _loc5_:String = class_43.getString(_loc2_,{
            "name":_loc3_,
            "time":class_31.method_39(_loc4_,class_31.const_136,false)
         });
         class_97.Show(new class_223(class_43.getString(class_2.method_7(-1820296075)),_loc5_,class_43.getString(class_2.method_7(-1820297749)),class_32.method_153(_loc4_),method_7151));
      }
      
      public static function method_7151() : void
      {
         var _loc1_:BldgFoundation = class_166.instance.targetBuilding;
         if(!_loc1_ || _loc1_.method_143() <= 0)
         {
            return;
         }
         class_32.method_84(StoreItem.method_5340(_loc1_));
      }
      
      public static function method_6857() : void
      {
         if(class_105.method_23())
         {
            class_176.method_7169();
         }
      }
      
      public static function method_5532() : void
      {
         if(class_105.method_23())
         {
            class_32.method_84(StoreItem.method_4583(),method_2737);
         }
         else if(class_105.method_109())
         {
            class_32.method_84(StoreItem.method_3239(),method_2737);
         }
         AudioController.instance.method_32(class_2.method_7(-1820310627));
      }
      
      public static function method_2737() : void
      {
         var_2185 = true;
      }
      
      public static function method_916(param1:Boolean = false) : void
      {
         var _loc9_:class_136 = null;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         if(class_28.Stage < 51 || !class_28.method_30 && class_28.Stage > 90)
         {
            return;
         }
         if(!class_105.method_55() || class_105.method_189())
         {
            return;
         }
         var _loc2_:class_590 = class_590.method_2203();
         BASE.method_5339();
         if(param1)
         {
            BASE.var_471.method_276(class_212.POPUPS,false);
            SaveManager.class_2093.Base.method_38(true);
         }
         var _loc3_:Boolean = class_105.method_109();
         var _loc4_:* = false;
         var _loc5_:Vector.<class_136> = UnitManager.class_2093.method_1577(true);
         if(_loc5_)
         {
            for each(_loc9_ in _loc5_)
            {
               if(_loc9_ != null && _loc9_.method_209 < _loc9_.MaxHealth)
               {
                  if(_loc9_.type == class_136.const_77)
                  {
                     _loc4_ = true;
                  }
               }
            }
         }
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         if(!_loc3_)
         {
            _loc6_ = PlatoonManager.class_2093.method_3499(true,false);
            _loc7_ = PlatoonManager.class_2093.method_3499(false,true);
         }
         var _loc8_:int = _loc6_ + _loc7_;
         if(_loc2_.method_472.buildingsDamaged < 1 && _loc2_.method_1406 < 1 && _loc8_ < 1)
         {
            return;
         }
         if(!class_105.method_65() && (_loc2_.method_472.buildingsDamaged > 0 || !_loc3_ && !class_176.method_4400 && (_loc4_ || _loc6_ > 0) || !_loc3_ && !class_176.method_7261 && _loc7_ > 0))
         {
            _loc10_ = {};
            _loc11_ = class_2.method_7(-1820303077);
            if(_loc2_.method_472.buildingsDamaged > 0)
            {
               _loc11_ = _loc11_ + (_loc2_.method_472.buildingsDamaged > 1?class_2.method_7(-1820301927):class_2.method_7(-1820300279));
               _loc10_[class_2.method_7(-1820310539)] = _loc2_.method_472.buildingsDamaged;
            }
            if(_loc2_.method_1406 > 0 && !_loc3_)
            {
               _loc11_ = _loc11_ + (_loc2_.method_1406 > 1?"_units":"_unit");
               _loc10_[class_2.method_7(-1820299846)] = _loc2_.method_1406;
            }
            if(_loc8_ > 0)
            {
               _loc11_ = _loc11_ + (_loc8_ > 1?class_2.method_7(-1820298238):"_platoon");
               _loc10_[class_2.method_7(-1820308016)] = _loc8_;
            }
            _loc11_ = _loc11_ + (_loc3_?"_deposit":"_base");
            class_97.class_2206(new class_593(class_43.getString(_loc11_,_loc10_),_loc2_.method_3378,method_5532,method_6857));
         }
      }
   }
}
