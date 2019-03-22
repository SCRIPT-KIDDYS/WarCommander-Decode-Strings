package
{
   import flash.display.BitmapData;
   import package_51.class_831;
   import flash.geom.Point;
   
   public class class_832 extends Object
   {
      
      public static const const_5189:Number = 30;
      
      public static const const_1995:Number = 5;
      
      public static const const_1877:Number = 5;
       
      private var name_5:Number;
      
      private var name_4:Number;
      
      private var var_2339:Number;
      
      private var var_5290:Number;
      
      private var var_5079:Number;
      
      private var var_1420:int;
      
      public function class_832(param1:Number, param2:Number, param3:int)
      {
         super();
         this.name_5 = Math.random() * const_1995 - const_1877;
         this.name_4 = class_230.const_1205 - class_230.const_1419 - Math.random() * const_1995 + const_1877;
         this.var_5290 = param1;
         this.var_5079 = param2;
         this.var_1420 = param3;
         this.var_2339 = 0;
      }
      
      public function method_197(param1:BitmapData, param2:class_831) : Boolean
      {
         var _loc4_:BitmapData = null;
         var _loc3_:int = this.var_2339 / const_5189 + 2;
         if(_loc3_ < param2.var_1290)
         {
            _loc4_ = param2.method_483(this.var_1420,_loc3_);
            param1.copyPixels(_loc4_,_loc4_.rect,new Point(this.name_5 + this.var_2339 * this.var_5290,this.name_4 - this.var_2339 * this.var_5079),_loc4_,null,true);
            this.var_2339 = this.var_2339 + class_230.const_2188;
            return false;
         }
         return true;
      }
   }
}
