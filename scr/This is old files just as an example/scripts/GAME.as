package
{
   import flash.display.Sprite;
   import package_12.class_30;
   import flash.geom.Point;
   import com.cc.worldmap.class_25;
   import package_4.class_12;
   import com.cc.worldmap.class_23;
   import package_13.class_33;
   import package_2.class_8;
   import flash.events.Event;
   import package_3.class_10;
   import com.cc.testing.class_21;
   import package_10.class_27;
   import package_1.class_7;
   import flash.events.UncaughtErrorEvent;
   import flash.events.ErrorEvent;
   import flash.events.KeyboardEvent;
   import package_5.class_14;
   import package_7.class_29;
   import com.cc.utils.class_22;
   import com.cc.tests.class_13;
   import com.kixeye.net.proto.class_11;
   import com.cc.utils.js_utils.WCJSON;
   import package_8.StringUtil;
   import package_7.class_17;
   import com.adverserealms.log.Logger;
   import package_5.class_19;
   import package_5.TransitionLogger;
   import package_5.class_15;
   import flash.system.Security;
   import package_11.class_28;
   import package_4.class_24;
   import flash.display.StageScaleMode;
   import com.cc.ui.UI;
   import flash.external.ExternalInterface;
   import com.cc.utils.class_9;
   import com.cc.logging.class_18;
   
   public class GAME extends Sprite
   {
      
      public static const const_240:int = 760;
      
      public static const const_251:int = 750;
      
      private static const const_5382:uint = 1000;
      
      private static var _instance:GAME;
      
      public static var var_4976:Boolean;
      
      private static var var_2308:Object;
       
      private var var_3485:class_10;
      
      private var var_5553:class_21;
      
      private var var_3683:class_27;
      
      public function GAME()
      {
         super();
         _instance = this;
         TransitionLogger.start(class_18.const_1353);
         this.loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.method_6863);
      }
      
      public static function method_8363() : void
      {
         if(_instance == null)
         {
            return;
         }
         if(_instance.var_3485 != null)
         {
            _instance.var_3485.start();
         }
      }
      
      public static function method_8188() : void
      {
         if(_instance == null)
         {
            return;
         }
         if(_instance.var_3485 != null)
         {
            _instance.var_3485.stop();
         }
      }
      
      public static function method_8460() : void
      {
      }
      
      public static function method_8303() : void
      {
      }
      
      private static function handleRelocate(param1:Object) : void
      {
         var _loc2_:String = param1.location as String;
         var _loc3_:Array = _loc2_.split(",");
         class_30.method_3825(param1.userid,new Point(Number(_loc3_[0]),Number(_loc3_[1])),param1.alias,param1.bigPic,param1.sector);
      }
      
      private static function handlePanToBase(param1:int) : void
      {
         var _loc2_:class_12 = class_25.method_126(param1);
         if(_loc2_ && _loc2_.method_59)
         {
            class_31.method_1387(_loc2_.method_59);
         }
         else
         {
            class_23.method_21.addEventListener(class_33.const_2,method_3629);
            class_23.method_21.getPlayerBaseInfo(String(param1));
         }
      }
      
      private static function method_3629(param1:class_33) : void
      {
         var _loc2_:class_8 = null;
         if(param1.base && param1.base.mapEntity)
         {
            _loc2_ = param1.base.mapEntity;
            if(_loc2_.hasX && _loc2_.hasY)
            {
               class_31.method_1387(new Point(_loc2_.x,_loc2_.y));
            }
         }
         class_23.method_21.removeEventListener(class_33.const_2,method_3629);
      }
      
      public static function method_4769() : void
      {
         if(var_2308 != null)
         {
            var_2308.Hide();
            var_2308 = null;
         }
      }
      
      public static function method_6467() : void
      {
         _instance.addEventListener(Event.ENTER_FRAME,class_31.method_5988);
      }
      
      private function method_8191() : void
      {
      }
      
      private function method_8389(param1:class_7) : void
      {
         FrameworkLogger.Log(FrameworkLogger.KEY_KIX_SERVICES_LIB_ERROR,param1.message);
      }
      
      private function method_4321(param1:Event) : void
      {
         this.removeEventListener(Event.ADDED_TO_STAGE,this.method_4321);
      }
      
      private function method_6863(param1:UncaughtErrorEvent) : void
      {
         var _loc3_:Error = null;
         var _loc2_:String = class_2.method_7(-1820308147);
         if(param1.error is Error)
         {
            _loc3_ = param1.error as Error;
            if(_loc3_.errorID)
            {
               _loc2_ = _loc2_ + (_loc3_.errorID + ", ");
            }
            _loc2_ = _loc2_ + (_loc3_.message + " \n" + _loc3_.getStackTrace());
         }
         else if(param1.error is ErrorEvent)
         {
            _loc2_ = _loc2_ + ErrorEvent(param1.error).text;
         }
         else
         {
            _loc2_ = _loc2_ + param1.error.toString();
         }
      }
      
      private function method_3921(param1:KeyboardEvent) : void
      {
      }
      
      public function Data(param1:Object, param2:Boolean = false) : void
      {
         var toNumber:Function = null;
         var worldmapServers:Array = null;
         var wmSocketServers:Array = null;
         var wmHttpServers:Array = null;
         var server:Array = null;
         var host:String = null;
         var connectionType:Number = NaN;
         var ports:Array = null;
         var s:class_29 = null;
         var obj:Object = param1;
         var contained:Boolean = param2;
         var_4976 = contained;
         if(!class_31.const_138)
         {
            var_2308 = obj.root;
         }
         class_31.var_824 = obj._baseURL;
         class_31.var_116 = obj._apiURL;
         class_31.name_59 = obj.platform_api_url;
         class_31.var_5386 = obj._gameURL;
         class_31.var_264 = obj._storageURL;
         class_31.var_5450 = obj._soundPathURL;
         class_31.var_5440 = obj._handbookPathURL;
         class_31.var_5397 = obj._statsURL;
         class_31.var_5430 = class_31.var_824.substr(0,class_31.var_824.indexOf("/",class_2.method_7(-1820300567).length)) + class_2.method_7(-1820302193);
         class_31.var_5508 = obj._mapURL;
         class_31.var_4555 = obj.logurl;
         class_31.var_5083 = obj.probeurl;
         class_31.var_2078 = obj.siu;
         class_31.var_4915 = class_2.method_7(-1820301996);
         class_31.var_5244 = obj._locale;
         class_31.var_3610 = int(obj.softversion);
         class_31.var_3357 = class_22.method_471(obj.app_enable_response_checksum);
         class_31.var_3104 = class_22.method_471(obj.app_enable_encrypt_body);
         class_31.var_5297 = obj.__;
         class_31.var_4946 = obj.___;
         if(obj.hasOwnProperty(class_2.method_7(-1820302223)))
         {
            class_31.var_3969 = obj.click_source;
         }
         else
         {
            class_31.var_3969 = class_2.method_7(-1820299465);
         }
         if(obj.low_level_min_userid != null)
         {
            class_13.method_6592 = int(obj.low_level_min_userid);
         }
         if(obj.low_level_rollout_userid != null)
         {
            class_13.method_6512 = int(obj.low_level_rollout_userid);
         }
         class_31.var_1796 = class_11.const_2599;
         if(obj.integ != null)
         {
            switch(obj.integ)
            {
               case class_2.method_7(-1820301994):
                  class_31.var_1796 = class_11.const_954;
                  break;
               case class_2.method_7(-1820298033):
                  class_31.var_1796 = class_11.const_1016;
                  break;
            }
         }
         if(obj.worldmap_servers != null)
         {
            toNumber = function(param1:String, param2:int, param3:Array):Number
            {
               return Number(param1);
            };
            worldmapServers = WCJSON.decode(obj.worldmap_servers);
            wmSocketServers = new Array();
            wmHttpServers = new Array();
            for each(server in worldmapServers)
            {
               host = StringUtil.trim(server[0]);
               connectionType = server[1];
               ports = String(server[2]).split(",").map(toNumber);
               s = new class_29(host,ports);
               if(connectionType == class_17.const_275)
               {
                  wmSocketServers.push(s);
               }
               else if(connectionType == class_17.const_439)
               {
                  wmHttpServers.push(s);
               }
               else
               {
                  Logger.debug(class_2.method_7(-1820295736) + connectionType);
               }
            }
            class_31.var_4707 = wmSocketServers;
            class_31.var_4698 = wmHttpServers;
         }
         if(obj.tlogsessionid)
         {
            class_19.var_1424 = true;
            TransitionLogger.var_1424 = true;
            FrameworkLogger.logSession = obj.tlogsessionid;
         }
         else
         {
            class_19.var_1424 = false;
            TransitionLogger.var_1424 = false;
            FrameworkLogger.logSession = "";
         }
         var logger:class_14 = new FrameworkLogger();
         TransitionLogger.method_5987(logger as class_15);
         var URLPieces:Array = class_31.var_824.split("/");
         Security.loadPolicyFile(URLPieces[0] + "//" + URLPieces[2] + class_2.method_7(-1820296193));
         var domain:String = URLPieces[2];
         Security.allowDomain(domain);
         if(obj.securecanvasurl != null)
         {
            domain = obj.securecanvasurl as String;
            domain = domain.split("/")[2];
            Logger.debug(class_2.method_7(-1820310955) + domain);
            Security.allowDomain(domain);
         }
         if(class_31.var_2078)
         {
            domain = class_31.var_2078.concat();
            domain = domain.split("/")[2];
            Logger.debug(class_2.method_7(-1820310955) + domain);
            Security.allowDomain(domain);
         }
         if(obj.hasOwnProperty(class_2.method_7(-1820309528)))
         {
            class_28.method_6046(int(obj.tutorialstage));
         }
         if(class_31.var_2528 == null)
         {
            class_31.var_2528 = new class_24(obj);
         }
         class_31.var_62 = new Sprite();
         class_31.var_62.tabChildren = false;
         addChild(class_31.var_62);
         class_31.method_5313();
         this.var_3683 = new class_27();
         _instance.addEventListener(Event.ENTER_FRAME,this.method_3445);
         this.var_3683.method_7037.method_111(this.method_6820);
         this.var_3683.initialize();
         this.method_6575();
      }
      
      private function method_6820(param1:String = null) : void
      {
         if(param1 == class_27.const_2322)
         {
            _instance.removeEventListener(Event.ENTER_FRAME,this.method_3445);
         }
      }
      
      private function method_3445(param1:Event) : void
      {
         this.var_3683.tickFast();
      }
      
      private function method_6575() : void
      {
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.addEventListener(Event.RESIZE,UI.method_172);
         stage.showDefaultContextMenu = false;
         if(class_31.var_2078)
         {
            Logger.debug(class_2.method_7(-1820310700) + class_31.var_2078 + class_2.method_7(-1820308969));
            class_20.method_575(class_31.var_2078 + class_2.method_7(-1820308969),null,null,null,true,false,false,false);
         }
         try
         {
            if(ExternalInterface.available)
            {
               ExternalInterface.addCallback(class_2.method_7(-1820308823),function(param1:String):void
               {
                  BASE.method_4991(int(param1));
               });
               ExternalInterface.addCallback("updateFBC",function(param1:String):void
               {
                  BASE.updateFBC(param1);
               });
               ExternalInterface.addCallback(class_2.method_7(-1820296716),function(param1:String):void
               {
                  class_32.method_3301(param1);
               });
               ExternalInterface.addCallback("updateCredits",function(param1:String):void
               {
                  class_32.updateCredits(param1);
               });
               ExternalInterface.addCallback(class_2.method_7(-1820297964),function(param1:Object):void
               {
                  handleRelocate(param1);
               });
               ExternalInterface.addCallback(class_2.method_7(-1820308321),function(param1:int):void
               {
                  handlePanToBase(param1);
               });
               ExternalInterface.addCallback("showAttackLog",function():void
               {
                  class_31.method_6196();
               });
            }
            return;
         }
         catch(error:Error)
         {
            class_31.method_74(class_9.const_1961,class_2.method_7(-1820302906),true);
            return;
         }
      }
   }
}
