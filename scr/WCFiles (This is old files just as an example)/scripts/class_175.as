package
{
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import com.cc.build.BldgFoundation;
   import com.cc.battle.class_118;
   
   public class class_175 extends Object
   {
      
      public static var name_25:uint = 3000;
      
      public static var name_34:uint = 3000;
      
      public static const const_161:uint = 5;
      
      public static const const_710:uint = name_25 / const_161 * name_34 / const_161;
      
      public static const const_2227:uint = 65536;
      
      public static var var_2492:Vector.<uint>;
       
      public function class_175()
      {
         super();
      }
      
      public static function method_6645() : void
      {
         var _loc2_:uint = 0;
         var _loc3_:* = 0;
         var_2492 = new Vector.<uint>(const_710,true);
         while(0 < name_34 / const_161)
         {
            _loc2_ = 0 * name_25 / const_161;
            _loc3_ = 0;
            while(_loc3_ < name_25 / const_161)
            {
               var_2492[_loc2_ + _loc3_] = 0;
               _loc3_++;
            }
            _loc1_++;
         }
      }
      
      public static function method_2185(param1:Rectangle, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc6_:Point = null;
         var _loc7_:* = 0;
         var _loc9_:* = 0;
         var _loc4_:Point = method_154(new Point(param1.x,param1.y));
         param1.x = _loc4_.x;
         param1.y = _loc4_.y;
         var _loc8_:* = 0;
         while(_loc8_ < param1.height)
         {
            _loc9_ = 0;
            while(_loc9_ < param1.width)
            {
               _loc6_ = method_1644(new Point(_loc9_ + param1.x,_loc8_ + param1.y),const_161);
               _loc7_ = _loc6_.x + _loc6_.y * name_25 / const_161;
               if(_loc7_ >= 0 && _loc7_ <= const_710)
               {
                  var_2492[_loc7_] = 1 | (param3?const_2227:0);
               }
               _loc9_ = _loc9_ + const_161;
            }
            _loc8_ = _loc8_ + const_161;
         }
      }
      
      public static function method_5349(param1:BldgFoundation) : void
      {
         var _loc4_:Point = null;
         var _loc9_:* = 0;
         var _loc2_:Rectangle = param1.footprint[0];
         while(true)
         {
            _loc9_ = 0;
            while(_loc9_ < 100)
            {
               _loc4_ = method_183(new Point(-(BASE.var_215 * 0.5) + 0 * 10,-(BASE.var_222 * 0.5) + _loc9_ * 10),0);
               if(!method_841(param1.footprint,_loc4_,true))
               {
                  class_118.instance.method_3899(param1,0,_loc9_);
                  param1.x = _loc4_.x;
                  param1.y = _loc4_.y;
                  param1.method_1305();
                  return;
               }
               _loc9_++;
            }
            _loc8_++;
         }
      }
      
      public static function method_841(param1:Array, param2:Point, param3:Boolean = false, param4:Boolean = false) : Boolean
      {
         var _loc5_:Rectangle = null;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var param2:Point = method_154(param2);
         for each(_loc5_ in param1)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc5_.width)
            {
               _loc7_ = 0;
               while(_loc7_ < _loc5_.height)
               {
                  if(method_1007(new Point(_loc6_ + _loc5_.x + param2.x,_loc7_ + _loc5_.y + param2.y),param3,param4) > 0)
                  {
                     return true;
                  }
                  _loc7_ = _loc7_ + const_161;
               }
               _loc6_ = _loc6_ + const_161;
            }
         }
         return false;
      }
      
      public static function method_1007(param1:Point, param2:Boolean = false, param3:Boolean = false) : int
      {
         var _loc4_:Point = method_1644(param1,const_161);
         var _loc5_:int = _loc4_.x + _loc4_.y * name_25 / const_161;
         if(_loc5_ < 0 || _loc5_ > const_710)
         {
            return 3;
         }
         var _loc6_:int = BASE.var_215 / 2;
         var _loc7_:int = BASE.var_222 / 2;
         if(!param3 && (param1.x < 0 - _loc6_ || param1.x >= _loc6_ || param1.y < 0 - _loc7_ || param1.y >= _loc7_))
         {
            return 2;
         }
         var _loc8_:uint = var_2492[_loc5_];
         if(!param2 && _loc8_ & const_2227)
         {
            return 0;
         }
         return _loc8_;
      }
      
      public static function method_8206(param1:uint, param2:uint = 1, param3:Boolean = true) : String
      {
         var _loc4_:String = param1.toString(16).toUpperCase();
         while(param2 > _loc4_.length)
         {
            _loc4_ = "0" + _loc4_;
         }
         if(param3)
         {
            _loc4_ = class_2.method_7(-1820303249) + _loc4_;
         }
         return _loc4_;
      }
      
      public static function method_1644(param1:Point, param2:int) : Point
      {
         var _loc3_:int = int((param1.x + name_25 * 0.5) / param2);
         var _loc4_:int = int((param1.y + name_34 * 0.5) / param2);
         return new Point(_loc3_,_loc4_);
      }
      
      public static function method_8534(param1:Point, param2:int) : Point
      {
         var _loc3_:int = int(param1.x * param2 - name_25 * 0.5) + param2 * 0.5;
         var _loc4_:int = int(param1.y * param2 - name_34 * 0.5) + param2 * 0.5;
         return new Point(_loc3_,_loc4_);
      }
      
      public static function method_1607(param1:Point, param2:Number) : void
      {
         var _loc3_:int = param1.x - param1.y;
         var _loc4_:int = (param1.x + param1.y) * 0.5 - param2;
         param1.x = _loc3_;
         param1.y = _loc4_;
      }
      
      public static function method_733(param1:Point, param2:Number, param3:Number, param4:Number) : void
      {
         param1.x = param2;
         param1.y = param3;
         method_1607(param1,param4);
      }
      
      public static function method_2267(param1:Number, param2:Number, param3:Number) : Point
      {
         var _loc4_:int = param1 - param2;
         var _loc5_:int = (param1 + param2) * 0.5 - param3;
         return new Point(_loc4_,_loc5_);
      }
      
      public static function method_5420(param1:Number, param2:Number, param3:Number, param4:Point) : void
      {
         param4.x = param1 - param2;
         param4.y = (param1 + param2) * 0.5 - param3;
      }
      
      public static function method_183(param1:Point, param2:Number) : Point
      {
         return method_2267(param1.x,param1.y,param2);
      }
      
      public static function method_154(param1:Point) : Point
      {
         return method_1263(param1.x,param1.y);
      }
      
      public static function method_1263(param1:Number, param2:Number) : Point
      {
         var _loc3_:int = param1 * 0.5 + param2;
         var _loc4_:int = param2 - param1 * 0.5;
         return new Point(_loc3_,_loc4_);
      }
      
      public static function method_368(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = param1 * 0.5 + param2 - (param3 * 0.5 + param4);
         var _loc6_:Number = param2 - param1 * 0.5 - (param4 - param3 * 0.5);
         return _loc5_ * _loc5_ + _loc6_ * _loc6_;
      }
      
      public static function method_2343(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return Math.sqrt(method_368(param1,param2,param3,param4));
      }
      
      public static function method_1627(param1:Number) : Number
      {
         return param1 * 1.414;
      }
      
      public static function method_2159(param1:Point, param2:Number) : Point
      {
         var _loc3_:Point = method_154(param1);
         var _loc4_:Number = 2 * Math.PI * Math.random();
         var _loc5_:Number = Math.random() + Math.random();
         var _loc6_:Number = _loc5_;
         if(_loc5_ > 1)
         {
            _loc6_ = 2 - _loc5_;
         }
         _loc3_.x = _loc3_.x + param2 * _loc6_ * Math.cos(_loc4_);
         _loc3_.y = _loc3_.y + param2 * _loc6_ * Math.sin(_loc4_);
         return method_183(_loc3_,0);
      }
   }
}
