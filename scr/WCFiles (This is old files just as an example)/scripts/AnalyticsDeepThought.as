package
{
   import package_122.class_1082;
   import package_4.class_66;
   import flash.system.Capabilities;
   import mx.utils.UIDUtil;
   import package_47.class_1083;
   import flash.net.URLLoader;
   import com.adverserealms.log.Logger;
   import flash.events.*;
   
   public class AnalyticsDeepThought extends Object
   {
      
      protected static var var_2268:AnalyticsDeepThought = null;
       
      protected var var_875:AnalyticsSession;
      
      protected var var_5316:Boolean = false;
      
      protected const const_5627:String = "816b01e9042837fb574abf2571d45c5ede0a9670";
      
      protected const const_5841:String = "266a7d73988409c489edeeea9f45c0b4779326ba";
      
      protected const const_5774:String = "ae-logging.sjc.kixeye.com";
      
      protected const const_5499:String = "/game/3/client/";
      
      protected const const_6115:String = "WC";
      
      protected var var_5492:String;
      
      public function AnalyticsDeepThought()
      {
         super();
         this.var_5492 = "/game/3/client/" + "WC";
      }
      
      public static function get instance() : AnalyticsDeepThought
      {
         if(var_2268 == null)
         {
            var_2268 = new AnalyticsDeepThought();
         }
         return var_2268;
      }
      
      private function method_4706(param1:class_1082) : Boolean
      {
         return param1 != null && param1.type != null;
      }
      
      public function method_5998(param1:String) : void
      {
         var _loc2_:class_1082 = new class_1082();
         _loc2_.method_169(param1);
         this.method_67(_loc2_);
      }
      
      public function method_67(param1:class_1082, param2:Boolean = false) : void
      {
         if(!class_66.method_4252)
         {
            return;
         }
         if(!this.method_4706(param1))
         {
            this.log(class_2.method_7(-1820297075) + param1);
            return;
         }
         if(param1.type == class_2.method_7(-1820307738))
         {
            this.method_5187();
         }
         if(this.var_875 == null)
         {
            return;
         }
         var _loc3_:Date = new Date();
         param1.client_utc = _loc3_.getTime();
         this.var_875.events.push(param1);
         if(!param2)
         {
            this.method_3310();
         }
         if(param1.type == class_2.method_7(-1820306738))
         {
            this.method_6656();
         }
      }
      
      public function flush() : void
      {
         if(!class_66.method_4252 || this.var_875 == null)
         {
            return;
         }
         this.method_3310();
      }
      
      private function method_3310() : void
      {
         if(this.var_875.events.length != 0)
         {
            this.method_4582(this.var_875.events);
            this.var_875.events.length = 0;
         }
      }
      
      private function method_4582(param1:Vector.<class_1082>) : void
      {
         var _loc9_:class_1082 = null;
         if(param1 == null || param1.length == 0)
         {
            return;
         }
         this.var_5316 = true;
         var _loc2_:Object = new Object();
         var _loc3_:Object = new Object();
         var _loc4_:Object = new Object();
         var _loc5_:Object = new Object();
         var _loc6_:Object = new Object();
         var _loc7_:Object = new Object();
         var _loc8_:Array = [];
         _loc2_["events"] = _loc8_;
         for each(_loc9_ in param1)
         {
            if(_loc9_.isValid())
            {
               _loc8_.push(_loc9_.method_670());
            }
         }
         _loc2_["header"] = _loc3_;
         _loc3_[class_2.method_7(-1820299388)] = 3;
         _loc3_["type"] = class_2.method_7(-1820299222);
         _loc3_[class_2.method_7(-1820297700)] = "WC";
         _loc3_[class_2.method_7(-1820300723)] = "1";
         _loc3_["session_id"] = this.var_875.session_id;
         _loc3_[class_2.method_7(-1820299664)] = _loc4_;
         _loc4_[class_2.method_7(-1820299511)] = class_68.name_1.id.toString();
         if(class_68.name_1.alias.length > 0)
         {
            _loc4_[class_2.method_7(-1820296409)] = class_68.name_1.alias;
         }
         else if(class_68.name_1.method_285.length > 0)
         {
            _loc4_[class_2.method_7(-1820296409)] = class_68.name_1.method_285;
         }
         _loc3_[class_2.method_7(-1820302399)] = _loc5_;
         _loc5_[class_2.method_7(-1820301339)] = Capabilities.os;
         _loc5_[class_2.method_7(-1820301000)] = Capabilities.cpuArchitecture;
         _loc5_[class_2.method_7(-1820311010)] = Capabilities.playerType;
         _loc5_["platform"] = Capabilities.manufacturer;
         _loc5_[class_2.method_7(-1820299533)] = Capabilities.version;
         _loc3_[class_2.method_7(-1820295879)] = _loc6_;
         _loc6_[class_2.method_7(-1820295690)] = class_31.var_2548;
         _loc6_[class_2.method_7(-1820300078)] = Capabilities.version;
         _loc2_[class_2.method_7(-1820295802)] = _loc7_;
         _loc7_[class_2.method_7(-1820308093)] = UIDUtil.createUID().toString();
         _loc7_["source"] = "client";
         class_1083.method_4582(_loc2_);
      }
      
      private function method_8163(param1:IEventDispatcher) : void
      {
         param1.addEventListener(Event.COMPLETE,this.completeHandler);
         param1.addEventListener(Event.OPEN,this.method_7146);
         param1.addEventListener(ProgressEvent.PROGRESS,this.method_2850);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.method_3943);
         param1.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.method_6725);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.method_5488);
      }
      
      private function completeHandler(param1:Event) : void
      {
         this.var_5316 = false;
         var _loc2_:URLLoader = URLLoader(param1.target);
         this.log(class_2.method_7(-1820300590) + _loc2_.data);
      }
      
      private function method_7146(param1:Event) : void
      {
         this.log(class_2.method_7(-1820309086) + param1);
      }
      
      private function method_2850(param1:ProgressEvent) : void
      {
         this.log(class_2.method_7(-1820300332) + param1.bytesLoaded + class_2.method_7(-1820295812) + param1.bytesTotal);
      }
      
      private function method_3943(param1:SecurityErrorEvent) : void
      {
         Logger.warn(class_2.method_7(-1820308303) + param1);
      }
      
      private function method_6725(param1:HTTPStatusEvent) : void
      {
         this.log(class_2.method_7(-1820295522) + param1);
      }
      
      private function method_5488(param1:IOErrorEvent) : void
      {
         Logger.warn(class_2.method_7(-1820302189) + param1);
      }
      
      private function method_5187() : void
      {
         this.var_875 = new AnalyticsSession();
         this.var_875.session_id = UIDUtil.createUID().toString();
         this.var_875.events = new Vector.<class_1082>();
      }
      
      private function method_6656() : void
      {
         this.var_875 = null;
      }
      
      private function log(param1:String) : void
      {
      }
   }
}

import package_122.class_1082;

class AnalyticsSession extends Object
{
    
   public var session_id:String;
   
   public var events:Vector.<class_1082>;
   
   function AnalyticsSession()
   {
      super();
   }
}
