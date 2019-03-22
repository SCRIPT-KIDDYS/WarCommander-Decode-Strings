package
{
   import package_4.class_725;
   import com.cc.utils.SecNum;
   import package_4.class_808;
   import package_133.class_729;
   import com.cc.build.BldgFoundation;
   import com.cc.towers.TowerResearch;
   import package_20.class_158;
   import package_118.class_524;
   import com.cc.build.C_Buildings;
   import com.cc.build.BuildingData;
   import com.cc.build.class_177;
   import com.cc.units.PlatoonPropManifest;
   import com.cc.units.C_Platoon;
   import com.cc.units.PlatoonManager;
   import com.cc.units.class_404;
   import com.cc.units.UnitManager;
   import com.adverserealms.log.Logger;
   import package_133.class_696;
   import com.cc.units.Units;
   import com.cc.units.UnitData;
   import com.cc.units.UnitLevelData;
   import com.cc.towers.TowerLevelData;
   import com.cc.towers.Towers;
   import com.cc.towers.TowerData;
   
   public class class_215 extends Object
   {
      
      private static var var_34:Vector.<class_725>;
      
      private static var var_1566:Vector.<class_725>;
      
      private static var var_4336:SecNum;
      
      private static var var_4195:int;
      
      private static var var_719:Vector.<class_808>;
      
      private static var var_2128:Vector.<SecNum>;
      
      private static var var_364:class_729;
       
      public function class_215()
      {
         super();
      }
      
      public static function method_7034() : void
      {
         var _loc1_:BldgFoundation = null;
         var _loc2_:String = null;
         var _loc3_:* = 0;
         var_34 = C_ACADEMY.method_2205();
         var_1566 = TowerResearch.method_2205();
         var_4336 = new SecNum(BASE.method_588());
         var_719 = new Vector.<class_808>(class_158.const_2908,true);
         if(BASE.var_41)
         {
            for each(_loc1_ in BASE.var_41)
            {
               if(var_719[_loc1_.type] == null)
               {
                  var_719[_loc1_.type] = new class_808(_loc1_.type);
               }
               var_719[_loc1_.type].method_5422(_loc1_.level);
            }
         }
         var_2128 = new Vector.<SecNum>(class_158.const_2908,true);
         if(BASE.var_257)
         {
            for(_loc2_ in BASE.var_257)
            {
               _loc3_ = parseInt(_loc2_.replace("b",""));
               var_2128[_loc3_] = new SecNum(BASE.var_257[_loc2_].Get());
            }
         }
         var_364 = C_ACADEMY.method_6040();
      }
      
      public static function method_2072(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc4_:* = 0;
         if(!class_105.method_23())
         {
            switch(param1)
            {
               case class_524.const_70:
                  var_2128[param2] = new SecNum(1);
                  break;
               case class_524.const_185:
                  var_1566[param2] = new class_725();
                  var_1566[param2].level = 1;
                  break;
               case class_524.const_220:
                  _loc4_ = 1;
                  if(param3)
                  {
                     _loc4_ = 2;
                  }
                  var_34[param2] = new class_725();
                  var_34[param2].level = 1;
                  var_34[param2].skin = _loc4_;
                  break;
            }
         }
      }
      
      public static function method_7445() : int
      {
         if(class_105.method_131())
         {
            return BASE.method_588();
         }
         return var_4336.Get();
      }
      
      public static function method_1339(param1:int) : int
      {
         var _loc2_:BldgFoundation = null;
         var _loc3_:* = 0;
         if(class_105.method_131())
         {
            _loc2_ = C_ACADEMY.method_323(param1);
            if(_loc2_)
            {
               return _loc2_.level;
            }
         }
         else if(var_719[_loc3_] != null)
         {
            _loc3_ = C_ACADEMY.method_4053(param1);
            return var_719[_loc3_].maxLevel;
         }
         return 0;
      }
      
      public static function method_145(param1:int) : int
      {
         var _loc2_:BldgFoundation = null;
         if(class_105.method_131())
         {
            _loc2_ = BASE.method_29(param1);
            if(_loc2_ != null)
            {
               return _loc2_.level;
            }
         }
         else if(var_719[param1] != null)
         {
            return var_719[param1].maxLevel;
         }
         return 0;
      }
      
      public static function method_909(param1:int) : Boolean
      {
         var _loc2_:BuildingData = C_Buildings.GetData(param1);
         if(_loc2_ && _loc2_.eventLocked && !method_921(param1))
         {
            return true;
         }
         return false;
      }
      
      public static function method_866(param1:int, param2:int = 1) : Vector.<class_177>
      {
         var _loc5_:class_177 = null;
         var _loc6_:* = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:BldgFoundation = null;
         var _loc10_:class_808 = null;
         var _loc3_:Vector.<class_177> = new Vector.<class_177>();
         if(C_Buildings.GetLevelData(param1,param2) != null)
         {
            _loc3_ = C_Buildings.GetLevelData(param1,param2).re;
         }
         var _loc4_:Vector.<class_177> = new Vector.<class_177>();
         for each(_loc5_ in _loc3_)
         {
            if(_loc5_.id > 0)
            {
               _loc6_ = false;
               _loc7_ = 0;
               _loc8_ = 0;
               if(class_105.method_131())
               {
                  for each(_loc9_ in BASE.var_41)
                  {
                     if(_loc9_.type == _loc5_.id)
                     {
                        if(_loc9_.level >= _loc5_.level)
                        {
                           _loc7_++;
                        }
                     }
                  }
                  if(_loc7_ >= _loc5_.name_10)
                  {
                     _loc6_ = true;
                  }
               }
               else
               {
                  _loc10_ = var_719[_loc5_.id];
                  if(_loc10_ != null && _loc10_.method_4649(_loc5_.level) >= _loc5_.name_10)
                  {
                     _loc6_ = true;
                  }
               }
               if(!_loc6_)
               {
                  _loc4_.push(_loc5_);
               }
            }
         }
         return _loc4_;
      }
      
      public static function method_921(param1:int) : Boolean
      {
         if(class_105.method_131())
         {
            return BASE.method_921(param1);
         }
         if(var_719 && var_719[param1] != null)
         {
            return true;
         }
         if(var_2128 && var_2128[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function method_629() : Vector.<int>
      {
         var _loc2_:* = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         if(class_105.method_55())
         {
            return C_ACADEMY.method_629();
         }
         if(var_34)
         {
            _loc2_ = 0;
            while(_loc2_ < var_34.length)
            {
               if(var_34[_loc2_] && var_34[_loc2_].level > 0)
               {
                  _loc1_.push(_loc2_);
               }
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      public static function method_4936() : int
      {
         return method_2009(PlatoonPropManifest.instance.method_438(C_Platoon.const_278));
      }
      
      public static function method_5365() : int
      {
         var _loc3_:C_Platoon = null;
         var _loc1_:* = 0;
         var _loc2_:Vector.<C_Platoon> = PlatoonManager.class_2093.method_361();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_ != null)
            {
               _loc1_ = Math.max(_loc1_,_loc3_.method_96);
            }
         }
         return _loc1_;
      }
      
      public static function method_2009(param1:class_404) : int
      {
         var _loc2_:* = 0;
         if(param1 == null)
         {
            return 0;
         }
         if(param1.type == C_Platoon.const_147)
         {
            if(false || !class_105.method_131())
            {
               return UnitManager.const_2161;
            }
         }
         if(param1.method_506 != class_158.const_139)
         {
            _loc2_ = method_145(param1.method_506);
            if(_loc2_ > 0)
            {
               if(param1.method_506 == class_158.const_36)
               {
                  return C_Buildings.GetLevelData(class_158.const_36,_loc2_).deployCap;
               }
               return C_Buildings.GetLevelData(param1.method_506,_loc2_).storage;
            }
         }
         return 0;
      }
      
      public static function method_2269(param1:Number, param2:int) : void
      {
         if(class_105.method_131())
         {
            C_ACADEMY.method_2269(param1,param2);
         }
         if(var_364 == null)
         {
            Logger.error(class_2.method_7(-1820298563));
            return;
         }
         if(method_339(param1) != null)
         {
            Logger.error(class_2.method_7(-1820296276));
            return;
         }
         var_364.method_1342(param1,1,0,param2);
      }
      
      public static function method_2367(param1:Number) : void
      {
         if(class_105.method_131())
         {
            C_ACADEMY.method_2367(param1);
         }
         if(var_364 == null)
         {
            Logger.error(class_2.method_7(-1820300866));
            return;
         }
         var_364.method_3396(param1);
      }
      
      public static function method_2010(param1:Number, param2:int, param3:uint) : void
      {
         var _loc4_:class_696 = method_339(param1);
         if(_loc4_ == null)
         {
            Logger.warn(class_2.method_7(-1820301281) + param1);
            return;
         }
         if(class_105.method_131())
         {
            C_ACADEMY.method_2010(param1,param2,param3);
            return;
         }
         var_364.method_1443(param1,param2,param3);
      }
      
      public static function method_5822() : void
      {
         class_20.method_136(class_31.var_116 + class_2.method_7(-1820295939),null,method_4620);
      }
      
      private static function method_4620(param1:Object) : void
      {
         if(param1.unitxp != null)
         {
            method_3104(param1.unitxp);
         }
      }
      
      private static function method_3104(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(class_105.method_131())
         {
            C_ACADEMY.method_3104(param1);
            return;
         }
         if(var_364 == null)
         {
            var_364 = new class_729();
         }
         var_364.clear();
         for each(_loc2_ in param1)
         {
            var_364.method_1342(_loc2_.uid,_loc2_.level,_loc2_.xp,_loc2_.type);
         }
      }
      
      public static function method_339(param1:Number) : class_696
      {
         if(class_105.method_131())
         {
            return C_ACADEMY.method_339(param1);
         }
         if(var_364 != null)
         {
            return var_364.method_394(param1);
         }
         return null;
      }
      
      public static function method_137(param1:int, param2:Number = -1) : int
      {
         var _loc3_:class_696 = null;
         if(class_105.method_131())
         {
            return C_ACADEMY.method_44(param1,param2);
         }
         if(param2 != -1 && Units.usesXpToLevelUp(param1))
         {
            _loc3_ = var_364.method_394(param2);
            if(_loc3_ != null)
            {
               return _loc3_.level;
            }
            return 1;
         }
         if(var_34 != null && param1 >= 0 && param1 < var_34.length && var_34[param1] != null)
         {
            return var_34[param1].level;
         }
         return 0;
      }
      
      public static function method_2105(param1:Number) : uint
      {
         if(class_105.method_131())
         {
            return C_ACADEMY.method_2105(param1);
         }
         var _loc2_:class_696 = method_339(param1);
         if(_loc2_ != null)
         {
            return _loc2_.xp;
         }
         return 0;
      }
      
      public static function method_2292(param1:Number) : void
      {
         if(class_105.method_131())
         {
            C_ACADEMY.method_2292(param1);
            return;
         }
         if(var_364 == null)
         {
            return;
         }
         var _loc2_:class_696 = var_364.method_394(param1);
         if(_loc2_ == null)
         {
            return;
         }
         var_364.method_1443(param1,_loc2_.level + 1,0);
      }
      
      public static function method_3908(param1:int) : Boolean
      {
         return method_296(param1) > 1;
      }
      
      public static function method_296(param1:int) : int
      {
         if(class_105.method_131())
         {
            return C_ACADEMY.method_180(param1);
         }
         if(var_34 != null && param1 >= 0 && param1 < var_34.length && var_34[param1] != null)
         {
            return var_34[param1].skin;
         }
         return 0;
      }
      
      public static function method_5114(param1:int) : Boolean
      {
         if(class_105.method_131())
         {
            return C_ACADEMY.method_4908(param1);
         }
         if(!method_204(param1) && method_137(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function method_204(param1:int) : Boolean
      {
         if(method_296(param1) > 0)
         {
            return false;
         }
         var _loc2_:UnitData = Units.GetData(param1);
         if(_loc2_ != null)
         {
            return _loc2_.blocked;
         }
         return true;
      }
      
      public static function method_1709(param1:int) : int
      {
         if(class_105.method_23())
         {
            return TowerResearch.method_44(param1);
         }
         if(var_1566 != null && param1 >= 0 && param1 < var_1566.length && var_1566[param1] != null)
         {
            return var_1566[param1].level;
         }
         return 0;
      }
      
      public static function method_2413(param1:int) : int
      {
         var _loc5_:Vector.<UnitLevelData> = null;
         var _loc6_:* = 0;
         var _loc2_:int = method_1339(param1);
         var _loc3_:UnitData = Units.GetData(param1);
         if(_loc3_ != null && _loc3_.levelData != null)
         {
            _loc5_ = _loc3_.levelData;
            _loc6_ = _loc5_.length;
            while(0 < _loc6_)
            {
               if(_loc5_[0].upgradeAcademyLevel > _loc2_)
               {
                  return 0;
               }
               _loc4_++;
            }
         }
         return 0;
      }
      
      public static function method_5125(param1:int) : int
      {
         var _loc4_:Vector.<TowerLevelData> = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc2_:TowerData = Towers.GetData(param1);
         var _loc3_:* = 0;
         if(_loc2_ != null && _loc2_.levelData != null)
         {
            _loc4_ = _loc2_.levelData;
            _loc5_ = _loc4_.length;
            _loc7_ = method_145(class_158.const_29);
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               if(_loc4_[_loc6_].upgradeResearchLevel > _loc7_)
               {
                  break;
               }
               _loc6_++;
            }
            _loc9_ = method_145(class_158.const_13);
            _loc8_ = 0;
            while(_loc8_ < _loc5_)
            {
               if(_loc4_[_loc8_].upgradeCommandCenterLevel > _loc9_)
               {
                  break;
               }
               _loc8_++;
            }
            _loc3_ = Math.min(_loc6_,_loc8_);
         }
         return _loc3_;
      }
      
      public static function method_6320(param1:int) : int
      {
         var _loc2_:* = 0;
         if(method_909(param1))
         {
            return 0;
         }
         var _loc3_:int = C_Buildings.GetData(param1).maxLevel;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            if(method_866(param1,_loc2_ + 1).length > 0)
            {
               break;
            }
            _loc2_++;
         }
         return _loc2_;
      }
      
      public static function get method_775() : int
      {
         return var_4195;
      }
      
      public static function set method_775(param1:int) : void
      {
         var_4195 = param1;
      }
   }
}
