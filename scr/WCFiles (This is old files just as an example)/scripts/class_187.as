package
{
   import org.osflash.signals.class_59;
   import com.cc.units.Units;
   import com.cc.units.UnitData;
   import com.cc.build.BldgFoundation;
   import flash.geom.Point;
   import com.cc.units.UnitLevelData;
   import com.cc.projectiles.ProjectileData;
   import com.cc.tech.class_405;
   import package_20.class_203;
   import package_20.class_158;
   import package_60.MissileManager;
   import com.cc.battle.class_118;
   import package_20.class_137;
   import package_20.class_777;
   import com.cc.tech.TechManager;
   import com.cc.utils.js_utils.WCJSON;
   import com.cc.units.BFData;
   import com.cc.projectiles.Projectiles;
   import com.cc.ui.UI;
   import package_15.class_43;
   import package_31.class_97;
   import com.cc.units.class_164;
   import package_31.class_778;
   import package_31.class_253;
   
   public class class_187 extends Object
   {
      
      private static var var_1214:Boolean = false;
      
      private static var var_518:int = 0;
      
      private static var _queue:Object = {};
      
      private static var var_1329:int = 1600;
      
      private static var var_577:int = 0;
      
      private static var var_136:int = 0;
      
      private static var var_1006:Boolean = false;
      
      private static var var_3981:Boolean = false;
      
      private static var var_4141:class_59 = new class_59();
      
      public static var var_1735:Boolean = false;
       
      public function class_187()
      {
         super();
      }
      
      public static function Setup(param1:Object = null) : void
      {
         var _loc3_:String = null;
         var _loc2_:Date = new Date();
         var_1735 = _loc2_.month == 6 && _loc2_.date == 4;
         _queue = {};
         var_577 = 0;
         var_136 = 0;
         if(param1)
         {
            if(param1.queue && param1.queue != undefined)
            {
               for(_loc3_ in param1.queue)
               {
                  if(param1.queue[_loc3_])
                  {
                     _queue[_loc3_] = param1.queue[_loc3_];
                     var_136 = var_136 + Units.GetModifiedWeight(int(_loc3_),true) * param1.queue[_loc3_];
                  }
               }
            }
            if(param1.angle && param1.angle != undefined)
            {
               var_577 = param1.angle;
            }
         }
      }
      
      public static function method_101() : Object
      {
         return {
            "queue":_queue,
            "angle":var_577
         };
      }
      
      private static function method_3132() : void
      {
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:UnitData = null;
         var _loc11_:BldgFoundation = null;
         var _loc12_:Point = null;
         var _loc13_:* = 0;
         var _loc14_:Point = null;
         var _loc15_:UnitLevelData = null;
         var _loc16_:ProjectileData = null;
         var _loc17_:Vector.<class_405> = null;
         var _loc18_:* = 0;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:String = null;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:class_405 = null;
         var _loc26_:Point = null;
         var _loc2_:Number = var_577 - 30 + 30 * 2 * Math.random();
         var _loc3_:Point = ATTACK.method_1625(_loc2_);
         var _loc4_:* = true;
         for(_loc5_ in _queue)
         {
            _loc6_ = _queue[_loc5_];
            _loc7_ = int(_loc5_);
            _loc8_ = C_ACADEMY.method_44(_loc7_);
            _loc9_ = C_ACADEMY.method_180(_loc7_);
            _loc10_ = Units.GetData(_loc7_);
            if(_loc10_.group == class_203.const_30)
            {
               _loc11_ = BASE.method_29(class_158.const_13);
               _loc12_ = class_175.method_154(new Point(_loc11_.name_5,_loc11_.name_4));
               _loc13_ = class_215.method_137(_loc7_);
               _loc14_ = MissileManager.instance.method_4270(_loc12_.x,_loc12_.y,(_loc2_ + 45) / 180 * Math.PI,_loc7_,_loc13_);
               class_118.battle.spawnMissile(_loc7_,class_137.const_41,_loc8_,_loc14_.x,_loc14_.y,_loc12_.x,_loc12_.y);
               _loc15_ = Units.GetLevelData(_loc7_,_loc8_);
               _loc16_ = _loc15_.getProjectileDataForMissileUnit();
               if(_loc16_ == null || _loc16_.motionType != class_777.const_2862)
               {
                  _loc4_ = false;
               }
            }
            else
            {
               _loc17_ = TechManager.instance.getAllDesignsForUnitType(_loc7_);
               _loc18_ = 0;
               while(_loc18_ < _loc6_)
               {
                  _loc19_ = _loc3_.x - ATTACK.const_79 + ATTACK.const_79 * 2 * Math.random();
                  _loc20_ = _loc3_.y - ATTACK.const_79 + ATTACK.const_79 * 2 * Math.random();
                  _loc21_ = -180 + (Math.random() * 180 - 90);
                  _loc22_ = null;
                  if(_loc17_ != null && _loc17_.length > 0)
                  {
                     _loc23_ = Math.random() * (_loc17_.length + 1);
                     _loc24_ = int(_loc23_);
                     if(_loc24_ >= 0 && _loc24_ < _loc17_.length)
                     {
                        _loc25_ = _loc17_[_loc24_];
                        _loc22_ = WCJSON.encode(_loc25_.method_542());
                     }
                  }
                  class_118.instance.method_1514(_loc7_,_loc19_,_loc20_,_loc21_,_loc8_,_loc9_,-1,0,-1,_loc22_,BFData.getDefaultBFData());
                  _loc4_ = false;
                  _loc18_++;
               }
            }
         }
         if(!_loc4_)
         {
            _loc26_ = ATTACK.method_2886(_loc2_);
            MAP.method_270(_loc26_.x,_loc26_.y,1);
         }
         else if(_loc11_ != null)
         {
            MAP.method_1959(_loc11_,1);
         }
      }
      
      public static function Tick() : void
      {
         if(BASE.method_29(class_158.const_256) != null || var_3981)
         {
            if(var_518 > 0)
            {
               if(var_518 == 1)
               {
                  if(Projectiles.laserShow)
                  {
                     UI.var_106.method_18([class_43.getString(class_2.method_7(-1820298957)),class_43.getString(class_2.method_7(-1820302734))][Math.floor(Math.random() * 2)],class_43.getString(class_2.method_7(-1820295360)),method_679);
                  }
                  else
                  {
                     UI.var_106.method_18([class_43.getString(class_2.method_7(-1820295199)),class_43.getString(class_2.method_7(-1820301842)),class_43.getString(class_2.method_7(-1820306726)),class_43.getString(class_2.method_7(-1820297855)),class_43.getString(class_2.method_7(-1820310236)),class_43.getString(class_2.method_7(-1820310941)),class_43.getString(class_2.method_7(-1820298048)),class_43.getString(class_2.method_7(-1820295260)),class_43.getString(class_2.method_7(-1820300434))][Math.floor(Math.random() * 9)],class_43.getString(class_2.method_7(-1820295360)),method_679);
                  }
                  var_518 = 0;
                  method_3132();
               }
               else
               {
                  UI.var_106.method_18(int(var_518 - 1).toString(),class_43.getString(class_2.method_7(-1820295360)),method_679);
                  var_518--;
               }
            }
            else if(var_1214 && !Projectiles.HasTargetableProjectiles(true) && (!Units._enemyCount || method_2919()))
            {
               method_679();
            }
            if(var_1006 && BASE.method_5800())
            {
               method_3805();
            }
         }
      }
      
      private static function method_2919() : Boolean
      {
         return !Units.HasAttackers(false) && BASE.method_942() == class_31.const_8.Get();
      }
      
      public static function method_7669(param1:int) : void
      {
         var _loc2_:String = null;
         if(var_136 + Units.GetModifiedWeight(param1,true) <= var_1329)
         {
            if(Units.GetData(param1).group == class_203.const_30)
            {
               for(_loc2_ in _queue)
               {
                  if(_queue[_loc2_] > 0 && Units.GetData(int(_loc2_)).group == class_203.const_30)
                  {
                     var_136 = var_136 - Units.GetModifiedWeight(param1,true) * _queue[_loc2_];
                     _queue[_loc2_] = 0;
                  }
               }
            }
            if(!_queue[param1])
            {
               _queue[param1] = 0;
            }
            _queue[param1]++;
            var_136 = var_136 + Units.GetModifiedWeight(param1,true);
            class_97.method_18();
         }
      }
      
      public static function method_5374(param1:int) : void
      {
         if(_queue[param1])
         {
            _queue[param1]--;
            var_136 = var_136 - Units.GetModifiedWeight(param1,true);
            class_97.method_18();
         }
         if(_queue[param1] == 0)
         {
            delete _queue[param1];
         }
      }
      
      public static function method_5820(param1:int) : void
      {
         while(var_136 + Units.GetModifiedWeight(param1,true) <= var_1329)
         {
            if(!_queue[param1])
            {
               _queue[param1] = 0;
            }
            _queue[param1]++;
            var_136 = var_136 + Units.GetModifiedWeight(param1,true);
         }
         class_97.method_18();
      }
      
      public static function method_190(param1:int) : int
      {
         return _queue[param1]?_queue[param1]:0;
      }
      
      public static function method_3494(param1:int) : Boolean
      {
         return var_136 + Units.GetModifiedWeight(param1,true) <= var_1329;
      }
      
      public static function Clear() : void
      {
         _queue = {};
         var_136 = 0;
         class_97.method_18();
      }
      
      public static function get method_6649() : class_59
      {
         return var_4141;
      }
      
      public static function method_4939() : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _queue = {};
         var_136 = 0;
         var_577 = int(Math.random() * 8) * 45;
         var _loc1_:Vector.<int> = C_ACADEMY.method_629();
         while(_loc1_.length > 0)
         {
            _loc2_ = Math.random() * _loc1_.length;
            _loc3_ = _loc1_[_loc2_];
            if(var_136 + Units.GetModifiedWeight(_loc3_,true) <= var_1329)
            {
               if(!_queue[_loc3_])
               {
                  _queue[_loc3_] = 0;
               }
               _queue[_loc3_]++;
               var_136 = var_136 + Units.GetModifiedWeight(_loc3_,true);
            }
            else
            {
               _loc1_.splice(_loc2_,1);
            }
         }
         class_97.method_18();
      }
      
      public static function method_6721(param1:int) : void
      {
         if(var_577 != param1)
         {
            var_577 = param1;
            class_97.method_18();
         }
      }
      
      public static function method_5175() : void
      {
         var _loc1_:* = NaN;
         if(var_136 > 0)
         {
            _loc1_ = 0.01;
            Projectiles.rollLaserShow();
            BASE.var_471.method_276(class_212.const_413,true);
            var_518 = 5;
            var_1214 = true;
            var_1006 = false;
            BASE.method_3347();
            UI.var_106.method_18(int(var_518).toString(),class_43.getString(class_2.method_7(-1820295360)),method_679);
         }
      }
      
      public static function method_679() : void
      {
         var _loc1_:class_164 = null;
         if(!var_1006)
         {
            var_1006 = true;
            BASE.method_5895();
            if(UI.var_106)
            {
               UI.var_106.method_18("");
            }
            var_518 = 0;
            Projectiles.Clear();
            for each(_loc1_ in Units._units)
            {
               if(_loc1_.isAttacker || _loc1_.method_331 && !_loc1_.method_494)
               {
                  class_118.instance.method_3963(_loc1_);
               }
            }
         }
      }
      
      public static function method_3805() : void
      {
         var_1214 = false;
         var_1006 = false;
         Projectiles.stopLaserShow();
         BASE.method_4087();
         POPUPS.method_916(true);
         method_6649.dispatch();
      }
      
      public static function Show() : void
      {
         if(class_105.method_189())
         {
            POPUPS.method_158(class_43.getString(class_2.method_7(-1820298296)),class_43.getString(class_2.method_7(-1820309226)));
            return;
         }
         if(!method_76())
         {
            class_97.Show(new class_778());
         }
      }
      
      public static function method_76() : Boolean
      {
         return class_97.method_76(class_253.const_413);
      }
      
      public static function get attacking() : Boolean
      {
         return var_1214;
      }
      
      public static function get method_2034() : Boolean
      {
         return var_1214 && class_118.instance.teamID == class_137.const_41;
      }
      
      public static function get method_2786() : int
      {
         return var_136;
      }
      
      public static function get method_953() : int
      {
         return var_1329;
      }
      
      public static function set method_953(param1:int) : void
      {
         var_1329 = param1;
      }
      
      public static function get method_3675() : int
      {
         return var_577;
      }
   }
}
