package
{
   import com.cc.utils.SecNum;
   import flash.display.Sprite;
   import package_4.class_24;
   import com.cc.build.BldgFoundation;
   import package_72.class_237;
   import flash.geom.Point;
   import org.osflash.signals.class_59;
   import package_31.class_224;
   import com.cc.utils.js_utils.class_247;
   import flash.display.Bitmap;
   import package_9.class_64;
   import com.cc.units.C_Platoon;
   import package_76.class_250;
   import package_51.class_242;
   import com.cc.projectiles.Projectiles;
   import package_73.PromoManager;
   import com.cc.commands.class_236;
   import package_64.ImageCache;
   import com.cc.build.C_Buildings;
   import com.cc.nub.NubData;
   import com.cc.units.PlatoonManager;
   import package_29.DepositManager;
   import com.cc.units.UnitManager;
   import package_37.class_240;
   import package_69.ActionManager;
   import com.cc.buffs.BuffManager;
   import package_60.MissileManager;
   import package_60.MercenaryManager;
   import package_66.class_228;
   import com.cc.tech.TechManager;
   import com.cc.commands.UnitUpgradesValidationCommand;
   import com.cc.units.Units;
   import package_50.class_167;
   import package_57.class_185;
   import package_41.Reinforcements;
   import package_51.FX;
   import package_65.class_226;
   import package_54.class_176;
   import com.cc.worldmap.class_225;
   import package_38.ItemStoreManager;
   import package_37.class_123;
   import com.cc.aoes.AOEManager;
   import package_22.ResourceManager;
   import package_57.FactionBonusManager;
   import package_67.FireteamManager;
   import package_67.class_239;
   import package_67.class_229;
   import package_74.class_248;
   import package_75.class_249;
   import com.cc.ui.xbaux.class_233;
   import com.cc.ui.class_227;
   import flash.utils.getTimer;
   import package_16.ConsoleController;
   import com.cc.utils.class_243;
   import package_15.class_43;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   import com.cc.utils.AudioController;
   import package_22.class_69;
   import com.cc.worldmap.class_23;
   import package_4.class_66;
   import package_30.LoadManager;
   import package_32.SaveManager;
   import package_70.class_238;
   import com.cc.ui.UI;
   import com.cc.utils.class_9;
   import com.cc.build.class_174;
   import package_31.class_97;
   import package_5.TransitionLogger;
   import flash.system.System;
   import package_62.class_213;
   import flash.events.Event;
   import com.cc.battle.class_118;
   import package_52.ReplayPlayer;
   import package_70.class_232;
   import package_11.class_28;
   import package_71.class_234;
   import com.cc.environment.class_140;
   import com.adverserealms.log.Logger;
   import com.cc.utils.class_44;
   import package_20.class_158;
   import package_31.class_192;
   import com.cc.logging.class_18;
   import package_40.class_135;
   import package_31.class_102;
   import flash.display.DisplayObject;
   import flash.net.URLVariables;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.Capabilities;
   import package_20.class_206;
   import package_33.class_106;
   import com.kixeye.net.proto.class_11;
   import package_20.class_63;
   import package_68.AttackLogPopup;
   
   public class class_31 extends Object
   {
      
      public static const const_54:int = 40;
      
      public static const const_138:Boolean = false;
      
      private static var var_2642:Boolean = true;
      
      private static var var_2908:Boolean = false;
      
      private static var var_5098:Boolean = false;
      
      public static const const_3834:int = 0;
      
      public static const const_900:int = 1;
      
      public static const const_903:String = "fbg";
      
      public static const const_923:String = "kxp";
      
      public static const const_1976:String = "en_US";
      
      public static const const_136:int = 0;
      
      public static const const_19:int = 1;
      
      public static const const_402:int = 2;
      
      public static const const_285:int = 3;
      
      public static const const_446:int = 4;
      
      public static const const_140:int = 5;
      
      public static const const_96:SecNum = new SecNum(0);
      
      public static const const_65:SecNum = new SecNum(1);
      
      public static const const_8:SecNum = new SecNum(100);
      
      public static const const_20:SecNum = new SecNum(1000);
      
      private static const const_1280:Array = [class_2.method_7(-1820295927),class_2.method_7(-1820300475),class_2.method_7(-1820311238),class_2.method_7(-1820310201),class_2.method_7(-1820297810)];
      
      private static const const_4365:String = "error_code__error_wrapper";
      
      public static const const_1414:int = 10000;
      
      private static const const_3809:int = 10000;
      
      public static var var_1180:int = 7;
      
      public static const const_5554:int = -1;
      
      public static const const_5259:int = 1;
      
      public static const const_5843:int = 2;
      
      public static const const_5952:int = 3;
      
      public static const const_6112:int = 4;
      
      public static const const_5221:int = 5;
      
      public static const const_5911:int = 6;
      
      public static const const_5458:int = 7;
      
      public static const const_5369:int = 15;
      
      public static const const_5633:int = 16;
      
      public static const const_5786:int = 17;
      
      public static const const_5655:int = 18;
      
      public static const const_5501:int = 8;
      
      public static const const_5303:int = 9;
      
      public static const const_6090:int = 10;
      
      public static const const_5551:int = 11;
      
      public static const const_5728:int = 12;
      
      public static const const_6144:int = 13;
      
      public static const const_6007:int = 14;
      
      public static const const_5630:int = 19;
      
      public static var var_412:Number = 0;
      
      public static var var_5453:int;
      
      public static var var_5480:int;
      
      public static var var_4714:int;
      
      public static var var_5505:int;
      
      public static var var_5219:int;
      
      public static var var_5244:String;
      
      public static var var_43:int;
      
      public static var var_3082:int = 0;
      
      public static var var_5418:int;
      
      public static var var_1392:int;
      
      public static var var_5315:Boolean;
      
      public static var var_3210:int;
      
      public static var var_62:Sprite;
      
      public static var var_4915:String;
      
      public static var var_3969:String;
      
      public static var var_3610:int;
      
      public static var var_4384:String;
      
      public static var var_4226:String;
      
      public static var var_4275:String;
      
      public static var var_4288:String;
      
      public static var var_4374:String;
      
      public static var var_4486:String;
      
      public static var var_668:Sprite;
      
      public static var var_103:Sprite;
      
      public static var var_1309:Sprite;
      
      public static var var_2859:Sprite;
      
      public static var var_350:Sprite;
      
      private static var var_1226:SecNum = new SecNum(0);
      
      private static var var_2038:SecNum = new SecNum(0);
      
      private static var var_1202:SecNum = new SecNum(0);
      
      private static var var_1850:SecNum = new SecNum(0);
      
      public static var var_824:String;
      
      public static var var_116:String;
      
      public static var name_59:String;
      
      public static var var_5386:String;
      
      public static var var_264:String = "";
      
      public static var var_5450:String;
      
      public static var var_5440:String;
      
      public static var var_5508:String;
      
      public static var var_4555:String;
      
      public static var var_5083:String;
      
      public static var var_5397:String;
      
      public static var var_5430:String;
      
      public static var var_2078:String;
      
      public static var var_4707:Array;
      
      public static var var_4698:Array;
      
      public static var var_2528:class_24;
      
      public static var var_137:BldgFoundation;
      
      public static var var_270:BldgFoundation;
      
      public static var var_3394:BldgFoundation;
      
      public static var var_154:Boolean;
      
      public static var var_4870:Boolean = false;
      
      public static var var_2548:String = "";
      
      public static var var_782:Boolean = false;
      
      public static var var_1740:int;
      
      public static var var_5268:Number;
      
      public static var var_1640:Number;
      
      public static var var_4553:class_237;
      
      public static var var_1103:int;
      
      public static var var_2833:Boolean;
      
      public static var var_889:int = 0;
      
      public static var var_961:int = 0;
      
      public static var var_2092:Array = [];
      
      public static var var_5342:int = 0;
      
      public static var var_82:Object = {};
      
      public static var var_472:Boolean = false;
      
      public static var var_1004:int = 0;
      
      public static var var_5029:Boolean = false;
      
      public static var var_4710:Boolean = false;
      
      public static var var_4951:Boolean = false;
      
      public static var var_5296:Boolean = false;
      
      public static var var_1538:int = 0;
      
      public static var var_2901:Point = new Point(0,0);
      
      public static var var_5646:Boolean;
      
      public static var var_4742:int;
      
      public static var var_1862:int = 0;
      
      public static var var_1796:int;
      
      public static var var_3357:Boolean = true;
      
      public static var var_3104:Boolean = true;
      
      public static var var_4030:class_59 = new class_59();
      
      public static var var_496:Boolean = true;
      
      public static var var_949:Boolean = true;
      
      public static var var_909:Boolean = true;
      
      public static var var_661:int = const_750;
      
      public static var var_730:Boolean = true;
      
      public static var var_832:Boolean = true;
      
      public static var var_704:Boolean = true;
      
      public static var var_1034:Boolean = true;
      
      public static var var_4113:Boolean = true;
      
      public static var var_1351:Boolean = true;
      
      public static var var_1236:Boolean = true;
      
      public static const const_5423:int = -1;
      
      public static const const_4017:int = 0;
      
      public static const const_750:int = 1;
      
      public static var var_5297:uint;
      
      public static var var_4946:uint;
      
      private static var var_2515:Boolean = false;
      
      private static var var_2393:String = "";
      
      private static var var_3902:Boolean;
      
      private static var var_1316:class_244;
      
      private static var var_1443:class_224;
      
      private static var var_2728:class_247 = new class_247();
      
      private static var var_475:Array = [];
      
      private static var var_673:Bitmap;
      
      private static var var_1418:Function = null;
      
      private static var var_1707:Vector.<class_64> = new Vector.<class_64>();
      
      private static var var_2602:Boolean;
      
      private static var var_2108:Point;
      
      private static var var_1935:C_Platoon;
      
      private static var var_4127:Boolean;
      
      private static var var_2866:Boolean;
      
      private static var var_2693:Boolean = true;
      
      private static var var_1386:Number = 0.0;
      
      private static var var_1068:Number = 1;
      
      private static var var_1498:Number = 0.0;
      
      private static var var_2542:Boolean = false;
       
      public function class_31()
      {
         super();
      }
      
      public static function method_6762() : void
      {
         if(var_3902)
         {
            return;
         }
         class_250.initSharedConfigLoadListener();
         class_242.initSharedConfigLoadListener();
         Projectiles.initSharedConfigLoadListener();
         class_245.initSharedConfigLoadListener();
         PromoManager.instance.initSharedConfigLoadListener();
         class_236.method_1206();
         ImageCache.var_3406 = class_31.var_264;
         var_4553 = new class_237();
         var_4553.method_6264();
         MAP.method_114();
         C_Buildings.requestBuildingData();
         NubData.applyNUB(class_68.name_1.id);
         PlatoonManager.class_2093.method_114();
         DepositManager.class_2093.method_114();
         UnitManager.class_2093.method_114();
         class_240.class_2093.method_114();
         ActionManager.instance.init();
         BuffManager.instance.init();
         MissileManager.instance.init();
         MercenaryManager.instance.init();
         class_228.instance.initialize();
         TechManager.instance.init();
         BASE.init();
         UnitUpgradesValidationCommand.init();
         Projectiles.Setup();
         Units.Setup();
         class_167.method_114();
         class_185.Setup();
         Reinforcements.Setup();
         FX.Setup();
         class_230.method_350();
         class_226.method_350();
         class_245.Setup();
         class_176.Setup();
         class_225.Setup();
         class_138.Setup();
         ATTACK.method_114();
         ItemStoreManager.setup();
         class_123.instance.initialize();
         AOEManager.Setup();
         ResourceManager.class_2093.method_114();
         FactionBonusManager.instance.initialize();
         FireteamManager.instance.init();
         class_239.instance.init();
         class_229.instance.init();
         class_248.init();
         class_249.init();
         new class_233();
         var_3902 = true;
         class_227.Setup();
         var_1862 = getTimer();
         class_243.method_2445();
         GAME.method_6467();
         return;
         §§push(false);
      }
      
      public static function method_561(param1:Sprite) : void
      {
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
      }
      
      public static function method_7628() : void
      {
         method_561(var_668);
         method_561(var_103);
         method_561(var_1309);
         method_561(var_2859);
         method_561(var_350);
         method_1458();
         var_472 = false;
         var_154 = false;
         var_1004 = 0;
         var_782 = false;
      }
      
      public static function method_7866(param1:String = "") : void
      {
         class_133.Show(class_43.getString(class_2.method_7(-1820308753)));
      }
      
      public static function method_2096() : void
      {
         class_133.Hide();
      }
      
      private static function method_715(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:int = class_31.method_57;
         var _loc4_:int = class_31.method_110;
         var _loc5_:int = _loc3_;
         var _loc6_:int = _loc4_;
         var _loc7_:String = method_3154()?StageDisplayState.FULL_SCREEN_INTERACTIVE:StageDisplayState.FULL_SCREEN;
         var _loc8_:String = param2?_loc7_:StageDisplayState.NORMAL;
         var _loc9_:Number = 0.4;
         if(var_62.stage.displayState != _loc8_)
         {
            var_62.stage.displayState = _loc8_;
            _loc5_ = class_31.method_57;
            _loc6_ = class_31.method_110;
            _loc9_ = 0;
         }
         var _loc10_:Number = 1;
         if(var_472 != param1)
         {
            var_472 = param1;
            _loc10_ = param1?0.5:2;
         }
         var _loc12_:int = 2000 * 0.5 + (760 - _loc5_) / 2;
         var _loc13_:int = class_31.const_20.Get() * 0.5 + (600 - _loc6_) / 2;
         var _loc14_:int = -2000 * 0.5 + (760 + _loc5_) / 2 + 4;
         var _loc15_:int = -1000 * 0.5 + (600 + _loc6_) / 2 + 4;
         var _loc16_:int = (MAP.var_68.x - _loc3_ / 2) * _loc10_ + _loc3_ / 2;
         var _loc17_:int = (MAP.var_68.y - _loc4_ / 2) * _loc10_ + _loc4_ / 2;
         MAP.method_7084(Math.max(Math.min(_loc12_,_loc16_),_loc14_),Math.max(Math.min(_loc13_,_loc17_),_loc15_),0.5,0.5,_loc9_);
      }
      
      public static function method_2004(param1:MouseEvent = null) : void
      {
         method_715(false,var_62.stage.displayState == StageDisplayState.NORMAL);
         AudioController.instance.method_32(class_2.method_7(-1820310627));
      }
      
      public static function method_6770(param1:Boolean = false) : void
      {
         method_715(false,param1);
      }
      
      public static function method_5516(param1:MouseEvent = null) : void
      {
         if(var_62.stage.displayState == StageDisplayState.NORMAL)
         {
            BASE.method_239();
            if(var_472)
            {
               AudioController.instance.method_32(class_2.method_7(-1820303150));
            }
            else
            {
               AudioController.instance.method_32(class_2.method_7(-1820302558));
            }
            method_715(!var_472,false);
         }
         else
         {
            AudioController.instance.method_32(class_2.method_7(-1820310038));
         }
      }
      
      public static function method_1821() : Boolean
      {
         var _loc1_:int = new Date().getTime() / 60000;
         return class_69.Get(class_69.const_1000) && _loc1_ - class_69.Get(class_69.const_1000) < 60;
      }
      
      public static function method_3703() : Boolean
      {
         return var_1498 > 0.0;
      }
      
      public static function method_4027() : void
      {
         var_1498 = var_1068;
         var_1068 = 0.0;
      }
      
      public static function method_8439() : void
      {
         var_1068 = var_1498;
         var_1498 = 0.0;
      }
      
      public static function get method_520() : Boolean
      {
         return var_2515;
      }
      
      public static function get method_8100() : String
      {
         return var_2393;
      }
      
      public static function method_1700(param1:Boolean, param2:String = "") : void
      {
         var_2515 = param1;
         var_2393 = param1?param2:"";
      }
      
      public static function get method_553() : Number
      {
         return var_1068;
      }
      
      public static function set method_553(param1:Number) : void
      {
         var_1068 = Math.min(10,Math.max(0.0,param1));
         var_2542 = true;
      }
      
      public static function get method_6572() : Boolean
      {
         return var_2542;
      }
      
      public static function method_4542() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:class_64 = null;
         var _loc5_:Object = null;
         var _loc6_:BldgFoundation = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!method_520)
         {
            _loc1_ = method_28();
            class_23.tick();
            if(!BASE.method_52())
            {
               class_66.Tick();
               LoadManager.instance.tick();
               SaveManager.class_2093.Tick();
               class_176.Tick();
               class_238.instance.tick(_loc1_);
               BuffManager.instance.tick();
               if(UI.method_4602)
               {
                  UI.method_6963(var_1103);
               }
               if(UI.method_5885)
               {
                  UI.method_6835();
               }
               if(!class_105.method_118())
               {
                  var_1004++;
                  BASE.method_2289();
                  _loc5_ = BASE.var_41;
                  _loc7_ = 0;
                  _loc8_ = 0;
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc6_.name_8 == C_Buildings.CLASS_RESOURCE)
                     {
                        _loc7_ = _loc6_.method_426;
                        _loc8_ = _loc6_.countdownProduce;
                     }
                     _loc6_.Tick(1);
                     if(_loc6_.name_8 == C_Buildings.CLASS_RESOURCE && _loc6_.level > 0)
                     {
                        if(_loc8_ > class_31.const_8.Get() && _loc7_ != _loc6_.method_426)
                        {
                           FrameworkLogger.Log(FrameworkLogger.KEY_HACK,class_2.method_7(-1820306904) + _loc7_ + " - " + _loc6_.method_426);
                           class_31.method_74(class_9.const_2574,class_2.method_7(-1820308566));
                           return;
                        }
                        if(_loc6_.method_426 > _loc7_ + (_loc6_ as class_174).method_1649())
                        {
                           FrameworkLogger.Log(FrameworkLogger.KEY_HACK,class_2.method_7(-1820306902) + _loc7_ + " - " + _loc6_.method_426);
                           class_31.method_74(class_9.const_2530,class_2.method_7(-1820310739));
                           return;
                        }
                     }
                  }
                  UPDATES.Check();
                  class_167.method_18();
                  class_32.method_1074();
                  BASE.Tick();
                  ResourceManager.class_2093.method_260();
                  class_187.Tick();
                  class_142.Tick();
                  Reinforcements.Tick();
               }
               UI.Tick();
               class_97.Tick();
               ResourceManager.class_2093.Tick();
               _loc3_ = true;
               if(_loc3_)
               {
                  method_4320();
               }
               BASE.method_7608();
               for each(_loc4_ in var_1707)
               {
                  _loc4_.tick(1);
               }
            }
            _loc2_ = _loc1_ % 300 == 0;
            _loc2_ = _loc2_ && _loc1_ != 0;
            if(_loc2_)
            {
               TransitionLogger.method_1293(class_2.method_7(-1820310550),var_1103);
               TransitionLogger.method_1293(class_2.method_7(-1820302526),System.totalMemory / 1000000);
            }
         }
      }
      
      public static function method_7237(param1:int) : void
      {
         FX.Tick(param1);
         class_213.Tick(param1);
      }
      
      public static function method_5988(param1:Event) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:BldgFoundation = null;
         var _loc7_:BldgFoundation = null;
         if(!method_520)
         {
            var_1386 = 1;
            MAP.TickFast();
            while(var_1386 >= 1)
            {
               var_1386 = var_1386 - 1;
               _loc2_ = getTimer();
               var_43++;
               class_236.method_1206().Tick();
               _loc3_ = class_118.instance.Tick();
               ReplayPlayer.instance.tickFast();
               _loc4_ = _loc2_ - var_1862;
               var_1862 = _loc2_;
               PromoManager.instance.tickFast();
               class_232.instance.tickFast();
               class_23.TickFast();
               TechManager.instance.tickFast();
               if(var_2602)
               {
                  if(var_1316 == null)
                  {
                     method_3620();
                  }
                  class_23.method_375.method_7652(method_5693,var_2108,var_1935);
               }
               if(var_154)
               {
                  Units.Tick();
                  Projectiles.Tick();
                  for each(_loc6_ in BASE.var_498)
                  {
                     _loc6_.method_649();
                  }
                  _loc2_ = getTimer();
                  class_156.Tick();
                  class_28.Tick();
                  class_234.Tick();
                  AOEManager.TickFast();
                  for each(_loc7_ in BASE.var_482)
                  {
                     _loc7_.TickFast();
                  }
                  if(!var_2833)
                  {
                     if(var_889 == const_54 * 60)
                     {
                        method_3688();
                     }
                     else if(var_889 > const_54 && var_889 % const_54 == 0)
                     {
                        var_1103 = int(class_31.const_20.Get() / ((_loc2_ - var_961) / const_54));
                        if(var_961 > 0)
                        {
                           var_2092.push({class_2.method_7(-1820300401):var_1103});
                        }
                        var_961 = _loc2_;
                     }
                  }
                  else if(var_889 % const_54 == 0)
                  {
                     var_1103 = int(class_31.const_20.Get() / ((_loc2_ - var_961) / const_54));
                     var_961 = _loc2_;
                  }
                  var_889 = var_889 + 1;
                  if(var_43 % 2 == 0)
                  {
                     MAP.method_5468();
                  }
                  class_140.Tick();
                  class_97.TickFast();
                  var_2728.TickFast(_loc4_);
                  class_240.class_2093.tickFast();
               }
               UI.TickFast();
               class_142.tickFast();
               _loc5_ = getTimer() - _loc2_;
               var_3082 = _loc5_;
               if(_loc5_ > const_3809)
               {
                  Logger.warn(FrameworkLogger.KEY_EXCESSIVE_FRAME_TIME + class_2.method_7(-1820309494) + var_43 + class_2.method_7(-1820295517) + _loc5_ + class_2.method_7(-1820299101));
               }
            }
         }
      }
      
      public static function method_3688() : void
      {
         var_2833 = true;
         var_2092.sortOn(class_2.method_7(-1820300401),Array.NUMERIC);
      }
      
      public static function method_1458() : void
      {
         var_1103 = const_54;
         var_889 = 0;
         var_2092 = [];
         var_961 = 0;
         var_2833 = false;
      }
      
      public static function method_28() : int
      {
         return var_1226.Get();
      }
      
      public static function method_691() : int
      {
         return var_1202.Get();
      }
      
      public static function method_2446(param1:int) : void
      {
         if(param1 > var_1226.Get())
         {
            var_1226.Set(param1);
            var_2038.Set(0);
            class_44.assert(var_1226.Get() == param1,class_2.method_7(-1820299545));
         }
      }
      
      public static function method_7316(param1:int) : void
      {
         var_1202.Set(param1);
         var_1850.Set(0);
         class_44.assert(var_1202.Get() == param1,class_2.method_7(-1820302287));
      }
      
      public static function method_2043() : void
      {
         if(class_105.method_102() || class_105.method_574() || BASE.method_52())
         {
            return;
         }
         var_1202.Set(var_1226.Get());
         var_1850.Set(var_2038.Get());
         class_44.assert(var_1202.Get() == var_1226.Get(),class_2.method_7(-1820296047));
         class_44.assert(var_1850.Get() == var_2038.Get(),class_2.method_7(-1820301684));
      }
      
      public static function method_6373(param1:int) : void
      {
         method_1015(param1 * class_31.const_20.Get(),var_1202,var_1850,class_2.method_7(-1820296712));
      }
      
      public static function method_5792(param1:int) : void
      {
         method_1015(param1,var_1226,var_2038,class_2.method_7(-1820301083));
         method_1015(param1,var_1202,var_1850,class_2.method_7(-1820296712));
      }
      
      public static function method_1015(param1:int, param2:SecNum, param3:SecNum, param4:String) : void
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         if(param2 != null && param2.Get() > 0)
         {
            _loc5_ = param2.Get();
            _loc6_ = param3.Get() + param1;
            _loc7_ = _loc6_ / class_31.const_20.Get();
            _loc6_ = _loc6_ - _loc7_ * class_31.const_20.Get();
            class_44.assert(_loc6_ >= 0,class_2.method_7(-1820298615) + param4 + class_2.method_7(-1820309559));
            param3.Set(_loc6_);
            param2.Set(param2.Get() + _loc7_);
            class_44.assert(_loc6_ < class_31.const_20.Get(),class_2.method_7(-1820298615) + param4 + class_2.method_7(-1820309998));
            class_44.assert(_loc5_ <= param2.Get(),class_2.method_7(-1820298615) + param4 + class_2.method_7(-1820311444) + param4 + class_2.method_7(-1820296841));
         }
      }
      
      public static function method_1064() : Boolean
      {
         return class_66.gsconnect;
      }
      
      public static function method_182(param1:Point = null, param2:C_Platoon = null) : void
      {
         if(class_105.method_23() && BASE.method_29(class_158.const_36) == null)
         {
            class_97.Show(new class_192(class_43.getString(class_2.method_7(-1820295722)),class_43.getString(class_2.method_7(-1820307784)),true,class_43.getString(class_2.method_7(-1820309469)),BASE.method_3958));
            return;
         }
         if(class_23.method_375)
         {
            var_2602 = true;
            var_2108 = param1;
            var_1935 = param2;
         }
      }
      
      public static function method_1387(param1:Point) : void
      {
         if(class_23.method_27 != null)
         {
            class_23.method_27.method_578(param1);
         }
         else if(!class_105.method_102() && class_97.Count == 0 && !method_883() && class_28.method_30 && !BASE.var_471.value && var_270 == null && !class_105.method_189())
         {
            method_182(param1);
         }
      }
      
      private static function method_5693(param1:Point = null, param2:C_Platoon = null) : void
      {
         TransitionLogger.start(class_18.const_1404);
         Units.Deselect();
         if(!method_1064())
         {
            POPUPS.method_1751();
            return;
         }
         AudioController.instance.method_32(class_2.method_7(-1820310627));
         if(param1 || param2)
         {
            class_23.class_995(null);
            if(param2)
            {
               class_23.method_1469(param2);
            }
            else
            {
               class_23.method_1936(param1);
            }
         }
         method_4114();
         var_2602 = false;
         var_2108 = null;
         var_1935 = null;
      }
      
      private static function method_3620() : void
      {
         var_2866 = false;
         var_1316 = new class_244();
         class_31.var_62.addChild(var_1316);
         class_135.to(var_1316,0.5,{
            "process":1,
            "onComplete":method_7100,
            class_2.method_7(-1820296257):true
         });
         method_4327();
      }
      
      private static function method_4114() : void
      {
         var_4127 = true;
         if(var_2866)
         {
            method_1460();
         }
         var_4030.dispatch();
      }
      
      private static function method_7100() : void
      {
         var_2866 = true;
         if(var_4127)
         {
            method_1460();
         }
      }
      
      private static function method_1460() : void
      {
         method_4160();
         var _loc1_:class_172 = new class_172();
         _loc1_.method_93 = class_68.name_1.id;
         class_105.method_302(class_105.const_182,_loc1_);
      }
      
      private static function method_4160() : void
      {
         if(var_1316 != null)
         {
            class_31.var_62.removeChild(var_1316);
            var_1316 = null;
         }
         method_2949();
      }
      
      private static function method_4327() : void
      {
         var_1443 = new class_224();
         var_1443.method_310 = class_43.getString(class_2.method_7(-1820299230));
         class_31.var_62.addChild(var_1443);
      }
      
      private static function method_2949() : void
      {
         if(var_1443 != null)
         {
            class_31.var_62.removeChild(var_1443);
            var_1443 = null;
         }
      }
      
      public static function method_39(param1:int, param2:int = 0, param3:Boolean = true, param4:Boolean = false, param5:Boolean = false) : String
      {
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         if(param1 < 0)
         {
            var param1:* = 0;
         }
         if(!param5 && param1 >= 86400)
         {
            _loc6_ = Math.floor(param1 / 86400);
            param1 = param1 - _loc6_ * 86400;
         }
         if(param1 >= 3600)
         {
            _loc7_ = Math.floor(param1 / 3600);
            param1 = param1 - _loc7_ * 3600;
         }
         if(param1 >= 60)
         {
            _loc8_ = Math.floor(param1 / 60);
            param1 = param1 - _loc8_ * 60;
         }
         _loc9_ = param1;
         var _loc11_:* = "";
         if(_loc6_)
         {
            switch(param2)
            {
               case const_136:
                  if(_loc6_ != 1)
                  {
                     _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820297631),{class_2.method_7(-1820301209):_loc6_});
                     break;
                  }
                  _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820311203),{class_2.method_7(-1820301209):_loc6_});
                  break;
               case const_402:
               case const_285:
                  if(_loc6_ < 10)
                  {
                     _loc11_ = _loc11_ + "0";
                  }
                  _loc11_ = _loc11_ + ("" + _loc6_);
                  break;
               case const_19:
                  _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820300018),{class_2.method_7(-1820301209):_loc6_});
                  break;
               case const_446:
               case const_140:
                  _loc10_++;
                  _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820300018),{class_2.method_7(-1820301209):_loc6_});
                  break;
            }
         }
         if(_loc7_ || _loc6_)
         {
            switch(param2)
            {
               case const_136:
                  if(_loc7_ != 1)
                  {
                     _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820299379),{class_2.method_7(-1820301310):_loc7_});
                     break;
                  }
                  _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820299636),{class_2.method_7(-1820301310):_loc7_});
                  break;
               case const_402:
                  _loc11_ = _loc11_ + " ";
                  if(_loc6_ > 0)
                  {
                     _loc11_ = _loc11_ + ": ";
                  }
                  if(_loc7_ < 10)
                  {
                     _loc11_ = _loc11_ + "0";
                  }
                  _loc11_ = _loc11_ + _loc7_;
                  break;
               case const_285:
                  if(_loc6_ > 0)
                  {
                     _loc11_ = _loc11_ + ":";
                  }
                  if(_loc7_ < 10)
                  {
                     _loc11_ = _loc11_ + "0";
                  }
                  _loc11_ = _loc11_ + _loc7_;
                  break;
               case const_19:
                  _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820296897),{class_2.method_7(-1820301310):_loc7_});
                  break;
               case const_446:
                  if(_loc6_ <= 0)
                  {
                     _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820296897),{class_2.method_7(-1820301310):_loc7_});
                     break;
                  }
                  break;
               case const_140:
                  0 < 2;
                  if(_loc7_)
                  {
                     _loc10_++;
                     _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820296897),{class_2.method_7(-1820301310):_loc7_});
                     break;
                  }
                  break;
            }
         }
         if(_loc8_ || _loc7_ || _loc6_)
         {
            switch(param2)
            {
               case const_136:
                  if(_loc8_ != 1)
                  {
                     _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820301095),{class_2.method_7(-1820298200):_loc8_});
                     break;
                  }
                  _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820308294),{class_2.method_7(-1820298200):_loc8_});
                  break;
               case const_402:
                  _loc11_ = _loc11_ + " ";
                  if(_loc6_ || _loc7_)
                  {
                     _loc11_ = _loc11_ + ": ";
                  }
                  if(_loc8_ < 10)
                  {
                     _loc11_ = _loc11_ + "0";
                  }
                  _loc11_ = _loc11_ + _loc8_;
                  break;
               case const_285:
                  if(_loc6_ || _loc7_)
                  {
                     _loc11_ = _loc11_ + ":";
                  }
                  if(_loc8_ < 10)
                  {
                     _loc11_ = _loc11_ + "0";
                  }
                  _loc11_ = _loc11_ + _loc8_;
                  break;
               case const_19:
                  _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820300834),{class_2.method_7(-1820298200):_loc8_});
                  break;
               case const_446:
                  if(_loc6_ <= 0 && _loc7_ <= 0)
                  {
                     _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820300834),{class_2.method_7(-1820298200):_loc8_});
                     break;
                  }
                  break;
               case const_140:
                  0 < 2;
                  if(_loc8_)
                  {
                     _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820300834),{class_2.method_7(-1820298200):_loc8_});
                     _loc10_++;
                     break;
                  }
                  break;
            }
         }
         if(_loc6_ == 0 && param3 || _loc6_ == 0 && _loc7_ == 0 && param4 || _loc11_.length == 0)
         {
            switch(param2)
            {
               case const_136:
               case const_19:
                  _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820298219),{class_2.method_7(-1820296860):method_3821(_loc9_)});
                  break;
               case const_402:
                  _loc11_ = _loc11_ + " ";
                  if(_loc6_ || _loc7_ || _loc8_)
                  {
                     _loc11_ = _loc11_ + ": ";
                  }
                  else
                  {
                     _loc11_ = _loc11_ + class_2.method_7(-1820301182);
                  }
                  if(_loc9_ < 10)
                  {
                     _loc11_ = _loc11_ + "0";
                  }
                  _loc11_ = _loc11_ + _loc9_;
                  break;
               case const_285:
                  if(_loc6_ || _loc7_ || _loc8_)
                  {
                     _loc11_ = _loc11_ + ":";
                  }
                  else
                  {
                     _loc11_ = _loc11_ + class_2.method_7(-1820303171);
                  }
                  if(_loc9_ < 10)
                  {
                     _loc11_ = _loc11_ + "0";
                  }
                  _loc11_ = _loc11_ + _loc9_;
                  break;
               case const_446:
                  if(_loc6_ <= 0 && _loc7_ <= 0 && _loc8_ <= 0)
                  {
                     if(!param3)
                     {
                        _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820308134));
                        break;
                     }
                     _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820298219),{class_2.method_7(-1820296860):_loc9_});
                     break;
                  }
                  break;
               case const_140:
                  if(!param3)
                  {
                     _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820308134));
                  }
                  else
                  {
                     _loc11_ = _loc11_ + class_43.getString(class_2.method_7(-1820298219),{class_2.method_7(-1820296860):_loc9_});
                  }
                  _loc10_++;
                  break;
            }
         }
         var _loc12_:int = _loc11_.length;
         if(_loc12_ > 0)
         {
            if(_loc11_.charAt(_loc12_ - 1) == " ")
            {
               _loc11_ = _loc11_.substr(0,_loc12_ - 1);
            }
         }
         return _loc11_;
      }
      
      public static function method_74(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         if(!method_520)
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_HALT,param2 + " | " + new Error().getStackTrace(),param3);
            method_1506(class_2.method_7(-1820307707),param2);
            method_3447(param1);
         }
      }
      
      private static function method_3447(param1:int) : void
      {
         var errorCode:int = param1;
         var callReload:Function = function():void
         {
            class_31.method_548("GLOBAL::showErrorPopup");
         };
         var errorMessage:String = class_43.getString(class_2.method_7(-1820310480)) + "\n" + class_43.getString(const_4365,{
            "code":errorCode,
            "message":class_9.method_7086(errorCode)
         });
         class_97.Show(new class_192(class_43.getString(class_2.method_7(-1820309017)),errorMessage,false,class_43.getString(class_2.method_7(-1820302674)),callReload,class_102.const_16),true);
      }
      
      public static function method_548(param1:String = "") : void
      {
         class_31.method_1258(var_350);
         FrameworkLogger.Log(FrameworkLogger.KEY_RELOAD,param1);
         class_31.method_215(class_2.method_7(-1820295454));
      }
      
      public static function method_35(param1:Number, param2:Boolean = false, param3:Boolean = false) : String
      {
         var _loc8_:* = NaN;
         var _loc11_:String = null;
         var _loc4_:Number = param1;
         var _loc5_:* = false;
         if(_loc4_ < 0)
         {
            _loc5_ = true;
            _loc4_ = Math.abs(_loc4_);
         }
         _loc4_ = Math.floor(_loc4_);
         var _loc6_:String = _loc4_.toString();
         var _loc7_:Array = new Array();
         var _loc9_:int = _loc6_.length;
         while(_loc9_ > 0)
         {
            _loc8_ = Math.max(_loc9_ - 3,0);
            _loc7_.unshift(_loc6_.slice(_loc8_,_loc9_));
            _loc9_ = _loc8_;
         }
         var _loc10_:* = "";
         if(param2 && param1 > class_31.const_20.Get())
         {
            _loc10_ = _loc7_.slice(0,-1).join(",");
            if(param3 && _loc4_ % 1000 != 0)
            {
               _loc11_ = _loc7_[_loc7_.length - 1];
               if(_loc11_ != "0")
               {
                  _loc10_ = _loc10_ + ("." + _loc11_.substr(0,1));
               }
            }
            _loc10_ = _loc10_ + "k";
         }
         else
         {
            _loc10_ = _loc7_.join(",");
         }
         if(_loc5_)
         {
            _loc10_ = "-" + _loc10_;
         }
         return _loc10_;
      }
      
      public static function method_3821(param1:int) : String
      {
         if(param1 < 10)
         {
            return "0" + param1;
         }
         return param1.toString();
      }
      
      public static function method_215(param1:String, param2:Array = null, param3:Boolean = true) : void
      {
         if(param3)
         {
            method_454();
         }
         var_2728.method_7477(param1,param2,param3);
      }
      
      public static function method_781(param1:String, param2:Object, param3:Function, param4:Boolean = true, param5:int = 10000, param6:Function = null) : void
      {
         if(param4)
         {
            method_454();
         }
         var_2728.method_6245(param1,param2,param3,param4,param5,param6);
      }
      
      public static function method_2518(param1:int = 0) : void
      {
         method_215(class_2.method_7(-1820311231),[param1]);
      }
      
      public static function get method_115() : int
      {
         var _loc1_:Number = Math.ceil((760 - var_62.stage.stageWidth) * 0.5);
         return _loc1_ == int(_loc1_)?_loc1_:int(_loc1_ + 1);
      }
      
      public static function get method_87() : int
      {
         var _loc1_:Number = Math.ceil((750 - var_62.stage.stageHeight) * 0.5);
         return _loc1_ == int(_loc1_)?_loc1_:int(_loc1_ + 1);
      }
      
      public static function get method_57() : int
      {
         return var_62.stage.stageWidth;
      }
      
      public static function get method_110() : int
      {
         return var_62.stage.stageHeight;
      }
      
      public static function get method_8106() : int
      {
         return method_87 + (UI.var_147 != null?20:0) + (UI.var_309 != null?UI.var_309.height:0);
      }
      
      public static function get method_587() : int
      {
         return var_62.stage.stageHeight - 150 - (class_28.method_30?0:100);
      }
      
      public static function get method_730() : int
      {
         var _loc1_:int = var_62.stage.stageHeight;
         if(var_62.stage.stageWidth <= 750)
         {
            _loc1_ = _loc1_ - 150;
         }
         if(!class_28.method_30)
         {
            _loc1_ = _loc1_ - 100;
         }
         return _loc1_;
      }
      
      public static function method_4320() : void
      {
         if(!BASE.method_52())
         {
            if(Math.abs(var_62.mouseX - var_2901.x) > 50 || var_1538 == 0 || method_3703())
            {
               var_2901 = new Point(var_62.mouseX,var_62.mouseY);
               var_1538 = method_28();
            }
            else if(method_28() - var_1538 > class_66.clientTimeout)
            {
               class_23.method_2380();
               POPUPS.showAFKPopup();
            }
         }
      }
      
      public static function method_2929(param1:Function) : void
      {
         if(var_475.length == 0)
         {
            param1();
         }
         else
         {
            var_1418 = param1;
         }
      }
      
      public static function method_883() : Boolean
      {
         return var_475.length > 0;
      }
      
      public static function method_7367() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in var_475)
         {
            _loc1_.width = class_31.method_57;
            _loc1_.height = class_31.method_110;
            _loc1_.x = class_31.method_115;
            _loc1_.y = class_31.method_87;
         }
      }
      
      public static function method_1258(param1:Sprite = null, param2:Boolean = false, param3:Bitmap = null, param4:Function = null) : DisplayObject
      {
         var _loc5_:DisplayObject = null;
         if(!param1)
         {
            var param1:Sprite = class_31.var_1309;
         }
         if(param2 || param3)
         {
            _loc5_ = param1.addChild(new popup_bg3());
         }
         else
         {
            _loc5_ = param1.addChild(new popup_bg());
         }
         if(null == param4)
         {
            var param4:Function = class_97.method_488;
         }
         if(param3)
         {
            var_673 = param3;
            var_673.x = class_31.method_115 + (class_31.method_57 / 2 - var_673.width / 2);
            var_673.y = class_31.method_87 + (class_31.method_110 / 2 - var_673.height / 2);
            param1.addChild(var_673);
         }
         _loc5_.width = class_31.method_57;
         _loc5_.height = class_31.method_110;
         _loc5_.x = class_31.method_115;
         _loc5_.y = class_31.method_87;
         var_475.push(_loc5_);
         class_31.var_668.mouseChildren = false;
         class_31.var_103.mouseChildren = false;
         _loc5_.addEventListener(MouseEvent.CLICK,param4);
         return _loc5_;
      }
      
      public static function method_2330(param1:DisplayObject = null, param2:Function = null) : void
      {
         var _loc3_:* = 0;
         var _loc4_:Function = null;
         if(null == param2)
         {
            var param2:Function = class_97.method_488;
         }
         if(param1 == null)
         {
            var param1:DisplayObject = var_475[var_475.length - 1];
            _loc3_ = 0;
            while(_loc3_ < var_475.length)
            {
               if(var_475[_loc3_] && var_475[_loc3_] is popup_bg3)
               {
                  param1 = var_475[_loc3_];
                  break;
               }
               _loc3_++;
            }
         }
         if(param1 != null)
         {
            var_475.splice(var_475.indexOf(param1),1);
            param1.removeEventListener(MouseEvent.CLICK,param2);
            if(param1.parent)
            {
               param1.parent.removeChild(param1);
            }
            if(var_673)
            {
               if(var_673.parent)
               {
                  var_673.parent.removeChild(var_673);
               }
               var_673 = null;
            }
         }
         if(var_475.length == 0)
         {
            var_668.mouseChildren = true;
            var_103.mouseChildren = true;
            if(var_1418 != null)
            {
               _loc4_ = var_1418;
               var_1418 = null;
               _loc4_();
            }
         }
      }
      
      public static function method_882(param1:Number) : Number
      {
         var param1:Number = param1 % 360;
         if(param1 < 0)
         {
            param1 = param1 + 360;
         }
         return param1;
      }
      
      public static function method_598(param1:int, param2:int) : Number
      {
         if(param1 < 1 || param2 == class_158.const_83)
         {
            return 1;
         }
         if(param1 > BldgFoundation.const_986)
         {
            var param1:int = BldgFoundation.const_986;
         }
         return 1 - (param1 - 1) / 20;
      }
      
      public static function method_976(param1:String, param2:URLVariables = null, param3:Boolean = true, param4:Array = null) : void
      {
         var targetURL:String = null;
         var url:String = param1;
         var urlVars:URLVariables = param2;
         var inNewWindow:Boolean = param3;
         var logData:Array = param4;
         var targetVars:URLVariables = new URLVariables();
         var request:URLRequest = new URLRequest(url);
         var windowScope:String = class_2.method_7(-1820309260);
         if(url)
         {
            targetURL = url;
            method_454();
            if(urlVars)
            {
               request.data = urlVars;
            }
            if(inNewWindow)
            {
               windowScope = class_2.method_7(-1820309260);
            }
            else
            {
               windowScope = "_parent";
            }
            try
            {
               Logger.debug(class_2.method_7(-1820300883) + request.url + "?" + request.data);
               navigateToURL(request,windowScope);
               return;
            }
            catch(e:Error)
            {
               Logger.error(class_2.method_7(-1820298698));
               return;
            }
            return;
         }
         Logger.warn(class_2.method_7(-1820303010));
      }
      
      public static function method_5313() : void
      {
         if(var_350 != null)
         {
            return;
         }
         var_668 = new Sprite();
         var_668.mouseEnabled = false;
         var_103 = new Sprite();
         var_103.mouseEnabled = false;
         var_1309 = new Sprite();
         var_1309.mouseEnabled = false;
         var_2859 = new Sprite();
         var_2859.mouseEnabled = false;
         var_350 = new Sprite();
         var_350.mouseEnabled = false;
         var_62.addChild(var_668);
         var_62.addChild(var_103);
         var_62.addChild(var_1309);
         var_62.addChild(var_2859);
         var_62.addChild(var_350);
      }
      
      public static function method_2680() : Object
      {
         var _loc1_:String = Capabilities.version;
         var _loc2_:RegExp = new RegExp(class_2.method_7(-1820299715));
         var _loc3_:Object = _loc2_.exec(_loc1_);
         var _loc4_:Object = {};
         if(_loc3_ != null)
         {
            _loc4_ = {
               "input":_loc3_[0],
               "platform":String(_loc3_[1]),
               class_2.method_7(-1820295799):int(_loc3_[2]),
               class_2.method_7(-1820307472):int(_loc3_[3]),
               "build":int(_loc3_[4]),
               class_2.method_7(-1820307796):int(_loc3_[5])
            };
         }
         return _loc4_;
      }
      
      public static function method_3154() : Boolean
      {
         if(!var_1351)
         {
            return false;
         }
         var _loc1_:Object = method_2680();
         if(_loc1_.major > 11 || _loc1_.major == 11 && _loc1_.minor >= 3)
         {
            return true;
         }
         return false;
      }
      
      public static function method_6076(param1:int) : int
      {
         return param1 + class_31.method_57 * 0.5 - 380;
      }
      
      public static function method_6429(param1:int) : int
      {
         return param1 + class_31.method_110 * 0.5 - 375;
      }
      
      public static function method_8484(param1:int) : int
      {
         return param1 + 380 - class_31.method_57 * 0.5;
      }
      
      public static function method_7830(param1:int) : int
      {
         return param1 + 375 - class_31.method_110 * 0.5;
      }
      
      public static function method_330(param1:int) : String
      {
         if(param1 == class_206.const_244)
         {
            return method_1516();
         }
         return class_43.getString(const_1280[param1 - 1]);
      }
      
      public static function get method_818() : Boolean
      {
         return var_62.stage.displayState != StageDisplayState.NORMAL;
      }
      
      public static function method_454() : void
      {
         if(class_31.var_62.stage.displayState != StageDisplayState.NORMAL)
         {
            method_715(false,false);
         }
      }
      
      public static function method_1516(param1:Boolean = true) : String
      {
         return class_43.getString(class_2.method_7(-1820298375));
      }
      
      public static function method_1506(param1:String, param2:String) : void
      {
         method_454();
         method_1700(true,param2);
         class_106.method_1388();
         class_23.disconnect(class_2.method_7(-1820299873) + param1);
      }
      
      public static function method_5399() : void
      {
         var_2908 = class_66.method_5047();
         var_2642 = class_66.method_4811();
      }
      
      public static function method_200() : Boolean
      {
         return var_2908;
      }
      
      public static function method_1047() : Boolean
      {
         return var_2642;
      }
      
      public static function method_824() : Boolean
      {
         return var_1796 == class_11.const_954;
      }
      
      public static function method_8167() : Boolean
      {
         return var_1796 == class_11.const_1016;
      }
      
      public static function method_8065(param1:int) : String
      {
         switch(param1)
         {
            case class_11.const_954:
               return const_903;
            case class_11.const_1016:
               return const_923;
            default:
               return "";
         }
      }
      
      public static function method_8134(param1:String) : int
      {
         if(param1 != null)
         {
            switch(param1)
            {
               case const_903:
                  return class_11.const_954;
               case const_923:
                  return class_11.const_1016;
               default:
                  §§goto(addr14);
            }
         }
         return class_11.const_2599;
      }
      
      public static function method_5557(param1:class_64) : void
      {
         var _loc2_:int = var_1707.indexOf(param1);
         if(_loc2_ == -1)
         {
            var_1707.push(param1);
         }
      }
      
      public static function method_7981(param1:class_64) : void
      {
         var _loc2_:int = var_1707.indexOf(param1);
         if(_loc2_ >= 0)
         {
            var_1707.splice(_loc2_,1);
         }
      }
      
      public static function method_4437() : void
      {
         class_31.var_1538 = class_31.method_28();
      }
      
      public static function method_5767(param1:Function) : Boolean
      {
         if(false)
         {
            class_97.Show(new class_192(class_2.method_7(-1820296249),class_2.method_7(-1820302810),true,class_2.method_7(-1820299809),param1,class_102.const_16),true);
            return false;
         }
         true;
         if(class_63.const_2821)
         {
            class_97.Show(new class_192(class_2.method_7(-1820296249),class_2.method_7(-1820295286),true,class_2.method_7(-1820299809),param1,class_102.const_16),true);
            return false;
         }
         return true;
      }
      
      public static function method_6196() : void
      {
         if(!class_105.method_65())
         {
            AttackLogPopup.open();
         }
      }
      
      public static function get method_8092() : Boolean
      {
         return false;
      }
      
      public static function set method_829(param1:Boolean) : void
      {
         var_2693 = param1;
      }
      
      public static function get method_829() : Boolean
      {
         return var_2693;
      }
      
      public static function get method_6573() : Boolean
      {
         return true;
      }
   }
}
