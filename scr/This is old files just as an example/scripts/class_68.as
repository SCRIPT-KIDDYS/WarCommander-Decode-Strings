package
{
   import package_4.class_12;
   import org.osflash.signals.class_59;
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import com.cc.ui.UI;
   import package_94.class_1056;
   import package_91.*;
   import package_114.class_529;
   import package_5.TransitionLogger;
   import com.cc.logging.class_18;
   import package_47.class_208;
   import flash.utils.getTimer;
   import com.cc.utils.class_9;
   import flash.events.IOErrorEvent;
   import com.hurlant.math.BigInteger;
   import package_137.class_757;
   import package_35.class_419;
   import com.adverserealms.log.Logger;
   import com.kixeye.audio.class_1801;
   import flash.events.TimerEvent;
   import package_114.class_497;
   import flash.display.Sprite;
   import package_150.class_902;
   import package_150.class_1394;
   import package_2.class_8;
   import package_2.class_110;
   import package_39.class_576;
   import package_39.class_134;
   import package_40.class_135;
   import package_51.class_831;
   import flash.events.Event;
   import com.cc.utils.js_utils.WCJSON;
   import package_60.MercenaryManager;
   import flash.events.FocusEvent;
   import package_15.class_43;
   import package_203.SFSEvent;
   import package_131.class_660;
   import package_134.class_707;
   import com.cc.widget.class_665;
   import com.cc.widget.class_436;
   import com.cc.utils.class_44;
   import flash.utils.ByteArray;
   import package_165.class_1760;
   import package_33.class_106;
   import package_139.class_814;
   import package_99.Message;
   import flash.utils.Timer;
   import com.cc.units.Units;
   import package_211.class_1819;
   import com.cc.battle.class_118;
   import package_226.Type;
   import package_64.ImageCache;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import package_64.class_434;
   import flash.text.TextFormatAlign;
   import package_44.Promo_PlayNow;
   import package_131.class_1800;
   import com.cc.worldmap.class_25;
   import package_231.class_2099;
   import package_4.class_66;
   import package_48.class_701;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   import package_86.class_326;
   import package_52.class_762;
   import package_123.class_666;
   import com.cc.widget.class_681;
   import package_148.class_1383;
   import package_93.class_748;
   import package_148.class_1377;
   import package_148.class_1384;
   import package_148.class_1375;
   import package_96.class_1079;
   import package_148.class_1376;
   import package_148.class_1386;
   import package_148.class_1385;
   import package_148.class_1374;
   import package_102.class_453;
   import com.adobe.crypto.MD5;
   import package_17.class_55;
   import package_153.class_938;
   import package_19.*;
   import package_60.MissileManager;
   import package_31.class_97;
   import package_31.class_124;
   import package_184.class_1354;
   import com.cc.utils.class_703;
   import flash.display.MovieClip;
   import com.cc.units.class_166;
   import package_22.class_346;
   import package_2.class_178;
   import package_22.DataStorageCache;
   import package_37.class_864;
   import package_75.class_249;
   import package_70.class_238;
   import package_111.class_1423;
   import com.kixeye.net.proto.Action;
   import package_2.class_1055;
   import package_13.class_394;
   
   public class class_68 extends Object
   {
      
      private static const const_4774:Boolean = true;
      
      public static var name_1:class_12 = new class_12(const_4774);
      
      public static var var_1066:Array;
      
      public static var var_3199:int;
      
      private static var var_4854:int;
      
      private static var var_4268:int = 0;
      
      public static var var_1750:Object;
      
      public static var var_3684:class_59 = new class_59();
      
      private static var var_4026:Boolean;
       
      public function class_68()
      {
         super();
      }
      
      public static function name_57() : void
      {
         TransitionLogger.start(class_18.const_1402);
         var_4854 = getTimer();
         class_208.method_5786();
         if(class_31.const_138)
         {
            class_20.method_136(class_31.var_116 + class_2.method_7(-1820299358),[["version",class_31.var_1180]],method_4520,method_6241);
         }
         else
         {
            class_31.method_781(class_2.method_7(-1820310443),{"version":class_31.var_1180},method_6139,true,class_31.const_1414,method_6090);
         }
      }
      
      private static function method_4520(param1:Object) : void
      {
         TransitionLogger.stop(class_18.const_1402);
         if(param1.error == 0)
         {
            method_1001(param1);
         }
         else
         {
            class_31.method_74(class_9.const_2619,class_2.method_7(-1820296913) + param1.error);
         }
      }
      
      private static function method_6241(param1:IOErrorEvent) : void
      {
         Logger.error(class_2.method_7(-1820297556));
         class_31.method_2096();
         class_31.method_74(class_9.const_2851,class_2.method_7(-1820299912));
      }
      
      private static function method_6139(param1:Array = null) : void
      {
         var _loc2_:String = null;
         if(param1 && param1.length >= 1)
         {
            _loc2_ = param1[0] as String;
         }
         if(_loc2_)
         {
            method_4169(_loc2_);
         }
         else
         {
            Logger.error(class_2.method_7(-1820298717) + _loc2_ + class_2.method_7(-1820307805));
            FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820301577) + _loc2_ + class_2.method_7(-1820307805));
            method_1005();
         }
      }
      
      private static function method_6090() : void
      {
         Logger.error(class_2.method_7(-1820307942));
         FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820300959));
         method_1005();
      }
      
      private static function method_4169(param1:String) : void
      {
         var obj:Object = null;
         var result:String = param1;
         try
         {
            obj = WCJSON.decode(result);
         }
         catch(e:Error)
         {
            Logger.error(class_2.method_7(-1820298664) + result + class_2.method_7(-1820300238));
            FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820298963) + result + class_2.method_7(-1820300238));
            method_1005();
            return;
         }
         class_31.method_2096();
         if(obj.error == 0)
         {
            if(method_2166(result))
            {
               method_1001(obj);
            }
            else
            {
               Logger.error(class_2.method_7(-1820297940) + result);
               class_31.method_74(class_9.const_2167,class_2.method_7(-1820308419) + result,true);
            }
            var_1750 = obj.settings;
            name_1.var_3084 = obj.input_email;
         }
         else
         {
            Logger.error(class_2.method_7(-1820311294) + obj.error);
            class_31.method_74(class_9.const_2941,class_2.method_7(-1820295586) + obj.error,true);
         }
      }
      
      private static function method_1005() : void
      {
         FrameworkLogger.Log(class_2.method_7(-1820298581),class_2.method_7(-1820306694),true);
         class_20.method_136(class_31.var_116 + class_2.method_7(-1820299358),[["version",class_31.var_1180]],method_7274,method_5833);
      }
      
      private static function method_7274(param1:Object) : void
      {
         class_31.method_2096();
         if(param1.error == 0)
         {
            method_1001(param1);
         }
         else
         {
            Logger.error(class_2.method_7(-1820308656) + param1.error);
            class_31.method_74(class_9.const_2729,class_2.method_7(-1820295497) + param1.error,true);
         }
      }
      
      private static function method_5833(param1:IOErrorEvent) : void
      {
         var e:IOErrorEvent = param1;
         var callReload:Function = function():void
         {
            class_31.method_548("LOGIN::HandleLoadRest_Fail");
         };
         Logger.error(class_2.method_7(-1820300928));
         FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820302315));
         POPUPS.method_158(class_43.getString(class_2.method_7(-1820295626)),class_43.getString(class_2.method_7(-1820297471)),class_43.getString(class_2.method_7(-1820302674)),callReload,false);
         class_106.method_1388();
      }
      
      public static function method_1001(param1:Object) : void
      {
         if(param1.version != class_31.var_1180)
         {
            class_31.method_74(class_9.const_2973,class_2.method_7(-1820299331) + class_43.getString(class_2.method_7(-1820300736)));
         }
         else if(!var_4026)
         {
            var_4026 = true;
            class_31.method_2446(int(param1.currenttime));
            class_31.method_2043();
            name_1.id = param1.userid;
            TransitionLogger.playerId = name_1.id;
            name_1.session = class_31.var_2528.method_6041();
            name_1.method_285 = param1.username;
            name_1.method_889 = param1.last_name;
            name_1.var_318 = param1.pic_square;
            name_1.timePlayed = param1.timeplayed;
            name_1.var_3118 = param1.tzlk;
            name_1.email = param1.email;
            name_1.fbid = param1.fbid;
            class_31.var_5418 = param1.friendcount;
            class_31.var_1392 = param1.sessioncount;
            class_31.var_3210 = param1.addtime;
            class_31.var_5453 = param1.mapversion;
            class_31.var_5480 = param1.mailversion;
            class_31.var_4714 = param1.soundversion;
            class_31.var_5505 = param1.handbookversion;
            class_31.var_5219 = param1.languageversion;
            class_31.var_4384 = param1.tp_mode;
            class_31.var_4226 = param1.app_id;
            class_31.var_4275 = param1.tpid;
            class_31.var_4288 = param1.tp_vendor_id;
            class_31.var_4374 = param1.currency_url;
            class_31.var_4486 = param1.callback_url;
            if(param1.ncpCandidate == "1")
            {
               class_327.var_2800 = true;
            }
            Promo_PlayNow.method_266(int(param1.playnowstatus));
            var_1750 = param1.settings;
            name_1.var_3084 = param1.input_email;
            if(param1.proxy_email)
            {
               name_1.var_5404 = param1.proxy_email;
            }
            if(!param1.languageversion)
            {
               class_31.var_5219 = 8;
            }
            BASE.var_5317 = int(param1.isfan);
            method_3933(name_1.id);
            class_20.method_136(class_31.var_116 + class_2.method_7(-1820295267),[],method_6136,method_1953);
            class_208.method_7590();
            var_3684.dispatch();
         }
      }
      
      private static function method_6136(param1:Object) : void
      {
         if(param1)
         {
            if(param1.error)
            {
               FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820303192) + param1.error);
               return;
            }
            if(param1.friends)
            {
               class_25.method_7442(param1.friends as Array);
            }
         }
         else
         {
            method_1953();
         }
      }
      
      private static function method_1953(param1:IOErrorEvent = null) : void
      {
         FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820296563));
      }
      
      public static function method_8361(param1:class_326) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.connectionSuccess = param1.connectionSuccess;
         _loc2_.connectionType = param1.connectionType;
         _loc2_.connectionPort = param1.connectionPort;
         _loc2_.timeToConnect = param1.timeToConnect;
         _loc2_.pingSuccess = param1.pingSuccess;
         _loc2_.timeToPing = param1.timeToPing;
         FrameworkLogger.Log(class_2.method_7(-1820300321),WCJSON.encode(_loc2_));
      }
      
      public static function method_3933(param1:int) : void
      {
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc2_:String = param1.toString();
         var_1066 = [];
         while(0 < _loc2_.length)
         {
            var_1066.push(int(_loc2_.charAt(0)));
            _loc3_++;
         }
         var_3199 = 0;
         if(var_1066.length >= 3)
         {
            _loc4_ = int(var_1066[var_1066.length - 1] + var_1066[var_1066.length - 2] + var_1066[var_1066.length - 3]);
            _loc5_ = _loc4_.toString();
            var_3199 = int(_loc5_.substr(_loc5_.length - 1,1));
         }
      }
      
      public static function method_2166(param1:String) : Boolean
      {
         var _loc2_:Array = param1.split(class_2.method_7(-1820303114));
         var param1:* = _loc2_[0] + "}";
         var _loc3_:String = class_2.method_7(-1820308681) + _loc2_[1];
         var _loc4_:String = param1;
         var _loc5_:Object = WCJSON.decode(param1);
         var _loc6_:Object = WCJSON.decode(_loc3_);
         var _loc7_:String = MD5.hash(method_441() + _loc4_ + method_2299(_loc6_.hn));
         if(_loc7_ !== _loc6_.h)
         {
            return false;
         }
         return true;
      }
      
      public static function method_2299(param1:int) : int
      {
         return param1 * (param1 % 11);
      }
      
      public static function method_441() : String
      {
         return method_1409(class_2.method_7(-1820310475));
      }
      
      public static function method_1409(param1:String) : String
      {
         var _loc4_:String = null;
         var _loc2_:* = "";
         while(0 < param1.length)
         {
            _loc4_ = param1.substring(0,0 + 1);
            switch(_loc4_)
            {
               case "a":
                  _loc2_ = _loc2_ + "Y";
                  break;
               case "b":
                  _loc2_ = _loc2_ + "Z";
                  break;
               case "c":
                  _loc2_ = _loc2_ + "W";
                  break;
               case "d":
                  _loc2_ = _loc2_ + "X";
                  break;
               case "e":
                  _loc2_ = _loc2_ + "U";
                  break;
               case "f":
                  _loc2_ = _loc2_ + "V";
                  break;
               case "g":
                  _loc2_ = _loc2_ + "S";
                  break;
               case "h":
                  _loc2_ = _loc2_ + "T";
                  break;
               case "i":
                  _loc2_ = _loc2_ + "Q";
                  break;
               case "j":
                  _loc2_ = _loc2_ + "R";
                  break;
               case "k":
                  _loc2_ = _loc2_ + "O";
                  break;
               case "l":
                  _loc2_ = _loc2_ + "P";
                  break;
               case "m":
                  _loc2_ = _loc2_ + "M";
                  break;
               case "n":
                  _loc2_ = _loc2_ + "N";
                  break;
               case "o":
                  _loc2_ = _loc2_ + "K";
                  break;
               case "p":
                  _loc2_ = _loc2_ + "L";
                  break;
               case "q":
                  _loc2_ = _loc2_ + "I";
                  break;
               case "r":
                  _loc2_ = _loc2_ + "J";
                  break;
               case "s":
                  _loc2_ = _loc2_ + "G";
                  break;
               case "t":
                  _loc2_ = _loc2_ + "H";
                  break;
               case "u":
                  _loc2_ = _loc2_ + "E";
                  break;
               case "v":
                  _loc2_ = _loc2_ + "F";
                  break;
               case "w":
                  _loc2_ = _loc2_ + "C";
                  break;
               case "x":
                  _loc2_ = _loc2_ + "D";
                  break;
               case "y":
                  _loc2_ = _loc2_ + "A";
                  break;
               case "z":
                  _loc2_ = _loc2_ + "B";
                  break;
               case "A":
                  _loc2_ = _loc2_ + "y";
                  break;
               case "B":
                  _loc2_ = _loc2_ + "z";
                  break;
               case "C":
                  _loc2_ = _loc2_ + "w";
                  break;
               case "D":
                  _loc2_ = _loc2_ + "x";
                  break;
               case "E":
                  _loc2_ = _loc2_ + "u";
                  break;
               case "F":
                  _loc2_ = _loc2_ + "v";
                  break;
               case "G":
                  _loc2_ = _loc2_ + "s";
                  break;
               case "H":
                  _loc2_ = _loc2_ + "t";
                  break;
               case "I":
                  _loc2_ = _loc2_ + "q";
                  break;
               case "J":
                  _loc2_ = _loc2_ + "r";
                  break;
               case "K":
                  _loc2_ = _loc2_ + "o";
                  break;
               case "L":
                  _loc2_ = _loc2_ + "p";
                  break;
               case "M":
                  _loc2_ = _loc2_ + "m";
                  break;
               case "N":
                  _loc2_ = _loc2_ + "n";
                  break;
               case "O":
                  _loc2_ = _loc2_ + "k";
                  break;
               case "P":
                  _loc2_ = _loc2_ + "l";
                  break;
               case "Q":
                  _loc2_ = _loc2_ + "i";
                  break;
               case "R":
                  _loc2_ = _loc2_ + "j";
                  break;
               case "S":
                  _loc2_ = _loc2_ + "g";
                  break;
               case "T":
                  _loc2_ = _loc2_ + "h";
                  break;
               case "U":
                  _loc2_ = _loc2_ + "e";
                  break;
               case "V":
                  _loc2_ = _loc2_ + "f";
                  break;
               case "W":
                  _loc2_ = _loc2_ + "c";
                  break;
               case "X":
                  _loc2_ = _loc2_ + "d";
                  break;
               case "Y":
                  _loc2_ = _loc2_ + "a";
                  break;
               case "Z":
                  _loc2_ = _loc2_ + "b";
                  break;
               case "0":
                  _loc2_ = _loc2_ + "8";
                  break;
               case "1":
                  _loc2_ = _loc2_ + "9";
                  break;
               case "2":
                  _loc2_ = _loc2_ + "6";
                  break;
               case "3":
                  _loc2_ = _loc2_ + "7";
                  break;
               case "4":
                  _loc2_ = _loc2_ + "4";
                  break;
               case "5":
                  _loc2_ = _loc2_ + "5";
                  break;
               case "6":
                  _loc2_ = _loc2_ + "2";
                  break;
               case "7":
                  _loc2_ = _loc2_ + "3";
                  break;
               case "8":
                  _loc2_ = _loc2_ + "0";
                  break;
               case "9":
                  _loc2_ = _loc2_ + "1";
                  break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
   }
}
