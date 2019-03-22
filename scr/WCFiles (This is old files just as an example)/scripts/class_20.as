package
{
   import package_93.class_1477;
   import package_93.class_1060;
   import com.cc.build.C_Buildings;
   import com.cc.build.BuildingLevelData;
   import com.hurlant.math.BigInteger;
   import com.cc.utils.js_utils.WCJSON;
   import package_4.class_12;
   import com.cc.worldmap.class_146;
   import com.cc.worldmap.class_23;
   import com.cc.utils.class_44;
   import package_161.class_1476;
   import package_222.class_2083;
   import package_168.class_1170;
   import package_168.class_1766;
   import package_168.OperationHudTriggers;
   import package_27.json;
   import package_27.encodeType;
   import package_27.out;
   import com.kixeye.utils.class_339;
   import package_26.class_87;
   import package_4.class_66;
   import package_5.class_19;
   import package_118.class_524;
   import com.cc.tech.TechManager;
   import com.cc.widget.class_888;
   import com.cc.widget.class_693;
   import org.osmf.layout.VerticalAlign;
   import com.cc.widget.class_1792;
   import package_36.class_119;
   import com.hurlant.math.class_2073;
   import package_103.class_435;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import com.netease.protobuf.WireType;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   import flash.events.Event;
   import com.cc.utils.AudioController;
   import com.cc.units.class_166;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import com.netease.protobuf.fieldDescriptors.class_40;
   import package_200.class_2112;
   import package_200.class_2114;
   import com.cc.tech.class_405;
   import flash.events.MouseEvent;
   import package_13.class_390;
   import package_161.class_1066;
   import package_93.class_1065;
   import package_222.class_1964;
   import com.cc.units.C_Platoon;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import package_64.class_434;
   import com.cc.utils.class_89;
   import flash.text.TextFormatAlign;
   import flash.text.AntiAliasType;
   import package_99.Message;
   import package_111.class_2062;
   import package_111.class_1178;
   import package_111.class_1162;
   import package_111.class_1154;
   import flash.net.URLLoader;
   import com.cc.utils.SecNum;
   import package_40.class_135;
   import flash.display.BitmapData;
   import com.cc.widget.class_687;
   import package_137.class_1166;
   import package_165.class_1760;
   import flash.net.URLRequest;
   import package_23.Time;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequestMethod;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import package_34.class_107;
   import package_198.*;
   import package_2.class_966;
   import com.kixeye.net.proto.class_83;
   import package_2.class_965;
   import flash.net.URLVariables;
   import com.smartfoxserver.v2.class_1753;
   import package_202.class_1747;
   import package_126.class_1240;
   import com.adobe.crypto.MD5;
   import package_89.class_354;
   import com.cc.worldmap.class_25;
   import package_96.class_1079;
   import com.cc.widget.class_259;
   import package_140.class_818;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   import package_68.AttackLogPopup;
   import package_31.class_192;
   import package_15.class_43;
   import com.cc.widget.class_148;
   import package_31.class_97;
   import flash.utils.ByteArray;
   import flash.filters.BlurFilter;
   import flash.display.BlendMode;
   import flash.geom.ColorTransform;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import com.cc.units.Units;
   import com.cc.rendering.class_451;
   import package_38.class_539;
   import package_111.class_1419;
   import package_11.stage;
   import com.cc.units.class_164;
   import com.cc.widget.class_740;
   import package_64.ImageCache;
   import com.cc.widget.class_1867;
   import com.cc.widget.class_685;
   import org.osmf.layout.HorizontalAlign;
   import com.cc.worldmap.class_458;
   import package_4.class_319;
   import com.cc.widget.class_919;
   import com.cc.buffs.BuffManager;
   import package_20.class_132;
   import package_11.class_28;
   import package_5.TransitionLogger;
   import com.cc.utils.ServerResponseValidator;
   import package_28.class_88;
   import com.adverserealms.log.Logger;
   import com.cc.utils.class_9;
   import package_31.class_101;
   import package_223.class_1993;
   
   public class class_20 extends Object
   {
      
      private static var var_2872:int = 0;
      
      private static var var_4955:Boolean = false;
       
      public var name_33:String;
      
      private var var_5380:String = "";
      
      private var var_420:int;
      
      private var var_2510:String;
      
      private var var_516:URLLoader;
      
      private var var_1497:Function;
      
      private var var_2173:Function;
      
      private var var_3964:Boolean = false;
      
      private var var_4537:Boolean;
      
      private var var_3646:Boolean = false;
      
      private var var_1531:String = "";
      
      private var var_4854:Number = 0;
      
      private var var_4633:SecNum;
      
      public function class_20()
      {
         super();
      }
      
      public static function method_409(param1:String) : Object
      {
         var out:Object = null;
         var string:String = param1;
         try
         {
            out = WCJSON.decode(string);
            return out;
         }
         catch(error:Error)
         {
            return {};
         }
         return {};
      }
      
      public static function method_136(param1:String, param2:Array = null, param3:Function = null, param4:Function = null) : void
      {
         method_575(param1,param2,param3,param4);
      }
      
      public static function method_575(param1:String, param2:Array = null, param3:Function = null, param4:Function = null, param5:Boolean = true, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Boolean = false, param10:Boolean = false) : void
      {
         var _loc11_:class_20 = new class_20();
         if(class_66.method_7354 && param1 != null && param1.length > 0)
         {
            _loc11_.var_3646 = true;
            _loc11_.var_1531 = param1;
            class_19.method_5407(_loc11_.var_1531);
         }
         else
         {
            _loc11_.var_3646 = false;
         }
         _loc11_.method_4707(param1,param2,param3,param4,param5,param6,param7,param8,param10);
      }
      
      public static function method_8270(param1:Array) : Object
      {
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc2_:Object = {};
         var _loc3_:String = method_4108(param1);
         var _loc4_:Array = _loc3_.split("&");
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = _loc5_.split("=");
            _loc2_[_loc6_[0]] = _loc6_[1];
         }
         return _loc2_;
      }
      
      public static function method_4108(param1:Array) : String
      {
         return new class_20().method_4241(param1)[1];
      }
      
      public static function method_441() : String
      {
         return method_1409(class_2.method_7(-1820310475));
      }
      
      private static function method_1409(param1:String) : String
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
      
      public function method_7885(param1:Object) : String
      {
         var out:String = null;
         var object:Object = param1;
         try
         {
            out = WCJSON.encode(object);
            return out;
         }
         catch(error:Error)
         {
            return "";
         }
         return "";
      }
      
      private function method_4707(param1:String, param2:Array = null, param3:Function = null, param4:Function = null, param5:Boolean = true, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Boolean = false) : void
      {
         var _loc10_:Function = null;
         var _loc11_:URLRequest = null;
         var _loc13_:* = 0;
         var _loc14_:uint = 0;
         var _loc15_:uint = 0;
         var _loc16_:uint = 0;
         if(class_66.https)
         {
            _loc13_ = §§dup(param1.indexOf(class_2.method_7(-1820297680)));
            if(param1.indexOf(class_2.method_7(-1820297680)) != -1)
            {
               var param1:String = class_2.method_7(-1820302548) + param1.substring(5);
            }
         }
         if(param7)
         {
            _loc10_ = this.method_7509;
         }
         else
         {
            _loc10_ = this.method_2818;
         }
         this.var_1497 = param3;
         this.var_2173 = param4;
         this.var_3964 = param6;
         this.var_4537 = param8;
         this.var_4854 = Time.method_2607();
         if(var_2872++ > 2)
         {
            _loc14_ = §§dup(class_31.var_5297);
            _loc15_ = §§dup((class_31.var_5297 + 7) * 1234 % 9973);
            _loc16_ = ((class_31.var_5297 + 7) * 1234 % 9973 + 7) * 1234 % 9973;
            if(class_31.var_4946 != _loc16_)
            {
               return;
            }
         }
         if(param5 && class_31.var_2528 != null)
         {
            param1 = param1 + class_2.method_7(-1820296482) + class_31.method_28() + "&" + class_31.var_2528.method_5888();
         }
         this.var_2510 = param1;
         var _loc12_:Array = this.method_4241(param2,param7);
         if(param1.indexOf("?") == -1)
         {
            param1 = param1 + "?";
         }
         else if(param1.charAt(param1.length - 1) != "&")
         {
            param1 = param1 + "&";
         }
         this.var_4633 = new SecNum(Math.random() * 1000000);
         param1 = param1 + (class_2.method_7(-1820301874) + this.var_4633.Get() + "&");
         if(param9)
         {
            param1 = param1 + _loc12_[0];
         }
         _loc11_ = new URLRequest(param1);
         this.var_5380 = _loc12_[0];
         _loc11_.data = _loc12_[1];
         _loc11_.method = URLRequestMethod.POST;
         this.var_516 = new URLLoader(_loc11_);
         this.var_516.addEventListener(Event.COMPLETE,_loc10_);
         this.var_516.addEventListener(IOErrorEvent.IO_ERROR,this.method_3588);
         this.var_516.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.method_321);
         this.var_516.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.method_1552);
      }
      
      private function method_4241(param1:Array, param2:Boolean = false) : Array
      {
         var _loc8_:* = 0;
         var _loc9_:Array = null;
         var _loc3_:* = "";
         var _loc4_:* = "";
         var _loc5_:URLVariables = new URLVariables();
         if(param1 != null && param1.length > 0)
         {
            _loc8_ = 0;
            while(_loc8_ < param1.length)
            {
               _loc9_ = param1[_loc8_];
               _loc4_ = _loc4_ + _loc9_[1];
               _loc5_[_loc9_[0]] = _loc9_[1];
               _loc3_ = _loc3_ + ("&" + param1[_loc8_][0] + "=" + param1[_loc8_][1]);
               _loc8_++;
            }
         }
         var _loc6_:int = int(Math.random() * 9999999);
         var _loc7_:String = this.method_3007(_loc4_,_loc6_,param2);
         _loc3_ = _loc3_ + (class_2.method_7(-1820300666) + _loc7_);
         _loc3_ = _loc3_ + (class_2.method_7(-1820310928) + _loc6_);
         _loc5_.hn = _loc6_;
         _loc5_.h = _loc7_;
         return [_loc3_,_loc5_];
      }
      
      private function method_3007(param1:String, param2:int, param3:Boolean = false) : String
      {
         var _loc4_:String = param3?this.method_3678():method_441();
         return MD5.hash(_loc4_ + param1 + this.method_2299(param2));
      }
      
      private function method_3678() : String
      {
         return method_1409(class_2.method_7(-1820300469));
      }
      
      private function method_2299(param1:int) : int
      {
         return param1 * (param1 % 11);
      }
      
      private function method_321(param1:HTTPStatusEvent) : void
      {
         this.var_420 = param1.status;
      }
      
      private function method_3588(param1:IOErrorEvent) : void
      {
         var _loc2_:String = param1.text;
         if(param1.target != null && param1.target.data)
         {
            _loc2_ = _loc2_ + (class_2.method_7(-1820310428) + param1.target.data);
         }
         if(this.var_4537)
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820300466) + _loc2_);
         }
         if(this.var_2173 != null)
         {
            this.var_2173(param1);
         }
         this.method_1619();
      }
      
      private function method_1552(param1:SecurityErrorEvent) : void
      {
         var _loc2_:String = param1.text;
         if(param1.target != null && param1.target.data)
         {
            _loc2_ = _loc2_ + (class_2.method_7(-1820310428) + param1.target.data);
         }
         if(this.var_4537)
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820297888) + _loc2_);
         }
         if(this.var_2173 != null)
         {
            this.var_2173(param1);
         }
         this.method_1619();
      }
      
      public function method_1619() : void
      {
         this.var_1497 = null;
         this.var_2173 = null;
         this.var_516.removeEventListener(Event.COMPLETE,this.method_2818);
         this.var_516.removeEventListener(IOErrorEvent.IO_ERROR,this.method_3588);
         this.var_516.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.method_321);
         this.var_516.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.method_1552);
         this.var_516 = null;
      }
      
      private function method_7509(param1:Event) : void
      {
         if(this.var_3646 && this.var_1531 != null && this.var_1531.length > 0)
         {
            class_19.method_3008(this.var_1531);
         }
         if(this.var_1497 === null)
         {
            return;
         }
         var _loc2_:String = this.var_516.data;
         if(this.var_3964)
         {
            this.var_1497(method_409(_loc2_));
            return;
         }
         var _loc3_:Array = _loc2_.split(class_2.method_7(-1820303114));
         var _loc4_:String = class_2.method_7(-1820308681) + _loc3_.pop();
         _loc2_ = _loc3_.join(class_2.method_7(-1820303114)) + "}";
         var _loc5_:String = _loc2_;
         var _loc6_:Object = method_409(_loc2_);
         var _loc7_:Object = method_409(_loc4_);
         var _loc8_:String = MD5.hash(this.method_3678() + _loc5_ + this.method_2299(_loc7_.hn));
         if(_loc8_ == _loc7_.h)
         {
            this.var_1497(_loc6_);
         }
         this.method_1619();
      }
      
      private function method_2818(param1:Event) : void
      {
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         if(this.var_3646 && this.var_1531 != null && this.var_1531.length > 0)
         {
            class_19.method_3008(this.var_1531);
            _loc9_ = Time.method_2607() - this.var_4854;
            if(_loc9_ > 0)
            {
               _loc10_ = this.var_516.bytesLoaded / _loc9_;
               TransitionLogger.method_1293(class_2.method_7(-1820301154),_loc10_);
            }
         }
         if(this.var_1497 === null)
         {
            return;
         }
         var _loc2_:String = ServerResponseValidator.method_1347(this.var_516.data,this.var_2510,this.var_4633);
         if(this.var_3964)
         {
            this.var_1497(method_409(_loc2_));
            return;
         }
         var _loc3_:Array = _loc2_.split(class_2.method_7(-1820303114));
         var _loc4_:String = class_2.method_7(-1820308681) + _loc3_.pop();
         _loc2_ = _loc3_.join(class_2.method_7(-1820303114)) + "}";
         var _loc5_:String = _loc2_;
         var _loc6_:Object = method_409(_loc2_);
         var _loc7_:Object = method_409(_loc4_);
         var _loc8_:String = MD5.hash(method_441() + _loc5_ + this.method_2299(_loc7_.hn));
         if(_loc6_.hasOwnProperty(class_2.method_7(-1820297579)))
         {
            class_88.instance.method_6152(class_31.method_28(),int(_loc6_[class_2.method_7(-1820297579)]),this.var_2510);
         }
         if(_loc8_ !== _loc7_.h)
         {
            if(class_31.var_782)
            {
               class_31.method_548(class_2.method_7(-1820311070) + this.var_2510 + " -- " + _loc5_ + " -- " + this.var_420 + " --");
            }
            else
            {
               if(_loc7_.h)
               {
                  Logger.debug(class_2.method_7(-1820308349) + _loc8_ + class_2.method_7(-1820295302) + _loc7_.h);
               }
               else
               {
                  Logger.debug(class_2.method_7(-1820310466) + _loc8_ + class_2.method_7(-1820306918) + this.var_516.data);
               }
               Logger.debug(this.var_516.data);
               class_31.method_74(class_9.const_2815,class_2.method_7(-1820311070) + this.var_2510 + " -- " + _loc5_ + " -- " + this.var_420 + " --");
            }
         }
         else
         {
            this.var_1497(_loc6_);
         }
         this.method_1619();
      }
   }
}
