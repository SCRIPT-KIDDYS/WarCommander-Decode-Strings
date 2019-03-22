package
{
   import flash.display.Sprite;
   import package_40.class_135;
   
   public class class_244 extends Sprite
   {
       
      private var var_3845:Number = 0;
      
      private var var_4343:Number;
      
      private var var_4472:Number;
      
      private var var_5344:Number;
      
      private var var_5371:Number;
      
      public function class_244()
      {
         super();
         alpha = 0;
         graphics.beginFill(0);
         graphics.drawRect((760 - class_31.method_57) / 2,(750 - class_31.method_110) / 2,class_31.method_57,class_31.method_110);
         graphics.endFill();
         var _loc2_:int = class_31.method_57;
         var _loc3_:int = class_31.method_110;
         var _loc4_:int = 2000 * 0.5 + (760 - _loc2_) / 2;
         var _loc5_:int = 1000 * 0.5 + (600 - _loc3_) / 2;
         var _loc6_:int = -2000 * 0.5 + (760 + _loc2_) / 2 + 4;
         var _loc7_:int = -1000 * 0.5 + (600 + _loc3_) / 2 + 4;
         var _loc8_:int = (MAP.var_68.x - _loc2_ / 2) * 0.5 / MAP.var_68.scaleX + _loc2_ / 2;
         var _loc9_:int = (MAP.var_68.y - _loc3_ / 2) * 0.5 / MAP.var_68.scaleY + _loc3_ / 2;
         this.var_4343 = MAP.var_68.x;
         this.var_4472 = MAP.var_68.y;
         this.var_5344 = Math.max(Math.min(_loc4_,_loc8_),_loc6_);
         this.var_5371 = Math.max(Math.min(_loc5_,_loc9_),_loc7_);
         class_135.name_11(MAP.var_68);
         MAP._autoScroll = true;
      }
      
      public function get process() : Number
      {
         return this.var_3845;
      }
      
      public function set process(param1:Number) : void
      {
         if(param1 == 1)
         {
            MAP._autoScroll = false;
         }
         this.var_3845 = param1;
         alpha = param1;
         var _loc2_:Number = 1 - alpha * 0.75;
         if(class_31.var_472)
         {
            _loc2_ = 0.5 - alpha * 0.25;
         }
         if(class_31.method_57 > 760)
         {
            _loc2_ = 1 - alpha * 0.5;
         }
         MAP.var_68.scaleX = _loc2_;
         MAP.var_68.scaleY = _loc2_;
         MAP.var_68.x = this.var_4343 + (this.var_5344 - this.var_4343) * this.var_3845;
         MAP.var_68.y = this.var_4472 + (this.var_5371 - this.var_4472) * this.var_3845;
      }
   }
}
