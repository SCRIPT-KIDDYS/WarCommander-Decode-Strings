package
{
   import flash.utils.Timer;
   import package_90.class_371;
   import com.cc.units.C_Platoon;
   import package_136.class_756;
   import org.osflash.signals.class_59;
   import com.cc.utils.SecNum;
   import package_2.class_508;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import package_36.class_120;
   import package_36.class_119;
   import package_54.class_176;
   import com.cc.units.UnitManager;
   import com.cc.build.BldgFoundation;
   import com.cc.units.Units;
   import com.cc.units.class_143;
   import com.cc.units.AbstractUnit;
   import com.cc.build.C_Buildings;
   import com.cc.units.class_164;
   import package_20.class_540;
   import package_53.class_173;
   import com.cc.battle.class_118;
   import com.adverserealms.log.Logger;
   import com.cc.worldmap.class_23;
   import package_2.class_471;
   import package_2.class_284;
   import com.cc.units.PlatoonManager;
   import package_2.class_201;
   import package_11.class_28;
   import package_44.class_169;
   import package_2.class_8;
   import package_20.class_158;
   import com.cc.utils.class_44;
   import com.cc.battle.AIBoxReceiver;
   import com.cc.ui.UI;
   import com.cc.buffs.BuffManager;
   import package_29.DepositManager;
   import com.cc.utils.js_utils.WCJSON;
   import package_29.class_111;
   import package_31.class_97;
   import package_31.class_192;
   import package_15.class_43;
   import package_31.class_102;
   import package_2.class_35;
   import package_32.SaveManager;
   import package_20.class_132;
   import com.cc.worldmap.class_146;
   import flash.utils.getTimer;
   import package_136.class_752;
   import package_122.class_760;
   import package_57.class_185;
   import com.cc.projectiles.Projectiles;
   import com.cc.aoes.AOEManager;
   import package_20.class_182;
   import package_31.class_758;
   import package_22.ResourceObject;
   import package_20.class_206;
   import package_31.class_761;
   import package_31.class_753;
   import package_31.class_754;
   import package_31.class_749;
   import package_137.class_757;
   import package_111.class_750;
   import flash.events.TimerEvent;
   import package_2.class_110;
   
   public class ATTACK extends Object
   {
      
      private static const PI180:Number = 0.017453292519943295;
      
      private static const const_570:int = 1800;
      
      private static const const_532:int = class_31.const_8.Get();
      
      private static const const_2792:int = 500;
      
      private static const const_219:int = class_31.const_8.Get();
      
      private static const const_531:int = 150;
      
      public static const const_79:Number = 150;
      
      private static const const_1122:int = const_79 + const_219;
      
      private static const const_3824:int = 1700;
      
      private static const const_1989:int = 1700;
      
      private static const const_2921:int = 1600;
      
      private static const const_2524:int = 4000;
      
      private static const const_3729:int = 1000;
      
      private static var var_1146:Timer;
      
      private static var var_2468:Function;
      
      private static var var_4370:int = const_3824;
      
      public static const const_5324:int = 1500;
      
      public static const const_838:int = class_31.const_8.Get();
      
      private static const const_3817:int = 10;
      
      private static const const_3615:int = 40;
      
      public static const const_505:Array = [class_2.method_7(-1820307935),class_2.method_7(-1820295432),class_2.method_7(-1820297557),class_2.method_7(-1820309434),class_2.method_7(-1820298198),class_2.method_7(-1820303296)];
      
      private static const const_1382:Array = [-60,0,60,120,180,-120];
      
      public static var var_1469:int = 60 * 5;
      
      public static var var_1503:int = -1;
      
      public static var var_1399:int = 30;
      
      public static var var_2071:int = 2;
      
      public static var var_2959:int = 12;
      
      private static var var_2761:Boolean;
      
      public static var var_3454:int;
      
      public static var var_1784:Boolean;
      
      public static var var_1978:int = -1;
      
      public static var var_5571:Boolean;
      
      public static var var_4962:Object;
      
      private static var var_1606:class_371;
      
      public static var var_820:Object;
      
      public static var var_45:Vector.<C_Platoon>;
      
      public static var var_323:class_756;
      
      private static var var_4900:Boolean;
      
      private static var var_2658:Boolean;
      
      public static var var_4325:Number;
      
      public static var var_5250:Number;
      
      public static var var_2923:class_59 = new class_59();
      
      private static var var_3620:SecNum = new SecNum(0);
      
      private static var var_2569:SecNum = new SecNum(0);
      
      private static var var_3796:SecNum = new SecNum(0);
      
      private static var var_3042:SecNum = new SecNum(0);
      
      private static var var_663:int = 0;
      
      private static var var_4272:class_508;
      
      private static const const_795:int = -1;
      
      private static var var_2213:Point;
      
      private static var var_2157:Point;
      
      private static var var_175:Vector.<Dictionary>;
      
      private static var var_2140:Number;
      
      private static var var_2940:Vector.<Vector.<Point>>;
      
      private static var var_2765:Vector.<Point>;
      
      private static const const_2796:int = 1;
      
      private static var var_2377:int;
      
      private static var var_1620:Point;
      
      private static var var_226:Vector.<Vector.<Boolean>>;
      
      private static var var_684:Vector.<Vector.<Boolean>>;
      
      private static var var_1189:int;
      
      private static var var_1930:int;
      
      private static var var_1844:Boolean;
      
      private static var name_42:Boolean = false;
       
      public function ATTACK()
      {
         super();
      }
      
      public static function method_277() : Boolean
      {
         return class_105.method_102() && !var_1784;
      }
      
      public static function get method_1666() : int
      {
         return var_3620.Get();
      }
      
      public static function get method_2493() : int
      {
         return var_2569.Get();
      }
      
      public static function get method_4426() : int
      {
         return var_3796.Get();
      }
      
      public static function get method_3760() : int
      {
         return var_3042.Get();
      }
      
      public static function get method_8341() : int
      {
         return var_663;
      }
      
      public static function get method_8592() : class_508
      {
         return var_4272;
      }
      
      public static function get method_2050() : Number
      {
         return var_2140;
      }
      
      public static function method_114() : void
      {
         class_120.addEventListener(class_119.const_2640,method_4684);
      }
      
      private static function method_4684(param1:class_119) : void
      {
         var _loc2_:Object = param1.Data;
         if(_loc2_ == null)
         {
            return;
         }
         if("time" in _loc2_)
         {
            var_1469 = int(_loc2_.time) / class_31.const_20.Get();
         }
         if(class_2.method_7(-1820295923) in _loc2_)
         {
            var_1503 = int(_loc2_.max_attack_level_difference);
         }
         if(class_2.method_7(-1820297210) in _loc2_)
         {
            var_1399 = int(_loc2_.high_level_attack_rules_threshold);
         }
         if(class_2.method_7(-1820301949) in _loc2_)
         {
            var_2959 = int(_loc2_.start_delay_in_sec);
         }
         if(class_2.method_7(-1820296992) in _loc2_)
         {
            var_2071 = int(_loc2_.start_delay_buffer_in_sec);
         }
         var_2923.dispatch();
      }
      
      private static function method_530(param1:int) : void
      {
         var_3620.Set(param1);
      }
      
      private static function method_546(param1:int) : void
      {
         var_3796.Set(param1);
      }
      
      public static function Setup() : void
      {
         var_2761 = false;
         var_1784 = false;
         var_4900 = false;
         var_2658 = false;
         method_530(0);
         method_546(0);
         var_1978 = -1;
         var_3454 = var_1469;
         var_2377 = 0;
         var_1620 = new Point();
         var_1189 = 0;
         var_1930 = 0;
         var_1844 = false;
         class_31.method_1458();
         var_323 = new class_756();
         method_2492();
         var_1606 = null;
         class_176.method_6079();
         UnitManager.class_2093.method_7603();
      }
      
      public static function method_5592() : void
      {
         var _loc2_:BldgFoundation = null;
         var _loc1_:Number = 0;
         for each(_loc2_ in BASE.var_482)
         {
            _loc1_ = _loc1_ + _loc2_.var_81.Get();
         }
         var_4325 = method_2287(true);
         var_5250 = Units.GetTotalAttackerHealth(false,true) + _loc1_;
      }
      
      public static function method_5545() : void
      {
         var_1844 = true;
      }
      
      public static function method_2287(param1:Boolean) : Number
      {
         var _loc5_:Dictionary = null;
         var _loc6_:Vector.<class_143> = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:Vector.<AbstractUnit> = null;
         var _loc10_:* = 0;
         if(var_45 == null)
         {
            return 0;
         }
         var _loc2_:Number = 0;
         var _loc4_:int = var_45.length;
         while(0 < _loc4_)
         {
            if(var_45[0] && var_45[0].method_94)
            {
               _loc6_ = var_45[0].method_94;
               _loc7_ = 0;
               _loc8_ = _loc6_.length;
               while(_loc7_ < _loc8_)
               {
                  if((param1 || !var_226[0][_loc7_]) && _loc6_[_loc7_])
                  {
                     _loc2_ = _loc2_ + (param1?_loc6_[_loc7_].MaxHealth:_loc6_[_loc7_].method_209);
                  }
                  _loc7_++;
               }
            }
            _loc3_++;
         }
         for each(var _loc14_ in var_175)
         {
            for each(_loc9_ in _loc5_)
            {
               _loc10_ = 0;
               while(_loc10_ < _loc9_.length)
               {
                  if(param1 || !_loc9_[_loc10_].deployed)
                  {
                     _loc2_ = _loc2_ + (param1?_loc9_[_loc10_].maxHealth:_loc9_[_loc10_].health);
                  }
                  _loc10_++;
               }
            }
         }
         return _loc2_;
      }
      
      public static function method_2492() : void
      {
         var_2940 = new Vector.<Vector.<Point>>(6,true);
         var_2765 = new Vector.<Point>(6,true);
         var_2213 = null;
         var_2157 = null;
      }
      
      private static function method_4425(param1:Point) : Point
      {
         var _loc3_:Point = null;
         var _loc5_:BldgFoundation = null;
         var _loc6_:* = NaN;
         var _loc2_:Object = BASE.var_41;
         var _loc4_:Number = Number.MAX_VALUE;
         for each(_loc5_ in _loc2_)
         {
            if(_loc5_._hp.Get() > 0 && _loc5_.name_8 != C_Buildings.CLASS_TRAP)
            {
               _loc6_ = class_175.method_368(param1.x,param1.y,_loc5_.x,_loc5_.y + _loc5_.middle);
               if(_loc6_ < _loc4_)
               {
                  _loc4_ = _loc6_;
                  _loc3_ = new Point(_loc5_.x,_loc5_.y + _loc5_.middle);
               }
            }
         }
         return _loc3_;
      }
      
      private static function method_3479(param1:Point, param2:int) : Number
      {
         var _loc5_:BldgFoundation = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc3_:Object = BASE.var_41;
         var _loc4_:Number = 0;
         for each(_loc5_ in _loc3_)
         {
            if(_loc5_._hp.Get() > 0 && _loc5_.name_8 != C_Buildings.CLASS_TRAP)
            {
               _loc6_ = class_175.method_2343(param1.x,param1.y,_loc5_.x,_loc5_.y + _loc5_.middle);
               _loc7_ = 0;
               if(_loc5_.name_8 == C_Buildings.CLASS_TOWER && _loc5_.attackRange)
               {
                  _loc7_ = _loc5_.attackRange;
               }
               if(!_loc7_)
               {
                  _loc7_ = _loc5_.middle * 2.5;
               }
               if(_loc6_ < _loc7_)
               {
                  _loc8_ = _loc7_ - _loc6_;
                  if(_loc8_ > _loc4_)
                  {
                     _loc4_ = _loc8_;
                  }
               }
            }
         }
         return _loc4_ + 5;
      }
      
      public static function method_2655(param1:Number, param2:int) : Number
      {
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Point = null;
         var _loc9_:* = NaN;
         var _loc3_:Point = new Point(Math.cos(param1),Math.sin(param1));
         var _loc4_:Point = new Point(_loc3_.x * const_570,_loc3_.y * const_570 * 0.5);
         var _loc5_:Point = method_4425(_loc4_);
         if(_loc5_)
         {
            _loc7_ = class_175.method_2343(_loc4_.x,_loc4_.y,_loc5_.x,_loc5_.y);
            if(class_175.method_1627(_loc7_) > const_570 - const_532)
            {
               _loc6_ = const_532;
            }
            else
            {
               _loc6_ = class_175.method_1627(class_175.method_2343(0,0,_loc5_.x,_loc5_.y));
            }
            _loc8_ = new Point(_loc3_.x * _loc6_,_loc3_.y * _loc6_ * 0.5);
            _loc9_ = method_3479(_loc8_,param2);
            _loc6_ = _loc6_ + _loc9_;
            return _loc6_;
         }
         return const_2792;
      }
      
      public static function method_1698(param1:Number, param2:int) : Number
      {
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:Dictionary = null;
         var _loc9_:Vector.<AbstractUnit> = null;
         var _loc10_:Vector.<class_143> = null;
         var _loc11_:* = 0;
         var _loc12_:Vector.<AbstractUnit> = null;
         var _loc13_:* = 0;
         var _loc3_:Number = -1;
         var _loc5_:Vector.<class_164> = Units._units;
         _loc6_ = 0;
         while(_loc6_ < _loc5_.length)
         {
            if(_loc5_[_loc6_] && !_loc5_[_loc6_].mine)
            {
               _loc4_++;
               _loc7_ = _loc5_[_loc6_].method_860;
               if(param2 == const_795 && _loc5_[_loc6_].method_6876)
               {
                  _loc7_ = _loc7_ * Units.GROUND_TO_AIR_RANGE_BONUS;
               }
               if(_loc7_ > _loc3_)
               {
                  _loc3_ = _loc5_[_loc6_].method_860;
               }
            }
            _loc6_++;
         }
         if(_loc3_ < 0)
         {
            return const_2792;
         }
         if(param2 == const_795)
         {
            for each(var _loc17_ in var_175)
            {
               for each(_loc9_ in _loc8_)
               {
                  if(_loc9_.length > 0 && _loc9_[0] && _loc9_[0].air == class_540.const_404 && _loc9_[0].attackRange > _loc3_)
                  {
                     _loc3_ = _loc9_[0].attackRange;
                  }
               }
            }
         }
         else if(var_45[param2])
         {
            _loc10_ = var_45[param2].method_94;
            if(_loc10_)
            {
               _loc11_ = 0;
               while(_loc11_ < _loc10_.length)
               {
                  if(_loc10_[_loc11_])
                  {
                     _loc12_ = _loc10_[_loc11_].class_579;
                     if(_loc12_)
                     {
                        _loc13_ = 0;
                        while(_loc13_ < _loc12_.length)
                        {
                           if(_loc12_[_loc13_] && _loc12_[_loc13_].attackRange > _loc3_)
                           {
                              _loc3_ = _loc12_[_loc13_].attackRange;
                           }
                           _loc13_++;
                        }
                     }
                  }
                  _loc11_++;
               }
            }
         }
         _loc3_ = _loc3_;
         _loc3_ = _loc3_ + Math.log(0) * Units.UNIT_SPIRAL_SPACING;
         if(_loc3_ < const_532)
         {
            _loc3_ = const_532;
         }
         return _loc3_;
      }
      
      public static function method_1625(param1:Number, param2:Number = 0) : Point
      {
         var _loc3_:Number = const_2921 + param2;
         var _loc4_:Number = param1 * PI180;
         var _loc5_:Point = class_175.method_183(new Point(Math.cos(_loc4_) * _loc3_,Math.sin(_loc4_) * _loc3_),0);
         return _loc5_;
      }
      
      public static function method_2886(param1:Number) : Point
      {
         var _loc2_:Number = -1 * const_531;
         var _loc3_:Point = method_1625(param1,_loc2_);
         return MAP.method_858(_loc3_);
      }
      
      private static function method_1721(param1:int) : void
      {
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         var _loc5_:* = 0;
         var _loc2_:Vector.<Point> = new Vector.<Point>(C_Platoon.const_78,true);
         if(var_45[param1])
         {
            _loc3_ = new Point();
            _loc4_ = new Point();
            if(!method_2745(_loc3_,_loc4_))
            {
               method_3929(param1,_loc3_,_loc4_);
            }
            var_2765[param1] = MAP.method_858(_loc4_);
            _loc2_[0] = new Point(_loc3_.x - const_219,_loc3_.y - const_219 * 0.5);
            _loc2_[1] = new Point(_loc3_.x + const_219,_loc3_.y - const_219 * 0.5);
            _loc2_[2] = new Point(_loc3_.x - const_219,_loc3_.y + const_219 * 0.5);
            _loc2_[3] = new Point(_loc3_.x + const_219,_loc3_.y + const_219 * 0.5);
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_.length)
            {
               _loc2_[_loc5_] = new Point();
               _loc5_++;
            }
         }
         var_2940[param1] = _loc2_;
      }
      
      private static function method_2745(param1:Point, param2:Point) : Boolean
      {
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         if(class_173.instance.getBaseInfo().hasDeployPos)
         {
            _loc3_ = class_173.instance.getBaseInfo().deployGridPos;
            _loc4_ = class_175.method_183(_loc3_,0);
            param1.x = _loc4_.x;
            param1.y = _loc4_.y;
            _loc4_.normalize(const_531);
            param2.x = param1.x - const_531;
            param2.y = param1.y - const_531;
            return true;
         }
         return false;
      }
      
      private static function method_3929(param1:int, param2:Point, param3:Point) : void
      {
         var _loc6_:* = NaN;
         var _loc4_:int = param1;
         _loc4_ = class_173.instance.getBaseInfo().method_1914(param1);
         var _loc5_:Number = const_1382[_loc4_] * PI180;
         if(_loc4_ != param1)
         {
            _loc5_ = _loc5_ - param1 * 4 * PI180;
         }
         if(class_105.method_244())
         {
            _loc6_ = method_1698(_loc5_,_loc4_);
            _loc6_ = _loc6_ + const_1122;
         }
         else
         {
            _loc6_ = const_2921;
         }
         _loc6_ = class_175.method_1627(_loc6_);
         if(_loc6_ > const_570)
         {
            _loc6_ = const_570;
         }
         _loc6_ = class_173.instance.getBaseInfo().method_5218(_loc6_);
         _loc6_ = method_3896(_loc5_,_loc6_);
         var _loc7_:Point = new Point(Math.cos(_loc5_),Math.sin(_loc5_));
         var _loc8_:Number = _loc6_ - const_531;
         param2.x = _loc7_.x * _loc6_;
         param2.y = _loc7_.y * _loc6_ * 0.5;
         param3.x = _loc7_.x * _loc8_;
         param3.y = _loc7_.y * _loc8_ * 0.5;
      }
      
      private static function method_3896(param1:Number, param2:Number) : Number
      {
         var _loc3_:Point = new Point(Math.cos(param1),Math.sin(param1));
         var _loc4_:Point = new Point(0,0);
         var _loc5_:int = param2;
         while(0 < const_3615)
         {
            _loc4_ = class_175.method_1263(_loc3_.x * _loc5_,_loc3_.y * _loc5_ * 0.5);
            if(class_118.battle.locationIsValidForGroundPlatoonDeploy(_loc4_.x,_loc4_.y))
            {
               return _loc5_;
            }
            _loc5_ = _loc5_ + const_3817;
            _loc6_++;
         }
         return param2;
      }
      
      private static function method_3040(param1:Point, param2:Point) : int
      {
         var _loc3_:Point = new Point(param1.x,param1.y);
         var _loc4_:Point = new Point(param2.x,param2.y);
         if(_loc4_.y % 2 == 0)
         {
            _loc4_.x = _loc4_.x + 0.5;
         }
         if(_loc3_.y % 2 == 0)
         {
            _loc3_.x = _loc3_.x + 0.5;
         }
         var _loc5_:Number = Math.atan2(_loc3_.y - _loc4_.y,_loc3_.x - _loc4_.x);
         return class_173.instance.getBaseInfo().method_5241(_loc5_);
      }
      
      private static function method_3910(param1:int) : Point
      {
         return new Point(Math.cos(param1),Math.sin(param1));
      }
      
      private static function method_1432() : void
      {
         var _loc1_:* = NaN;
         var _loc2_:Point = null;
         var _loc3_:* = NaN;
         if(class_105.method_65())
         {
            if(class_105.method_244())
            {
               _loc1_ = method_1698(var_2140,const_795);
            }
            else
            {
               _loc1_ = method_2655(var_2140,const_795);
            }
            _loc1_ = _loc1_ + var_4370;
            _loc1_ = class_175.method_1627(_loc1_);
            if(_loc1_ > const_1989)
            {
               _loc1_ = const_1989;
            }
            _loc2_ = method_3910(var_2140);
            _loc3_ = _loc1_ - const_531;
            var_2213 = new Point(_loc2_.x * _loc1_,_loc2_.y * _loc1_ * 0.5);
            var_2157 = MAP.method_858(new Point(_loc2_.x * _loc3_,_loc2_.y * _loc3_ * 0.5));
            Logger.console(class_2.method_7(-1820298742) + _loc1_);
         }
      }
      
      private static function method_533(param1:int, param2:int) : Point
      {
         if(class_23.method_89())
         {
            return new Point(500,-200);
         }
         if(!var_2940[param1])
         {
            method_1721(param1);
         }
         return var_2940[param1][param2];
      }
      
      private static function method_1058(param1:int) : Point
      {
         if(class_23.method_89())
         {
            return new Point(0,400);
         }
         if(!var_2765[param1])
         {
            method_1721(param1);
         }
         return var_2765[param1];
      }
      
      public static function method_1282() : Point
      {
         if(!var_2213)
         {
            method_1432();
         }
         return var_2213;
      }
      
      private static function method_3343() : Point
      {
         if(!var_2157)
         {
            method_1432();
         }
         return var_2157;
      }
      
      public static function method_4161(param1:class_471, param2:class_284, param3:Boolean) : void
      {
         var _loc6_:* = 0;
         PlatoonManager.class_2093.method_7324(param1,param2,param3);
         var_226 = new Vector.<Vector.<Boolean>>(6,true);
         var_684 = new Vector.<Vector.<Boolean>>(6,true);
         var_2569.Set(class_215.method_4936());
         method_530(0);
         var_663 = 0;
         var_820 = param2.mapEntity;
         var _loc4_:Vector.<C_Platoon> = PlatoonManager.class_2093.method_2601(param3);
         var_45 = new Vector.<C_Platoon>(6,true);
         while(0 < _loc4_.length)
         {
            _loc6_ = method_1426(_loc4_[0]);
            if(_loc6_ != -1)
            {
               var_45[_loc6_] = _loc4_[0];
               var_226[_loc6_] = new Vector.<Boolean>(C_Platoon.const_78,true);
               var_684[_loc6_] = new Vector.<Boolean>(C_Platoon.const_78,true);
               var_663++;
            }
            _loc7_++;
         }
      }
      
      public static function Data(param1:class_201) : void
      {
         Units.Clear(true);
         var_4272 = param1.token;
         var_4962 = param1;
         method_997();
         if(class_28.method_30 == true && BASE.method_139() == false)
         {
            class_169.method_1377(class_169.const_2306);
         }
      }
      
      public static function method_3422(param1:class_371, param2:class_8) : void
      {
         var_1606 = param1;
         var_820 = param2;
      }
      
      public static function method_4998() : void
      {
         var _loc1_:* = 0;
         var _loc2_:Vector.<C_Platoon> = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(var_1606)
         {
            var_226 = new Vector.<Vector.<Boolean>>(6,true);
            var_684 = new Vector.<Vector.<Boolean>>(6,true);
            _loc1_ = class_215.method_145(class_158.const_13);
            var_2569.Set(1500);
            method_530(0);
            method_546(0);
            var_663 = 0;
            PlatoonManager.class_2093.method_7382(var_1606);
            _loc2_ = PlatoonManager.class_2093.method_2601(true);
            var_45 = new Vector.<C_Platoon>(6,true);
            _loc5_ = 0;
            while(_loc5_ < _loc2_.length)
            {
               _loc4_ = method_1426(_loc2_[_loc5_]);
               if(_loc4_ != -1)
               {
                  var_45[_loc4_] = _loc2_[_loc5_];
                  var_226[_loc4_] = new Vector.<Boolean>(C_Platoon.const_78,true);
                  var_684[_loc4_] = new Vector.<Boolean>(C_Platoon.const_78,true);
                  var_663++;
               }
               _loc5_++;
            }
         }
         var_1606 = null;
      }
      
      public static function method_5110(param1:Array, param2:Array = null, param3:Boolean = true) : void
      {
         var _loc8_:C_Platoon = null;
         var _loc9_:Dictionary = null;
         var _loc10_:Vector.<AbstractUnit> = null;
         var _loc11_:AbstractUnit = null;
         var _loc12_:* = 0;
         var _loc4_:Vector.<C_Platoon> = PlatoonManager.class_2093.method_361();
         _loc4_.sort(C_Platoon.method_1327);
         method_546(0);
         var_3042.Set(class_215.method_5365());
         var_175 = new Vector.<Dictionary>(_loc4_.length,true);
         while(0 < _loc4_.length)
         {
            _loc8_ = _loc4_[0];
            _loc9_ = new Dictionary();
            var_175[0] = _loc9_;
            _loc10_ = _loc8_.class_579;
            for each(_loc11_ in _loc10_)
            {
               _loc12_ = _loc11_.type;
               if(_loc9_[_loc12_] == null)
               {
                  _loc9_[_loc12_] = new Vector.<AbstractUnit>();
               }
               if(param1 && param1.indexOf(_loc11_.uid) >= 0)
               {
                  _loc9_[_loc12_].push(_loc11_);
               }
               if(param2 && param2.indexOf(_loc11_.uid) >= 0)
               {
                  _loc11_.deployed = true;
               }
            }
            _loc5_++;
         }
         var _loc6_:Point = new Point();
         if(var_820)
         {
            _loc6_ = new Point(var_820.x,var_820.y);
         }
         else
         {
            Logger.error(class_2.method_7(-1820309510));
         }
         var _loc7_:Point = new Point(class_68.name_1.method_59.x,class_68.name_1.method_59.y);
         var_2140 = method_3040(_loc7_,_loc6_);
         class_118.instance.var_2980.method_111(method_636);
      }
      
      public static function method_4904(param1:int, param2:int) : Vector.<AbstractUnit>
      {
         return var_45[param1].method_94[param2].class_579;
      }
      
      public static function method_6941(param1:int, param2:int) : Array
      {
         var _loc4_:AbstractUnit = null;
         var _loc6_:* = 0;
         var _loc8_:Object = null;
         var _loc3_:Array = new Array();
         var _loc5_:Vector.<AbstractUnit> = var_45[param1].method_94[param2].class_579;
         _loc6_ = 0;
         while(_loc6_ < _loc5_.length)
         {
            _loc4_ = _loc5_[_loc6_];
            if(_loc4_.health > 0 || class_105.method_109())
            {
               if(_loc3_[_loc4_.type] != null)
               {
                  _loc3_[_loc4_.type] = _loc3_[_loc4_.type] + 1;
               }
               else
               {
                  _loc3_[_loc4_.type] = 1;
               }
            }
            _loc6_++;
         }
         var _loc7_:Array = new Array();
         _loc6_ = 2;
         while(_loc6_ < _loc3_.length)
         {
            if(_loc3_[_loc6_] != null)
            {
               _loc8_ = {
                  "t":_loc6_,
                  "count":_loc3_[_loc6_]
               };
               _loc7_.push(_loc8_);
            }
            _loc6_++;
         }
         return _loc7_;
      }
      
      public static function method_3299(param1:int, param2:int) : Number
      {
         var _loc3_:AbstractUnit = null;
         var _loc4_:Vector.<AbstractUnit> = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         if(var_45[param1] && var_45[param1].method_94 && param2 < var_45[param1].method_94.length && var_45[param1].method_94[param2])
         {
            _loc4_ = var_45[param1].method_94[param2].class_579;
            _loc5_ = 0;
            _loc6_ = 0;
            while(_loc6_ < _loc4_.length)
            {
               _loc3_ = _loc4_[_loc6_];
               _loc5_ = _loc5_ + _loc3_.health;
               _loc6_++;
            }
            return _loc5_;
         }
         return -1;
      }
      
      public static function method_2969(param1:int, param2:int) : Number
      {
         var _loc3_:AbstractUnit = null;
         var _loc4_:Vector.<AbstractUnit> = var_45[param1].method_94[param2].class_579;
         var _loc5_:Number = 0;
         while(0 < _loc4_.length)
         {
            _loc3_ = _loc4_[0];
            if(_loc3_.health > 0)
            {
               _loc5_ = _loc5_ + _loc3_.maxHealth;
            }
            _loc6_++;
         }
         return _loc5_;
      }
      
      public static function method_4121(param1:int, param2:int) : Boolean
      {
         var _loc3_:class_164 = null;
         var _loc4_:Vector.<AbstractUnit> = var_45[param1].method_94[param2].class_579;
         while(0 < _loc4_.length)
         {
            _loc3_ = _loc4_[0].GetUnit();
            if(_loc3_ && !_loc3_._dead && !_loc3_.isRetreating)
            {
               if(!_loc3_.selected)
               {
                  return false;
               }
            }
            _loc5_++;
         }
         return true;
      }
      
      public static function method_6815(param1:int) : Dictionary
      {
         if(var_175 == null || param1 < 0 || param1 >= var_175.length)
         {
            class_44.assert(false,class_2.method_7(-1820309146) + param1);
            return null;
         }
         return var_175[param1];
      }
      
      private static function method_527(param1:int, param2:int) : Vector.<AbstractUnit>
      {
         if(var_175 == null || param1 < 0 || param1 >= var_175.length || var_175[param1] == null)
         {
            class_44.assert(false,class_2.method_7(-1820301029) + param1);
            return null;
         }
         return var_175[param1][param2];
      }
      
      public static function method_2156() : Boolean
      {
         if(class_105.method_55())
         {
            return false;
         }
         return method_2678() > 0;
      }
      
      private static function method_935(param1:int, param2:int, param3:Boolean = false, param4:Boolean = false) : int
      {
         var _loc9_:class_164 = null;
         var _loc5_:Vector.<AbstractUnit> = method_527(param1,param2);
         if(_loc5_ == null || _loc5_.length == 0)
         {
            Logger.error(class_2.method_7(-1820311460) + param2.toString());
            return 0;
         }
         var _loc8_:int = _loc5_.length;
         while(0 < _loc8_)
         {
            _loc9_ = _loc5_[0].GetUnit();
            if(_loc9_)
            {
               if(_loc9_.health.Get() > 0 && (!param3 || (_loc9_.var_1314 || !param4) && !_loc9_.isRetreating))
               {
                  _loc6_++;
               }
            }
            else if(!param4 && _loc5_[0].health > 0)
            {
               _loc6_++;
            }
            else if(param4 && _loc5_[0].deployed)
            {
               _loc6_++;
            }
            _loc7_++;
         }
         return 0;
      }
      
      public static function method_4127(param1:int, param2:int) : int
      {
         return method_935(param1,param2);
      }
      
      public static function method_1634(param1:int, param2:int) : int
      {
         return method_935(param1,param2,true);
      }
      
      public static function method_7217(param1:int, param2:int) : int
      {
         return method_935(param1,param2,true,true);
      }
      
      public static function method_2678() : int
      {
         var _loc2_:* = 0;
         var _loc3_:Object = null;
         var _loc1_:* = 0;
         if(var_175 != null)
         {
            _loc2_ = 0;
            while(_loc2_ < var_175.length)
            {
               for(_loc3_ in var_175[_loc2_])
               {
                  _loc1_ = _loc1_ + method_1634(_loc2_,_loc3_ as int);
               }
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      public static function method_1418(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc6_:AbstractUnit = null;
         var _loc4_:Vector.<AbstractUnit> = method_527(param1,param2);
         if(_loc4_ == null)
         {
            Logger.error(class_2.method_7(-1820297188) + param2.toString());
            return;
         }
         var _loc5_:Vector.<Number> = new Vector.<Number>();
         for each(_loc6_ in _loc4_)
         {
            if(_loc6_.deployed && _loc6_.health > 0)
            {
               _loc5_.push(_loc6_.uid);
            }
         }
         if(param3)
         {
            Units.SelectList(_loc5_,class_105.method_65());
         }
         else
         {
            Units.DeselectList(_loc5_,class_105.method_65());
         }
      }
      
      public static function method_6044(param1:int, param2:int) : Boolean
      {
         var _loc4_:class_164 = null;
         var _loc3_:Vector.<AbstractUnit> = method_527(param1,param2);
         if(_loc3_ == null)
         {
            Logger.error(class_2.method_7(-1820300137) + param2.toString());
            return false;
         }
         while(0 < _loc3_.length)
         {
            _loc4_ = _loc3_[0].GetUnit();
            if(_loc4_ && !_loc4_._dead && !_loc4_.isRetreating)
            {
               if(!_loc4_.selected)
               {
                  return false;
               }
            }
            _loc5_++;
         }
         return true;
      }
      
      public static function method_3744(param1:int, param2:int, param3:int = 1) : void
      {
         var _loc6_:AbstractUnit = null;
         var _loc7_:* = 0;
         var _loc4_:Vector.<AbstractUnit> = method_527(param1,param2);
         if(!_loc4_)
         {
            Logger.error(class_2.method_7(-1820298657) + param2.toString());
            return;
         }
         while(0 < param3)
         {
            _loc6_ = null;
            _loc7_ = 0;
            while(_loc7_ < _loc4_.length)
            {
               if(_loc4_[_loc7_].deployed && AIBoxReceiver.GetLiveUnit(_loc4_[_loc7_].uid,true) && _loc4_[_loc7_].GetUnit() && !_loc4_[_loc7_].GetUnit().isRetreating && _loc4_[_loc7_].health > 0)
               {
                  if(_loc6_)
                  {
                     if(_loc4_[_loc7_].health < _loc6_.health)
                     {
                        _loc6_ = _loc4_[_loc7_];
                     }
                  }
                  else
                  {
                     _loc6_ = _loc4_[_loc7_];
                  }
               }
               _loc7_++;
            }
            if(_loc6_)
            {
               if(_loc6_.GetUnit())
               {
                  _loc6_.GetUnit().method_832();
                  var_323.method_7222(param2);
               }
               else
               {
                  Logger.debug(class_2.method_7(-1820296988) + param2);
               }
               _loc5_++;
               continue;
            }
            Logger.debug(class_2.method_7(-1820297627));
            return;
         }
      }
      
      public static function method_2352(param1:int, param2:int = 1, param3:Vector.<AbstractUnit> = null) : Boolean
      {
         var _loc5_:AbstractUnit = null;
         if(method_3779)
         {
            return true;
         }
         var _loc4_:* = 0;
         if(param3 != null && param3.length > 0)
         {
            for each(_loc5_ in param3)
            {
               _loc4_ = _loc4_ + Units.GetModifiedWeight(_loc5_.type,true,_loc5_);
            }
         }
         else
         {
            _loc4_ = _loc4_ + Units.GetModifiedWeight(param1,true) * param2;
         }
         if(method_4426 + _loc4_ > method_3760)
         {
            if(UI.var_72 != null)
            {
               UI.var_72.method_1231(true);
            }
            return false;
         }
         return true;
      }
      
      public static function method_1317(param1:int, param2:int, param3:Boolean, param4:int = 1) : void
      {
         var _loc7_:AbstractUnit = null;
         var _loc8_:AbstractUnit = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         if(param4 <= 0)
         {
            return;
         }
         var _loc5_:Vector.<AbstractUnit> = method_527(param1,param2);
         if(_loc5_ == null || _loc5_.length == 0)
         {
            Logger.error(class_2.method_7(-1820310451) + param2.toString());
            return;
         }
         _loc5_ = _loc5_.concat();
         _loc5_.sort(AbstractUnit.method_1399);
         var _loc6_:Vector.<AbstractUnit> = new Vector.<AbstractUnit>();
         for each(_loc7_ in _loc5_)
         {
            if(_loc7_.health <= 0)
            {
               break;
            }
            if(!_loc7_.deployed)
            {
               _loc6_.push(_loc7_);
               if(_loc6_.length >= param4)
               {
                  break;
               }
            }
         }
         if(_loc6_.length == 0)
         {
            Logger.debug(class_2.method_7(-1820296462));
            return;
         }
         if(!method_2352(param2,param4,_loc6_))
         {
            return;
         }
         if(param3)
         {
            method_899(param1,param2);
         }
         for each(_loc8_ in _loc6_)
         {
            _loc9_ = method_1282().x + (const_79 * 0.5 - const_79 * Math.random());
            _loc10_ = method_1282().y + (const_79 * 0.5 - const_79 * Math.random()) * 0.5;
            if(Units.GetData(_loc8_.type).air == class_540.const_404)
            {
               if(param3)
               {
                  method_676(method_3343());
               }
            }
            class_118.instance.method_5981(_loc8_.uid,new Point(_loc9_,_loc10_));
            class_176.method_435(_loc8_);
            _loc8_.deployed = true;
            Logger.debug(class_2.method_7(-1820297504) + _loc8_.uid + " " + _loc8_.deployed);
            var_323.method_6413(_loc8_);
            var_1930 = var_1930 + 1;
         }
         method_636();
      }
      
      public static function method_5561(param1:Number) : void
      {
         var _loc3_:Vector.<AbstractUnit> = null;
         var _loc4_:AbstractUnit = null;
         if(var_175 == null)
         {
            return;
         }
         while(0 < var_175.length)
         {
            for each(var _loc8_ in var_175[0])
            {
               for each(_loc4_ in _loc3_)
               {
                  if(_loc4_.uid == param1)
                  {
                     method_1317(0,_loc4_.type,true,1);
                     return;
                  }
               }
            }
            _loc2_++;
         }
      }
      
      public static function method_436() : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:class_143 = null;
         var _loc5_:Vector.<AbstractUnit> = null;
         var _loc6_:* = 0;
         var _loc7_:AbstractUnit = null;
         var _loc1_:* = 0;
         if(var_226)
         {
            _loc2_ = 0;
            while(_loc2_ < var_226.length)
            {
               if(var_226[_loc2_])
               {
                  _loc3_ = 0;
                  while(_loc3_ < var_226[_loc2_].length)
                  {
                     if(var_226[_loc2_][_loc3_])
                     {
                        _loc4_ = method_531(_loc2_,_loc3_);
                        if(_loc4_)
                        {
                           _loc5_ = _loc4_.class_579;
                           _loc6_ = 0;
                           while(_loc6_ < _loc5_.length)
                           {
                              _loc7_ = _loc5_[_loc6_] as AbstractUnit;
                              if(_loc7_.health > 0 || class_105.method_109())
                              {
                                 _loc1_ = _loc1_ + _loc7_.getWeight(class_118.instance.isAttacker);
                              }
                              _loc6_++;
                           }
                        }
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
         method_530(_loc1_);
         if(UI && UI.var_72)
         {
            UI.var_72.Tick();
         }
      }
      
      public static function method_636() : void
      {
         var _loc2_:Dictionary = null;
         var _loc3_:Vector.<AbstractUnit> = null;
         var _loc4_:AbstractUnit = null;
         var _loc1_:* = 0;
         for each(var _loc8_ in var_175)
         {
            for each(var _loc10_ in _loc2_)
            {
               for each(_loc4_ in _loc3_)
               {
                  if(_loc4_.deployed && _loc4_.health > 0)
                  {
                     _loc1_ = _loc1_ + _loc4_.getWeight(class_118.instance.isAttacker);
                  }
               }
            }
         }
         method_546(_loc1_);
         if(UI && UI.var_72)
         {
            UI.var_72.Tick();
         }
      }
      
      public static function method_1187(param1:int, param2:int) : Boolean
      {
         if(var_226 && var_226[param1] && var_226[param1][param2])
         {
            return true;
         }
         return false;
      }
      
      public static function method_1815(param1:int, param2:int) : Boolean
      {
         if(var_684 && var_684[param1] && var_684[param1][param2])
         {
            return true;
         }
         return false;
      }
      
      public static function method_7518(param1:int, param2:int) : Boolean
      {
         var _loc3_:Vector.<AbstractUnit> = null;
         var _loc4_:* = 0;
         var _loc5_:class_164 = null;
         if(!method_1815(param1,param2))
         {
            return false;
         }
         if(var_45[param1] && var_45[param1].method_94 && var_45[param1].method_94[param2] && var_45[param1].method_94[param2].class_579)
         {
            _loc3_ = var_45[param1].method_94[param2].class_579;
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc5_ = _loc3_[_loc4_].GetUnit();
               if(_loc5_ && _loc5_.isRetreating && !_loc5_._dead)
               {
                  return false;
               }
               _loc4_++;
            }
            var_226[param1][param2] = false;
            var_684[param1][param2] = false;
            method_436();
            return true;
         }
         return false;
      }
      
      private static function method_531(param1:int, param2:int) : class_143
      {
         if(var_45[param1] && var_45[param1].method_94 && var_45[param1].method_94[param2])
         {
            return var_45[param1].method_94[param2];
         }
         Logger.warn(class_2.method_7(-1820298045) + param1 + class_2.method_7(-1820302613) + param2);
         return null;
      }
      
      public static function method_899(param1:int, param2:int = -1) : void
      {
         var _loc3_:* = 0;
         var _loc4_:Vector.<class_143> = null;
         var _loc5_:* = 0;
         var _loc6_:Object = null;
         var _loc7_:* = 0;
         if(var_45 != null)
         {
            _loc3_ = 0;
            while(_loc3_ < var_45.length)
            {
               if(param2 != -1 || _loc3_ != param1 && var_45[_loc3_] && var_45[_loc3_].method_94)
               {
                  _loc4_ = var_45[_loc3_].method_94;
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_.length)
                  {
                     method_1758(_loc3_,_loc5_,false);
                     _loc5_++;
                  }
               }
               _loc3_++;
            }
         }
         if(var_175 != null)
         {
            _loc3_ = 0;
            while(_loc3_ < var_175.length)
            {
               for(_loc6_ in var_175[_loc3_])
               {
                  _loc7_ = _loc6_ as int;
                  if(param2 == -1 || _loc7_ != param2 || _loc3_ != param1)
                  {
                     method_1418(_loc3_,_loc7_,false);
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public static function method_1758(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc6_:* = 0;
         if(!var_226[param1][param2])
         {
            return;
         }
         var _loc4_:Vector.<Number> = new Vector.<Number>();
         var _loc5_:class_143 = method_531(param1,param2);
         if(_loc5_)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc5_.class_579.length)
            {
               _loc4_.push(_loc5_.class_579[_loc6_].uid);
               _loc6_++;
            }
         }
         if(param3)
         {
            Units.SelectList(_loc4_,class_105.method_65());
         }
         else
         {
            Units.DeselectList(_loc4_,class_105.method_65());
         }
      }
      
      public static function method_7647(param1:int, param2:int) : void
      {
         var _loc5_:* = 0;
         if(class_105.method_55())
         {
            return;
         }
         if(!var_226[param1][param2] || var_684[param1][param2])
         {
            return;
         }
         var _loc3_:Vector.<Number> = new Vector.<Number>();
         var _loc4_:class_143 = method_531(param1,param2);
         if(_loc4_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc4_.class_579.length)
            {
               _loc3_.push(_loc4_.class_579[_loc5_].uid);
               _loc5_++;
            }
            var_323.method_5551(_loc4_,const_505[param1]);
         }
         class_118.instance.method_5867(var_45[param1].method_345,param2);
         Units.RetreatUnits(_loc3_,class_105.method_65());
         var_684[param1][param2] = true;
      }
      
      public static function method_6696(param1:int, param2:int) : Boolean
      {
         var _loc7_:AbstractUnit = null;
         var _loc3_:class_143 = method_531(param1,param2);
         if(_loc3_ == null)
         {
            return false;
         }
         var _loc4_:* = 0;
         var _loc5_:Vector.<AbstractUnit> = _loc3_.class_579;
         for each(_loc7_ in _loc5_)
         {
            if(_loc7_.health > 0 || class_105.method_109())
            {
               _loc4_ = _loc4_ + _loc7_.getWeight(true);
            }
         }
         if(class_105.method_65())
         {
            if(method_3779 || _loc4_ + method_1666 <= method_2493)
            {
               if(class_23.method_89())
               {
                  Units.tutorialSpawnSquad(_loc3_,method_533(param1,param2));
               }
               else
               {
                  BuffManager.instance.onSquadDeployed();
                  class_118.instance.method_3180(var_45[param1].method_345,param2,method_533(param1,param2));
               }
               method_899(param1);
               method_676(method_1058(param1));
               var_323.method_7464(_loc3_,const_505[param1]);
               var_226[param1][param2] = true;
               method_436();
               UI.var_72.Tick();
               var_1189 = var_1189 + _loc5_.length;
               return true;
            }
            UI.var_72.method_1231(false);
         }
         else if(class_105.method_109() && DepositManager.class_2093.method_477)
         {
            if(_loc4_ + UnitManager.class_2093.method_1314(true) <= DepositManager.class_2093.method_477.method_96)
            {
               if(class_23.method_89())
               {
                  Units.tutorialSpawnSquad(_loc3_,method_533(param1,param2));
               }
               else
               {
                  class_118.instance.method_3180(var_45[param1].method_345,param2,method_533(param1,param2));
               }
               method_899(param1);
               method_676(method_1058(param1));
               var_226[param1][param2] = true;
               var_45[param1].method_2503(param2);
               UI.var_72.Tick();
               var_1189 = var_1189 + _loc5_.length;
               return true;
            }
            UI.var_72.method_1231(false);
         }
         return false;
      }
      
      public static function method_7025(param1:Number) : void
      {
         var _loc2_:* = 0;
         var _loc3_:C_Platoon = null;
         var _loc4_:Vector.<class_143> = null;
         var _loc5_:* = 0;
         if(var_45)
         {
            _loc2_ = 0;
            while(_loc2_ < var_45.length)
            {
               _loc3_ = var_45[_loc2_];
               if(_loc3_)
               {
                  _loc4_ = _loc3_.method_94;
                  if(_loc4_)
                  {
                     _loc5_ = 0;
                     while(_loc5_ < _loc4_.length)
                     {
                        if(_loc4_[_loc5_] && _loc4_[_loc5_].method_356(param1))
                        {
                           var_684[_loc2_][_loc5_] = true;
                        }
                        _loc5_++;
                     }
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public static function method_2236() : String
      {
         var _loc1_:Object = null;
         if(class_105.method_65())
         {
            _loc1_ = {};
            _loc1_.retreating = var_1844;
            _loc1_.deployedUnits = var_1189;
            _loc1_.deployedAir = var_1930;
            _loc1_.timeLeft = int(class_118.instance.method_2566() / class_31.const_20.Get());
            _loc1_.numBattles = class_118.instance.method_1807;
            _loc1_.locType = class_105.method_49().var_363;
            return WCJSON.encode(_loc1_);
         }
         return class_2.method_7(-1820303250);
      }
      
      public static function method_6133(param1:Array) : void
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.split(":");
            if(_loc3_.length > 1)
            {
               _loc4_ = method_1040(_loc3_[0]);
               if(_loc4_ >= 0)
               {
                  method_4356(_loc4_,_loc3_[1]);
               }
               else
               {
                  Logger.warn(class_2.method_7(-1820300759) + _loc3_[0]);
               }
            }
            else
            {
               Logger.warn(class_2.method_7(-1820309014) + _loc2_ + class_2.method_7(-1820301348));
            }
         }
      }
      
      private static function method_4356(param1:int, param2:int) : void
      {
         var _loc6_:* = 0;
         var _loc9_:class_164 = null;
         var _loc10_:AbstractUnit = null;
         var _loc3_:class_143 = method_531(param1,param2);
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:Vector.<AbstractUnit> = _loc3_.class_579;
         var _loc5_:int = _loc4_.length;
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            if(_loc4_[_loc6_].health > 0)
            {
               _loc9_ = Units.GetUnit(_loc4_[_loc6_].uid,true);
               if(_loc9_ != null)
               {
                  _loc4_[_loc6_].health = _loc9_.health.Get();
               }
               else
               {
                  _loc4_[_loc6_].health = 0;
               }
            }
            _loc6_++;
         }
         var _loc7_:* = 0;
         var _loc8_:Boolean = class_105.method_109();
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            _loc10_ = _loc4_[_loc6_];
            if(_loc10_.health > 0 || _loc8_)
            {
               _loc7_ = _loc7_ + _loc10_.getWeight(true);
            }
            _loc6_++;
         }
         if(class_105.method_65())
         {
            if(_loc7_ + method_1666 > method_2493)
            {
               Logger.warn(class_2.method_7(-1820301832) + param2 + class_2.method_7(-1820299216) + param1 + class_2.method_7(-1820297594) + _loc7_ + class_2.method_7(-1820308698) + (_loc7_ + method_1666));
            }
            var_226[param1][param2] = true;
            method_436();
         }
      }
      
      public static function method_5010(param1:String, param2:int) : void
      {
         var _loc3_:int = method_1040(param1);
         if(_loc3_ >= 0)
         {
            var_226[_loc3_][param2] = true;
            method_436();
         }
         else
         {
            Logger.warn(class_2.method_7(-1820300759) + param1);
         }
      }
      
      public static function method_7519(param1:String, param2:int) : void
      {
         var _loc3_:int = method_1040(param1);
         if(_loc3_ >= 0)
         {
            var_226[_loc3_][param2] = false;
            method_436();
         }
         else
         {
            Logger.warn(class_2.method_7(-1820300759) + param1);
         }
      }
      
      public static function method_6531(param1:Number) : void
      {
         var _loc2_:Dictionary = null;
         var _loc3_:Vector.<AbstractUnit> = null;
         var _loc4_:AbstractUnit = null;
         for each(var _loc8_ in var_175)
         {
            for each(var _loc10_ in _loc2_)
            {
               for each(_loc4_ in _loc3_)
               {
                  if(_loc4_.uid == param1)
                  {
                     _loc4_.deployed = true;
                     method_636();
                     return;
                  }
               }
            }
         }
         Logger.warn(class_2.method_7(-1820295977) + param1);
      }
      
      public static function method_7124(param1:Number) : void
      {
         var _loc2_:Dictionary = null;
         var _loc3_:Vector.<AbstractUnit> = null;
         var _loc4_:AbstractUnit = null;
         for each(var _loc8_ in var_175)
         {
            for each(var _loc10_ in _loc2_)
            {
               for each(_loc4_ in _loc3_)
               {
                  if(_loc4_.uid == param1)
                  {
                     _loc4_.deployed = false;
                     method_636();
                     return;
                  }
               }
            }
         }
         Logger.warn(class_2.method_7(-1820300468) + param1);
      }
      
      public static function method_6605(param1:int) : Boolean
      {
         if(class_105.method_109() == false && DepositManager.class_2093.method_477 == false)
         {
            Logger.debug(class_2.method_7(-1820295499));
            return false;
         }
         var _loc2_:String = class_105.method_49().baseID.toString();
         var _loc3_:class_111 = DepositManager.class_2093.method_917(_loc2_);
         if(_loc3_ == null)
         {
            Logger.debug(class_2.method_7(-1820309472));
            return false;
         }
         if(_loc3_.method_299)
         {
            Logger.debug(class_2.method_7(-1820296399));
            UI.var_72.method_1231(false);
            return false;
         }
         var _loc4_:C_Platoon = var_45[param1];
         if(_loc4_ == null)
         {
            Logger.debug(class_2.method_7(-1820298958));
            return false;
         }
         if(_loc4_.mapEntity == null || _loc4_.state != C_Platoon.const_88)
         {
            class_97.Show(new class_192(class_43.getString(class_2.method_7(-1820309017)),class_43.getString(class_2.method_7(-1820303341)),true,"",null,class_102.const_16));
            return false;
         }
         if(_loc4_.mapEntity.status == class_35.const_172)
         {
            class_97.Show(new class_192(class_43.getString(class_2.method_7(-1820309017)),class_43.getString(class_2.method_7(-1820296515)),true,"",null,class_102.const_16));
            return false;
         }
         if(_loc4_.method_209 == 0)
         {
            class_97.Show(new class_192(class_43.getString(class_2.method_7(-1820309017)),class_43.getString(class_2.method_7(-1820311015)),true,"",null,class_102.const_16));
            return false;
         }
         if(_loc4_.mapEntity.status != class_35.const_252)
         {
            class_97.Show(new class_192(class_43.getString(class_2.method_7(-1820309017)),class_43.getString(class_2.method_7(-1820298025)),true,"",null,class_102.const_16));
            return false;
         }
         if(_loc4_.method_75 > _loc3_.method_96)
         {
            UI.var_72.method_1231(false);
            return false;
         }
         SaveManager.class_2093.Base.method_4565();
         Units.SpawnDepositPlatoon(_loc4_,method_533(param1,0));
         method_676(method_1058(param1));
         PlatoonManager.class_2093.method_857(_loc4_.ID,_loc2_);
         UI.var_72.Tick();
         return true;
      }
      
      public static function method_2472(param1:int, param2:int) : Boolean
      {
         if(var_45 == null || var_45[param1] == null || var_45[param1].method_94 == null)
         {
            return false;
         }
         if(param1 >= var_45.length)
         {
            return false;
         }
         if(param2 >= var_45[param1].method_94.length)
         {
            return false;
         }
         if(var_45[param1] && var_45[param1].method_94[param2])
         {
            return true;
         }
         return false;
      }
      
      public static function method_8289() : Array
      {
         var _loc1_:Array = [{
            "t":class_132.const_492,
            "count":10
         },{
            "t":class_132.UNIT_AIR_CHOPPER1,
            "count":5
         },{
            "t":class_132.const_645,
            "count":32
         }];
         return _loc1_;
      }
      
      private static function method_1040(param1:String) : int
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < var_45.length)
         {
            if(var_45[_loc2_] && var_45[_loc2_].method_345 == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      private static function method_1426(param1:C_Platoon) : int
      {
         if(var_820 == null)
         {
            return -1;
         }
         if(param1.method_345 == class_146.const_198)
         {
            return 0;
         }
         var _loc2_:Point = new Point(var_820.x,var_820.y);
         var _loc3_:int = _loc2_.x - param1.mapEntity.x;
         var _loc4_:int = _loc2_.y - param1.mapEntity.y;
         if(Math.abs(_loc3_) > 1 || Math.abs(_loc4_) > 1)
         {
            return -1;
         }
         var _loc5_:* = -1;
         switch(_loc4_)
         {
            case 0:
               _loc5_ = _loc3_ == 1?4:1;
               break;
            case 1:
               if(_loc2_.y % 2 == 0)
               {
                  _loc5_ = 5;
                  if(_loc3_ == 0)
                  {
                     _loc5_ = 0;
                     break;
                  }
                  break;
               }
               _loc5_ = 0;
               if(_loc3_ == 0)
               {
                  _loc5_ = 5;
                  break;
               }
               break;
            case -1:
               if(_loc2_.y % 2 == 0)
               {
                  _loc5_ = 3;
                  if(_loc3_ == 0)
                  {
                     _loc5_ = 2;
                     break;
                  }
                  break;
               }
               _loc5_ = 2;
               if(_loc3_ == 0)
               {
                  _loc5_ = 3;
                  break;
               }
               break;
         }
         return _loc5_;
      }
      
      private static function method_676(param1:Point) : void
      {
         if(var_1620)
         {
            if(class_175.method_368(param1.x,param1.y,var_1620.x,var_1620.y) > 1 || (getTimer() - var_2377) / class_31.const_20.Get() > const_2796)
            {
               var_1620 = param1;
               var_2377 = getTimer();
               MAP.method_270(param1.x,param1.y,const_2796);
            }
         }
      }
      
      public static function method_1154() : Boolean
      {
         var _loc2_:BldgFoundation = null;
         if(class_105.method_55())
         {
            return false;
         }
         if(var_2658 == true)
         {
            return true;
         }
         var _loc1_:* = false;
         if(class_105.method_81())
         {
            _loc1_ = BASE.method_942() == class_31.const_8.Get() && !Units.HasActiveUnits() && Units.HasAttackers(true);
         }
         else if(class_105.method_244())
         {
            _loc1_ = !Units.HasAttackers(false);
         }
         else if(!BASE.method_139())
         {
            _loc1_ = BASE.method_942() >= 50;
         }
         else
         {
            _loc2_ = BASE.method_29(class_158.const_13);
            _loc1_ = _loc2_ != null && _loc2_._hp.Get() == 0;
         }
         var_2658 = _loc1_;
         return _loc1_;
      }
      
      public static function method_4896() : int
      {
         if(!BASE.method_139() && class_105.method_184())
         {
            return BASE.method_942();
         }
         if(BASE.method_139() || class_105.method_949())
         {
            return method_1154()?class_31.const_8.Get():0;
         }
         return 0;
      }
      
      public static function method_4979() : String
      {
         var _loc3_:class_752 = null;
         var _loc4_:String = null;
         var _loc1_:Object = {};
         _loc1_.events = [];
         var _loc2_:class_760 = var_323.method_3252() as class_760;
         if(_loc2_)
         {
            _loc3_ = _loc2_.CurrentItem as class_752;
            while(_loc3_)
            {
               _loc1_.events.push({
                  "event":_loc3_.Message,
                  "time":_loc3_.method_7692
               });
               _loc3_ = _loc2_.method_920() as class_752;
            }
         }
         if(var_1784)
         {
            _loc4_ = WCJSON.encode(var_323.method_6344());
            _loc1_.events.push(_loc4_);
         }
         return WCJSON.encode(_loc1_);
      }
      
      private static function method_8327() : Boolean
      {
         var _loc3_:Vector.<class_143> = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Dictionary = null;
         var _loc7_:Vector.<AbstractUnit> = null;
         var _loc8_:AbstractUnit = null;
         var _loc2_:int = var_45.length;
         while(0 < _loc2_)
         {
            if(var_45[0] && var_45[0].method_94)
            {
               _loc3_ = var_45[0].method_94;
               _loc4_ = 0;
               _loc5_ = _loc3_.length;
               while(_loc4_ < _loc5_)
               {
                  if(!var_226[0][_loc4_] && _loc3_[_loc4_] && _loc3_[_loc4_].method_209 > 0)
                  {
                     return true;
                  }
                  _loc4_++;
               }
            }
            _loc1_++;
         }
         if(var_175 != null)
         {
            for each(var _loc12_ in var_175)
            {
               for each(var _loc14_ in _loc6_)
               {
                  for each(_loc8_ in _loc7_)
                  {
                     if(_loc8_.health > 0)
                     {
                        return true;
                     }
                  }
               }
            }
         }
         return false;
      }
      
      public static function class_800(param1:int, param2:int, param3:int, param4:int, param5:int = 10) : void
      {
         if(BASE.method_139() && class_185.method_1363(class_105.method_49().var_244) || class_105.method_167())
         {
            return;
         }
         if(class_105.method_171 == false)
         {
            class_138.method_608(class_2.method_7(-1820301215),param2);
         }
      }
      
      public static function method_997() : void
      {
         Logger.debug(class_2.method_7(-1820308024));
         var_323.Clear();
         var_323.method_2631();
         var_3454 = var_1469;
      }
      
      public static function method_7965() : void
      {
         if(!var_2761)
         {
            var_2761 = true;
            var_1978 = 2;
         }
      }
      
      public static function method_2317() : void
      {
         method_3204();
         method_530(0);
         method_546(0);
         if(UI.var_72)
         {
            UI.var_72.Tick();
         }
         Projectiles.Clear();
         AOEManager.Clear();
      }
      
      public static function method_679(param1:Boolean) : void
      {
         UI.Tick();
         if(var_1784)
         {
            return;
         }
         var_1784 = true;
         class_118.instance.method_2111();
         if(var_323 != null)
         {
            var_323.method_2425();
         }
         if(param1)
         {
            method_1960(class_105.method_49().var_363);
         }
         if(class_105.method_49().method_206 == class_182.const_328)
         {
            FrameworkLogger.Log(class_2.method_7(-1820310579),class_2.method_7(-1820296355) + param1);
         }
         method_2317();
         if(class_118.instance.method_1453() && class_105.method_171())
         {
            UI.Hide("warning");
            method_2728(param1);
         }
         else
         {
            method_3865(param1);
         }
      }
      
      private static function method_2728(param1:Boolean) : void
      {
         var battleWon:Boolean = param1;
         if(battleWon)
         {
            var queueGoHomePopup:Function = function():void
            {
               class_97.class_2206(new class_758());
            };
            method_1081(queueGoHomePopup,const_2524);
         }
         else
         {
            var goHome:Function = function():void
            {
               class_105.goHome();
            };
            method_1081(goHome,const_3729);
         }
      }
      
      private static function method_3865(param1:Boolean) : void
      {
         var lootedResources:ResourceObject = null;
         var postBattlePopup:class_102 = null;
         var percentDamaged:int = 0;
         var stars:int = 0;
         var infamyEarned:Number = NaN;
         var battleWon:Boolean = param1;
         var isPvP:Boolean = !BASE.method_139();
         var name:String = BASE.baseName;
         if(BASE.var_882 != 0)
         {
            name = class_43.getString(class_2.method_7(-1820309277),{class_2.method_7(-1820298852):BASE.var_2065});
         }
         if(class_105.method_23() && class_68.name_1.method_1658())
         {
            name = class_68.name_1.method_2562(false);
         }
         else if(!class_105.method_23() && BASE.method_1942())
         {
            name = BASE.method_871;
         }
         if(class_28.method_30)
         {
            lootedResources = class_118.instance.method_5760();
         }
         else
         {
            lootedResources = new ResourceObject();
            lootedResources.method_332(class_206.const_5,class_28.const_899);
            lootedResources.method_332(class_206.const_6,class_28.const_899);
         }
         var baseLoadParams:class_172 = class_105.method_49();
         if(battleWon && class_105.method_2266())
         {
            if(class_761.method_7038(class_173.instance.getBaseInfo(),baseLoadParams))
            {
               postBattlePopup = new class_761(lootedResources,name);
            }
            else
            {
               postBattlePopup = new class_753(lootedResources,name);
            }
         }
         else if(isPvP && class_105.method_184() && class_105.method_171() != battleWon)
         {
            percentDamaged = class_118.battle.getPercentDamaged();
            stars = class_118.battle.getEarnedInfamyStars();
            infamyEarned = class_118.battle.getCurrentInfamyEarned();
            postBattlePopup = new class_754(battleWon,lootedResources,name,stars,percentDamaged,infamyEarned);
         }
         else
         {
            postBattlePopup = new class_749(battleWon,lootedResources,name);
         }
         if(method_2855(baseLoadParams,battleWon))
         {
            var queuePostBattlePopup:Function = function():void
            {
               class_97.class_2206(postBattlePopup);
            };
            method_1081(queuePostBattlePopup,const_2524);
         }
         else
         {
            class_97.class_2206(postBattlePopup);
         }
      }
      
      private static function method_2855(param1:class_172, param2:Boolean) : Boolean
      {
         var checkForDelay:Function = null;
         var baseLoadParams:class_172 = param1;
         var battleWon:Boolean = param2;
         checkForDelay = function(param1:class_757):void
         {
            delay = true;
         };
         if(!battleWon)
         {
            return false;
         }
         var delay:Boolean = false;
         new class_750(baseLoadParams,checkForDelay).dispatch();
         return delay;
      }
      
      public static function method_1081(param1:Function, param2:int = 10000) : void
      {
         if(var_1146 != null)
         {
            method_1566();
         }
         var_2468 = param1;
         var_1146 = new Timer(param2,1);
         var_1146.addEventListener(TimerEvent.TIMER_COMPLETE,method_3344);
         var_1146.start();
      }
      
      private static function method_3344(param1:TimerEvent) : void
      {
         method_1566();
         if(var_2468 != null)
         {
            var_2468();
         }
      }
      
      private static function method_1566() : void
      {
         if(var_1146 != null)
         {
            var_1146.removeEventListener(TimerEvent.TIMER_COMPLETE,method_3344);
            var_1146.stop();
            var_1146 = null;
         }
      }
      
      public static function method_1960(param1:int) : void
      {
         if(class_28.method_30)
         {
            switch(param1)
            {
               case class_110.const_42:
                  class_138.method_608(class_2.method_7(-1820310927));
                  break;
               case class_110.const_61:
                  class_138.method_608(class_2.method_7(-1820306814));
                  break;
               case class_110.const_32:
                  class_138.method_608(class_2.method_7(-1820296421));
                  break;
            }
         }
         switch(param1)
         {
            case class_110.const_42:
            case class_110.const_61:
               class_138.method_608(class_2.method_7(-1820296774));
               break;
         }
      }
      
      public static function method_3204() : void
      {
         var _loc1_:* = 0;
         var _loc2_:C_Platoon = null;
         var _loc3_:* = 0;
         var _loc4_:class_143 = null;
         var _loc5_:* = 0;
         var _loc6_:AbstractUnit = null;
         var _loc7_:Dictionary = null;
         var _loc8_:Vector.<AbstractUnit> = null;
         var _loc9_:AbstractUnit = null;
         if(var_45)
         {
            _loc1_ = 0;
            while(_loc1_ < var_45.length)
            {
               _loc2_ = var_45[_loc1_];
               if(_loc2_ && _loc2_.method_94)
               {
                  _loc3_ = 0;
                  while(_loc3_ < _loc2_.method_94.length)
                  {
                     _loc4_ = _loc2_.method_94[_loc3_];
                     if(_loc4_ && _loc4_.class_579)
                     {
                        _loc5_ = 0;
                        while(_loc5_ < _loc4_.class_579.length)
                        {
                           _loc6_ = _loc4_.class_579[_loc5_];
                           if(_loc6_ && _loc6_.GetUnit())
                           {
                              _loc6_.method_595();
                           }
                           _loc5_++;
                        }
                     }
                     _loc3_++;
                  }
               }
               _loc1_++;
            }
         }
         if(var_175 != null)
         {
            for each(var _loc13_ in var_175)
            {
               for each(var _loc15_ in _loc7_)
               {
                  for each(_loc9_ in _loc8_)
                  {
                     if(_loc9_ != null && _loc9_.GetUnit() != null)
                     {
                        _loc9_.method_595();
                     }
                  }
               }
            }
         }
      }
      
      public static function method_4604() : void
      {
         Logger.debug(class_2.method_7(-1820309924));
         SaveManager.class_2093.Base.method_38(true);
         SaveManager.class_2093.method_3248.method_38(false);
         class_31.method_182();
      }
      
      public static function method_1019(param1:int) : int
      {
         var _loc2_:int = class_118.instance.getLootedResource(param1);
         if(!class_28.method_30)
         {
            _loc2_ = class_28.method_5985(_loc2_,param1);
         }
         return _loc2_;
      }
      
      public static function method_1182(param1:int) : int
      {
         if(!class_28.method_30)
         {
            return class_28.method_6007(param1);
         }
         var _loc2_:int = class_118.battle.getLootableResource(param1);
         return _loc2_;
      }
      
      public static function get method_3779() : Boolean
      {
         return false;
      }
   }
}
