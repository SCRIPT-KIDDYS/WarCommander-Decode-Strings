package
{
   import flash.geom.Point;
   import package_51.*;
   import flash.display.Sprite;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   
   public class class_230 extends Object
   {
      
      public static const ZEROPOINT:Point = new Point(0,0);
      
      public static const const_4986:int = 60;
      
      public static const const_1205:int = 150;
      
      public static const const_1419:int = 20;
      
      public static const const_2188:Number = 4;
      
      public static const const_5151:int = 0;
      
      public static const const_5264:int = 1;
      
      public static const const_6145:int = 2;
      
      public static const const_5782:int = 3;
      
      private static const const_1009:Vector.<Number> = new <Number>[0.15,0.6,1,-0.1];
      
      private static const const_1218:Vector.<Number> = new <Number>[0.2,1,1.5,0.1];
      
      private static const const_821:Vector.<Number> = new <Number>[0.01,0.05,0.05,-0.1];
      
      private static const const_1500:Vector.<Number> = new <Number>[0.06,0.2,0.2,0.1];
      
      private static var var_451:Vector.<class_831> = new Vector.<class_831>();
       
      private var _sprite:Sprite;
      
      private var var_1613:BitmapData;
      
      private var var_1955:Number;
      
      private var var_1326:Array;
      
      public function class_230()
      {
         super();
         this.var_1955 = 0;
         this.var_1326 = [];
         this.var_1613 = new BitmapData(const_4986,const_1205,true,0);
         this._sprite = new Sprite();
         var _loc1_:Bitmap = new Bitmap(this.var_1613);
         this._sprite.addChild(_loc1_);
         this._sprite.scaleY = 2;
         this._sprite.scaleX = 2;
         MAP.var_218.addChild(this._sprite);
      }
      
      public static function method_350() : void
      {
         var_451[0] = new class_831(class_2.method_7(-1820301676),31,2,const_1419,const_1419);
      }
      
      public function Tick(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Number) : Boolean
      {
         var _loc7_:class_832 = null;
         this._sprite.visible = class_31.var_909;
         if(this.var_1613)
         {
            var param2:int = param2 - const_1205 * 2;
            if(this._sprite.x != param1)
            {
               this._sprite.x = param1;
            }
            if(this._sprite.y != param2)
            {
               this._sprite.y = param2;
            }
            if(class_31.var_43 % const_2188 == 0)
            {
               this.var_1613.fillRect(this.var_1613.rect,0);
               for each(_loc7_ in this.var_1326)
               {
                  if(_loc7_.method_197(this.var_1613,var_451[param3]))
                  {
                     this.var_1326.splice(this.var_1326.indexOf(_loc7_),1);
                  }
               }
            }
            this.var_1955 = this.var_1955 + param6;
            while(this.var_1955 > 0)
            {
               this.var_1955--;
               this.var_1326.push(new class_832(Math.random() * (const_1500[param5] - const_821[param5]) + const_821[param5],Math.random() * (const_1218[param5] - const_1009[param5]) + const_1009[param5],param4));
            }
         }
         else
         {
            this.var_1326.length = 0;
         }
         return this.var_1326.length > 0;
      }
      
      public function Reset() : void
      {
         this.var_1326.length = 0;
      }
      
      public function method_753() : void
      {
         if(this._sprite.parent)
         {
            this._sprite.parent.removeChild(this._sprite);
         }
         this.var_1613.dispose();
         this.var_1613 = null;
      }
   }
}
