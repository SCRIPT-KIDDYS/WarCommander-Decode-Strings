package
{
   import com.cc.ui.class_99;
   import package_103.class_435;
   import flash.display.Sprite;
   import flash.text.TextField;
   import com.cc.widget.class_148;
   import package_110.class_869;
   import flash.text.TextFormat;
   import package_64.class_434;
   import flash.text.TextFormatAlign;
   
   public class class_265 extends class_99
   {
      
      private static var name_60:class_435 = new class_435(class_2.method_7(-1820300640));
       
      private var var_123:Sprite;
      
      private var var_800:TextField;
      
      private var var_726:class_148;
      
      private var var_5263:Function;
      
      private var var_3887:Function;
      
      public function class_265()
      {
         super(true,class_99.const_447);
         this.var_123 = new Sprite();
         addChild(this.var_123);
         this.var_123.addChild(name_60.instance());
         this.var_123.x = -this.var_123.width / 2;
         this.var_800 = new TextField();
         this.var_800.defaultTextFormat = new TextFormat(class_434.const_126,16,16777215,null,null,null,null,null,TextFormatAlign.CENTER);
         this.var_800.mouseEnabled = false;
         this.var_800.embedFonts = true;
         this.var_800.x = 24;
         this.var_800.y = 16;
         this.var_800.height = 26;
         this.var_123.addChild(this.var_800);
         this.var_726 = new class_148("",null,class_148.const_16,80,26);
         this.var_726.x = 174;
         this.var_726.y = 15;
         this.var_123.addChild(this.var_726);
      }
      
      public function method_18(param1:String, param2:String = null, param3:Function = null, param4:Function = null) : void
      {
         this.var_800.htmlText = param1;
         this.var_3887 = param4;
         if(param2)
         {
            if(param3 == null)
            {
               var param3:Function = this.method_43;
            }
            this.var_726.method_581 = param2;
            this.var_726.method_4874(param3);
            this.var_726.visible = true;
            this.var_800.width = 160;
         }
         else
         {
            this.var_726.visible = false;
            this.var_800.width = 224;
         }
      }
      
      public function tick() : void
      {
         if(this.var_3887 != null)
         {
            this.var_800.htmlText = this.var_3887();
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.var_726.Enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.var_726.Enabled = param1;
      }
      
      private function Action() : void
      {
         if(this.var_5263 != null)
         {
            this.var_5263();
         }
      }
      
      public function method_64() : void
      {
         x = int(class_31.method_57 * 0.5);
         y = 0;
         method_164();
      }
      
      public function Hide() : void
      {
         visible = false;
      }
      
      public function Clear() : void
      {
         if(this.var_726)
         {
            this.var_726.method_13();
         }
      }
      
      private function method_43() : void
      {
         new class_869().dispatch();
      }
   }
}
