package
{
   import flash.display.Sprite;
   import flash.geom.Point;
   import package_40.class_135;
   import package_102.class_1325;
   import com.cc.utils.AudioController;
   
   public class class_776 extends Sprite
   {
       
      private var _id:int;
      
      public var var_4205:Boolean;
      
      private var var_204:Sprite;
      
      public function class_776()
      {
         super();
      }
      
      public function init(param1:int, param2:Point, param3:Point, param4:Number, param5:Number, param6:Number) : void
      {
         this._id = param1;
         visible = false;
         this.var_4205 = false;
         x = param2.x;
         y = param2.y;
         scaleX = scaleY = param6;
         this.var_204 = new Sprite();
         this.var_204.x = -2.5;
         this.var_204.y = -2.8;
         this.var_204.graphics.beginFill(10027008);
         this.var_204.graphics.moveTo(3,0.6);
         this.var_204.graphics.lineTo(3.5,0.0);
         this.var_204.graphics.lineTo(1.7,0.1);
         this.var_204.graphics.lineTo(0.9,0.5);
         this.var_204.graphics.lineTo(0.6,0.7);
         this.var_204.graphics.lineTo(0.2,1.3);
         this.var_204.graphics.lineTo(0.0,2.3);
         this.var_204.graphics.lineTo(0.2,3.4);
         this.var_204.graphics.lineTo(0.5,3.9);
         this.var_204.graphics.lineTo(1.1,4.4);
         this.var_204.graphics.lineTo(1.9,4.9);
         this.var_204.graphics.lineTo(3.5,5);
         this.var_204.graphics.lineTo(4.1,4.6);
         this.var_204.graphics.lineTo(4.8,3.5);
         this.var_204.graphics.lineTo(5.1,2.7);
         this.var_204.graphics.lineTo(5,2.4);
         this.var_204.graphics.lineTo(3,0.6);
         this.var_204.graphics.endFill();
         addChild(this.var_204);
         var _loc7_:Number = Math.sqrt(param4 * 0.3) * 0.2;
         if(_loc7_ < 0.3)
         {
            _loc7_ = 0.3;
         }
         class_135.to(this,_loc7_,{
            "x":param3.x,
            "y":param3.y,
            "visible":true,
            "ease":class_1325.name_12,
            "delay":param5,
            "onComplete":this.method_4534,
            class_2.method_7(-1820296257):false
         });
         class_135.to(this.var_204,_loc7_ / 2,{
            "y":-(_loc7_ * 50),
            "ease":class_1325.name_6,
            "delay":param5,
            class_2.method_7(-1820296257):0
         });
         class_135.to(this.var_204,_loc7_ / 2,{
            "y":0,
            "ease":class_1325.name_14,
            "delay":_loc7_ / 2 + param5,
            class_2.method_7(-1820296257):0
         });
         cacheAsBitmap = true;
      }
      
      private function method_4534() : void
      {
         if(!this.var_4205)
         {
            AudioController.instance.method_32(class_2.method_7(-1820295378));
            class_186.method_379(this._id);
         }
      }
      
      public function Clear() : void
      {
         this.var_4205 = true;
      }
   }
}
