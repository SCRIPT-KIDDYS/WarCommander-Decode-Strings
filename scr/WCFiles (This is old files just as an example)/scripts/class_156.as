package
{
   import package_57.class_185;
   import package_11.class_28;
   import com.cc.build.BldgFoundation;
   import package_20.class_158;
   import com.cc.units.Units;
   import flash.geom.Point;
   import package_108.class_466;
   import com.cc.worldmap.class_23;
   import package_31.class_97;
   import com.cc.ui.UI;
   import package_15.class_43;
   import package_31.class_253;
   import package_31.class_698;
   import package_31.class_101;
   import package_32.SaveManager;
   import com.cc.utils.AudioController;
   import com.cc.battle.class_118;
   import com.cc.units.BFData;
   import com.cc.units.class_164;
   import package_31.class_697;
   import package_20.class_132;
   
   public class class_156 extends Object
   {
      
      private static const const_6029:int = 60;
      
      private static const const_3634:int = 120.0;
      
      private static const const_5007:int = 172800.0;
      
      private static const const_3406:int = 172800.0;
      
      private static const const_3324:int = 172800.0;
      
      private static const const_3805:int = 18000.0;
      
      private static const const_4651:int = 10;
      
      private static const const_2988:Number = 500;
      
      private static const const_692:int = 30;
      
      private static var var_1880:Number = 0;
      
      private static var var_882:int;
      
      private static const const_1845:Array = [class_43.getString(class_2.method_7(-1820308561)),class_43.getString(class_2.method_7(-1820310404)),class_43.getString(class_2.method_7(-1820309420)),class_43.getString(class_2.method_7(-1820298994)),class_43.getString(class_2.method_7(-1820295672)),class_43.getString(class_2.method_7(-1820309196)),class_43.getString(class_2.method_7(-1820297895)),class_43.getString(class_2.method_7(-1820310944))];
      
      public static var var_490:Array = [{
         "name":class_43.getString(class_2.method_7(-1820308806)),
         "units":[[0,class_132.const_10,10,0]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):1
      },{
         "name":class_43.getString(class_2.method_7(-1820310917)),
         "units":[[0,class_132.const_50,7,10],[0,class_132.const_10,5,25]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):1
      },{
         "name":class_43.getString(class_2.method_7(-1820298812)),
         "units":[[0,class_132.const_50,10,10]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):1
      },{
         "name":class_43.getString(class_2.method_7(-1820300387)),
         "units":[[0,class_132.const_225,5,15],[0,class_132.const_225,5,20]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):1
      },{
         "name":class_43.getString(class_2.method_7(-1820300558)),
         "units":[[0,class_132.const_225,7,20],[5,class_132.const_50,7,-20]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):2
      },{
         "name":class_43.getString(class_2.method_7(-1820310980)),
         "units":[[0,class_132.const_87,10,10],[3,class_132.const_10,5,-10]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):2
      },{
         "name":class_43.getString(class_2.method_7(-1820299357)),
         "units":[[0,class_132.const_803,3,-100],[2,class_132.const_1579,5,-115]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):2
      },{
         "name":class_43.getString(class_2.method_7(-1820310906)),
         "units":[[0,class_132.const_1369,10,180],[0,class_132.const_645,5,180]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):2
      },{
         "name":class_43.getString(class_2.method_7(-1820298005)),
         "units":[[0,class_132.const_87,8,10],[0,class_132.const_50,8,15]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):2
      },{
         "name":class_43.getString(class_2.method_7(-1820298780)),
         "units":[[0,class_132.const_265,5,135],[0,class_132.const_265,5,155],[0,class_132.const_265,5,115]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):3
      },{
         "name":class_43.getString(class_2.method_7(-1820296525)),
         "units":[[0,class_132.const_216,2,160],[0,class_132.const_50,3,160],[1,class_132.const_10,8,160]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):3
      },{
         "name":class_43.getString(class_2.method_7(-1820309535)),
         "units":[[0,class_132.const_702,3,200],[0,class_132.const_10,10,200]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):3
      },{
         "name":class_43.getString(class_2.method_7(-1820308673)),
         "units":[[0,class_132.const_87,6,100],[0,class_132.const_50,5,80],[0,class_132.const_225,4,110],[6,class_132.const_87,5,90]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):3
      },{
         "name":class_43.getString(class_2.method_7(-1820307629)),
         "units":[[0,class_132.UNIT_AIR_CHOPPER1,3,200],[0,class_132.const_492,10,200]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):3
      },{
         "name":class_43.getString(class_2.method_7(-1820296494)),
         "units":[[0,class_132.const_1369,5,0],[0,class_132.const_87,15,0]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):3
      },{
         "name":class_43.getString(class_2.method_7(-1820310367)),
         "units":[[0,class_132.const_1369,5,-135],[2,class_132.const_216,5,-135],[4,class_132.const_1579,5,-135]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):4
      },{
         "name":class_43.getString(class_2.method_7(-1820296794)),
         "units":[[0,class_132.const_225,10,45],[2,class_132.const_803,3,45],[5,class_132.const_1579,6,45]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):4
      },{
         "name":class_43.getString(class_2.method_7(-1820300882)),
         "units":[[0,class_132.const_50,12,-90],[2,class_132.UNIT_VEHICLE_TANK2,1,-90],[4,class_132.const_803,5,-90]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):4
      },{
         "name":class_43.getString(class_2.method_7(-1820300606)),
         "units":[[0,class_132.const_225,15,-80],[5,class_132.const_87,15,-100]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):4
      },{
         "name":class_43.getString(class_2.method_7(-1820299199)),
         "units":[[0,class_132.const_216,8,10],[0,class_132.UNIT_VEHICLE_TANK1,5,20]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):4
      },{
         "name":class_43.getString(class_2.method_7(-1820301706)),
         "units":[[0,class_132.UNIT_VEHICLE_TANK3,1,-90],[3,class_132.UNIT_VEHICLE_TANK2,3,-90],[6,class_132.UNIT_VEHICLE_TANK1,5,-90]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):5
      },{
         "name":class_43.getString(class_2.method_7(-1820299459)),
         "units":[[0,class_132.const_10,6,80],[5,class_132.const_50,7,100],[10,class_132.const_87,8,80],[15,class_132.const_265,12,90],[20,class_132.const_225,6,100]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):5
      },{
         "name":class_43.getString(class_2.method_7(-1820298023)),
         "units":[[0,class_132.const_10,10,150],[5,class_132.const_10,10,170],[10,class_132.const_10,10,190],[15,class_132.const_10,10,210]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):5
      },{
         "name":class_43.getString(class_2.method_7(-1820308602)),
         "units":[[0,class_132.const_50,10,0],[5,class_132.const_702,4,0],[10,class_132.const_216,10,0]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):5
      },{
         "name":class_43.getString(class_2.method_7(-1820310387)),
         "units":[[0,class_132.const_69,1,90],[1,class_132.UNIT_VEHICLE_TANK3,2,70],[1,class_132.UNIT_VEHICLE_TANK3,2,110]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820308250)),
         "units":[[0,class_132.const_69,2,90],[3,class_132.const_10,10,90],[3,class_132.const_50,10,90],[3,class_132.const_225,10,90],[3,class_132.const_87,10,90]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820309072)),
         "units":[[0,class_132.UNIT_AIR_PLANE2,2,135],[0,class_132.UNIT_AIR_PLANE1,10,135]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820301607)),
         "units":[[0,class_132.UNIT_AIR_PLANE2,3,-90],[0,class_132.const_69,2,-90]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820303358)),
         "units":[[0,class_132.const_1316,5,90],[0,class_132.const_472,3,90]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820297020)),
         "units":[[5,class_132.const_264,5,180],[0,class_132.const_271,1,180]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820299366)),
         "units":[[5,class_132.const_564,3,60],[10,class_132.const_524,2,60],[0,class_132.const_389,1,60]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820301168)),
         "units":[[20,class_132.const_1786,8,0],[15,class_132.const_1786,8,0],[10,class_132.const_645,10,0],[5,class_132.const_492,10,0],[0,class_132.const_5212,10,0]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820299763)),
         "units":[[5,class_132.const_481,7,0],[0,class_132.const_617,10,0],[0,class_132.const_265,10,0]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820298134)),
         "units":[[0,class_132.const_3608,8,90],[5,class_132.const_3845,3,90],[10,class_132.const_803,8,0]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820295701)),
         "units":[[0,class_132.const_87,8,120],[0,class_132.const_265,8,90],[10,class_132.const_481,5,90],[10,class_132.const_472,3,120],[10,class_132.const_524,2,90]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820297819)),
         "units":[[0,class_132.const_50,12,-80],[0,class_132.const_1316,5,-80],[5,class_132.const_702,6,-80],[5,class_132.const_216,12,-80],[5,class_132.const_1316,5,-80]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820298053)),
         "units":[[0,class_132.const_69,2,0],[10,class_132.const_69,1,0],[15,class_132.const_69,1,0],[20,class_132.const_69,1,0],[25,class_132.const_69,1,0]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820308615)),
         "units":[[0,class_132.const_617,10,0],[5,class_132.const_389,1,0],[10,class_132.const_271,1,90]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820302696)),
         "units":[[0,class_132.const_271,1,0],[5,class_132.const_271,1,180],[5,class_132.const_472,3,0],[10,class_132.const_472,3,180]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820298832)),
         "units":[[0,class_132.const_524,1,0],[0,class_132.const_524,1,90],[0,class_132.const_524,1,180],[0,class_132.const_389,1,0],[0,class_132.const_69,2,90]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820300671)),
         "units":[[0,class_132.UNIT_AIR_PLANE2,4,0],[5,class_132.UNIT_AIR_PLANE1,12,0],[5,class_132.const_481,5,0],[10,class_132.const_264,5,0],[5,class_132.UNIT_VEHICLE_TANK3,6,0]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820301933)),
         "units":[[10,class_132.const_69,2,0],[15,class_132.const_271,1,90],[5,class_132.UNIT_VEHICLE_TANK3,6,180],[0,class_132.UNIT_VEHICLE_TANK2,8,-80],[0,class_132.UNIT_VEHICLE_TANK1,12,0]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      },{
         "name":class_43.getString(class_2.method_7(-1820296575)),
         "units":[[10,class_132.const_271,2,0],[15,class_132.const_264,6,15],[5,class_132.const_472,4,30],[0,class_132.const_524,2,45],[0,class_132.const_389,1,60]],
         class_2.method_7(-1820309654):600,
         class_2.method_7(-1820311115):6
      }];
      
      public static var var_98:Object;
      
      public static var var_603:Boolean;
      
      public static var _queued:Object;
      
      public static var _enabled:Boolean;
      
      private static var var_1334:Boolean = true;
      
      private static var var_997:Boolean;
       
      public function class_156()
      {
         super();
      }
      
      public static function Setup(param1:Object) : void
      {
         _enabled = false;
         var_997 = false;
         var_882 = class_185.method_4365();
         if(class_105.method_23() && class_28.method_30)
         {
            _enabled = class_31.method_6573;
            if(param1 == null || param1.currentid == undefined)
            {
               var param1:Object = {
                  class_2.method_7(-1820297148):method_1068(BASE.var_121,0),
                  class_2.method_7(-1820300932):-1,
                  class_2.method_7(-1820297419):int(class_31.method_28() + const_5007 - var_490[0].warningTime)
               };
            }
            var_98 = param1;
            if(!var_98.lastattack)
            {
               var_98.lastattack = 0;
            }
            var_603 = false;
            if(var_98.queued != undefined)
            {
               _queued = var_98.queued;
               if(_queued.warned == undefined)
               {
                  _queued.warned = 0;
               }
            }
            if(var_98.lastid == undefined)
            {
               var_98.lastid = -1;
            }
         }
         else
         {
            var_98 = param1;
         }
      }
      
      public static function method_4828(param1:int) : void
      {
         if(var_98 && var_98.queued != undefined)
         {
            delete var_98.queued;
         }
         _queued = null;
         method_994(param1,false);
      }
      
      private static function method_994(param1:int, param2:Boolean) : void
      {
         var _loc3_:int = param1;
         _loc3_ = _loc3_ + (param2?const_3406:const_3324);
         _loc3_ = _loc3_ + int(const_3805 * (Math.random() * 2 - 1) - method_1472());
         var_98.nextAttack = _loc3_;
      }
      
      public static function method_2919() : Boolean
      {
         var _loc2_:BldgFoundation = null;
         var _loc3_:* = false;
         var _loc1_:* = true;
         for each(_loc2_ in BASE.var_498)
         {
            if(_loc2_ && _loc2_.type != class_158.const_123 && _loc2_._hp.Get() > 0)
            {
               _loc1_ = false;
               break;
            }
         }
         _loc3_ = false;
         for each(_loc2_ in BASE.var_482)
         {
            if(_loc2_.type == class_158.const_13)
            {
               _loc3_ = _loc2_._hp.Get() < 1;
            }
         }
         return _loc3_ || _loc1_ && !Units.HasAttackers(false);
      }
      
      private static function method_4090() : void
      {
         var _loc4_:Array = null;
         var _loc5_:* = NaN;
         var _loc6_:Point = null;
         while(0 < _queued.attack.length)
         {
            _loc4_ = _queued.attack[0];
            if(class_31.method_28() >= var_98.lastattack + _loc4_[0])
            {
               _queued.attack.splice(0,1);
               _loc5_ = _loc4_[3] + 45 + 180;
               method_3132(ATTACK.method_1625(_loc5_),_loc4_[2] * const_4651,_loc4_[1],_loc4_[2]);
               if(var_1334)
               {
                  var_1334 = false;
                  _loc6_ = ATTACK.method_2886(_loc5_);
                  MAP.method_270(_loc6_.x,_loc6_.y,1);
                  break;
               }
               break;
            }
            _loc1_++;
         }
         if(var_997 && Units.HasAttackers(true))
         {
            var_997 = false;
         }
         var _loc2_:Boolean = !var_997 && _queued.attack.length == 0 && !Units.HasAttackers(true) || class_31.method_28() > var_98.lastattack + const_3634;
         var _loc3_:Boolean = method_2919();
         if(_loc2_ || _loc3_)
         {
            if(_loc2_)
            {
               var_98.lastid = var_98.currentid;
               var_98.currentid = method_1068(BASE.var_121,var_98.currentid);
            }
            method_994(class_31.method_28(),_loc2_);
            method_832();
            method_13(!_loc3_);
         }
      }
      
      private static function method_1068(param1:int, param2:int) : int
      {
         var _loc3_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Object = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         if(param2 == var_490.length - 1 || param2 < 0 || param2 > var_490.length)
         {
            return param2;
         }
         if(!var_1880)
         {
            _loc6_ = 0;
            _loc3_ = 0;
            while(_loc3_ < var_490.length)
            {
               if(var_490[_loc3_] && var_490[_loc3_].tier && var_490[_loc3_].tier > _loc6_)
               {
                  _loc6_ = var_490[_loc3_].tier;
               }
               _loc3_++;
            }
            var_1880 = const_692 / _loc6_;
         }
         if(param1 < 1)
         {
            var param1:* = 1;
         }
         if(param1 > const_692)
         {
            param1 = const_692;
         }
         var _loc4_:int = param2;
         var _loc5_:Array = [];
         _loc3_ = param2 + 1;
         while(_loc3_ < var_490.length)
         {
            _loc7_ = var_490[_loc3_];
            _loc8_ = _loc7_.tier;
            _loc9_ = var_1880 * (_loc8_ - 1) + 1;
            _loc10_ = var_1880 * _loc8_;
            if(_loc9_ <= param1 && _loc10_ >= param1)
            {
               _loc4_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         return _loc4_;
      }
      
      public static function Tick() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = NaN;
         if(var_603 && class_466.instance.method_4361())
         {
            method_13(false,true);
            return;
         }
         if(class_105.method_23() && _enabled && !BASE.method_52() && class_23.hasFinishedLoading && !class_466.instance.method_4361() && !class_187.attacking)
         {
            if(var_603)
            {
               method_4090();
            }
            else if(var_98.currentid == var_98.lastid && (_queued == null || _queued && _queued.warned != 1))
            {
               _loc1_ = method_1068(BASE.var_121,var_98.currentid);
               if(var_98.currentid != _loc1_)
               {
                  var_98.currentid = _loc1_;
               }
            }
            else if(_queued == null)
            {
               if(BASE.method_4906() >= 30 && class_31.method_28() > var_98.nextAttack && BASE.var_1315 <= class_31.method_28() && !BASE.method_3205() && !POPUPS.var_2185 && !class_187.attacking && !class_187.method_76() && !POPUPS.var_4021 && BASE.method_5653() < 60 * 60 * 24)
               {
                  class_2206();
               }
            }
            else
            {
               if(class_97.Count == 0 && _queued.warned == 0 && BASE.var_1315 <= class_31.method_28() && !BASE.method_3205() && !POPUPS.var_2185 && !class_31.method_883() && !BASE.var_471.value && class_31.var_270 == null)
               {
                  method_2956();
               }
               if(_queued.warned == 1 && class_31.method_28() < _queued.attackTime && !UI.var_147 && !var_603 && BASE.var_1315 <= class_31.method_28())
               {
                  UI.Show(class_2.method_7(-1820301292));
                  _loc2_ = Math.floor(_queued.attack[0][3] % 360 / (360 / 8));
                  if(_loc2_ < 0)
                  {
                     _loc2_ = _loc2_ + 8;
                  }
                  UI.var_147.method_6620(class_43.getString(class_2.method_7(-1820295462),{"direction":const_1845[_loc2_]}));
               }
               if(_queued.warned == 1 && _queued.attackTime <= class_31.method_28() && BASE.var_1315 <= class_31.method_28() && !var_603)
               {
                  method_2716();
               }
               else if(UI.var_147)
               {
                  if(UI.var_147)
                  {
                     UI.var_147.method_5330(class_43.getString(class_2.method_7(-1820299006),{"time":class_31.method_39(_queued.attackTime - class_31.method_28())}));
                  }
               }
            }
         }
      }
      
      public static function method_2956() : void
      {
         if(!class_97.method_76(class_253.const_1389))
         {
            class_97.Show(new class_698(var_882));
         }
      }
      
      public static function method_1590() : void
      {
         var _loc1_:class_101 = class_97.method_756(class_253.const_1389);
         if(_loc1_ != null)
         {
            _loc1_.Hide();
         }
      }
      
      public static function method_101() : Object
      {
         return var_98;
      }
      
      public static function class_2206() : void
      {
         var _loc1_:Array = var_490[var_98.currentid].units;
         var_1334 = true;
         _queued = {
            "attack":_loc1_.concat(),
            class_2.method_7(-1820298881):0,
            class_2.method_7(-1820299245):Units.AttackerCount(false)
         };
         var_98.queued = _queued;
         SaveManager.class_2093.Base.method_38();
      }
      
      public static function method_8113() : void
      {
         var_1334 = false;
         _queued = null;
         var_98.queued = null;
         SaveManager.class_2093.Base.method_38();
      }
      
      public static function method_1472() : int
      {
         if(var_98 && var_98.currentid < var_490.length)
         {
            return var_490[var_98.currentid].warningTime;
         }
         return 0;
      }
      
      public static function method_2005(param1:Boolean) : void
      {
         if(_queued)
         {
            method_1590();
            _queued.warned = 1;
            _queued.attackTime = class_31.method_28() + (param1?0:method_1472());
            SaveManager.class_2093.Base.method_38(true);
            Tick();
         }
      }
      
      public static function method_2716() : void
      {
         method_1590();
         var_98.lastattack = class_31.method_28();
         var_603 = true;
         var_997 = true;
         BASE.var_471.method_276(class_212.const_2627,true);
         BASE.method_3347();
         UI.var_106.method_18(class_2.method_7(-1820299151));
         AudioController.instance.method_32(class_2.method_7(-1820299265));
      }
      
      private static function method_3132(param1:Point, param2:int, param3:int, param4:int) : void
      {
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc5_:int = C_ACADEMY.method_44(param3);
         while(0 < param4)
         {
            _loc7_ = param1.x - ATTACK.const_79 + ATTACK.const_79 * 2 * Math.random();
            _loc8_ = param1.y - ATTACK.const_79 + ATTACK.const_79 * 2 * Math.random();
            _loc9_ = -180 + (Math.random() * 180 - 90);
            class_118.instance.method_1514(param3,_loc7_,_loc8_,_loc9_,_loc5_,1,-1,0,-1,null,BFData.getDefaultBFData());
            _loc6_++;
         }
      }
      
      public static function method_832() : void
      {
         var _loc1_:class_164 = null;
         for each(_loc1_ in Units._units)
         {
            if(_loc1_.isAttacker || _loc1_.method_331)
            {
               class_118.instance.method_3963(_loc1_);
            }
         }
      }
      
      public static function method_13(param1:Boolean, param2:Boolean = false) : void
      {
         var_603 = false;
         var_997 = false;
         _queued = null;
         delete var_98.queued;
         if(param2)
         {
            method_994(class_31.method_28(),param1);
            method_832();
         }
         else
         {
            class_97.Show(new class_697(var_882,param1));
         }
         BASE.method_4087();
         POPUPS.method_916(true);
         var_882 = class_185.method_4365();
         class_138.method_272();
      }
   }
}
