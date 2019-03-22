package
{
   import flash.geom.Point;
   import package_51.FX;
   import package_51.class_559;
   import package_20.class_556;
   import package_40.*;
   import package_102.*;
   
   public class class_186 extends Object
   {
      
      public static var var_1147:Object = {};
      
      public static var var_1239:int = 0;
      
      public static var var_1323:int = 0;
      
      public static var _frame:int = 0;
      
      private static var var_2715:Vector.<class_776> = new Vector.<class_776>();
       
      public function class_186()
      {
         super();
      }
      
      public static function Clear() : void
      {
         var giblet:class_776 = null;
         var g:String = null;
         try
         {
            for(g in var_1147)
            {
               giblet = var_1147[g];
               if(giblet.parent)
               {
                  giblet.parent.removeChild(giblet);
               }
               giblet.Clear();
               method_1630(giblet);
               delete var_1147[g];
            }
            var_1147 = {};
            var_1239 = 0;
            _frame = 0;
            return;
         }
         catch(e:Error)
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820296700) + e.getStackTrace());
            return;
         }
      }
      
      public static function method_3756(param1:int, param2:Point, param3:Point, param4:int, param5:Number, param6:Number) : class_776
      {
         var _loc7_:class_776 = null;
         if(var_2715.length)
         {
            _loc7_ = var_2715.pop();
         }
         else
         {
            _loc7_ = new class_776();
         }
         _loc7_.init(param1,param2,param3,param4,param5,param6);
         return _loc7_;
      }
      
      public static function method_1630(param1:class_776) : void
      {
         var_2715.push(param1);
      }
      
      public static function Create(param1:Point, param2:Number, param3:int, param4:int, param5:int = 0) : void
      {
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         if(!BASE.method_52())
         {
            if(var_1323 < 20)
            {
               _loc6_ = 0;
               while(_loc6_ < param4)
               {
                  var_1323++;
                  _loc7_ = param3 * 0.2 + Math.random() * param3 * 0.8;
                  if(Math.random() <= 0.3)
                  {
                     _loc7_ = _loc7_ * 1.5;
                  }
                  Spawn(param1.add(new Point(-3 + Math.random() * 6,-2 + Math.random() * 4)),param2,_loc7_,_loc6_ / 100,param5);
                  _loc6_++;
               }
            }
         }
      }
      
      public static function Spawn(param1:Point, param2:Number, param3:int, param4:Number, param5:int) : void
      {
         var _loc6_:Number = Math.random() * 360;
         var _loc7_:Point = class_175.method_154(new Point(param1.x,param1.y));
         var _loc8_:Number = _loc7_.x + Math.cos(_loc6_) * param3;
         var _loc9_:Number = _loc7_.y + Math.sin(_loc6_) * param3;
         var _loc10_:Point = class_175.method_183(new Point(_loc8_,_loc9_),0).add(new Point(0,param5));
         var_1147[var_1239] = MAP.var_2035.addChild(method_3756(var_1239,param1,_loc10_,param3,param4,param2));
         var_1239++;
      }
      
      public static function method_379(param1:int) : void
      {
         var _loc2_:class_776 = var_1147[param1];
         var_1323--;
         try
         {
            FX.method_123(class_559.method_88(_loc2_.x,_loc2_.y,class_556.const_1024));
            MAP.var_2035.removeChild(_loc2_);
            _loc2_.Clear();
            method_1630(_loc2_);
            delete var_1147[param1];
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
   }
}
