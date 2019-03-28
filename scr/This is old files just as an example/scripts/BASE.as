package
{
   import com.cc.utils.class_200;
   import com.cc.utils.SecNum;
   import com.cc.utils.class_62;
   import com.cc.utils.SecNum64;
   import package_4.class_216;
   import flash.utils.Dictionary;
   import org.osflash.signals.class_59;
   import com.cc.units.Units;
   import com.cc.projectiles.Projectiles;
   import package_51.FX;
   import com.cc.aoes.AOEManager;
   import com.cc.ui.UI;
   import package_22.ResourceManager;
   import package_62.class_213;
   import com.cc.environment.class_140;
   import package_53.class_173;
   import com.cc.utils.class_44;
   import package_20.class_158;
   import com.cc.battle.class_118;
   import package_2.class_201;
   import flash.events.MouseEvent;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import com.cc.units.AbstractUnit;
   import package_58.class_188;
   import com.cc.utils.js_utils.WCJSON;
   import com.cc.utils.class_9;
   import com.cc.worldmap.class_23;
   import package_11.class_28;
   import package_4.class_66;
   import package_32.SaveManager;
   import package_19.class_60;
   import com.cc.worldmap.class_25;
   import package_50.class_167;
   import com.adverserealms.log.Logger;
   import package_18.Alias;
   import package_22.class_69;
   import com.cc.units.UnitManager;
   import package_57.class_185;
   import package_15.class_43;
   import package_33.class_106;
   import package_20.class_207;
   import package_20.class_132;
   import com.cc.ui.class_98;
   import package_38.ItemStoreManager;
   import com.cc.towers.TowerResearch;
   import com.cc.tests.class_13;
   import com.cc.tech.TechManager;
   import package_47.class_208;
   import package_2.class_178;
   import package_5.TransitionLogger;
   import com.cc.logging.class_18;
   import package_31.class_97;
   import package_31.class_192;
   import package_31.class_102;
   import package_30.LoadManager;
   import com.cc.battle.class_209;
   import package_20.class_182;
   import flash.geom.Point;
   import package_20.class_206;
   import package_59.class_194;
   import package_20.class_125;
   import flash.events.Event;
   import flash.utils.getTimer;
   import com.cc.buffs.BuffManager;
   import package_54.class_176;
   import com.cc.units.PlatoonManager;
   import package_56.class_204;
   import package_56.class_180;
   import com.cc.utils.AudioController;
   import com.cc.environment.class_189;
   import package_52.ReplayPlayer;
   import package_31.class_190;
   import package_60.MissileManager;
   import package_60.MercenaryManager;
   import package_41.FirstWeekRetention;
   import package_31.class_168;
   import package_37.class_123;
   import package_31.class_170;
   import package_43.class_145;
   import package_29.DepositManager;
   import package_2.class_202;
   import com.netease.protobuf.UInt64;
   import package_2.class_199;
   import package_31.class_124;
   import com.cc.build.*;
   import package_4.class_183;
   import com.cc.utils.class_22;
   import com.cc.units.class_166;
   import com.cc.utils.class_191;
   import package_29.class_111;
   import package_20.class_197;
   import package_61.class_198;
   import flash.geom.Rectangle;
   import com.cc.ui.class_171;
   import package_55.class_179;
   import com.cc.units.class_136;
   import package_44.class_169;
   import package_20.class_203;
   import com.cc.units.UnitData;
   import package_41.Reinforcements;
   import package_21.StarterPack;
   
   public class BASE extends Object
   {
      
      public static const const_1281:int = 1210;
      
      public static const const_1468:int = 968;
      
      public static const const_1997:int = const_1281 * class_32.const_194 * class_32.const_194 * class_32.const_194 * class_32.const_194 * class_32.const_194;
      
      public static const const_1939:int = const_1468 * class_32.const_194 * class_32.const_194 * class_32.const_194 * class_32.const_194 * class_32.const_194;
      
      private static const const_4927:int = 1350687600;
      
      public static const const_2848:String = "This base is currently locked";
      
      private static const const_4884:int = 5;
      
      private static var var_992:int = 0;
      
      public static var name_68:Boolean;
      
      public static var var_471:class_200 = new class_200(new class_212(),false);
      
      public static var var_1982:Array;
      
      public static var var_4088:Array;
      
      public static var var_217:SecNum;
      
      public static var var_4175:SecNum = new SecNum(0);
      
      public static var var_1768:Boolean;
      
      public static var var_5071:int;
      
      private static var var_576:Boolean;
      
      private static var var_552:int;
      
      private static var var_619:int;
      
      private static var var_709:int;
      
      private static var var_2285:int = -1;
      
      public static var var_1666:Array;
      
      public static var var_5598:Object;
      
      private static var var_393:int;
      
      public static var var_809:Object;
      
      public static var var_41:Object;
      
      public static var var_923:Object;
      
      public static var var_498:Object;
      
      public static var var_482:Object;
      
      public static var var_2470:Object;
      
      public static var var_2175:Object;
      
      public static var var_3591:Object;
      
      public static var var_754:Object;
      
      public static var var_257:Object;
      
      public static var var_5000:Object;
      
      private static var var_1379:class_62;
      
      private static var var_750:class_62;
      
      public static var var_4617:int;
      
      private static var var_3487:SecNum = new SecNum(0);
      
      public static var var_4771:String;
      
      public static var var_882:int = 0;
      
      private static var var_540:Boolean = true;
      
      public static var var_121:int;
      
      public static var var_1216:SecNum = new SecNum(0);
      
      public static var var_1042:SecNum64 = new SecNum64(0);
      
      public static var var_4228:SecNum = new SecNum(10);
      
      public static var var_1903:Object;
      
      public static var var_487:Object;
      
      public static var var_2276:Array;
      
      public static var var_1315:int;
      
      public static var var_5317:int;
      
      public static var var_2230:int;
      
      public static var var_1730:int;
      
      public static var var_2065:String;
      
      public static var var_3205:String;
      
      private static var var_523:Array;
      
      private static var var_3001:SecNum = new SecNum(0);
      
      public static var var_2338:String;
      
      public static var var_1357:String;
      
      public static var var_1509:SecNum;
      
      public static var var_1529:SecNum;
      
      public static var var_324:SecNum;
      
      private static var var_1459:int = -1;
      
      public static var var_2661:Array = [];
      
      private static var var_1305:class_216;
      
      private static var var_1679:Boolean;
      
      public static var var_215:int;
      
      public static var var_222:int;
      
      private static var var_1140:Dictionary;
      
      private static var var_1318:Boolean = false;
      
      private static var var_4247:Number;
      
      private static const const_3968:Number = 6000;
      
      private static var var_2656:Boolean = false;
      
      private static var var_1005:Vector.<Number> = new <Number>[0,1,10500,14700,20580,28812,40337,56472,79060,110684,154958,216941,303717,425204,595286,833401,1166761,1633465,2286851,3201591,4482228,6275119,8785167,12299234,17218927,24106498,33749097,47248736,66148230,92607522,129650530,181510743,254115040,355761056,498065478,697291669,976208337,1366691671,1913368339,2.678715675E9,3.750201945E9,5.250282723E9,7.350395812E9,1.0290554137E10,1.4406775792E10,2.0169486109E10,2.8237280553E10,3.9532192774E10,5.5345069884E10,7.7483097838E10,1.08476336973E11,1.51866871762E11,2.12613620467E11,2.97659068653E11];
      
      public static const const_692:uint = var_1005.length;
      
      private static var var_2496:Object = {
         "0":{
            "X":-95,
            "id":0,
            "t":14,
            "Y":15
         },
         "1":{
            "X":165,
            class_2.method_7(-1820302264):0,
            "Y":-105,
            "id":1,
            "t":1,
            class_2.method_7(-1820298280):1200
         },
         "2":{
            "X":45,
            class_2.method_7(-1820302264):0,
            "Y":-105,
            "id":2,
            "t":2,
            class_2.method_7(-1820298280):1200
         },
         "3":{
            "X":-110,
            "id":3,
            "t":6,
            "Y":-190
         },
         "4":{
            "X":75,
            "id":4,
            "t":29,
            "Y":15
         },
         "5":{
            "X":340,
            "id":5,
            "t":17,
            "Y":-140
         },
         "6":{
            "X":340,
            "id":6,
            "t":17,
            "Y":-120
         },
         "7":{
            "X":-140,
            "id":7,
            "t":17,
            "Y":-120
         },
         "8":{
            "X":-140,
            "id":8,
            "t":17,
            "Y":-140
         },
         "9":{
            "X":-140,
            "id":9,
            "t":17,
            "Y":-160
         },
         class_2.method_7(-1820303199):{
            "X":-140,
            "id":10,
            "t":17,
            "Y":-180
         },
         class_2.method_7(-1820303287):{
            "X":-140,
            "id":11,
            "t":17,
            "Y":-200
         },
         class_2.method_7(-1820303288):{
            "X":-140,
            "id":12,
            "t":17,
            "Y":-220
         },
         class_2.method_7(-1820303284):{
            "X":-120,
            "id":13,
            "t":17,
            "Y":-220
         },
         class_2.method_7(-1820303286):{
            "X":-100,
            "id":14,
            "t":17,
            "Y":-220
         },
         class_2.method_7(-1820303281):{
            "X":-80,
            "id":15,
            "t":17,
            "Y":-220
         },
         class_2.method_7(-1820303282):{
            "X":-60,
            "id":16,
            "t":17,
            "Y":-220
         },
         class_2.method_7(-1820303294):{
            "X":35,
            "id":17,
            "t":17,
            "Y":175
         },
         class_2.method_7(-1820303295):{
            "X":340,
            "id":18,
            "t":17,
            "Y":-100
         },
         class_2.method_7(-1820303293):{
            "X":-95,
            "id":19,
            "t":17,
            "Y":175
         },
         class_2.method_7(-1820303180):{
            "X":-75,
            "id":20,
            "t":17,
            "Y":175
         },
         class_2.method_7(-1820303178):{
            "X":-5,
            "id":21,
            "t":17,
            "Y":175
         },
         class_2.method_7(-1820303253):{
            "X":-15,
            "id":22,
            "t":17,
            "Y":195
         },
         class_2.method_7(-1820303254):{
            "X":15,
            "id":23,
            "t":17,
            "Y":175
         },
         class_2.method_7(-1820303256):{
            "X":-65,
            "id":24,
            "t":17,
            "Y":195
         },
         class_2.method_7(-1820303273):{
            "X":-315,
            "id":25,
            class_2.method_7(-1820308320):[100,-50],
            "t":7,
            "Y":-95
         }
      };
      
      private static var var_2600:int;
      
      private static var var_4554:int = 2000;
      
      private static var var_4412:int = 2000;
      
      public static var var_3479:Boolean = false;
      
      private static const const_1004:class_62 = new class_62("purchase",class_2.method_7(-1820306715));
      
      protected static var var_2572:Boolean = false;
      
      private static var var_3129:class_59;
      
      private static var var_4015:class_59;
      
      private static var var_2640:int;
       
      public function BASE()
      {
         super();
      }
      
      public static function method_1226() : Boolean
      {
         return var_523.length > 0;
      }
      
      public static function get method_3881() : class_59
      {
         return var_3129;
      }
      
      public static function get method_2273() : class_59
      {
         return var_4015;
      }
      
      public static function get method_2582() : int
      {
         return var_2640;
      }
      
      public static function set method_2582(param1:int) : void
      {
         var_2640 = param1;
      }
      
      public static function init() : void
      {
         var_3129 = new class_59();
         var_4015 = new class_59(int,int);
      }
      
      public static function Setup() : void
      {
         var _loc1_:BldgFoundation = null;
         var_2600 = method_1428(var_2496);
         var_215 = const_1281;
         var_222 = const_1468;
         var_1005.fixed = true;
         var_540 = true;
         Units.Clear();
         Projectiles.Clear();
         FX.Clear();
         class_131.Clear();
         AOEManager.Clear();
         for each(_loc1_ in var_41)
         {
            _loc1_.cleanUp();
         }
         var_41 = {};
         var_923 = {};
         var_498 = {};
         var_482 = {};
         var_2470 = {};
         var_2175 = {};
         var_3591 = {};
         var_754 = {};
         var_257 = {};
         var_5000 = {};
         UI.Hide("warning");
         class_156.var_603 = false;
         class_156._queued = null;
         if(class_156.var_98 && class_156.var_98._queued)
         {
            delete class_156.var_98.queued;
         }
         if(UI.var_147)
         {
            UI.Hide(class_2.method_7(-1820301292));
         }
         ResourceManager.NonPlayerResources.method_1398();
         MAP.Clear();
         UI.Clear();
         class_186.Clear();
         UPDATES.Setup();
         class_213.Clear();
         class_140.Clear();
         var_523 = [];
         var_1679 = false;
         var_393 = 0;
         var_471.method_276(class_212.BASE,false);
         var_1768 = false;
         var_1315 = 0;
         var_2230 = 0;
         var_1730 = 0;
         var_1140 = new Dictionary(true);
         var_750 = null;
         baseName = "";
         class_173.instance.method_2410();
         class_173.instance.method_5464();
      }
      
      public static function method_29(param1:int) : BldgFoundation
      {
         if(var_1140 == null)
         {
            return null;
         }
         return var_1140[param1];
      }
      
      public static function method_6817(param1:BldgFoundation) : void
      {
         if(var_1140 == null || param1 == null || !C_Buildings.isBuildingTypeUnique(param1.type))
         {
            return;
         }
         class_44.assert(method_139() || !(param1.type in var_1140) || param1 == var_1140[param1.type],class_2.method_7(-1820296082));
         var_1140[param1.type] = param1;
      }
      
      public static function method_5332(param1:BldgFoundation) : void
      {
         if(var_1140 == null || param1 == null || !C_Buildings.isBuildingTypeUnique(param1.type))
         {
            return;
         }
         delete var_1140[param1.type];
      }
      
      private static function method_1428(param1:Object) : int
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param1)
         {
            if(_loc3_.t != class_158.const_111 && _loc3_.t != class_158.const_123)
            {
               _loc2_++;
            }
         }
         return 0;
      }
      
      public static function method_7773(param1:Array) : void
      {
         BASE.method_507(10);
         BASE.method_354(10);
      }
      
      public static function method_8428(param1:Array) : void
      {
         BASE.method_507(8);
         BASE.method_354(8);
      }
      
      public static function method_7737(param1:Array) : void
      {
         class_118.instance.method_7570();
         class_105.goHome();
         class_105.method_1042(new class_201());
      }
      
      public static function method_808(param1:MouseEvent = null, param2:Boolean = false) : void
      {
         class_31.method_2330();
         var _loc3_:class_172 = new class_172();
         _loc3_.method_93 = class_68.name_1.id;
         class_105.method_302(class_105.const_182,_loc3_,param2);
      }
      
      public static function method_139() : Boolean
      {
         if(class_105.method_65() && class_105.method_49())
         {
            if(class_105.method_49().method_93 == 0)
            {
               return true;
            }
         }
         return false;
      }
      
      private static function method_7944(param1:String, param2:BitmapData) : void
      {
         class_31.method_1258(class_31.var_103,true,new Bitmap(param2));
      }
      
      public static function method_5925(param1:String, param2:String) : void
      {
         var_576 = true;
         var_121 = 0;
         var_1357 = param1;
         var_2338 = param2;
      }
      
      private static function method_3987(param1:Object) : void
      {
         var _loc5_:String = null;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:String = null;
         var _loc9_:Object = null;
         var _loc10_:String = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Object = param1.buildingdata;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:Object = {};
         var _loc4_:* = false;
         for(_loc5_ in _loc2_)
         {
            _loc6_ = parseFloat(_loc5_);
            if(isNaN(_loc6_) || _loc6_ < 0 || _loc6_ - int(_loc6_) > 0)
            {
               _loc3_[_loc5_] = _loc2_[_loc5_];
               _loc4_ = true;
            }
         }
         if(_loc4_)
         {
            if(class_105.method_891())
            {
               _loc7_ = 0;
               for(_loc8_ in _loc3_)
               {
                  while(_loc2_.hasOwnProperty(_loc7_.toString()))
                  {
                     _loc7_++;
                  }
                  FrameworkLogger.Log(FrameworkLogger.KEY_BUILDING_ID_ERROR,class_2.method_7(-1820299623) + _loc8_ + class_2.method_7(-1820308698) + _loc7_);
                  _loc9_ = _loc3_[_loc8_];
                  _loc9_.id = _loc7_;
                  _loc2_[_loc7_.toString()] = _loc9_;
                  delete _loc2_[_loc8_];
               }
            }
            else
            {
               _loc10_ = class_2.method_7(-1820299271);
               if(class_105.method_49() != null)
               {
                  _loc10_ = class_105.method_49().toString();
               }
               FrameworkLogger.Log(FrameworkLogger.KEY_BUILDING_ID_ERROR,class_2.method_7(-1820309822) + _loc10_ + class_2.method_7(-1820296757));
               param1.error = class_2.method_7(-1820309831) + _loc10_ + class_2.method_7(-1820296757);
            }
         }
      }
      
      public static function method_3631(param1:Object) : void
      {
         var _loc3_:String = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:Object = null;
         var _loc8_:Array = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:Object = null;
         var _loc14_:* = false;
         var _loc15_:Object = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         var _loc20_:DisplayObject = null;
         var _loc21_:Array = null;
         var _loc22_:AbstractUnit = null;
         var _loc23_:* = 0;
         var _loc2_:class_172 = class_105.method_49();
         var_1318 = false;
         if(!param1.hasOwnProperty(class_2.method_7(-1820302779)))
         {
            param1[class_2.method_7(-1820302779)] = class_2.method_7(-1820299606);
         }
         if(!param1.error)
         {
            method_3987(param1);
         }
         if(param1.error)
         {
            method_1988(param1);
            return;
         }
         if(class_105.method_450())
         {
            class_173.instance.method_2410();
         }
         else
         {
            class_173.instance.method_7462(param1.monsters);
         }
         class_173.instance.method_5183(_loc2_);
         if(class_105.method_23() && String(class_68.name_1.id) != param1.userid)
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_BASE_LOAD_UID_MISMATCH,param1.userid,false);
         }
         var_4617 = param1.baseseed;
         method_380 = int(param1.baseid);
         if(class_105.method_131())
         {
            if(class_68.name_1.method_237 == 0)
            {
               class_68.name_1.method_237 = method_380;
               class_188.method_452();
            }
            else if(class_68.name_1.method_237 != method_380)
            {
               FrameworkLogger.Log(FrameworkLogger.KEY_LOW_LEVEL_RESET,class_2.method_7(-1820301975) + method_380 + class_2.method_7(-1820309378) + class_68.name_1.method_237 + ". " + WCJSON.encode(param1));
               class_31.method_74(class_9.const_2102,class_2.method_7(-1820301975) + method_380 + class_2.method_7(-1820309378) + class_68.name_1.method_237 + ".");
               return;
            }
         }
         else if(_loc2_)
         {
            _loc2_.baseID = method_380;
         }
         if(class_105.method_167() && class_23.method_21 && param1.hasOwnProperty(class_2.method_7(-1820295588)) && param1.hasOwnProperty("baseid"))
         {
            class_23.method_21.method_6439(param1.mapentity,param1.baseid);
         }
         if(param1.flags && (class_28.method_30 || class_105.method_23()))
         {
            class_66.method_2151(param1.flags);
            class_31.method_5399();
         }
         if(BaseRestorer.method_4556(param1))
         {
         }
         class_31.var_782 = false;
         var_2230 = int(param1.bookmarked);
         var_1730 = int(param1.installsgenerated);
         var_552 = int(param1.savetime);
         var_619 = int(param1.lastuserbasesave);
         if(!var_619)
         {
            var_619 = var_552;
         }
         var_709 = int(param1.currenttime);
         if(!class_105.method_102())
         {
            _loc5_ = 345600;
            if(var_709 - var_552 > _loc5_)
            {
               var_552 = var_709 - _loc5_;
               if(var_619 < var_552)
               {
                  var_619 = var_552;
               }
            }
            class_31.method_7316(var_552);
         }
         class_31.method_2446(param1.currenttime);
         class_31.var_1538 = 0;
         if(class_105.method_23())
         {
            SaveManager.class_2093.method_4720(param1.saveTokens);
         }
         var_4771 = param1.fbid;
         var_882 = param1.factionid;
         method_93 = param1.userid;
         var_5071 = int(param1.attackid);
         class_60.method_1299();
         if(class_105.method_131() || class_105.method_885())
         {
            class_25.method_2618(param1);
         }
         if(class_105.method_184())
         {
            ResourceManager.class_2093.method_6839(param1.resources);
         }
         var_1509 = new SecNum(0);
         var_1529 = new SecNum(0);
         var_324 = new SecNum(0);
         if(param1.updates && param1.updates.length > 0)
         {
            UPDATES.Process(param1.updates);
         }
         class_163.Data(param1.mushrooms);
         class_187.Setup(param1.monsterbaiter);
         class_167.Data(param1.minefactory);
         if(class_105.method_23() && !class_31.var_4742 && param1.hme)
         {
            class_31.var_4742 = int(param1.hme);
         }
         var_1315 = int(param1.protectedwm);
         var_809 = param1.buildingdata;
         class_184.method_6448(param1.buildingdata);
         if(class_105.method_23() && class_66.method_6615)
         {
            _loc6_ = method_1428(var_809);
            if(_loc6_ < var_2600)
            {
               if(class_66.method_4888)
               {
                  FrameworkLogger.Log(FrameworkLogger.KEY_BUILDING_DATA_REPLACED,class_2.method_7(-1820309907) + class_28.Stage + class_2.method_7(-1820306811) + var_2600 + class_2.method_7(-1820297754) + _loc6_);
               }
               Logger.error(class_2.method_7(-1820298499) + var_3001.Get() + class_2.method_7(-1820302844) + var_2600 + class_2.method_7(-1820297754) + _loc6_ + class_2.method_7(-1820298008));
               var_809 = var_2496;
               param1.buildingdata = var_809;
            }
         }
         if(class_105.method_131())
         {
            if(String(param1.basename).search(Alias.method_831) == -1)
            {
               class_68.name_1.alias = param1.basename as String;
            }
         }
         baseName = param1.basename;
         var_750 = null;
         if(int(param1.aliaschanges) > 0)
         {
            method_871 = param1.basename as String;
         }
         var_1216.Set(param1.basevalue);
         if(param1.points)
         {
            var_1042.Set(param1.points);
         }
         if(class_105.method_55())
         {
            var_217 = new SecNum(int(param1.credits));
         }
         var_487 = param1.loot;
         var_257 = {};
         for(_loc3_ in param1.researchdata)
         {
            if(param1.researchdata[_loc3_])
            {
               var_257[_loc3_] = new SecNum(param1.researchdata[_loc3_]);
            }
         }
         if(class_105.method_131())
         {
            class_69.Data(param1.stats);
            UnitManager.var_2801 = !class_69.method_213(class_69.const_4468);
            if(class_69.method_213(class_69.const_4265))
            {
               class_31.method_829 = false;
            }
         }
         if(class_69.method_540(class_69.const_1315))
         {
            class_31.var_496 = class_69.method_213(class_69.const_1315);
         }
         if(class_69.method_540(class_69.const_1545))
         {
            class_31.var_949 = class_69.method_213(class_69.const_1545);
         }
         if(class_69.method_540(class_69.const_1837))
         {
            class_31.var_909 = class_69.method_213(class_69.const_1837);
         }
         if(class_69.method_540(class_69.const_1846))
         {
            class_31.var_661 = class_69.Get(class_69.const_1846);
         }
         if(class_69.method_540(class_69.const_1107))
         {
            class_31.var_832 = class_69.method_213(class_69.const_1107);
         }
         if(class_69.method_540(class_69.const_1808))
         {
            class_31.var_704 = class_69.method_213(class_69.const_1808);
         }
         if(class_69.method_540(class_69.const_1610))
         {
            class_31.var_1034 = class_69.method_213(class_69.const_1610);
         }
         if(class_69.method_540(class_69.const_1601))
         {
            class_31.var_730 = class_69.method_213(class_69.const_1601);
         }
         if(class_69.method_540(class_69.FULL_SCREEN_INTERACTIVE))
         {
            class_31.var_1351 = class_69.method_213(class_69.FULL_SCREEN_INTERACTIVE);
         }
         if(class_69.method_540(class_69.const_1751))
         {
            class_31.var_1236 = class_69.method_213(class_69.const_1751);
         }
         if(param1.academy)
         {
            C_ACADEMY.Data(param1.academy);
         }
         if(param1.unitxp)
         {
            C_ACADEMY.method_3104(param1.unitxp);
         }
         FX.method_6217(param1.effects);
         if(class_105.method_131())
         {
            if(var_619 < const_4927 && param1.tutorialstage && param1.tutorialstage != 0)
            {
               class_28.var_3644 = true;
            }
            class_28.Setup(int(param1.tutorialstage));
         }
         class_156.Setup(param1.aiattacks);
         if(class_105.method_23())
         {
            class_32.Data(param1.storeitems,param1.storedata,param1.inventory);
            _loc7_ = {
               "c":{},
               "g":{}
            };
            if(param1.quests != null)
            {
               if("c" in param1.quests)
               {
                  _loc7_["c"] = param1.quests["c"];
               }
               if("g" in param1.quests)
               {
                  _loc7_["g"] = param1.quests["g"];
               }
            }
            name_68 = true;
            class_138.method_4497(_loc7_);
            if(param1.fan)
            {
               class_138.method_218(class_2.method_7(-1820295565),1,true);
            }
            if(param1.bookmarked)
            {
               class_138.method_218(class_2.method_7(-1820295956),1,true);
            }
            if(param1.giftsentcount)
            {
               class_138.method_218(class_2.method_7(-1820300800),int(param1.giftsentcount),true);
            }
            class_138.method_218(class_2.method_7(-1820306625),var_1730,true);
         }
         if(class_105.method_65() && param1.storedata != null)
         {
            class_32.method_2115(param1.storedata);
         }
         var_1982 = [];
         var_4088 = [];
         if(param1.attacks)
         {
            _loc8_ = param1.attacks.base?param1.attacks.base:param1.attacks;
            _loc9_ = 0;
            _loc10_ = 0;
            _loc11_ = 0;
            _loc12_ = 0;
            for each(_loc13_ in _loc8_)
            {
               _loc9_++;
               if(_loc13_.loot)
               {
                  _loc10_ = _loc10_ + _loc13_.loot.r1;
                  _loc11_ = _loc11_ + _loc13_.loot.r2;
                  _loc12_ = _loc12_ + _loc13_.loot.r3;
               }
               _loc14_ = false;
               for each(_loc15_ in var_1982)
               {
                  if(_loc15_.fbid == _loc13_.fbid)
                  {
                     _loc14_ = true;
                     _loc15_.count++;
                     _loc15_.lastTime = _loc13_.starttime;
                  }
               }
               if(!_loc14_)
               {
                  var_4088.push([0,_loc13_.name]);
                  var_1982.push({
                     "fbid":_loc13_.fbid,
                     "name":_loc13_.name,
                     class_2.method_7(-1820298554):_loc13_.pic_square,
                     class_2.method_7(-1820302982):_loc13_.friend,
                     "count":1,
                     class_2.method_7(-1820302103):_loc13_.starttime,
                     "userid":_loc13_.userid,
                     "loot":_loc13_.loot,
                     class_2.method_7(-1820302779):_loc13_.name,
                     "baseid":_loc13_.baseid
                  });
               }
            }
            if(_loc9_ > 0)
            {
               class_156.method_4828(var_709);
            }
            if(var_1982.length > 0)
            {
               var_1982[0].loot = {
                  "r1":_loc10_,
                  "r2":_loc11_,
                  "r3":_loc12_
               };
            }
            if(param1.attacks.deposits)
            {
               ResourceManager.class_2093.method_7642(param1.attacks.deposits);
            }
         }
         if(param1.resourcesavetime)
         {
            ResourceManager.class_2093.method_6474(param1.resourcesavetime);
         }
         else
         {
            ResourceManager.class_2093.method_3506();
         }
         if(param1.factionid)
         {
            var_882 = param1.factionid;
            var_2065 = class_185.GetName(var_882);
            var_3205 = param1.pic_square;
            var_121 = param1.level;
            baseName = var_2065;
         }
         else
         {
            var_2065 = param1.name;
            var_3205 = param1.pic_square;
            var_882 = 0;
         }
         if(class_105.method_23())
         {
            if(var_5317 < 1)
            {
               if(!class_31.var_5315 && (class_31.var_1392 == 20 || class_31.var_1392 == 50 || class_31.var_1392 == class_31.const_8.Get() || class_31.var_1392 == 200 || class_31.var_1392 == 500 || class_31.var_1392 == class_31.const_20.Get()))
               {
                  class_31.var_5315 = true;
                  _loc16_ = class_43.getString(class_2.method_7(-1820301316),{"count":class_31.method_35(class_31.var_1392)});
                  POPUPS.method_158(class_43.getString(class_2.method_7(-1820307462)),_loc16_);
               }
            }
         }
         if(class_105.method_23() && class_28.method_30)
         {
            var_2276 = param1.gifts;
         }
         else
         {
            var_2276 = null;
         }
         while(var_2661.length > 0)
         {
            _loc17_ = var_2661.shift();
            _loc18_ = _loc17_.length > 0?_loc17_[0]:0;
            _loc19_ = _loc17_.length > 1?_loc17_[1]:0;
            method_529(_loc18_,_loc19_,false);
         }
         while(0 < class_31.var_668.numChildren)
         {
            _loc20_ = class_31.var_668.getChildAt(0);
            if(_loc20_.parent)
            {
               _loc20_.parent.removeChild(_loc20_);
            }
            _loc4_++;
         }
         class_31.var_154 = false;
         class_175.method_6645();
         MAP.Reset();
         if(class_105.method_131())
         {
            _loc21_ = param1.chatservers as Array;
            if(_loc21_)
            {
               class_106.method_6170(_loc21_);
               if(class_105.method_171())
               {
                  class_106.method_2814(class_23.worldNumber);
               }
            }
         }
         var_1903 = {};
         if(class_118.instance.mode == class_207.const_228)
         {
            if(!class_28.method_30 && class_28.Stage < class_28.const_1892)
            {
               param1.monsters = {};
            }
            class_118.instance.method_5535(param1);
            if(class_105.method_23())
            {
               _loc22_ = AbstractUnit.method_778({
                  "t":class_132.const_145,
                  "u":UnitManager.class_2093.method_231()
               });
               class_118.instance.method_504(_loc22_,0,0,0);
            }
         }
         if(class_105.method_131())
         {
            Units.setAIEnabled(!class_69.method_213(class_69.const_1142));
         }
         class_98.method_1844();
         class_118.instance.method_6589();
         C_ACADEMY.method_5835();
         if(param1.eventdata)
         {
            if(class_105.method_23())
            {
               ItemStoreManager.method_1252(ItemStoreManager.const_224);
            }
         }
         if(class_105.method_184())
         {
            TowerResearch.Data(param1.defenselabdata);
         }
         if(class_13.FastBuildTimes())
         {
            _loc23_ = 1;
            if(var_809 != null && var_809["0"] != null && var_809["0"]["t"] == class_158.const_13)
            {
               _loc23_ = var_809["0"]["l"];
            }
            C_Buildings.SetBuildingProps(_loc23_);
         }
         if(class_105.method_23())
         {
            TechManager.instance.processTechResearch(param1.workshopdata);
         }
         if(param1.hasOwnProperty(class_2.method_7(-1820299002)) && param1.acceptedtosversion != null)
         {
            var_2640 = param1.acceptedtosversion;
         }
         class_13.method_4494();
         class_208.method_5315();
         method_3206(param1);
      }
      
      private static function method_8152(param1:Object) : void
      {
         Logger.debug(class_2.method_7(-1820296946));
         param1.resources.r1 = var_4554;
         param1.resources.r2 = var_4412;
         param1.updates = [];
         if(param1.mushrooms.l)
         {
            delete param1.mushrooms.l;
         }
         param1.buildingdata = var_2496;
         param1.basevalue = 0;
         param1.points = 0;
         param1.stats = {};
         param1.academy = {};
         param1.effects = {};
         param1.monsters = {};
         param1.tutorialstage = 0;
         param1.quests = {};
         param1.storedata = {};
         param1.inventory = {};
         param1.savetime = param1.currenttime;
      }
      
      public static function method_6920() : void
      {
         var _loc1_:BldgFoundation = null;
         method_3268();
         if(class_105.method_23())
         {
            ResourceManager.class_2093.method_5274();
            class_32.method_1074();
            ResourceManager.class_2093.method_7032();
         }
         if(!class_23.hasFinishedLoading)
         {
            class_23.var_1621.method_111(method_1348);
            class_23.method_21.getMyMap();
         }
         if(class_23.method_21 != null)
         {
            _loc1_ = method_29(class_158.const_13);
            if(class_105.method_23() == true && _loc1_ != null && _loc1_.level >= 5)
            {
               class_23.method_21.GetDataStorage(class_178.const_798,new <String>[class_2.method_7(-1820301642)],class_68.name_1.id.toString());
            }
         }
         if(!class_105.method_118())
         {
            MAP.method_5526.attemptToLoadTerrain();
         }
         TransitionLogger.stop(class_18.const_2757);
         TransitionLogger.stop(class_18.const_2314);
         TransitionLogger.stop(class_18.const_2671);
         TransitionLogger.stop(class_18.const_1895);
         TransitionLogger.stop(class_18.const_956);
      }
      
      public static function method_1988(param1:Object) : void
      {
         var _loc2_:class_172 = null;
         var _loc3_:Object = null;
         var_576 = false;
         if(param1.error.indexOf(const_2848) >= 0)
         {
            if(class_105.method_23() && !class_23.hasFinishedLoading)
            {
               var_576 = true;
               class_133.Show(class_43.getString(class_2.method_7(-1820302024)),true);
               class_23.var_1621.method_111(method_6060);
               class_23.method_21.getMyMap();
            }
            else
            {
               Logger.error(class_2.method_7(-1820296265));
               FrameworkLogger.Log(class_2.method_7(-1820296413),class_2.method_7(-1820296540));
               class_133.Hide();
               if(class_31.var_782)
               {
                  class_31.method_548(class_2.method_7(-1820298800));
               }
               else
               {
                  class_31.method_74(class_9.const_2834,class_2.method_7(-1820298800));
               }
            }
         }
         else if(param1.error.indexOf(class_2.method_7(-1820311177)) >= 0)
         {
            class_133.Hide();
            if(!class_105.method_23())
            {
               class_31.method_1258(class_31.var_103,true);
               POPUPS.method_158(class_43.getString(class_2.method_7(-1820306805)),class_43.getString(class_2.method_7(-1820300036)),class_43.getString(class_2.method_7(-1820311116)),method_808,false);
            }
         }
         else if(param1.error.indexOf(class_2.method_7(-1820301937)) >= 0)
         {
            POPUPS.method_158(class_43.getString(class_2.method_7(-1820310064)),class_43.getString(class_2.method_7(-1820309969)),class_43.getString(class_2.method_7(-1820311116)),method_808,false);
         }
         else if(class_105.method_167())
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820308101) + param1.error);
            _loc2_ = class_105.method_49();
            if(_loc2_ != null)
            {
               _loc3_ = {
                  "location":class_2.method_7(-1820298095) + _loc2_.var_509 + class_2.method_7(-1820296564) + _loc2_.var_1219 + class_2.method_7(-1820308415) + _loc2_.var_1254 + "}",
                  "error":param1.error
               };
               FrameworkLogger.Log(FrameworkLogger.KEY_SCOUT_ERROR,WCJSON.encode(_loc3_));
            }
            class_133.Hide();
            class_97.Show(new class_192(class_43.getString(class_2.method_7(-1820309017)),class_43.getString(class_2.method_7(-1820300698)),false,class_43.getString(class_2.method_7(-1820300631)),method_808,class_102.const_16),true,true);
         }
         else if(class_31.var_782)
         {
            class_31.method_548(class_2.method_7(-1820306893) + param1.error);
         }
         else if(class_31.const_138 && param1.error == class_2.method_7(-1820299443))
         {
            Logger.error(class_2.method_7(-1820301563));
            if(class_31.var_824.search(class_2.method_7(-1820295559)) != -1)
            {
               class_31.var_824 = class_31.var_824.replace(class_2.method_7(-1820295559),class_2.method_7(-1820308186));
            }
            else
            {
               class_31.var_824 = class_31.var_824.replace(class_2.method_7(-1820308186),class_2.method_7(-1820295559));
            }
            LoadManager.instance.method_1796();
         }
         else
         {
            Logger.error(class_2.method_7(-1820295925) + param1.error);
            class_31.method_74(class_9.const_2668,class_2.method_7(-1820308101) + param1.error);
            class_133.Hide();
         }
      }
      
      private static function method_6060() : void
      {
         var _loc1_:class_209 = class_118.instance.method_1008(class_68.name_1.method_179);
         if(_loc1_)
         {
            class_118.instance.method_886(_loc1_);
         }
         else
         {
            Logger.error(class_2.method_7(-1820303232));
            FrameworkLogger.Log(class_2.method_7(-1820298174),class_2.method_7(-1820301515));
            class_133.Hide();
            var_576 = false;
            class_105.goHome();
         }
      }
      
      public static function method_3268() : void
      {
         var _loc1_:BldgFoundation = null;
         var _loc2_:class_172 = null;
         var _loc3_:Object = null;
         TransitionLogger.start(class_18.const_1651);
         if(method_29(class_158.const_13) == null && class_105.method_23())
         {
            _loc2_ = class_105.method_49();
            if(_loc2_ != null && _loc2_.method_206 != class_182.const_328)
            {
               FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820298666));
            }
         }
         if(class_105.method_23())
         {
            if(method_29(class_158.const_36) == null)
            {
               if(!class_28.method_30)
               {
                  _loc3_ = {
                     "X":-315,
                     "Y":-95,
                     "id":++var_393,
                     "t":class_158.const_36
                  };
                  class_118.instance.method_3980(_loc3_);
                  _loc1_ = BASE.createBuilding(class_158.const_36);
                  _loc1_.Setup(_loc3_);
                  var_393 = Math.max(var_393,_loc1_.id);
               }
               else if(method_181(class_158.const_36) == 0)
               {
                  method_507(class_158.const_36);
               }
            }
            if(!class_69.method_213(class_69.const_2841))
            {
               method_3644();
               class_69.method_258(class_69.const_2841,true);
            }
         }
         for each(_loc1_ in var_41)
         {
            if(_loc1_.name_8 != C_Buildings.CLASS_TRAP && class_175.method_154(new Point(_loc1_.x,_loc1_.y)).x > class_31.const_20.Get())
            {
               class_175.method_5349(_loc1_);
            }
         }
         class_167.method_2169();
         ResourceManager.class_2093.method_260();
         ResourceManager.class_2093.method_5641();
         if(method_139())
         {
            var_552 = var_619 = var_709;
            if(method_3081())
            {
               ResourceManager.method_22.method_332(class_206.const_5,ResourceManager.method_22.r1Max / 2);
               ResourceManager.method_22.method_332(class_206.const_6,ResourceManager.method_22.r2Max / 2);
            }
         }
         class_194.Setup();
         method_4237();
         if(class_28.method_30 == false && class_105.method_23())
         {
            BASE.method_1307();
         }
      }
      
      private static function method_8542(param1:Object) : void
      {
         var _loc2_:int = param1.t;
         if(_loc2_ == class_158.const_1398)
         {
            param1.tct = class_125.const_118;
         }
         else
         {
            param1.tct = class_125.const_281;
         }
         param1.t = class_158.const_64;
         var _loc3_:int = param1.l != null?param1.l:1;
         if(param1.cB)
         {
            _loc3_ = 1;
         }
         else if(param1.cU)
         {
            _loc3_++;
         }
         delete param1.cB;
         delete param1.cU;
         delete param1.rE;
         param1.tcl = int(Math.ceil(_loc3_ / 2));
         if(_loc3_ < 4)
         {
            _loc3_ = 1;
         }
         else if(_loc3_ < 8)
         {
            _loc3_ = 2;
         }
         else
         {
            _loc3_ = 3;
         }
         param1.l = _loc3_;
         param1.hp = C_Buildings.GetLevelData(class_158.const_64,_loc3_).hp;
      }
      
      private static function method_3644() : void
      {
         var _loc1_:class_205 = method_29(class_158.const_95) as class_205;
         if(_loc1_ != null)
         {
            _loc1_.method_2082();
         }
         var _loc2_:class_214 = method_29(class_158.const_36) as class_214;
         if(_loc2_ != null)
         {
            _loc2_.method_2082();
         }
      }
      
      public static function method_5653() : int
      {
         return class_31.method_28() - var_619;
      }
      
      public static function method_4906() : int
      {
         if(class_31.method_28() < var_709)
         {
            return 0;
         }
         return class_31.method_28() - var_709;
      }
      
      private static function method_4237() : void
      {
         TransitionLogger.start(class_18.const_2189);
         method_2289();
         ResourceManager.class_2093.method_260();
         if(!method_139())
         {
            var_121 = method_588();
         }
         if(class_105.method_23())
         {
            if(var_487 != null && (var_487.r1 || var_487.r2 || var_487.r3))
            {
               if(var_487.r1 && var_487.r1 > 0)
               {
                  method_404(Math.ceil(var_487.r1 / 50));
               }
               if(var_487.r2 && var_487.r2 > 0)
               {
                  method_404(Math.ceil(var_487.r2 / 50));
               }
               if(var_487.r3 && var_487.r3 > 0)
               {
                  method_404(Math.ceil(var_487.r3 / 50));
               }
            }
         }
         TransitionLogger.stop(class_18.const_2189);
         TransitionLogger.start(class_18.const_2958);
         if(class_105.method_102() && LoadManager.instance.method_1777())
         {
            method_1389();
         }
         else
         {
            TransitionLogger.start(class_18.const_1344);
            class_31.var_62.addEventListener(Event.ENTER_FRAME,method_4415);
            var_4247 = getTimer();
         }
      }
      
      private static function method_4415(param1:Event) : void
      {
         var _loc3_:* = 0;
         var _loc4_:BldgFoundation = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc2_:int = getTimer();
         if(method_3151())
         {
            TransitionLogger.stop(class_18.const_1344);
            var_1318 = true;
         }
         else if(_loc2_ - var_4247 > const_3968)
         {
            TransitionLogger.stop(class_18.const_1344);
            var_1318 = true;
         }
         else
         {
            return;
         }
         TransitionLogger.start(class_18.const_2959);
         while(class_31.method_691() < var_709 && getTimer() < _loc2_ + 10)
         {
            BuffManager.instance.setCatchupTime(class_31.method_691());
            _loc5_ = 0;
            for each(_loc4_ in var_2175)
            {
               _loc8_ = _loc4_.method_3235();
               if(_loc8_ > 0 && (_loc8_ < _loc5_ || _loc5_ == 0))
               {
                  _loc5_ = _loc8_;
               }
            }
            _loc6_ = var_709 - class_31.method_691();
            _loc7_ = var_709 - var_619;
            if(_loc5_ == 0 || _loc5_ > _loc6_)
            {
               _loc5_ = _loc6_;
            }
            for each(_loc4_ in var_2175)
            {
               _loc4_.Tick(_loc5_,_loc7_);
               if(!_loc4_.method_6465())
               {
                  _loc4_.method_2248();
               }
            }
            UPDATES.Check();
            class_31.method_6373(_loc5_);
         }
         if(class_23.hasFinishedLoading)
         {
            _loc3_ = int(class_31.const_8.Get() / (var_709 - var_552) * (class_31.method_691() - var_552));
            if(_loc3_ > class_31.const_8.Get())
            {
               _loc3_ = class_31.const_8.Get();
            }
            class_133.method_18(class_43.getString(class_2.method_7(-1820301510),{class_2.method_7(-1820295367):_loc3_}));
         }
         TransitionLogger.stop(class_18.const_2959);
         if(class_31.method_691() >= var_709)
         {
            method_1389();
         }
      }
      
      private static function method_3151() : Boolean
      {
         if(var_1318)
         {
            return true;
         }
         if(!class_28.method_30)
         {
            return true;
         }
         if(class_118.instance.method_52() && LoadManager.instance.method_1777())
         {
            return false;
         }
         return BuffManager.buffsLoaded;
      }
      
      public static function method_5509() : Object
      {
         var _loc9_:BldgFoundation = null;
         var _loc10_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         for each(_loc9_ in var_41)
         {
            _loc9_.method_18(true);
            if(_loc9_.var_81.Get() > 0)
            {
               if(_loc9_.method_855(true))
               {
                  _loc1_++;
               }
               _loc2_++;
               _loc10_ = _loc9_.method_590(true);
               if(_loc10_ > class_32.const_245.Get())
               {
                  _loc3_ = _loc3_ + _loc10_;
                  _loc5_ = _loc5_ + 1;
               }
               _loc4_ = Math.max(_loc4_,_loc10_);
               if(_loc9_.name_8 != C_Buildings.CLASS_WALL)
               {
                  _loc6_ = _loc6_ + _loc9_._hp.Get();
                  _loc7_ = _loc7_ + _loc9_.var_81.Get();
               }
            }
         }
         if(_loc7_ != 0)
         {
            _loc8_ = class_31.const_8.Get() * _loc6_ / _loc7_;
         }
         return {
            class_2.method_7(-1820307911):0,
            "percentDamaged":class_31.const_8.Get() / 0 * 0,
            "time":_loc3_,
            class_2.method_7(-1820308168):_loc4_,
            "cost":class_32.method_153(_loc3_,class_32.const_297,false,true),
            class_2.method_7(-1820310581):_loc8_
         };
      }
      
      public static function method_3538() : void
      {
         method_1307();
         if(class_105.method_23())
         {
            class_176.method_5173();
         }
         else if(class_105.method_109())
         {
            PlatoonManager.class_2093.method_325.method_842();
         }
      }
      
      public static function method_1307() : void
      {
         var _loc1_:BldgFoundation = null;
         for each(_loc1_ in var_41)
         {
            if(_loc1_.method_855(false))
            {
               _loc1_.method_616();
            }
         }
      }
      
      public static function method_5339() : void
      {
         var _loc3_:BldgFoundation = null;
         var _loc1_:* = false;
         var _loc2_:class_204 = method_1132(false);
         for each(_loc3_ in var_41)
         {
            if(_loc3_.method_855(true))
            {
               _loc3_.method_1055();
               _loc1_ = true;
            }
         }
         if(_loc1_)
         {
            class_180.method_4413(_loc2_);
         }
      }
      
      private static function method_1389() : void
      {
         var _loc1_:BldgFoundation = null;
         var_576 = false;
         TransitionLogger.start(class_18.const_2707);
         class_31.var_62.removeEventListener(Event.ENTER_FRAME,method_4415);
         class_31.method_2043();
         var _loc2_:BldgFoundation = method_29(class_158.const_95);
         if(class_105.method_23() && _loc2_ != null && _loc2_.inProduction < 0)
         {
            _loc2_.inProduction = 0;
         }
         UPDATES.Check();
         if(class_105.method_23())
         {
            for each(_loc1_ in var_41)
            {
               _loc1_.method_1305();
            }
            for each(_loc1_ in var_754)
            {
               _loc1_.method_1305();
            }
         }
         FX.Process();
         if(var_2276)
         {
            class_193.Process(var_2276);
         }
         class_163.Setup();
         if(!var_2572)
         {
            AudioController.instance.method_5194();
            var_2572 = true;
         }
         class_31.var_154 = true;
         UI.Tick();
         Units.Tick();
         C_ACADEMY.Setup();
         class_167.Setup();
         if(class_105.method_23())
         {
            TechManager.instance.setup();
         }
         if(!class_105.method_466())
         {
            TowerResearch.Setup();
         }
         if(UI._queue)
         {
            UI._queue.Setup();
         }
         if(method_1343())
         {
            method_2209();
         }
         class_189.init();
         class_140.Setup();
         class_31.method_1458();
         ResourceManager.class_2093.method_260();
         UI.var_2779 = true;
         if(!class_105.method_189() && !class_105.method_574())
         {
            UI.Show("top");
            if(class_105.method_23())
            {
               UI.Show(class_2.method_7(-1820297677));
            }
         }
         if(class_105.method_574())
         {
            ReplayPlayer.instance.method_5303();
         }
         var_121 = method_588();
         ATTACK.method_5592();
         for each(_loc1_ in var_41)
         {
            while(class_28.method_6321())
            {
               class_28.Tick();
            }
         }
         method_757();
         if(class_105.method_55())
         {
            ResourceManager.class_2093.method_4329();
         }
         class_31.method_215(class_2.method_7(-1820302216),null,false);
         class_66.method_5676();
         class_208.method_7544();
         if(class_23.hasFinishedLoading || !class_28.method_30)
         {
            method_1427();
         }
         var _loc3_:int = class_13.method_7507();
         if(class_105.method_23() && _loc3_ > 0 && !class_69.method_213(class_69.const_2690) && class_68.name_1.timePlayed >= _loc3_ * 60 * 60)
         {
            class_97.class_2206(new class_190());
         }
         BuffManager.instance.setCatchupTime(class_31.method_28());
         TransitionLogger.stop(class_18.const_2707);
         TransitionLogger.stop(class_18.const_1651);
         TransitionLogger.stop(class_18.const_1353);
         class_138.method_5291();
      }
      
      protected static function method_2860() : void
      {
         if(class_187.attacking)
         {
            AudioController.instance.method_2177(class_2.method_7(-1820295756));
         }
         else if(class_105.method_189())
         {
            AudioController.instance.method_2177(class_2.method_7(-1820296007));
         }
         else
         {
            AudioController.instance.method_2177(class_2.method_7(-1820309659));
         }
      }
      
      private static function method_1348() : void
      {
         if(!method_52() && LoadManager.instance.method_1777())
         {
            method_1427();
         }
      }
      
      private static function method_1427() : void
      {
         TransitionLogger.start(class_18.const_3064);
         class_208.method_7493();
         MissileManager.instance.method_2262();
         MercenaryManager.instance.method_2262();
         FirstWeekRetention.instance.update(true);
         if(class_105.method_23())
         {
            if(!var_2656)
            {
               class_31.method_215(class_2.method_7(-1820310916));
               var_2656 = true;
            }
            if(class_28.method_30)
            {
               if(class_69.Get(class_69.const_1278) == 1)
               {
                  class_69.Set(class_69.const_1278,0);
                  class_97.class_2206(new class_168());
               }
               else
               {
                  POPUPS.method_2701();
                  POPUPS.method_2500();
               }
            }
            C_ACADEMY.method_2089();
         }
         UPDATES.Check();
         if(!class_105.method_65() || class_105.method_167())
         {
            class_176.method_710(class_31.method_28() - var_552,class_105.method_23()?class_31.method_28() - var_619:0);
         }
         if(class_105.method_55() && !class_105.method_65() && !class_105.method_574())
         {
            POPUPS.method_916();
            SaveManager.class_2093.Base.method_38();
         }
         method_2031();
         BuffManager.instance.clearExpiredBuffs();
         if(class_28.method_30)
         {
            ItemStoreManager.method_1190();
            class_123.instance.method_1190();
         }
         class_170.method_5356();
         class_133.Hide();
         var_3129.dispatch();
         TransitionLogger.stop(class_18.const_2958);
         TransitionLogger.start(class_18.const_3064);
         class_145.class_2093.initialize();
         class_145.class_2093.start();
      }
      
      public static function Tick() : void
      {
         if(var_540)
         {
            method_1816();
         }
         if(var_992 > 0)
         {
            var_992--;
         }
         method_2860();
      }
      
      public static function method_52() : Boolean
      {
         return var_576;
      }
      
      public static function method_84(param1:String, param2:int, param3:Object = null) : void
      {
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:* = 0;
         Logger.debug(class_2.method_7(-1820308280) + param1 + " " + param2);
         if(var_523.length > 0)
         {
            class_31.method_74(class_9.const_2282,class_2.method_7(-1820299413));
            return;
         }
         var _loc4_:Array = [param1,param2];
         if(param3 != null)
         {
            _loc6_ = [];
            for(_loc7_ in param3)
            {
               _loc6_.push(_loc7_ + "=" + param3[_loc7_]);
            }
            _loc8_ = _loc6_.join("&");
            _loc4_.push(_loc8_);
         }
         var_523 = _loc4_;
         var _loc5_:* = false;
         if(var_523.length != 0 && var_523.length == _loc4_.length)
         {
            _loc9_ = 0;
            while(_loc9_ < var_523.length)
            {
               if(var_523[_loc9_] != _loc4_[_loc9_])
               {
                  _loc5_ = true;
                  break;
               }
               _loc9_++;
            }
         }
         else
         {
            _loc5_ = true;
         }
         if(_loc5_)
         {
            FrameworkLogger.LogMonocle(class_2.method_7(-1820296132) + _loc4_ + class_2.method_7(-1820302597) + var_523,FrameworkLogger.TOOL_BASE_CLEAN);
         }
         SaveManager.class_2093.Base.method_38();
      }
      
      public static function method_3885() : Object
      {
         var _loc5_:BldgFoundation = null;
         var _loc6_:String = null;
         var _loc8_:Object = null;
         var _loc9_:* = NaN;
         var _loc1_:Object = {};
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = false;
         for(_loc6_ in var_41)
         {
            _loc5_ = var_41[_loc6_];
            _loc2_ = _loc2_ + Math.ceil(_loc5_._hp.Get());
            _loc3_ = _loc3_ + Math.ceil(_loc5_.var_81.Get());
            if(_loc5_._hp.Get() < _loc5_.var_81.Get() && !_loc5_._repairing)
            {
               _loc4_ = true;
            }
            _loc8_ = _loc5_.method_101();
            if(_loc8_)
            {
               if(!_loc1_[_loc5_.id])
               {
                  _loc1_[_loc5_.id] = _loc8_;
               }
               else
               {
                  _loc9_ = ++var_393;
                  Logger.warn(class_2.method_7(-1820295345) + _loc5_.id + class_2.method_7(-1820295949) + _loc5_.type + class_2.method_7(-1820298256) + _loc1_[_loc5_.id].type + class_2.method_7(-1820310259) + _loc9_);
                  _loc5_.id = _loc9_;
                  _loc1_[_loc9_] = _loc5_.method_101();
               }
            }
         }
         if(class_105.method_109() && DepositManager.class_2093.method_477)
         {
            DepositManager.class_2093.method_477.method_4051(_loc2_,_loc3_,_loc4_);
         }
         var _loc7_:int = method_942();
         return _loc1_;
      }
      
      public static function method_851() : Object
      {
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc1_:uint = method_1651();
         var _loc2_:String = WCJSON.encode(method_3885());
         ResourceManager.class_2093.method_260();
         var _loc3_:Object = {
            "r1":ResourceManager.method_22.method_729(class_206.const_5),
            "r2":ResourceManager.method_22.method_729(class_206.const_6),
            "r3":ResourceManager.method_22.method_729(class_206.const_7),
            class_2.method_7(-1820311205):ResourceManager.method_22.method_214(class_206.const_5),
            class_2.method_7(-1820310248):ResourceManager.method_22.method_214(class_206.const_6),
            class_2.method_7(-1820310337):ResourceManager.method_22.method_214(class_206.const_7)
         };
         var _loc4_:String = WCJSON.encode(_loc3_);
         var_1305 = new class_216();
         var_1305.metal = _loc3_.r1;
         var_1305.oil = _loc3_.r2;
         var _loc5_:Object = {};
         for(_loc6_ in var_257)
         {
            if(var_257[_loc6_].Get())
            {
               _loc5_[_loc6_] = var_257[_loc6_].Get();
            }
         }
         _loc7_ = WCJSON.encode(_loc5_);
         _loc8_ = WCJSON.encode([]);
         _loc9_ = method_139()?class_43.getString(class_2.method_7(-1820308125)):baseName;
         if(method_1942())
         {
            _loc9_ = method_871;
         }
         var _loc10_:Point = class_105.method_141();
         var _loc11_:String = null;
         if(_loc10_)
         {
            _loc11_ = int(_loc10_.x).toString() + "," + int(_loc10_.y).toString();
         }
         var _loc12_:Object = {
            "baseid":(class_105.method_23()?0:method_380),
            class_2.method_7(-1820301904):UPDATES.method_6208(),
            "mushrooms":WCJSON.encode(class_163.method_101()),
            class_2.method_7(-1820302779):_loc9_,
            class_2.method_7(-1820310825):var_4617,
            class_2.method_7(-1820308429):_loc2_,
            class_2.method_7(-1820297421):_loc7_,
            class_2.method_7(-1820308284):var_1216.Get(),
            "points":Math.floor(var_1042.Get()),
            class_2.method_7(-1820309528):class_28.Stage,
            class_2.method_7(-1820300755):SaveManager.class_2093.method_835(SaveManager.const_1151),
            class_2.method_7(-1820307478):class_31.method_28(),
            class_2.method_7(-1820309066):_loc8_,
            class_2.method_7(-1820308795):WCJSON.encode(class_187.method_101()),
            "version":class_31.var_1180,
            class_2.method_7(-1820308862):WCJSON.encode(class_156.method_101()),
            "effects":FX.method_6511(),
            class_2.method_7(-1820300616):_loc1_,
            "inventory":class_32.method_6561(),
            class_2.method_7(-1820300795):var_1315,
            class_2.method_7(-1820299786):WCJSON.encode(class_167.method_101()),
            class_2.method_7(-1820303219):WCJSON.encode(class_176.method_101()),
            class_2.method_7(-1820298751):var_1357,
            class_2.method_7(-1820300572):var_2338,
            class_2.method_7(-1820311182):_loc11_,
            "stats":WCJSON.encode(class_69.method_101()),
            class_2.method_7(-1820307458):0
         };
         if(class_105.method_102())
         {
            _loc12_.attack = 1;
         }
         if(class_105.method_184())
         {
            _loc12_.resources = _loc4_;
            _loc12_.academy = WCJSON.encode(C_ACADEMY.method_101());
            _loc12_.defenselabdata = WCJSON.encode(TowerResearch.method_101());
            _loc12_.workshopdata = WCJSON.encode(TechManager.instance.exportTechResearch());
         }
         var _loc13_:Object = UnitManager.class_2093.method_5979();
         var _loc14_:Array = UnitManager.class_2093.method_7556();
         var _loc15_:Array = UnitManager.class_2093.method_4860();
         class_173.instance.method_7036().method_2773(_loc13_);
         _loc12_.monsters = WCJSON.encode(_loc13_);
         _loc12_.addedxpunits = WCJSON.encode(_loc14_);
         _loc12_.dismissedxpunits = WCJSON.encode(_loc15_);
         if(!class_118.instance.method_393)
         {
            _loc12_.aircraft = WCJSON.encode(UnitManager.class_2093.method_5957());
         }
         _loc12_.stagingarea = WCJSON.encode(UnitManager.class_2093.method_2279());
         if(class_193.var_2571.length > 0)
         {
            _loc12_.gifts = WCJSON.encode(class_193.var_2571);
         }
         if(var_523.length > 0)
         {
            _loc12_[const_1004.method_108()] = WCJSON.encode(var_523);
            var_1679 = true;
            Logger.debug(class_2.method_7(-1820310222) + _loc12_.purchase);
         }
         _loc12_.timeplayed = int(class_31.var_1004);
         if(class_105.method_391() == class_105.const_284 || class_105.method_391() == class_105.const_193)
         {
            _loc12_.destroyed = ATTACK.method_1154()?1:0;
         }
         else if(method_139())
         {
            _loc12_.destroyed = ATTACK.method_1154()?1:0;
         }
         _loc12_.damage = ATTACK.method_4896();
         class_31.var_1004 = 0;
         return _loc12_;
      }
      
      public static function method_7093() : class_202
      {
         var _loc1_:class_202 = new class_202();
         var _loc2_:Object = method_851();
         if(_loc2_ != null)
         {
            _loc1_.baseId = _loc2_.baseid;
            _loc1_.appliedUpdates = _loc2_.appliedupdates;
            _loc1_.resources = _loc2_.resources;
            _loc1_.mushrooms = _loc2_.mushrooms;
            _loc1_.baseName = _loc2_.basename;
            _loc1_.baseSeed = _loc2_.baseseed;
            _loc1_.buildingData = _loc2_.buildingdata;
            _loc1_.researchData = _loc2_.researchdata;
            _loc1_.mineFactory = _loc2_.minefactory;
            _loc1_.repairShop = _loc2_.repairshop;
            _loc1_.mapId = _loc2_.mapid;
            _loc1_.entityId = _loc2_.entityid;
            _loc1_.baseValue = _loc2_.basevalue;
            _loc1_.points = UInt64.fromNumber(_loc2_.points);
            _loc1_.tutorialStage = _loc2_.tutorialstage;
            _loc1_.baseSaveId = _loc2_.basesaveid;
            _loc1_.clientTime = _loc2_.clienttime;
            _loc1_.monsters = _loc2_.monsters;
            _loc1_.aircraft = _loc2_.aircraft;
            _loc1_.stagingArea = _loc2_.stagingarea;
            _loc1_.monsterBaiter = _loc2_.monsterbaiter;
            _loc1_.version = _loc2_.version;
            _loc1_.aiAttacks = _loc2_.aiattacks;
            _loc1_.effects = _loc2_.effects;
            _loc1_.gifts = _loc2_.gifts;
            _loc1_.purchase = _loc2_[const_1004.method_108()];
            _loc1_.inventory = _loc2_.inventory;
            _loc1_.timePlayed = _loc2_.timeplayed;
            _loc1_.damage = _loc2_.damage;
            _loc1_.empireValue = UInt64.fromNumber(_loc2_.empirevalue);
            _loc1_.protectedWM = _loc2_.protectedwm;
            _loc1_.baseLocation = _loc2_.baselocation;
            _loc1_.defenseLabData = _loc2_.defenselabdata;
            _loc1_.eventSaveData = _loc2_.eventsavedata;
            _loc1_.workshopData = _loc2_.workshopdata;
            _loc1_.stats = _loc2_.stats;
            _loc1_.academy = _loc2_.academy;
         }
         return _loc1_;
      }
      
      public static function method_4804() : class_199
      {
         var _loc1_:class_199 = new class_199();
         var _loc2_:Object = method_851();
         if(_loc2_ != null)
         {
            _loc1_.baseId = _loc2_.baseid;
            _loc1_.appliedUpdates = _loc2_.appliedupdates;
            _loc1_.baseSeed = _loc2_.baseseed;
            _loc1_.buildingData = _loc2_.buildingdata;
            _loc1_.mineFactory = _loc2_.minefactory;
            _loc1_.repairShop = _loc2_.repairshop;
            _loc1_.mapId = _loc2_.mapid;
            _loc1_.entityId = _loc2_.entityid;
            _loc1_.baseSaveId = _loc2_.basesaveid;
            _loc1_.clientTime = _loc2_.clienttime;
            _loc1_.monsters = _loc2_.monsters;
            _loc1_.version = _loc2_.version;
            _loc1_.effects = _loc2_.effects;
            _loc1_.purchase = _loc2_.purchase;
            _loc1_.timePlayed = _loc2_.timeplayed;
            _loc1_.destroyed = _loc2_.destroyed;
            _loc1_.damage = _loc2_.damage;
            _loc1_.baseName = _loc2_.basename;
         }
         return _loc1_;
      }
      
      public static function method_7069() : Object
      {
         var _loc1_:Object = {};
         var _loc2_:Point = class_105.method_141();
         var _loc3_:String = null;
         if(_loc2_)
         {
            _loc3_ = int(_loc2_.x).toString() + "," + int(_loc2_.y).toString();
         }
         _loc1_.defenderuserid = class_105.method_49().method_93;
         if(var_1357)
         {
            _loc1_.mapid = var_1357;
         }
         if(var_2338)
         {
            _loc1_.entityid = var_2338;
         }
         _loc1_.baselocation = _loc3_;
         _loc1_.basename = class_105.method_49().var_1153;
         _loc1_.attackreport = ATTACK.method_4979();
         _loc1_.destroyed = ATTACK.method_1154()?1:0;
         _loc1_.over = 0;
         _loc1_.timeplayed = class_31.var_1004;
         _loc1_.clienttime = class_31.method_28();
         _loc1_.version = class_31.var_1180;
         return _loc1_;
      }
      
      public static function method_4315(param1:Object, param2:Boolean = false) : void
      {
         class_31.method_2446(param1.currenttime);
         class_31.method_2043();
         if(!param2)
         {
            SaveManager.class_2093.method_1265(SaveManager.const_1151,param1.basesaveid);
            if(var_1679)
            {
               var_1679 = false;
               var_523.length = 0;
               if(var_523.length != 0)
               {
                  FrameworkLogger.LogMonocle(class_2.method_7(-1820296050),FrameworkLogger.TOOL_BASE_CLEAN);
               }
               class_97.Message(class_124.const_1424);
            }
            if(var_1305)
            {
               ResourceManager.method_22.method_1724(class_206.const_5,-var_1305.metal);
               ResourceManager.method_22.method_1724(class_206.const_6,-var_1305.oil);
               var_1305 = null;
            }
         }
         if(class_105.method_55())
         {
            var_217.Set(int(param1.credits));
         }
         if(param1.resources)
         {
            Logger.debug(class_2.method_7(-1820307596) + WCJSON.encode(param1.resources));
            if(param1.resources.r1)
            {
               ResourceManager.method_22.method_332(class_206.const_5,param1.resources.r1,false);
            }
            if(param1.resources.r2)
            {
               ResourceManager.method_22.method_332(class_206.const_6,param1.resources.r2,false);
            }
         }
         class_176.method_6900();
         if(class_105.method_184())
         {
            ResourceManager.class_2093.method_3911();
         }
         var_2230 = int(param1.bookmarked);
         var_1730 = int(param1.installsgenerated);
         if(class_105.method_23())
         {
            if(param1.fan)
            {
               class_138.method_218(class_2.method_7(-1820295565),1,true);
            }
            if(param1.bookmarked)
            {
               class_138.method_218(class_2.method_7(-1820295956),1,true);
            }
         }
         if(param1.updates && param1.updates.length > 0)
         {
            UPDATES.Process(param1.updates);
         }
      }
      
      public static function method_507(param1:int) : void
      {
         if(!var_257["b" + param1])
         {
            var_257["b" + param1] = new SecNum(0);
         }
         var_257["b" + param1].Add(1);
      }
      
      public static function method_2329(param1:int) : Boolean
      {
         if(var_257["b" + param1])
         {
            if(var_257["b" + param1].Get() > 1)
            {
               var_257["b" + param1].Add(-1);
            }
            else
            {
               delete var_257["b" + param1];
            }
            return true;
         }
         return false;
      }
      
      public static function method_181(param1:int) : int
      {
         if(var_257["b" + param1])
         {
            return var_257["b" + param1].Get();
         }
         return 0;
      }
      
      public static function method_6237() : int
      {
         var _loc1_:String = null;
         for(_loc1_ in var_257)
         {
            if(var_257[_loc1_].Get() > 0)
            {
               return int(_loc1_.substr(1));
            }
         }
         return 0;
      }
      
      public static function method_921(param1:int) : Boolean
      {
         var _loc2_:BldgFoundation = null;
         if(method_181(param1) > 0)
         {
            return true;
         }
         if(var_41)
         {
            for each(_loc2_ in var_41)
            {
               if(_loc2_ && _loc2_.type == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public static function method_7988(param1:int, param2:Boolean) : Vector.<BldgFoundation>
      {
         var _loc4_:BldgFoundation = null;
         var _loc3_:Vector.<BldgFoundation> = new Vector.<BldgFoundation>();
         if(var_41)
         {
            for each(_loc4_ in var_41)
            {
               if(_loc4_ && _loc4_.type == param1 && (!param2 || _loc4_.hp > 0))
               {
                  _loc3_.push(_loc4_);
               }
            }
         }
         return _loc3_;
      }
      
      public static function updateFBC(param1:String) : void
      {
         var _loc2_:Object = WCJSON.decode(param1);
         var_4175.Set(_loc2_.balance);
      }
      
      public static function method_199(param1:int, param2:Boolean = false) : class_183
      {
         var _loc7_:* = 0;
         var _loc8_:Vector.<int> = null;
         var _loc9_:* = 0;
         var _loc10_:BldgFoundation = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:Vector.<class_177> = null;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         var _loc3_:class_183 = new class_183();
         var _loc4_:BuildingData = C_Buildings.GetData(param1);
         var _loc5_:* = 0;
         if(!class_105.method_23())
         {
            _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820308513));
         }
         else if(_loc4_)
         {
            _loc8_ = _loc4_.quantity;
            _loc9_ = 0;
            _loc10_ = method_29(class_158.const_13);
            if(_loc10_ != null)
            {
               _loc9_ = _loc10_.level;
            }
            _loc11_ = _loc8_[_loc8_.length - 1];
            _loc12_ = _loc9_ < _loc8_.length?_loc8_[_loc9_]:_loc11_;
            if(_loc12_ == 0)
            {
               _loc7_ = 0;
               while(_loc7_ < _loc8_.length)
               {
                  if(_loc8_[_loc7_] > 0)
                  {
                     _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820299436),{"level":_loc7_});
                     break;
                  }
                  _loc7_++;
               }
            }
            else if(_loc4_.type != class_2.method_7(-1820301231) || _loc4_.type == class_2.method_7(-1820301231) && _loc4_.quantity[0] != 0)
            {
               _loc5_ = BASE.method_2190(param1);
               if(_loc5_ >= _loc12_ && !var_3479)
               {
                  if(_loc5_ < _loc11_)
                  {
                     _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820302599));
                  }
                  else
                  {
                     _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820311151),{"number":_loc11_});
                  }
               }
            }
         }
         else
         {
            _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820300271));
         }
         if(_loc3_.errorMessage == null && method_181(param1) == 0)
         {
            _loc13_ = class_215.method_866(param1);
            if(_loc13_ && _loc13_.length > 0 || class_215.method_909(param1) && !C_Buildings.isBuildingSkuUnlocked(param1))
            {
               _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820301073));
            }
         }
         if(_loc3_.errorMessage == null && method_181(param1) == 0 && !var_3479 && !param2)
         {
            _loc14_ = _loc4_.levelData[0].r1;
            _loc15_ = _loc4_.levelData[0].r2;
            _loc16_ = _loc4_.levelData[0].r3;
            _loc18_ = 0;
            if(class_105.method_23())
            {
               if(_loc14_ > ResourceManager.method_22.r1)
               {
                  _loc17_ = class_206.const_5;
                  _loc18_ = _loc14_ - ResourceManager.method_22.r1;
               }
               if(_loc15_ > ResourceManager.method_22.r2)
               {
                  _loc17_ = class_206.const_6;
                  _loc18_ = _loc15_ - ResourceManager.method_22.r2;
               }
               if(_loc16_ > ResourceManager.method_22.r3)
               {
                  _loc17_ = class_206.const_7;
                  _loc18_ = _loc16_ - ResourceManager.method_22.r3;
               }
               if(_loc18_ > 0)
               {
                  _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820298846),{
                     "amount":class_31.method_35(_loc18_),
                     class_2.method_7(-1820309336):class_31.method_330(_loc17_)
                  });
                  _loc3_.var_403 = true;
               }
            }
         }
         return _loc3_;
      }
      
      public static function method_2533(param1:BldgFoundation, param2:int) : class_183
      {
         var _loc6_:BuildingLevelData = null;
         var _loc7_:class_216 = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc3_:class_183 = new class_183();
         if(param1.name_8 == C_Buildings.CLASS_LOOT)
         {
            return _loc3_;
         }
         var _loc4_:BuildingData = C_Buildings.GetData(param2);
         var _loc5_:int = param1.level;
         if(method_29(class_158.const_13) == null)
         {
            _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820297601));
         }
         else if(param1.method_286())
         {
            _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820301058));
         }
         else if(param1.isUpgrading())
         {
            _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820311335));
         }
         else
         {
            _loc6_ = _loc4_.getLevelData(_loc5_);
            if(_loc6_)
            {
               _loc7_ = _loc6_.changeCosts;
               if(_loc7_.metal > ResourceManager.method_22.metal)
               {
                  _loc8_ = class_206.const_5;
                  _loc9_ = _loc7_.metal - ResourceManager.method_22.metal;
               }
               if(_loc7_.oil > ResourceManager.method_22.oil)
               {
                  _loc8_ = class_206.const_6;
                  _loc9_ = _loc7_.oil - ResourceManager.method_22.oil;
               }
               if(_loc7_.thorium > ResourceManager.method_22.thorium)
               {
                  _loc8_ = class_206.const_7;
                  _loc9_ = _loc7_.thorium - ResourceManager.method_22.thorium;
               }
               if(_loc9_ > 0)
               {
                  _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820302296),{
                     "amount":class_31.method_35(_loc9_),
                     class_2.method_7(-1820309336):class_31.method_330(_loc8_)
                  });
                  _loc3_.var_403 = true;
               }
            }
         }
         return _loc3_;
      }
      
      public static function method_293(param1:BldgFoundation) : class_183
      {
         var _loc7_:Vector.<class_177> = null;
         var _loc8_:Vector.<String> = null;
         var _loc9_:class_177 = null;
         var _loc10_:BuildingData = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc2_:class_183 = new class_183();
         if(param1.name_8 == C_Buildings.CLASS_LOOT)
         {
            return _loc2_;
         }
         var _loc3_:BuildingData = C_Buildings.GetData(param1.type);
         var _loc4_:BuildingLevelData = null;
         var _loc5_:int = param1.level;
         var _loc6_:Vector.<BuildingLevelData> = _loc3_.levelData;
         if(method_29(class_158.const_13) == null)
         {
            _loc2_.errorMessage = class_43.getString(class_2.method_7(-1820297601));
         }
         else if(_loc5_ >= _loc6_.length)
         {
            _loc2_.errorMessage = class_43.getString(class_2.method_7(-1820295201));
         }
         else if(param1.method_286())
         {
            _loc2_.errorMessage = class_43.getString(class_2.method_7(-1820301058));
         }
         else if(param1.isUpgrading())
         {
            _loc2_.errorMessage = class_43.getString(class_2.method_7(-1820311335));
         }
         else if(param1 is class_130 && class_130(param1).isEquipping())
         {
            _loc2_.errorMessage = class_43.getString(class_2.method_7(-1820310170));
         }
         else
         {
            _loc7_ = class_215.method_866(param1.type,_loc5_ + 1);
            if(_loc7_)
            {
               _loc8_ = new Vector.<String>();
               for each(_loc9_ in _loc7_)
               {
                  if(_loc9_.id > 0)
                  {
                     _loc10_ = C_Buildings.GetData(_loc9_.id);
                     if(_loc9_.name_10 == 1)
                     {
                        if(_loc9_.level == 1)
                        {
                           _loc8_.push(class_43.getString(class_2.method_7(-1820311368),{"building":_loc10_.name}));
                        }
                        else
                        {
                           _loc8_.push(class_43.getString(class_2.method_7(-1820311447),{
                              "level":_loc9_.level,
                              "building":_loc10_.name
                           }));
                        }
                     }
                     else if(_loc9_.level == 1)
                     {
                        _loc8_.push(class_43.getString(class_2.method_7(-1820308336),{
                           "building":_loc10_.name,
                           class_2.method_7(-1820308034):_loc9_.name_10
                        }));
                     }
                     else
                     {
                        _loc8_.push(class_43.getString(class_2.method_7(-1820308412),{
                           "level":_loc9_.level,
                           "building":_loc10_.name,
                           class_2.method_7(-1820308034):_loc9_.name_10
                        }));
                     }
                  }
               }
               if(_loc8_.length > 0)
               {
                  _loc2_.errorMessage = class_43.getString(class_2.method_7(-1820295821),{class_2.method_7(-1820295229):class_22.method_936(_loc8_)});
               }
            }
            if(_loc2_.errorMessage == null)
            {
               if(_loc5_ < _loc6_.length)
               {
                  _loc4_ = _loc6_[_loc5_];
                  if(_loc4_.r1 > ResourceManager.method_22.r1)
                  {
                     _loc11_ = class_206.const_5;
                     _loc12_ = _loc4_.r1 - ResourceManager.method_22.r1;
                  }
                  if(_loc4_.r2 > ResourceManager.method_22.r2)
                  {
                     _loc11_ = class_206.const_6;
                     _loc12_ = _loc4_.r2 - ResourceManager.method_22.r2;
                  }
                  if(_loc4_.r3 > ResourceManager.method_22.r3)
                  {
                     _loc11_ = class_206.const_7;
                     _loc12_ = _loc4_.r3 - ResourceManager.method_22.r3;
                  }
                  if(_loc12_ > 0)
                  {
                     _loc2_.errorMessage = class_43.getString(class_2.method_7(-1820309842),{
                        "amount":class_31.method_35(_loc12_),
                        class_2.method_7(-1820309336):class_31.method_330(_loc11_)
                     });
                     _loc2_.var_403 = true;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function method_2689(param1:class_131, param2:int) : class_183
      {
         var _loc4_:class_216 = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc3_:class_183 = new class_183();
         if(param1.method_286())
         {
            _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820308027));
         }
         else if(param1.isUpgrading())
         {
            _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820302273));
         }
         else if(param1.isEquipping())
         {
            _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820301640));
         }
         else
         {
            _loc4_ = TowerResearch.method_651(param2);
            if(_loc4_.metal > ResourceManager.method_22.r1)
            {
               _loc5_ = class_206.const_5;
               _loc6_ = _loc4_.metal - ResourceManager.method_22.r1;
            }
            if(_loc4_.oil > ResourceManager.method_22.r2)
            {
               _loc5_ = class_206.const_6;
               _loc6_ = _loc4_.oil - ResourceManager.method_22.r2;
            }
            if(_loc4_.thorium > ResourceManager.method_22.r3)
            {
               _loc5_ = class_206.const_7;
               _loc6_ = _loc4_.thorium - ResourceManager.method_22.r3;
            }
            if(_loc6_ > 0)
            {
               _loc3_.errorMessage = class_43.getString(class_2.method_7(-1820309842),{
                  "amount":class_31.method_35(_loc6_),
                  class_2.method_7(-1820309336):class_31.method_330(_loc5_)
               });
               _loc3_.var_403 = true;
            }
         }
         return _loc3_;
      }
      
      public static function method_354(param1:int, param2:Boolean = false) : BldgFoundation
      {
         method_239();
         var _loc3_:BuildingData = C_Buildings.GetData(param1);
         if(class_166.instance.busy && !_loc3_.noworker && _loc3_.levelData[0].time > 0 && method_181(param1) == 0)
         {
            POPUPS.method_518();
            return null;
         }
         var _loc4_:class_183 = method_199(param1,param2);
         if(_loc4_.errorMessage != null)
         {
            POPUPS.method_78(class_43.getString(class_2.method_7(-1820309017)),_loc4_.errorMessage);
            return null;
         }
         method_239();
         method_1124();
         if(param1 == class_158.const_111)
         {
            method_4376();
         }
         class_31.var_270 = createBuilding(param1);
         class_31.var_270.method_803();
         class_31.var_270.method_1104(1);
         return class_31.var_270;
      }
      
      private static function method_3874(param1:int, param2:int) : Boolean
      {
         if(class_191.method_6485(param2))
         {
            return true;
         }
         if(class_191.method_3384(param2))
         {
            switch(param1)
            {
               case class_158.const_95:
               case class_158.const_115:
               case class_158.const_114:
               case class_158.const_674:
               case class_158.const_689:
               case class_158.const_83:
                  return false;
               default:
                  return true;
            }
         }
         else
         {
            if(class_191.method_4172(param2))
            {
               return true;
            }
            return false;
         }
      }
      
      public static function createBuilding(param1:int, param2:int = 1) : BldgFoundation
      {
         var _loc3_:Array = null;
         var _loc4_:BldgFoundation = null;
         var_540 = true;
         if(param1 == class_158.const_13)
         {
            if(class_105.method_81())
            {
               switch(class_105.method_49().var_299)
               {
                  case class_111.const_336:
                     var param1:int = class_158.const_470;
                     break;
                  case class_111.const_442:
                     param1 = class_158.const_571;
                     break;
                  case class_111.const_168:
                     param1 = class_158.const_698;
                     break;
                  case class_111.const_1642:
                     param1 = class_158.const_1282;
                     break;
               }
               var param2:int = class_105.method_49().var_379;
            }
            else if(class_105.method_49().method_206 == class_182.RF_TYPE_EVENT24 && class_105.method_49().var_311 == class_197.const_538)
            {
               param1 = class_158.const_2622;
            }
            if(param2 < 1)
            {
               param2 = 1;
            }
         }
         if(!method_3874(param1,class_105.method_391()))
         {
            class_44.assert(false,class_2.method_7(-1820297041) + param1 + class_2.method_7(-1820308973) + class_105.method_391());
            return null;
         }
         if(param1 == class_158.const_2367)
         {
            _loc3_ = [250000,250000,0];
            var_2661.push(_loc3_);
         }
         else
         {
            _loc4_ = C_Buildings.createBuilding(param1,param2);
         }
         class_44.assert(_loc4_ != null,class_2.method_7(-1820295513) + param1 + class_2.method_7(-1820299538));
         return _loc4_;
      }
      
      public static function method_3687(param1:int, param2:int) : void
      {
         var _loc3_:BldgFoundation = null;
         var _loc4_:StoreItem = null;
         if(var_217.Get() >= param2 || class_31.const_138)
         {
            _loc3_ = method_354(param1,true);
            _loc3_.method_5696();
            C_Buildings.Hide();
         }
         else
         {
            _loc4_ = StoreItem.method_1328(param1,0);
            class_32.method_1230(_loc4_,null);
         }
      }
      
      public static function method_1124() : void
      {
         var _loc1_:BldgFoundation = null;
         var _loc2_:BldgFoundation = null;
         for each(_loc1_ in var_41)
         {
            _loc1_.method_1104(1);
            _loc1_.method_4404();
         }
         for each(_loc2_ in var_754)
         {
            _loc2_.method_1104(1);
            _loc2_.method_4404();
         }
         class_198.method_1124();
      }
      
      public static function method_757() : void
      {
         var _loc1_:BldgFoundation = null;
         var _loc2_:BldgFoundation = null;
         for each(_loc1_ in var_41)
         {
            if(class_31.var_137 != _loc1_)
            {
               _loc1_.method_873();
            }
            _loc1_.method_4198();
         }
         for each(_loc2_ in var_754)
         {
            _loc2_.method_873();
            _loc2_.method_4198();
         }
         class_198.method_757();
         method_4143();
      }
      
      public static function method_8102() : void
      {
         var _loc1_:BldgFoundation = null;
         var _loc2_:BldgFoundation = null;
         for each(_loc1_ in var_41)
         {
            _loc1_.method_4322(1);
         }
         for each(_loc2_ in var_754)
         {
            _loc2_.method_4322(1);
         }
      }
      
      public static function method_7800() : void
      {
         var _loc1_:BldgFoundation = null;
         var _loc2_:BldgFoundation = null;
         for each(_loc1_ in var_41)
         {
            _loc1_.method_2722();
         }
         for each(_loc2_ in var_754)
         {
            _loc2_.method_2722();
         }
      }
      
      public static function method_4376() : void
      {
         if(UI.var_148)
         {
            UI.var_148.method_5262();
         }
      }
      
      public static function method_4143() : void
      {
         if(UI.var_148)
         {
            UI.var_148.method_3986();
         }
      }
      
      public static function method_401(param1:BldgFoundation, param2:Boolean = true, param3:Boolean = false, param4:Point = null, param5:Boolean = true) : void
      {
         method_239();
         if(class_105.method_55() || C_Buildings.canSelectEnemyBuildings)
         {
            if(class_28.method_30 || class_28.Stage >= 41)
            {
               if(UI.var_1148)
               {
                  class_31.var_137 = param1;
                  if(param1.name_8 != C_Buildings.CLASS_LOOT)
                  {
                     class_31.var_137.method_1104(1);
                  }
                  param1.method_18();
                  if(param2)
                  {
                     class_142.Show(param1,param4,param5);
                  }
               }
            }
            Units.Deselect();
         }
         else if(class_105.method_65())
         {
            Units.Order(param1,null,null,null,param3);
         }
      }
      
      public static function method_239(param1:Boolean = false) : void
      {
         var _loc2_:BldgFoundation = null;
         class_142.Hide();
         method_757();
         if(class_31.var_270)
         {
            class_31.var_270.method_306(param1);
         }
         if(class_31.var_137 && class_31.var_137.isMoving)
         {
            class_31.var_137.method_3184(true);
         }
         if(class_31.var_137)
         {
            _loc2_ = class_31.var_137;
            class_31.var_137 = null;
            _loc2_.method_18();
            _loc2_.method_873();
         }
         if(class_31.var_3394)
         {
            class_31.var_3394.method_7140();
            class_31.var_3394 = null;
         }
      }
      
      public static function method_348(param1:int, param2:int, param3:int) : Boolean
      {
         if((param1 == 0 || method_383(class_206.const_5,param1,true)) && (param2 == 0 || method_383(class_206.const_6,param2,true)) && (param3 == 0 || method_383(class_206.const_7,param3,true)))
         {
            return true;
         }
         return false;
      }
      
      public static function method_1126(param1:int, param2:int) : Boolean
      {
         if((param1 == 0 || method_383(class_206.const_5,param1,true)) && (param2 == 0 || method_383(class_206.const_6,param2,true)))
         {
            method_383(class_206.const_5,param1);
            method_383(class_206.const_6,param2);
            return true;
         }
         return false;
      }
      
      private static function method_383(param1:int, param2:int, param3:Boolean = false) : int
      {
         if(!param3)
         {
            Logger.debug(class_2.method_7(-1820311003) + param1 + ">" + param2);
         }
         if(param2 <= ResourceManager.method_22.method_191(param1))
         {
            if(!param3)
            {
               ResourceManager.method_22.method_222(param1,-param2);
               ResourceManager.class_2093.method_260();
            }
            return param2;
         }
         return 0;
      }
      
      public static function method_529(param1:int, param2:int, param3:Boolean = false) : void
      {
         method_261(class_206.const_5,param1,param3);
         method_261(class_206.const_6,param2,param3);
      }
      
      public static function method_261(param1:int, param2:int, param3:Boolean = false, param4:class_174 = null) : int
      {
         var _loc5_:* = 0;
         var _loc6_:Rectangle = null;
         Logger.debug(class_2.method_7(-1820311185) + param2);
         if(param1 <= 3)
         {
            _loc5_ = 0;
            if(ResourceManager.method_22.method_191(param1) < ResourceManager.method_22.method_214(param1) || param3)
            {
               if(ResourceManager.method_22.method_191(param1) + param2 < ResourceManager.method_22.method_214(param1) || param3)
               {
                  ResourceManager.method_22.method_222(param1,param2);
                  Logger.debug(class_2.method_7(-1820295222) + param1 + " " + ResourceManager.method_22.method_191(param1) + " " + ResourceManager.method_22.method_729(param1));
                  _loc5_ = param2;
               }
               else
               {
                  _loc5_ = ResourceManager.method_22.method_214(param1) - ResourceManager.method_22.method_191(param1);
                  ResourceManager.method_22.method_222(param1,_loc5_);
                  Logger.debug(class_2.method_7(-1820295225) + param1 + " " + ResourceManager.method_22.method_191(param1) + " " + ResourceManager.method_22.method_729(param1) + " " + param2 + " " + _loc5_);
               }
            }
            else if(class_105.method_23() && param2 > 0)
            {
               if(UI._top)
               {
                  _loc6_ = UI._top.method_2665().method_3283(param1).getRect(UI._top);
                  UI._top.method_2697(_loc6_.right,_loc6_.top + _loc6_.height / 2,class_171.const_879);
               }
            }
            if(param4)
            {
               param4.method_3915(_loc5_);
               param4.method_18();
            }
            if(class_105.method_23())
            {
               SaveManager.class_2093.Base.method_38();
            }
            else if(class_105.method_118() || class_105.method_109())
            {
               SaveManager.class_2093.method_22.method_38();
            }
         }
         UI.Tick();
         return _loc5_;
      }
      
      public static function method_2351(param1:BldgFoundation, param2:Boolean = false) : Boolean
      {
         if(!class_28.method_30)
         {
            if(!class_28.method_3589 && !class_28.method_6438(MAP._GROUND.mouseX + MAP._GROUND.x,MAP._GROUND.mouseY + MAP._GROUND.y))
            {
               return true;
            }
         }
         return class_175.method_841(param1.footprint,new Point(param1.x,param1.y),true,param2);
      }
      
      public static function method_2180(param1:int, param2:int = 1) : void
      {
         var _loc3_:String = "b" + param1;
         if(var_1903[_loc3_])
         {
            var_1903[_loc3_] = var_1903[_loc3_] + param2;
         }
         else
         {
            var_1903[_loc3_] = param2;
         }
         if(class_105.method_23())
         {
            class_138.method_218("b" + param1 + "count",var_1903[_loc3_],true);
         }
      }
      
      public static function method_1651() : uint
      {
         var _loc2_:String = null;
         var _loc3_:BldgFoundation = null;
         var _loc4_:* = 0;
         var _loc5_:BuildingLevelData = null;
         var _loc1_:uint = 0;
         for(_loc2_ in var_41)
         {
            _loc3_ = var_41[_loc2_];
            if(_loc3_.name_8 != C_Buildings.CLASS_WALL && _loc3_.name_8 != C_Buildings.CLASS_DECORATION && _loc3_.name_8 != C_Buildings.CLASS_TRAP && !_loc3_.method_286())
            {
               _loc4_ = _loc3_.level;
               if(_loc4_ == 0)
               {
                  _loc4_ = 1;
               }
               _loc5_ = C_Buildings.GetLevelData(_loc3_.type,_loc4_);
               if(_loc5_)
               {
                  _loc1_ = _loc1_ + (_loc5_.time + _loc5_.r1 + _loc5_.r2 + (_loc5_.r3?_loc5_.r3:0));
               }
            }
         }
         _loc1_ = Math.ceil(_loc1_ * var_4228.Get() / class_31.const_8.Get());
         if(_loc1_ > var_1216.Get())
         {
            var_540 = true;
            var_1216.Set(_loc1_);
         }
         return _loc1_;
      }
      
      public static function method_404(param1:Number) : void
      {
         var_1042.Add(Math.floor(param1));
         var_540 = true;
      }
      
      public static function method_5694() : int
      {
         var _loc1_:Number = var_1042.Get() + var_1216.Get();
         var _loc2_:int = var_121;
         var _loc4_:int = var_1005.length - 1;
         while(0 < _loc4_)
         {
            if(_loc1_ < var_1005[0])
            {
               break;
            }
            _loc2_ = 0 + 1;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function method_1816() : void
      {
         var _loc5_:Object = null;
         var_540 = false;
         if(!class_28.method_30 && class_28.Stage < 62)
         {
            var_121 = 1;
            return;
         }
         method_1651();
         var _loc1_:Number = var_1042.Get() + var_1216.Get();
         var _loc2_:int = var_121;
         var _loc4_:int = var_1005.length - 1;
         while(0 < _loc4_)
         {
            if(_loc1_ < var_1005[0])
            {
               break;
            }
            var_121 = 0 + 1;
            _loc3_++;
         }
         if(class_105.method_131())
         {
            class_68.name_1.level = var_121;
            class_68.name_1.points = _loc1_;
            class_25.method_4004(class_68.name_1.id,var_121,class_68.name_1.alias);
            class_106.method_1384 = var_121;
            if(class_105.method_23() && var_121 > _loc2_ && !BASE.method_52() && class_28.method_30)
            {
               class_179.method_6153(var_121,ResourceManager.PlayerResources.r1,ResourceManager.PlayerResources.r1Max,ResourceManager.PlayerResources.r2,ResourceManager.PlayerResources.r2Max,ResourceManager.PlayerResources.r3,ResourceManager.PlayerResources.r3Max,var_1529.Get(),var_1509.Get(),UnitManager.class_2093.method_1314(false),UnitManager.class_2093.method_381(class_136.const_77));
               _loc5_ = {
                  "event":class_2.method_7(-1820295973),
                  "level":var_121
               };
               class_31.method_215(class_2.method_7(-1820311397),[class_2.method_7(-1820295834),_loc5_],false);
               if(var_121 == 16)
               {
                  class_169.method_1377(class_169.const_1985);
               }
               POPUPS.method_2825(_loc2_,var_121);
               SaveManager.class_2093.Base.method_38();
            }
         }
      }
      
      public static function method_588() : int
      {
         if(var_540)
         {
            method_1816();
         }
         return var_121;
      }
      
      public static function method_1145() : Number
      {
         return var_1042.Get() + var_1216.Get();
      }
      
      public static function method_2219() : Number
      {
         var _loc1_:Number = method_1022(var_121 + 1) - method_1145();
         if(_loc1_ < 0)
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
      
      public static function method_5546() : Number
      {
         var _loc1_:Number = method_1022(var_121 + 1) - method_1022(var_121);
         _loc1_ = _loc1_ < 0?0:_loc1_;
         var _loc2_:Number = (_loc1_ - method_2219()) / _loc1_;
         return _loc2_ < 0?0:_loc2_;
      }
      
      public static function method_1022(param1:int) : Number
      {
         var _loc2_:int = param1 - 1;
         if(_loc2_ >= 0 && _loc2_ < var_1005.length - 1)
         {
            return var_1005[_loc2_];
         }
         return 0;
      }
      
      public static function method_2790(param1:int) : String
      {
         var _loc3_:BldgFoundation = null;
         var _loc2_:* = 0;
         for each(_loc3_ in var_482)
         {
            if(_loc3_.type == param1 && _loc3_.method_83())
            {
               _loc2_ = _loc2_ + class_174(_loc3_).GetHourlyProduction();
            }
         }
         _loc2_ = _loc2_ * class_118.battle.getPowerProductivity() / class_31.const_8.Get();
         return class_31.method_35(_loc2_);
      }
      
      public static function method_2289() : void
      {
         if(class_118.battle == null)
         {
            return;
         }
         var _loc1_:int = class_118.battle.getPowerUsage();
         var _loc2_:int = class_118.battle.getPowerProduction();
         var _loc3_:int = class_105.method_81()?class_31.const_8.Get():class_118.battle.getPowerProductivity();
         if(var_1529)
         {
            var_1529.Set(_loc1_);
         }
         else
         {
            var_1529 = new SecNum(_loc1_);
         }
         if(var_1509)
         {
            var_1509.Set(_loc2_);
         }
         else
         {
            var_1509 = new SecNum(_loc2_);
         }
         if(var_324)
         {
            var_324.Set(_loc3_);
         }
         else
         {
            var_324 = new SecNum(_loc3_);
         }
      }
      
      public static function method_1343(param1:Boolean = false) : int
      {
         var _loc2_:* = 0;
         var _loc3_:BldgFoundation = method_29(class_158.const_13);
         if(class_105.method_23() && _loc3_ != null)
         {
            _loc2_ = 2 + (_loc3_.level + (param1?1:0)) * 2;
         }
         else if(class_105.method_81() && !class_105.method_102())
         {
            _loc2_ = class_189.method_2395();
         }
         return _loc2_;
      }
      
      public static function method_2209() : void
      {
         var _loc3_:Point = null;
         var _loc4_:AbstractUnit = null;
         var _loc1_:int = method_1343();
         while(0 < _loc1_)
         {
            _loc3_ = class_175.method_154(new Point(-500 + Math.random() * class_31.const_20.Get(),-500 + Math.random() * class_31.const_20.Get()));
            if(!class_28.method_30)
            {
               _loc3_ = new Point(-107,15);
            }
            _loc4_ = AbstractUnit.method_852(UnitManager.class_2093.method_231(),class_132.const_122,_loc3_.x,_loc3_.y,0,0);
            class_118.instance.method_504(_loc4_,_loc3_.x,_loc3_.y,0);
            _loc2_++;
         }
      }
      
      public static function method_8118() : void
      {
         var _loc1_:BldgFoundation = null;
         for each(_loc1_ in var_498)
         {
            _loc1_.method_429();
         }
      }
      
      public static function method_8251() : void
      {
         var _loc1_:BldgFoundation = null;
         for each(_loc1_ in var_498)
         {
            _loc1_.method_810();
         }
      }
      
      public static function method_3205() : Boolean
      {
         var _loc1_:BldgFoundation = null;
         for each(_loc1_ in var_482)
         {
            if(_loc1_.method_855(false))
            {
               return true;
            }
         }
         return false;
      }
      
      public static function method_3081() : Boolean
      {
         var _loc1_:BldgFoundation = null;
         for each(_loc1_ in var_482)
         {
            if(_loc1_._hp.Get() < _loc1_.var_81.Get())
            {
               return false;
            }
         }
         return true;
      }
      
      public static function method_4991(param1:int) : void
      {
         var_1459 = param1;
      }
      
      public static function method_7608() : void
      {
         var _loc1_:* = 0;
         var _loc2_:class_172 = null;
         if(var_1459 > -1)
         {
            _loc1_ = var_1459;
            var_1459 = -1;
            if(!class_105.method_102() && class_97.Count == 0 && !class_31.method_883() && class_28.method_30 && !var_471.value && class_31.var_270 == null && !class_105.method_189())
            {
               _loc2_ = new class_172();
               if(_loc1_ == 0 || _loc1_ == class_68.name_1.method_237)
               {
                  class_105.goHome();
               }
               else
               {
                  _loc2_.baseID = _loc1_;
                  class_105.method_302(class_105.const_398,_loc2_);
               }
            }
         }
      }
      
      public static function method_942() : int
      {
         return class_118.battle.getPercentDamaged();
      }
      
      public static function method_8045() : Number
      {
         var _loc2_:BldgFoundation = null;
         var _loc1_:Number = 0;
         for each(_loc2_ in var_482)
         {
            _loc1_ = _loc1_ + _loc2_._hp.Get();
         }
         return _loc1_;
      }
      
      public static function method_813(param1:BuildingLevelData) : int
      {
         var _loc2_:* = 0;
         if(param1 != null)
         {
            if(param1.r1 > 0)
            {
               if(param1.r1 > ResourceManager.method_22.r1)
               {
                  if(param1.r1 > ResourceManager.method_22.r1Max)
                  {
                     return -1;
                  }
                  _loc2_ = _loc2_ + (param1.r1 - ResourceManager.method_22.r1);
               }
            }
            if(param1.r2 > 0)
            {
               if(param1.r2 > ResourceManager.method_22.r2)
               {
                  if(param1.r2 > ResourceManager.method_22.r2Max)
                  {
                     return -1;
                  }
                  _loc2_ = _loc2_ + (param1.r2 - ResourceManager.method_22.r2);
               }
            }
         }
         return _loc2_;
      }
      
      public static function method_6664(param1:int, param2:int) : void
      {
         var _loc3_:BuildingLevelData = C_Buildings.GetLevelData(param1,param2);
         if(_loc3_ != null)
         {
            if(_loc3_.r1 > 0 && _loc3_.r1 > ResourceManager.method_22.r1)
            {
               method_261(class_206.const_5,_loc3_.r1 - ResourceManager.method_22.r1);
            }
            if(_loc3_.r2 > 0 && _loc3_.r2 > ResourceManager.method_22.r2)
            {
               method_261(class_206.const_6,_loc3_.r2 - ResourceManager.method_22.r2);
            }
         }
      }
      
      public static function method_1323(param1:int) : int
      {
         switch(param1)
         {
            case class_203.const_14:
               return class_158.const_115;
            case class_203.const_43:
               return class_158.const_114;
            case class_203.const_24:
               return class_158.const_95;
            case class_203.const_30:
               return class_158.const_83;
            case class_203.const_46:
               return class_158.const_104;
            default:
               return class_158.const_139;
         }
      }
      
      public static function method_2577(param1:int) : int
      {
         var _loc2_:UnitData = Units.GetData(param1);
         if(_loc2_ == null)
         {
            return class_158.const_139;
         }
         return method_1323(_loc2_.group);
      }
      
      public static function method_615(param1:int) : class_184
      {
         return method_29(method_1323(param1)) as class_184;
      }
      
      public static function method_1770(param1:int) : class_184
      {
         return method_29(method_2577(param1)) as class_184;
      }
      
      private static function method_3413() : int
      {
         return Reinforcements.method_5092() + class_138.method_6756() + UnitManager.class_2093.method_381(class_136.const_77);
      }
      
      public static function method_2031() : Boolean
      {
         if(method_3971())
         {
            method_3887();
            return true;
         }
         return false;
      }
      
      public static function method_3971() : Boolean
      {
         return !var_576 && StarterPack.method_365;
      }
      
      private static function method_3163() : Number
      {
         return StarterPack.method_4457;
      }
      
      public static function method_3887() : void
      {
         var _loc1_:class_181 = null;
         var _loc2_:BldgFoundation = null;
         var _loc3_:class_136 = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Object = null;
         var _loc7_:Vector.<AbstractUnit> = null;
         var _loc8_:uint = 0;
         var _loc9_:* = 0;
         if(!class_105.method_65())
         {
            for each(_loc2_ in var_41)
            {
               if(_loc2_ && _loc2_ is class_181)
               {
                  _loc1_ = _loc2_ as class_181;
                  if(_loc1_.method_75 > _loc1_.method_96)
                  {
                     _loc3_ = _loc1_.var_158;
                     method_4018(_loc3_,_loc1_.method_96);
                  }
               }
            }
         }
         if(class_105.method_23() && class_28.method_30)
         {
            _loc4_ = UnitManager.class_2093.method_582(class_136.const_77);
            _loc5_ = UnitManager.class_2093.method_381(class_136.const_77);
            if(_loc4_ > _loc5_)
            {
               _loc6_ = {
                  "userId":class_68.name_1.id,
                  class_2.method_7(-1820300045):_loc4_,
                  class_2.method_7(-1820301057):_loc5_
               };
               Logger.warn(class_2.method_7(-1820307524) + WCJSON.encode(_loc6_));
               _loc7_ = new Vector.<AbstractUnit>();
               _loc7_ = _loc7_.concat(UnitManager.class_2093.method_656(false).method_95());
               method_2905(_loc7_,_loc5_);
            }
            _loc4_ = UnitManager.class_2093.method_582(class_136.const_82);
            _loc5_ = UnitManager.class_2093.method_381(class_136.const_82);
            _loc8_ = _loc5_ + method_3413();
            if(_loc4_ > _loc8_)
            {
               _loc6_ = {
                  "userId":class_68.name_1.id,
                  class_2.method_7(-1820300045):_loc4_,
                  class_2.method_7(-1820301057):_loc5_
               };
               FrameworkLogger.Log(class_2.method_7(-1820300992),class_2.method_7(-1820297995) + WCJSON.encode(_loc6_));
               _loc7_ = new Vector.<AbstractUnit>();
               _loc7_ = _loc7_.concat(UnitManager.class_2093.method_656(false).method_95());
               _loc7_ = _loc7_.concat(UnitManager.class_2093.method_273().method_95());
               _loc7_ = _loc7_.concat(PlatoonManager.class_2093.method_5934);
               method_1502(_loc7_,_loc8_);
            }
            _loc4_ = UnitManager.class_2093.method_582(class_136.const_119);
            _loc5_ = UnitManager.class_2093.method_381(class_136.const_119);
            _loc9_ = _loc5_ + method_3163();
            if(_loc4_ > _loc9_)
            {
               _loc6_ = {
                  "userId":class_68.name_1.id,
                  class_2.method_7(-1820300045):_loc4_,
                  class_2.method_7(-1820301057):_loc5_
               };
               FrameworkLogger.Log(class_2.method_7(-1820300992),class_2.method_7(-1820310717) + WCJSON.encode(_loc6_));
               _loc7_ = new Vector.<AbstractUnit>();
               _loc7_ = _loc7_.concat(PlatoonManager.class_2093.method_6500);
               _loc7_ = _loc7_.concat(UnitManager.class_2093.method_744().method_95());
               method_1502(_loc7_,_loc9_);
            }
         }
      }
      
      private static function method_4018(param1:class_136, param2:int) : void
      {
         var _loc7_:AbstractUnit = null;
         var _loc3_:Vector.<AbstractUnit> = new Vector.<AbstractUnit>();
         _loc3_ = _loc3_.concat(param1.method_95());
         _loc3_.sort(AbstractUnit.method_2484);
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         while(0 <= _loc3_.length)
         {
            _loc7_ = null;
            if(0 < _loc3_.length)
            {
               _loc7_ = _loc3_[0];
            }
            if(_loc7_ != null && _loc4_ + _loc7_.getWeight(true) < param2)
            {
               _loc4_ = _loc4_ + _loc7_.getWeight(true);
            }
            else if(_loc7_ != null)
            {
               _loc5_ = _loc5_ + _loc7_.getWeight(true);
               UnitManager.class_2093.method_694(_loc7_.uid,param1,UnitManager.class_2093.method_656(true));
            }
            _loc6_++;
         }
      }
      
      private static function method_2905(param1:Vector.<AbstractUnit>, param2:uint) : void
      {
         var _loc9_:AbstractUnit = null;
         param1.sort(AbstractUnit.method_2484);
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = "";
         var _loc6_:* = -1;
         var _loc7_:* = 0;
         while(0 <= param1.length)
         {
            _loc9_ = null;
            if(0 < param1.length)
            {
               _loc9_ = param1[0];
            }
            if(_loc9_ != null && _loc3_ + _loc9_.getWeight(true) < param2)
            {
               _loc3_ = _loc3_ + _loc9_.getWeight(true);
            }
            else
            {
               if(_loc9_ == null || _loc9_.type != _loc6_)
               {
                  if(_loc7_ > 0)
                  {
                     _loc5_ = _loc5_ + (class_2.method_7(-1820302036) + _loc6_ + class_2.method_7(-1820301313) + _loc7_);
                  }
                  if(_loc9_ != null)
                  {
                     _loc6_ = _loc9_.type;
                     _loc7_ = 1;
                  }
               }
               else
               {
                  _loc7_++;
               }
               if(_loc9_ != null)
               {
                  _loc4_ = _loc4_ + _loc9_.getWeight(true);
                  UnitManager.class_2093.method_694(_loc9_.uid,UnitManager.class_2093.method_656(true),UnitManager.class_2093.method_273());
               }
            }
            _loc8_++;
         }
         if(_loc5_.length > 0)
         {
            FrameworkLogger.Log(class_2.method_7(-1820307668),"(" + (_loc3_ + _loc4_) + "/" + param2 + ")" + _loc5_);
         }
      }
      
      private static function method_1502(param1:Vector.<AbstractUnit>, param2:uint) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:AbstractUnit = null;
         if(class_66.method_1011())
         {
            param1.sort(AbstractUnit.method_2484);
            _loc3_ = 0;
            _loc4_ = 0;
            _loc5_ = "";
            _loc6_ = -1;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ <= param1.length)
            {
               _loc9_ = null;
               if(_loc8_ < param1.length)
               {
                  _loc9_ = param1[_loc8_];
               }
               if(_loc9_ != null && _loc3_ + _loc9_.getWeight(true) < param2)
               {
                  _loc3_ = _loc3_ + _loc9_.getWeight(true);
               }
               else
               {
                  if(_loc9_ == null || _loc9_.type != _loc6_)
                  {
                     if(_loc7_ > 0)
                     {
                        _loc5_ = _loc5_ + (class_2.method_7(-1820302036) + _loc6_ + class_2.method_7(-1820301313) + _loc7_);
                     }
                     if(_loc9_ != null)
                     {
                        _loc6_ = _loc9_.type;
                        _loc7_ = 1;
                     }
                  }
                  else
                  {
                     _loc7_++;
                  }
                  if(_loc9_ != null)
                  {
                     _loc4_ = _loc4_ + _loc9_.getWeight(true);
                     UnitManager.class_2093.RemoveUnit(_loc9_.uid,_loc9_.type,true,false);
                  }
               }
               _loc8_++;
            }
            if(_loc5_.length > 0)
            {
               FrameworkLogger.Log(class_2.method_7(-1820299821),"(" + (_loc3_ + _loc4_) + "/" + param2 + ")" + _loc5_);
            }
         }
      }
      
      private static function method_8020() : void
      {
         var _loc2_:BldgFoundation = null;
         var _loc3_:* = 0;
         var _loc4_:BldgFoundation = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:class_181 = null;
         var _loc11_:* = false;
         var _loc13_:String = null;
         var _loc1_:Vector.<class_181> = new Vector.<class_181>();
         for each(_loc2_ in var_498)
         {
            if(_loc2_ is class_181)
            {
               _loc1_.push(_loc2_ as class_181);
            }
         }
         _loc3_ = 0;
         _loc4_ = method_29(class_158.const_13);
         if(_loc4_ != null)
         {
            _loc3_ = C_Buildings.GetData(class_158.const_171).quantity[_loc4_.level];
         }
         var _loc12_:Vector.<Vector.<int>> = new Vector.<Vector.<int>>();
         while(_loc1_.length > _loc3_)
         {
            _loc5_ = int.MAX_VALUE;
            _loc6_ = -1;
            _loc7_ = -1;
            _loc8_ = -1;
            _loc9_ = 0;
            while(_loc9_ < _loc1_.length)
            {
               _loc10_ = _loc1_[_loc9_];
               _loc11_ = false;
               if(_loc10_.level < _loc5_)
               {
                  _loc11_ = true;
               }
               else if(_loc10_.level == _loc5_)
               {
                  if(_loc6_ != class_158.const_171 && _loc10_.type == class_158.const_171)
                  {
                     _loc11_ = true;
                  }
                  else if(_loc10_.id > _loc7_)
                  {
                     _loc11_ = true;
                  }
               }
               if(_loc11_)
               {
                  _loc5_ = _loc10_.level;
                  _loc6_ = _loc10_.type;
                  _loc7_ = _loc10_.id;
                  _loc8_ = _loc9_;
               }
               _loc9_++;
            }
            if(_loc8_ > -1)
            {
               _loc12_.push(Vector.<int>([_loc1_[_loc8_].type,_loc1_[_loc8_].level]));
               _loc1_[_loc8_].method_1069();
               _loc1_.splice(_loc8_,1);
               continue;
            }
            Logger.error(class_2.method_7(-1820309749));
            break;
         }
         if(_loc12_.length > 0)
         {
            _loc13_ = class_2.method_7(-1820299599) + _loc12_.length + class_2.method_7(-1820307986);
            _loc9_ = 0;
            while(_loc9_ < _loc12_.length)
            {
               _loc13_ = _loc13_ + ("[" + _loc12_[_loc9_][0] + "," + _loc12_[_loc9_][1] + "] ");
               _loc9_++;
            }
            FrameworkLogger.Log(FrameworkLogger.KEY_CULL_BUNKER,_loc13_);
         }
      }
      
      public static function method_3958() : void
      {
         if(method_29(class_158.const_36) == null)
         {
            if(BASE.method_181(class_158.const_36) < 1)
            {
               BASE.method_507(class_158.const_36);
            }
            method_354(class_158.const_36);
         }
      }
      
      public static function method_3347() : void
      {
         method_1699();
         Units.DisableDeadDefenders();
         class_176.method_4027();
         ATTACK.Setup();
         UI.method_7070();
         class_97.method_151();
         class_118.battle.localBattleStarted();
      }
      
      public static function method_5895() : void
      {
         if(var_992 <= 0)
         {
            var_992 = const_4884;
         }
      }
      
      public static function method_5800() : Boolean
      {
         return !Projectiles.HasTargetableProjectiles(true) || var_992 <= 0;
      }
      
      public static function method_4087() : void
      {
         method_1699();
         Units.EndAIAttack();
         class_176.method_6943();
         UI.EndAIAttack(class_118.instance.method_3478);
         class_118.battle.localBattleEnded();
         Projectiles.Clear();
      }
      
      public static function method_937() : void
      {
         var _loc1_:BldgFoundation = null;
         if(class_105.method_23())
         {
            for each(_loc1_ in var_498)
            {
               if(_loc1_ != null)
               {
                  _loc1_.method_937();
               }
            }
         }
      }
      
      public static function method_5520(param1:Boolean) : void
      {
         var _loc2_:BldgFoundation = null;
         for each(_loc2_ in var_41)
         {
            if(_loc2_)
            {
               _loc2_.method_827(param1);
            }
         }
      }
      
      public static function method_1699() : void
      {
         var _loc1_:BldgFoundation = null;
         for each(_loc1_ in var_41)
         {
            if(_loc1_)
            {
               _loc1_.method_1422();
            }
         }
      }
      
      public static function get baseName() : String
      {
         if(var_1379 != null)
         {
            return var_1379.method_108();
         }
         return "";
      }
      
      public static function set baseName(param1:String) : void
      {
         if(var_1379 == null)
         {
            var_1379 = new class_62(param1,"Base Name");
         }
         else if(param1 != var_1379.method_108())
         {
            var_1379.method_100(param1);
         }
      }
      
      public static function method_1675() : Boolean
      {
         return var_1379 != null;
      }
      
      public static function get method_871() : String
      {
         if(var_750 != null)
         {
            return var_750.method_108();
         }
         return "";
      }
      
      public static function set method_871(param1:String) : void
      {
         if(var_750 == null)
         {
            var_750 = new class_62(param1,"Base Alias");
         }
         else if(param1 != var_750.method_108())
         {
            var_750.method_100(param1);
         }
      }
      
      public static function method_1942() : Boolean
      {
         return var_750 != null;
      }
      
      public static function method_1132(param1:Boolean = true) : class_204
      {
         var _loc2_:class_204 = new class_204();
         method_1485(_loc2_,param1);
         return _loc2_;
      }
      
      public static function method_4234() : class_204
      {
         var _loc1_:class_204 = new class_204();
         method_1485(_loc1_,true);
         method_4100(_loc1_);
         return _loc1_;
      }
      
      private static function method_1485(param1:class_204, param2:Boolean) : void
      {
         var _loc3_:BldgFoundation = null;
         for each(_loc3_ in var_41)
         {
            if(_loc3_.method_855(!param2))
            {
               param1.method_3391(_loc3_);
            }
         }
      }
      
      private static function method_4100(param1:class_204) : void
      {
         if(class_105.method_23())
         {
            class_176.method_7254(param1);
         }
         else if(class_105.method_109() && PlatoonManager.class_2093.method_325)
         {
            PlatoonManager.class_2093.method_325.method_1360(param1);
         }
      }
      
      public static function method_3320(param1:int) : BldgFoundation
      {
         var _loc2_:BldgFoundation = null;
         if(var_41 != null)
         {
            for each(_loc2_ in var_41)
            {
               if(_loc2_.id == param1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function get method_93() : int
      {
         return var_3001.Get();
      }
      
      public static function set method_93(param1:int) : void
      {
         var_3001.Set(param1);
      }
      
      public static function get method_380() : int
      {
         return var_3487.Get();
      }
      
      public static function set method_380(param1:int) : void
      {
         var_3487.Set(param1);
      }
      
      public static function method_7077() : void
      {
         var _loc1_:BldgFoundation = null;
         Units.clearPointers();
         for each(_loc1_ in var_41)
         {
            _loc1_.method_303();
         }
         Projectiles.clearPointers();
      }
      
      public static function method_2190(param1:int) : int
      {
         var _loc3_:String = null;
         for(_loc3_ in BASE.var_41)
         {
            if(BASE.var_41[_loc3_].type == param1 || param1 == class_158.const_171 && (BASE.var_41[_loc3_].type == class_158.const_239 || BASE.var_41[_loc3_].type == class_158.const_282) || param1 == class_158.const_64 && C_Buildings.isChangeablePlatform(BASE.var_41[_loc3_].type))
            {
               _loc2_++;
            }
         }
         return 0;
      }
      
      public static function method_6274(param1:int) : void
      {
         var_393 = Math.max(var_393,param1);
      }
      
      public static function method_3784(param1:Boolean) : int
      {
         var _loc2_:int = var_393 + 1;
         if(param1)
         {
            var_393 = _loc2_;
         }
         return _loc2_;
      }
      
      public static function get method_2345() : int
      {
         return var_2285;
      }
      
      private static function method_3206(param1:Object) : void
      {
         if(var_2285 == -1)
         {
            var_2285 = int(param1.lastuserbasesave);
         }
      }
      
      public static function method_4145() : void
      {
         var_576 = false;
      }
   }
}
