package
{
   import flash.class_2092;
   
   public class class_2157 extends Object
   {
       
      public function class_2157()
      {
      }
      
      public static function method_8565(param1:*, param2:*) : Boolean
      {
         return class_2092.method_4938(param1,param2);
      }
      
      public static function string(param1:*) : String
      {
         return class_2092.method_1096(param1,"");
      }
      
      public static function method_8071(param1:Number) : int
      {
         return param1;
      }
      
      public static function parseInt(param1:String) : Object
      {
         var _loc2_:* = parseInt(param1);
         if(isNaN(_loc2_))
         {
            return null;
         }
         return _loc2_;
      }
      
      public static function parseFloat(param1:String) : Number
      {
         return parseFloat(param1);
      }
      
      public static function random(param1:int) : int
      {
         return Math.floor(Math.random() * param1);
      }
   }
}
