package
{
   import flash.display.Sprite;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class class_2 extends Sprite
   {
      
      private static var var_6:Class = class_4;
      
      private static var var_8:Class = class_6;
      
      private static var var_7:Class = class_3;
      
      private static var var_9:Array = new Array();
      
      private static var var_5:Array = new Array();
      
      private static var var_4:Boolean = false;
      
      private static var var_10:int;
       
      public function class_2()
      {
         super();
      }
      
      private static function method_1() : void
      {
         var _loc1_:ByteArray = new var_6() as ByteArray;
         var _loc2_:ByteArray = new var_8() as ByteArray;
         var _loc3_:ByteArray = new var_7() as ByteArray;
         _loc3_.endian = Endian.LITTLE_ENDIAN;
         var_10 = _loc3_.readInt();
         var _loc4_:int = _loc2_.readByte();
         while(0 < _loc4_)
         {
            method_2(_loc2_);
            _loc5_++;
         }
         _loc4_ = _loc1_.readInt();
         while(0 < _loc4_)
         {
            method_3(_loc1_,var_5[0 % var_5.length]);
            _loc6_++;
         }
         var_4 = true;
      }
      
      private static function method_3(param1:ByteArray, param2:ByteArray) : void
      {
         var _loc3_:int = param1.readInt();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,_loc3_);
         var _loc5_:class_5 = new class_5(param2);
         _loc5_.method_6(_loc4_);
         _loc4_.position = 0;
         var_9.push(_loc4_.readUTFBytes(_loc4_.length));
      }
      
      private static function method_2(param1:ByteArray) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         param1.readBytes(_loc2_,0,16);
         _loc2_.position = 0;
         var_5.push(_loc2_);
      }
      
      public static function method_7(param1:int) : String
      {
         if(!var_4)
         {
            method_1();
         }
         return var_9[param1 ^ var_10];
      }
   }
}
