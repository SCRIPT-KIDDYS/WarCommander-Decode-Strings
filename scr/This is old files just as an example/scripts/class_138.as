package
{
   import flash.utils.Dictionary;
   import package_125.class_585;
   import flash.events.EventDispatcher;
   import flash.events.Event;
   import package_22.DataStorageCache;
   import package_22.class_346;
   import package_91.class_363;
   import package_126.class_583;
   import package_126.class_584;
   import com.adverserealms.log.Logger;
   import package_31.class_325;
   import package_2.class_178;
   import package_125.class_588;
   import package_32.SaveManager;
   import package_37.class_123;
   import com.cc.utils.class_9;
   import package_15.class_43;
   import package_127.class_586;
   import package_127.class_587;
   import com.cc.units.Units;
   import package_114.class_529;
   
   public class class_138 extends Object
   {
      
      public static const const_1697:String = "missions_changed";
      
      public static const const_2656:String = "mission_completed";
      
      private static var var_2097:Boolean = false;
      
      private static var var_2372:Boolean = false;
      
      private static var var_993:Dictionary;
      
      private static var var_1464:class_585;
      
      private static var var_2475:Boolean = false;
      
      private static var var_1570:Object;
      
      private static var var_676:Object;
      
      private static var _eventDispatcher:EventDispatcher;
       
      public function class_138()
      {
         super();
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(_eventDispatcher == null)
         {
            _eventDispatcher = new EventDispatcher();
         }
         _eventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(_eventDispatcher == null)
         {
            _eventDispatcher = new EventDispatcher();
         }
         _eventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      protected static function dispatchEvent(param1:Event) : void
      {
         if(_eventDispatcher == null)
         {
            _eventDispatcher = new EventDispatcher();
         }
         _eventDispatcher.dispatchEvent(param1);
      }
      
      public static function Setup() : void
      {
         var_993 = new Dictionary();
         var_1464 = new class_585();
         var_676 = new Object();
         var_1570 = {
            class_2.method_7(-1820301383):0,
            class_2.method_7(-1820311213):0,
            class_2.method_7(-1820300260):0,
            class_2.method_7(-1820302598):0,
            class_2.method_7(-1820299851):0,
            class_2.method_7(-1820301448):0,
            class_2.method_7(-1820306669):0,
            class_2.method_7(-1820309053):0,
            class_2.method_7(-1820297516):0,
            class_2.method_7(-1820307706):0,
            class_2.method_7(-1820297024):0,
            class_2.method_7(-1820298900):0,
            class_2.method_7(-1820296934):0,
            class_2.method_7(-1820296361):0,
            class_2.method_7(-1820296208):0,
            class_2.method_7(-1820306643):0,
            class_2.method_7(-1820300433):0,
            class_2.method_7(-1820301712):0,
            class_2.method_7(-1820307841):0,
            class_2.method_7(-1820310217):0,
            class_2.method_7(-1820308624):0,
            class_2.method_7(-1820309217):0,
            class_2.method_7(-1820299009):0,
            class_2.method_7(-1820297943):0,
            class_2.method_7(-1820295728):0,
            class_2.method_7(-1820295903):0,
            class_2.method_7(-1820295280):0,
            class_2.method_7(-1820311286):0,
            class_2.method_7(-1820310778):0,
            class_2.method_7(-1820295429):0,
            class_2.method_7(-1820311051):0,
            class_2.method_7(-1820310049):0,
            class_2.method_7(-1820302852):0,
            class_2.method_7(-1820311063):0,
            class_2.method_7(-1820296040):0,
            class_2.method_7(-1820296057):0,
            class_2.method_7(-1820306625):0,
            class_2.method_7(-1820301951):0,
            class_2.method_7(-1820301561):0,
            class_2.method_7(-1820296406):0,
            class_2.method_7(-1820311453):0,
            class_2.method_7(-1820295956):0,
            class_2.method_7(-1820295565):0,
            class_2.method_7(-1820300800):0,
            class_2.method_7(-1820310755):0,
            class_2.method_7(-1820296774):0,
            class_2.method_7(-1820297399):0,
            class_2.method_7(-1820306814):0,
            class_2.method_7(-1820310927):0,
            class_2.method_7(-1820311527):0,
            class_2.method_7(-1820300444):0,
            class_2.method_7(-1820301917):0,
            class_2.method_7(-1820309902):0,
            class_2.method_7(-1820295505):0,
            class_2.method_7(-1820296421):0,
            class_2.method_7(-1820296809):0,
            class_2.method_7(-1820300057):0
         };
         method_2687();
         DataStorageCache.class_2093.addEventListener(class_346.const_416,method_4462);
         class_363.instance.signalTransactionReceipt.add(method_7458);
      }
      
      private static function method_2687() : void
      {
         var _loc1_:Object = null;
         var _loc2_:String = null;
         var _loc3_:class_583 = null;
         if(var_2097 == false)
         {
            _loc1_ = class_584.Data;
            for(_loc2_ in _loc1_)
            {
               _loc3_ = class_583.Create(_loc2_,_loc1_[_loc2_]);
               if(_loc3_ != null && _loc3_.method_3663)
               {
                  var_993[_loc2_] = _loc3_;
               }
            }
            var_2097 = true;
         }
      }
      
      public static function method_4497(param1:Object) : void
      {
         var _loc2_:String = class_2.method_7(-1820299426);
         if(param1 == null)
         {
            Logger.error(_loc2_ + class_2.method_7(-1820298413));
            return;
         }
         if("c" in param1 == false)
         {
            Logger.error(_loc2_ + class_2.method_7(-1820302355));
            return;
         }
         if("g" in param1 == false)
         {
            Logger.error(_loc2_ + class_2.method_7(-1820309920));
            return;
         }
         method_4306(param1.c);
         method_1637(param1.g);
         var_2372 = true;
         method_1830();
      }
      
      private static function method_2751(param1:Object) : void
      {
         method_1637(param1);
         method_1830();
         class_325.method_2469();
      }
      
      private static function method_1637(param1:Object) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            var_1570[_loc2_] = param1[_loc2_];
         }
      }
      
      private static function method_4306(param1:Object) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            var_676[_loc2_] = param1[_loc2_];
         }
      }
      
      private static function method_4462(param1:class_346) : void
      {
         if(param1.token != class_178.const_798)
         {
            return;
         }
         var _loc2_:Object = DataStorageCache.class_2093.GetData(class_2.method_7(-1820301642));
         if(_loc2_ == null)
         {
            _loc2_ = new Object();
         }
         method_2751(_loc2_);
         method_272();
      }
      
      private static function method_1830() : void
      {
         if(method_1804)
         {
            method_4406();
         }
      }
      
      private static function method_4406() : void
      {
         var _loc1_:Vector.<class_583> = null;
         var _loc2_:class_583 = null;
         if(!var_2475)
         {
            _loc1_ = method_3997();
            for each(_loc2_ in _loc1_)
            {
               if(_loc2_ != null)
               {
                  _loc2_.method_114(int(var_676[_loc2_.method_464]));
                  if(!_loc2_.method_1125)
                  {
                     var_1464.method_2795(_loc2_);
                  }
                  else if(!_loc2_.method_5830())
                  {
                     delete var_676[_loc2_.method_464];
                     _loc2_.method_7147();
                     var_1464.method_2795(_loc2_);
                  }
               }
            }
            var_2475 = true;
         }
      }
      
      private static function method_3997() : Vector.<class_583>
      {
         var _loc2_:class_583 = null;
         var _loc3_:Vector.<class_583> = null;
         var _loc1_:* = 0;
         for each(_loc2_ in var_993)
         {
            if(_loc1_ < _loc2_.method_845)
            {
               _loc1_ = _loc2_.method_845;
            }
         }
         _loc3_ = new Vector.<class_583>(_loc1_);
         for each(_loc3_[_loc2_.method_845] in var_993)
         {
         }
         return _loc3_;
      }
      
      private static function get method_1804() : Boolean
      {
         return var_2097 && var_2372;
      }
      
      public static function get method_6695() : Vector.<String>
      {
         var _loc2_:class_588 = null;
         var _loc3_:class_583 = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         if(method_1804)
         {
            _loc2_ = var_1464.method_1629();
            while(!_loc2_.method_1159)
            {
               _loc3_ = class_583(_loc2_.method_1877);
               switch(_loc3_.class_1896)
               {
                  case class_583.const_504:
                  case class_583.const_445:
                     _loc1_.push(_loc3_.method_464);
                     break;
               }
               _loc2_.method_1711();
            }
         }
         return _loc1_;
      }
      
      public static function method_424(param1:String) : class_583
      {
         var _loc2_:class_583 = var_993[param1];
         if(_loc2_ == null)
         {
            Logger.error(class_2.method_7(-1820303151) + param1 + class_2.method_7(-1820309869));
         }
         return _loc2_;
      }
      
      public static function method_863(param1:String) : int
      {
         var _loc2_:* = 0;
         if(param1 in var_1570)
         {
            _loc2_ = var_1570[param1];
         }
         else
         {
            Logger.warn(class_2.method_7(-1820310785) + param1 + class_2.method_7(-1820303066));
         }
         return _loc2_;
      }
      
      public static function method_218(param1:String = "", param2:int = 0, param3:Boolean = false) : void
      {
         var _loc4_:int = int(var_1570[param1]);
         var _loc5_:* = param2 != _loc4_;
         if(param3 && param2 <= _loc4_)
         {
            _loc5_ = false;
         }
         if(_loc5_)
         {
            var_1570[param1] = param2;
            if(method_1804 && BASE.method_52() == false)
            {
               SaveManager.class_2093.method_2622.method_38();
            }
            method_272();
         }
      }
      
      public static function method_608(param1:String = "", param2:int = 1) : void
      {
         method_218(param1,method_863(param1) + param2,true);
      }
      
      public static function method_272() : void
      {
         var _loc2_:class_583 = null;
         var _loc3_:class_588 = null;
         if(BASE.method_52() || method_1804 == false)
         {
            return;
         }
         var _loc1_:Vector.<class_583> = null;
         _loc3_ = var_1464.method_1629();
         while(!_loc3_.method_1159)
         {
            _loc2_ = class_583(_loc3_.method_1877);
            _loc2_.method_793 = false;
            _loc3_.method_1711();
         }
         _loc3_ = var_1464.method_1629();
         while(!_loc3_.method_1159)
         {
            _loc2_ = class_583(_loc3_.method_1877);
            if(_loc2_.method_793 == false)
            {
               _loc2_.method_18();
            }
            if(_loc2_.method_1277 != "" && class_123.instance.method_451(_loc2_.method_1277) > 0)
            {
               if(!_loc1_)
               {
                  _loc1_ = new Vector.<class_583>();
               }
               _loc1_.push(_loc2_);
            }
            _loc3_.method_1711();
         }
         if(_loc1_)
         {
            for each(_loc2_ in _loc1_)
            {
               _loc2_.method_2501();
               var_676[_loc2_.method_464] = class_583.const_159;
            }
            SaveManager.class_2093.method_2622.method_38(true);
            SaveManager.class_2093.Base.method_38(true);
         }
      }
      
      public static function method_5291() : void
      {
         var _loc2_:class_583 = null;
         var _loc1_:class_588 = var_1464.method_1629();
         while(!_loc1_.method_1159)
         {
            _loc2_ = class_583(_loc1_.method_1877);
            _loc2_.method_710();
            _loc1_.method_1711();
         }
      }
      
      public static function method_8296(param1:String) : int
      {
         var _loc2_:class_583 = var_993[param1];
         if(param1 == null)
         {
            Logger.error(class_2.method_7(-1820308351) + param1 + class_2.method_7(-1820299267));
            return -1;
         }
         return _loc2_.class_1896;
      }
      
      public static function method_7403(param1:String) : Boolean
      {
         var _loc2_:class_583 = method_424(param1);
         if(_loc2_ != null)
         {
            return _loc2_.method_30;
         }
         return false;
      }
      
      public static function method_7041(param1:String) : Boolean
      {
         var _loc2_:class_583 = method_424(param1);
         if(_loc2_ != null)
         {
            return _loc2_.method_1125;
         }
         return false;
      }
      
      public static function method_2812(param1:class_583 = null, param2:Boolean = false) : void
      {
         dispatchEvent(new Event(const_1697));
         if(param2)
         {
            dispatchEvent(new Event(const_2656));
         }
      }
      
      public static function method_6345(param1:String) : void
      {
         var _loc2_:class_583 = var_993[param1];
         if(_loc2_ == null)
         {
            Logger.error(class_2.method_7(-1820295306) + param1 + class_2.method_7(-1820295859));
            class_31.method_74(class_9.const_2785,class_43.getString(class_2.method_7(-1820308995)));
            return;
         }
         if(_loc2_.method_614 == false)
         {
            class_31.method_74(class_9.const_2923,class_43.getString(class_2.method_7(-1820296626)));
            return;
         }
         _loc2_.method_7632();
         if(_loc2_.method_1277 == "" || _loc2_.method_1277 == null)
         {
            _loc2_.method_2501();
            var_676[param1] = class_583.const_159;
         }
         else
         {
            _loc2_.method_2501();
         }
         method_272();
         SaveManager.class_2093.method_2622.method_38(true);
         SaveManager.class_2093.Base.method_38(true);
      }
      
      public static function method_6756() : int
      {
         var _loc2_:class_583 = null;
         var _loc3_:class_586 = null;
         var _loc4_:class_587 = null;
         var _loc1_:* = 0;
         for each(_loc2_ in var_993)
         {
            if(_loc2_ != null)
            {
               for each(_loc3_ in _loc2_.method_3524)
               {
                  _loc4_ = _loc3_ as class_587;
                  if(_loc4_ != null)
                  {
                     _loc1_ = _loc1_ + Units.GetModifiedWeight(_loc4_.method_1243,true) * _loc4_.method_190;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public static function method_101() : Object
      {
         return {
            "c":var_676,
            "g":var_1570
         };
      }
      
      private static function method_7458(param1:Vector.<class_529>) : void
      {
         method_272();
      }
      
      private static function method_8068(param1:String) : class_583
      {
         var _loc2_:class_583 = null;
         for each(_loc2_ in var_993)
         {
            if(_loc2_.method_1277 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
