package
{
   import com.cc.widget.class_638;
   import com.cc.build.BldgFoundation;
   import flash.geom.Point;
   import package_11.class_28;
   import flash.display.DisplayObjectContainer;
   import com.cc.widget.class_148;
   import flash.events.MouseEvent;
   import package_31.class_97;
   import package_31.class_253;
   
   public class class_142 extends Object
   {
      
      private static var var_310:class_638;
      
      private static var var_2963:int = -1;
       
      public function class_142()
      {
         super();
      }
      
      public static function Show(param1:BldgFoundation, param2:Point = null, param3:Boolean = true) : void
      {
         if(class_31.var_137 && class_31.var_137.isMoving)
         {
            return;
         }
         if(!class_28.method_30 && param1.type != var_2963)
         {
            return;
         }
         Hide();
         var_310 = new class_638(param1);
         var_310.x = param2 == null?class_31.var_350.mouseX:param2.x;
         var_310.y = param2 == null?class_31.var_350.mouseY:param2.y;
         var_310.method_5909 = param3;
         var_310.Setup();
         var _loc4_:DisplayObjectContainer = param2 == null?class_31.var_350:param1.method_6851 as DisplayObjectContainer;
         _loc4_.addChild(var_310);
      }
      
      public static function method_103(param1:String, param2:Function, param3:Boolean = false) : class_148
      {
         var clickedMenuButton:Function = null;
         var title:String = param1;
         var callback:Function = param2;
         var highlight:Boolean = param3;
         clickedMenuButton = function():void
         {
            Hide();
            callback();
         };
         var buttonColor:int = class_148.const_11;
         if(highlight)
         {
            buttonColor = class_148.const_26;
         }
         return new class_148(title,clickedMenuButton,buttonColor,class_638.const_2414,class_638.const_1769);
      }
      
      public static function Tick() : void
      {
         if(var_310 != null)
         {
            var_310.Tick();
         }
      }
      
      public static function tickFast() : void
      {
         if(var_310 != null)
         {
            var_310.tickFast();
         }
      }
      
      public static function method_759(param1:int = -1) : void
      {
         var_2963 = param1;
      }
      
      public static function method_752(param1:String) : Point
      {
         if(var_310 != null)
         {
            return var_310.method_752(param1);
         }
         return new Point(0,0);
      }
      
      public static function Hide(param1:MouseEvent = null) : void
      {
         if(var_310 != null)
         {
            var_310.method_13();
            var_310.parent.removeChild(var_310);
            var_310 = null;
            if(!class_97.method_76(class_253.class_32))
            {
               BASE.method_239();
            }
         }
      }
      
      public static function get method_76() : Boolean
      {
         return var_310 != null;
      }
   }
}
