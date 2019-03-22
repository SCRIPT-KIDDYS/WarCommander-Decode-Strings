package
{
   import com.cc.utils.SecNum;
   import com.cc.build.BldgFoundation;
   import flash.geom.Point;
   import package_11.class_28;
   import flash.geom.Rectangle;
   import package_22.ResourceManager;
   
   public class class_163 extends Object
   {
      
      private static var var_2245:SecNum;
      
      private static var var_1263:int = 0;
      
      private static var var_1109:Array;
      
      private static var var_2214:int = 0;
      
      private static const const_4821:int = 3;
      
      private static const const_822:int = 4;
      
      public static const const_2471:int = 9;
       
      public function class_163()
      {
         super();
      }
      
      public static function Data(param1:Object) : void
      {
         var_2245 = new SecNum(0);
         if(class_105.method_23())
         {
            if(param1)
            {
               if(param1.s)
               {
                  var_1263 = param1.s;
               }
               if(param1.l)
               {
                  var_1109 = param1.l;
               }
            }
            else
            {
               FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820296237));
            }
         }
      }
      
      public static function Setup() : void
      {
         var _loc1_:* = 0;
         if(!class_105.method_23())
         {
            return;
         }
         if(var_1109)
         {
            _loc1_ = 0;
            while(_loc1_ < Math.min(var_1109.length,const_822))
            {
               Spawn(var_1109[_loc1_][0],var_1109[_loc1_][1],var_1109[_loc1_][2],var_1109[_loc1_][3]);
               _loc1_++;
            }
         }
         Process();
      }
      
      public static function method_101() : Object
      {
         var _loc3_:BldgFoundation = null;
         var _loc4_:Point = null;
         var _loc1_:Array = [];
         if(class_105.method_23())
         {
            for each(_loc3_ in BASE.var_754)
            {
               _loc4_ = class_175.method_154(new Point(_loc3_.x,_loc3_.y));
               if(!_loc3_.var_1961)
               {
                  _loc1_.push([_loc4_.x,_loc4_.y,_loc3_.method_7661(),_loc3_.method_426]);
               }
            }
         }
         else if(var_1109)
         {
            _loc1_ = var_1109;
         }
         var _loc2_:Object = {
            "s":var_1263,
            "l":_loc1_
         };
         return _loc2_;
      }
      
      private static function Spawn(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:BldgFoundation = null;
         if(param4 == 0)
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820308409));
         }
         else
         {
            _loc5_ = BASE.createBuilding(40);
            var param3:int = param3 % const_2471;
            var_2214++;
            _loc5_.Setup({
               "f":param3,
               "X":param1,
               "Y":param2,
               "id":var_2214,
               "t":40,
               class_2.method_7(-1820302264):param4
            });
            _loc5_.method_18(true);
            var_2245.Add(1);
         }
      }
      
      public static function Process() : void
      {
         var _loc1_:* = 0;
         if(var_2245.Get() < const_822 && class_28.method_30 && class_105.method_23())
         {
            _loc1_ = var_1263 == 0?const_4821:Math.floor(class_31.method_28() - var_1263) / 43200;
            if(_loc1_ + var_2245.Get() > const_822)
            {
               _loc1_ = const_822 - var_2245.Get();
            }
            if(_loc1_ > 0)
            {
               var_1263 = class_31.method_28();
               method_4318(_loc1_);
            }
         }
      }
      
      private static function method_4318(param1:int) : void
      {
         var building:BldgFoundation = null;
         var placed:Boolean = false;
         var X:int = 0;
         var Y:int = 0;
         var steps:int = 0;
         var reward:int = 0;
         var quantity:int = param1;
         var i:int = 0;
         while(i < quantity)
         {
            placed = false;
            X = 0;
            Y = 0;
            steps = 0;
            while(!placed && steps < 5000)
            {
               steps++;
               X = int((200 + BASE.var_215 * 0.5 - Math.random() * (BASE.var_215 + 400)) / 10) * 10;
               Y = int((200 + BASE.var_222 * 0.5 - Math.random() * (BASE.var_222 + 400)) / 10) * 10;
               if(X > BASE.var_215 * 0.5 || X < 0 - BASE.var_215 * 0.5 || Y > BASE.var_222 * 0.5 || Y < 0 - BASE.var_222 * 0.5)
               {
                  var testLoot:Function = function(param1:BldgFoundation):void
                  {
                     var _loc2_:Point = class_175.method_154(new Point(param1.x,param1.y));
                     if(X > _loc2_.x - 40 && Y > _loc2_.y - 40 && X < _loc2_.x + param1.footprint[0].width && Y < _loc2_.y + param1.footprint[0].height)
                     {
                        placed = false;
                     }
                  };
                  placed = true;
                  for each(building in BASE.var_754)
                  {
                     testLoot(building);
                     if(!placed)
                     {
                        break;
                     }
                  }
                  for each(building in BASE.var_498)
                  {
                     testLoot(building);
                     if(!placed)
                     {
                        break;
                     }
                  }
               }
               else if(!class_175.method_841([new Rectangle(0,0,40,40)],class_175.method_183(new Point(X,Y),0),true))
               {
                  placed = true;
               }
            }
            reward = Math.max(int(Math.pow(ResourceManager.method_22.r1Max,0.7) / 2),1000);
            if(placed)
            {
               Spawn(X,Y,int(Math.random() * const_2471),reward);
            }
            i++;
         }
      }
   }
}
