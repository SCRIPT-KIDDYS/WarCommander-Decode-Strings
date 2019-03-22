package
{
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.events.IOErrorEvent;
   
   public class MultipleAttemptURLLoader extends Object
   {
      
      public static const const_5360:uint = 3;
      
      public static const const_5642:uint = 8000;
      
      public static const const_4312:uint = 0;
      
      public static const const_5973:uint = 1000;
       
      private var var_3206:uint;
      
      private var var_5277:uint;
      
      private var var_3177:uint;
      
      private var var_3678:uint;
      
      private var var_5271:uint;
      
      private var _url:String;
      
      private var _data:Array;
      
      private var var_3267:Function;
      
      private var var_3737:Function;
      
      private var var_1377:Timer;
      
      private var var_1507:Timer;
      
      public function MultipleAttemptURLLoader(param1:PublicBlocker, param2:uint, param3:uint, param4:uint)
      {
         super();
         this.var_3206 = 0;
         this.var_5277 = param2;
         this.var_3177 = param3;
         this.var_3678 = param4;
         this.var_5271 = param4;
      }
      
      public static function method_136(param1:String, param2:Array = null, param3:Function = null, param4:Function = null, param5:uint = 3, param6:uint = 8000, param7:uint = 1000) : void
      {
         method_3689(param1,param2,param3,param4,param5,param6,param7);
      }
      
      private static function method_3689(param1:String, param2:Array, param3:Function, param4:Function, param5:uint, param6:uint, param7:uint) : void
      {
         var _loc8_:MultipleAttemptURLLoader = new MultipleAttemptURLLoader(new PublicBlocker(),param5,param6,param7);
         _loc8_.load(param1,param2,param3,param4);
      }
      
      private function load(param1:String, param2:Array, param3:Function, param4:Function) : void
      {
         this._url = param1;
         this._data = param2;
         this.var_3267 = param3;
         this.var_3737 = param4;
         this.method_4007();
      }
      
      private function method_4007() : void
      {
         this.method_5460();
         class_20.method_575(this._url,this._data,this.method_5631,this.method_3276);
      }
      
      private function method_5460() : void
      {
         if(this.var_1377 != null)
         {
            this.method_1364();
         }
         if(this.var_3177 == const_4312)
         {
            return;
         }
         this.var_1377 = new Timer(this.var_3177,1);
         this.var_1377.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_2668);
         this.var_1377.start();
      }
      
      private function method_2668(param1:TimerEvent) : void
      {
         this.method_1364();
         this.method_3276(new IOErrorEvent(IOErrorEvent.NETWORK_ERROR,false,false,class_2.method_7(-1820302301) + this._url + class_2.method_7(-1820298039) + this.var_3177 + class_2.method_7(-1820299101)));
      }
      
      private function method_1364() : void
      {
         if(this.var_1377 != null)
         {
            this.var_1377.removeEventListener(TimerEvent.TIMER_COMPLETE,this.method_2668);
            this.var_1377.stop();
            this.var_1377 = null;
         }
      }
      
      private function method_5631(param1:Object) : void
      {
         if(this.var_3267 != null)
         {
            this.var_3267(param1);
         }
         this.destroy();
      }
      
      private function method_3276(param1:IOErrorEvent) : void
      {
         if(this._url == null)
         {
            return;
         }
         this.method_1364();
         if(this.var_3206 < this.var_5277)
         {
            this.var_3206++;
            this.method_5915();
         }
         else
         {
            if(this.var_3737 != null)
            {
               this.var_3737(param1);
            }
            this.destroy();
         }
      }
      
      private function method_5915() : void
      {
         if(this.var_1507 != null)
         {
            this.method_2040();
         }
         this.var_1507 = new Timer(this.var_3678,1);
         this.var_3678 = this.var_3678 * 2 + this.var_5271 * Math.random();
         this.var_1507.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_3171);
         this.var_1507.start();
      }
      
      private function method_3171(param1:TimerEvent) : void
      {
         this.method_2040();
         this.method_4007();
      }
      
      private function method_2040() : void
      {
         if(this.var_1507 != null)
         {
            this.var_1507.removeEventListener(TimerEvent.TIMER_COMPLETE,this.method_3171);
            this.var_1507.stop();
            this.var_1507 = null;
         }
      }
      
      private function destroy() : void
      {
         this._url = null;
         this._data = null;
         this.var_3267 = null;
         this.var_3737 = null;
         this.method_1364();
         this.method_2040();
      }
   }
}

class PublicBlocker extends Object
{
    
   function PublicBlocker()
   {
      super();
   }
}
