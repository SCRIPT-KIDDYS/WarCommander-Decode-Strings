package
{
   import flash.utils.ByteArray;
   
   public class class_5 extends Object
   {
       
      private var var_2:int = 0;
      
      private var var_3:int = 0;
      
      private var var_1:ByteArray;
      
      private const const_1:uint = 256;
      
      public function class_5(param1:ByteArray = null)
      {
         super();
         this.var_1 = new ByteArray();
         if(param1)
         {
            this.method_4(param1);
         }
      }
      
      public function method_11() : uint
      {
         return this.const_1;
      }
      
      public function method_4(param1:ByteArray) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            this.var_1[_loc2_] = _loc2_;
            _loc2_++;
         }
         _loc3_ = 0;
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            _loc3_ = _loc3_ + this.var_1[_loc2_] + param1[_loc2_ % param1.length] & 255;
            _loc4_ = this.var_1[_loc2_];
            this.var_1[_loc2_] = this.var_1[_loc3_];
            this.var_1[_loc3_] = _loc4_;
            _loc2_++;
         }
         this.var_2 = 0;
         this.var_3 = 0;
      }
      
      private function method_8() : uint
      {
         var _loc1_:* = 0;
         this.var_2 = this.var_2 + 1 & 255;
         this.var_3 = this.var_3 + this.var_1[this.var_2] & 255;
         _loc1_ = this.var_1[this.var_2];
         this.var_1[this.var_2] = this.var_1[this.var_3];
         this.var_1[this.var_3] = _loc1_;
         return this.var_1[_loc1_ + this.var_1[this.var_2] & 255];
      }
      
      public function method_9() : uint
      {
         return 1;
      }
      
      public function method_5(param1:ByteArray) : void
      {
         var _loc2_:uint = 0;
         while(_loc2_ < param1.length)
         {
            param1[_loc2_++] = param1[_loc2_++] ^ this.method_8();
         }
      }
      
      public function method_6(param1:ByteArray) : void
      {
         this.method_5(param1);
      }
      
      public function method_10() : void
      {
         var _loc1_:uint = 0;
         if(this.var_1 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_1.length)
            {
               this.var_1[_loc1_] = Math.random() * 256;
               _loc1_++;
            }
            this.var_1.length = 0;
            this.var_1 = null;
         }
         this.var_2 = 0;
         this.var_3 = 0;
      }
   }
}
