package
{
   import package_103.class_435;
   import flash.display.Stage;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.geom.Point;
   import com.cc.ui.class_452;
   import flash.events.KeyboardEvent;
   import flash.display.BitmapData;
   import com.cc.rendering.class_450;
   import com.cc.rendering.class_451;
   import flash.geom.Rectangle;
   import com.cc.environment.terrain.TerrainManager;
   import com.cc.ui.MouseHandler;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import com.cc.ui.class_227;
   import com.cc.units.Units;
   import package_11.class_28;
   import package_33.class_106;
   import package_31.class_97;
   import package_31.class_253;
   import flash.text.TextField;
   import com.cc.ui.class_449;
   import flash.ui.Keyboard;
   import package_40.class_135;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import package_99.Message;
   import com.cc.widget.class_455;
   import com.cc.ui.UI;
   import com.cc.units.AbstractUnit;
   import com.cc.ui.ReticleManager;
   import com.cc.ui.class_271;
   import com.cc.ui.class_454;
   import com.cc.units.UnitManager;
   import package_60.MissileManager;
   import package_60.MercenaryManager;
   import package_102.class_453;
   import com.cc.battle.class_128;
   import package_20.class_132;
   import package_20.class_457;
   
   public class MAP extends Object
   {
      
      public static const const_392:class_435 = new class_435(class_2.method_7(-1820309202));
      
      public static const const_434:class_435 = new class_435(class_2.method_7(-1820296529));
      
      public static const const_611:int = 4000;
      
      public static const const_622:int = 2000;
      
      private static const const_2033:int = 2000.0;
      
      private static const const_2221:int = 1000.0;
      
      private static const const_1014:int = 100;
      
      public static var var_3179:int;
      
      public static var var_3807:int;
      
      public static var tx:int;
      
      public static var ty:int;
      
      public static var var_3968:int;
      
      public static var var_4260:int;
      
      public static var _autoScroll:Boolean;
      
      public static var stage:Stage;
      
      public static var var_2228:Boolean;
      
      public static var var_1394:Boolean;
      
      public static var var_281:Bitmap;
      
      public static var _GROUND:Sprite;
      
      public static var var_68:Sprite;
      
      public static var var_367:Sprite;
      
      public static var var_2996:Sprite;
      
      public static var var_2035:Sprite;
      
      public static var var_739:Sprite;
      
      public static var var_1697:Sprite;
      
      public static var var_208:Sprite;
      
      public static var var_1593:Sprite;
      
      public static var var_957:Sprite;
      
      public static var var_2720:Sprite;
      
      public static var var_218:Sprite;
      
      public static var var_689:Sprite;
      
      public static var var_3865:Sprite;
      
      public static var var_1572:Sprite;
      
      public static var var_1079:Sprite;
      
      public static var var_1440:Sprite;
      
      public static var var_102:Boolean = true;
      
      public static var var_1821:Boolean;
      
      private static var var_1000:Point;
      
      private static var var_1163:Sprite;
      
      private static var var_1344:class_452;
      
      private static var var_560:int = 0;
      
      private static var _frame:int = 0;
      
      private static var var_5512:int;
      
      private static var var_4832:int = 0;
      
      private static var var_594:Vector.<DepthObject>;
      
      private static var var_4844:int = class_132.const_10;
      
      private static var var_4737:int = class_457.const_4903;
      
      private static var var_5087:Boolean = false;
      
      private static var var_5360:int = 1;
      
      private static var var_4701:int = 1;
      
      private static var var_2304:KeyboardEvent;
      
      private static var var_4309:Boolean = true;
      
      private static var var_4939:Boolean = true;
      
      private static const const_2214:Number = 8;
      
      private static const const_1908:Number = 18;
      
      private static const const_4287:Number = 0.25;
      
      private static var var_795:Number = const_2214;
      
      private static var var_5102:Bitmap = null;
      
      private static var var_3459:BitmapData = null;
      
      private static var _canvas:BitmapData = null;
      
      private static var var_2553:Bitmap = null;
      
      private static var var_5568:Bitmap;
      
      private static var var_2168:Sprite;
      
      private static var var_3083:class_450;
      
      public static var var_1087:BitmapData;
      
      private static var var_2235:class_451;
      
      private static const name_46:Rectangle = new Rectangle();
      
      private static var point:Point = new Point();
      
      public static var offset:Point;
      
      public static var var_4919:Boolean = false;
      
      private static var var_4146:TerrainManager;
      
      public static const const_1628:uint = 1;
      
      public static const const_563:uint = 2504001.0;
      
      public static const const_6088:uint = 5008002.0;
       
      public function MAP()
      {
         super();
      }
      
      public static function get method_5526() : TerrainManager
      {
         return var_4146;
      }
      
      public static function get method_2102() : Sprite
      {
         return var_2168;
      }
      
      public static function method_2436() : class_452
      {
         return var_1344;
      }
      
      public static function method_114() : void
      {
         var_594 = new Vector.<DepthObject>(1,true);
         var_4146 = new TerrainManager();
         MAP.stage = class_31.var_62.stage;
      }
      
      public static function Reset() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:Bitmap = null;
         Clear();
         tx = 760 / 2;
         ty = 600 / 2;
         _GROUND = class_31.var_668.addChild(new Sprite()) as Sprite;
         var_2168 = _GROUND.addChild(new Sprite()) as Sprite;
         var_68 = new Sprite();
         method_2288();
         method_743(tx,ty);
         var_68.x = _GROUND.x;
         var_68.y = _GROUND.y;
         var_2996 = var_2168.addChild(new Sprite()) as Sprite;
         var_208 = method_178(true);
         var_1593 = method_178();
         var_1079 = method_178(true);
         var_2035 = method_178();
         var_739 = method_178();
         var_1697 = method_178();
         var_689 = method_178();
         var_3865 = method_178();
         var_218 = method_178();
         var_2720 = method_178(true);
         var_1440 = method_178(true);
         var_957 = method_178(true);
         var_1572 = method_178();
         var_1394 = false;
         MouseHandler.instance.method_212(_GROUND,MouseEvent.MOUSE_DOWN,method_1414);
         MouseHandler.instance.method_212(_GROUND,MouseEvent.MOUSE_OUT,onMouseOut);
         MouseHandler.instance.method_212(_GROUND,MouseEvent.CLICK,onClick);
         class_31.var_62.stage.addEventListener(Event.ACTIVATE,method_3264);
         class_31.var_62.stage.addEventListener(KeyboardEvent.KEY_DOWN,method_2876);
         class_31.var_62.stage.addEventListener(KeyboardEvent.KEY_UP,method_1636);
         var_367 = null;
         var_1344 = new class_452();
         var_1344.method_114(var_3865);
         _loc1_ = const_392.instance();
         _loc1_.scaleX = 1;
         _loc1_.scaleY = 0.5;
         var_1344.method_2571(class_452.const_866,_loc1_);
         _loc2_ = const_434.instance();
         _loc2_.scaleX = 1;
         _loc2_.scaleY = 0.5;
         var_1344.method_2571(class_452.const_958,_loc2_);
         var_1344.method_2571(class_452.const_1384,class_227.const_1614.instance());
         method_1932();
      }
      
      private static function method_178(param1:Boolean = false) : Sprite
      {
         var _loc2_:Sprite = var_2168.addChild(new Sprite()) as Sprite;
         _loc2_.mouseEnabled = false;
         _loc2_.mouseChildren = param1;
         _loc2_.tabChildren = false;
         return _loc2_;
      }
      
      protected static function method_3264(param1:Event) : void
      {
         if(var_2304)
         {
            method_1636(var_2304);
            var_2304 = null;
         }
      }
      
      public static function method_2288() : void
      {
         if(class_31.method_200())
         {
            var_1087 = new BitmapData(_canvas.width,_canvas.height,false,0);
            var_2235 = new class_451(var_1087,new Point((_canvas.width - var_1087.width) * 0.5,(_canvas.height - var_1087.height) * 0.5),0,null,true);
            var_1087.copyPixels(var_3459,var_3459.rect,new Point(0,0));
         }
         if(class_31.method_1047())
         {
            if(var_281 == null)
            {
               var_281 = new Bitmap();
            }
            var_281.bitmapData = new BitmapData(const_611,const_622,true,0);
            var_281.x = 0 - var_281.width * 0.5;
            var_281.y = 0 - var_281.height * 0.5;
            if(var_281.parent == null)
            {
               var_2168.addChild(var_281);
            }
         }
      }
      
      public static function method_1507(param1:BitmapData, param2:Rectangle, param3:Point, param4:BitmapData = null, param5:Point = null, param6:Boolean = false) : void
      {
         if(class_31.method_200() && var_1087)
         {
            point.x = param3.x + var_1087.width * 0.5;
            point.y = param3.y + var_1087.height * 0.5;
            var_1087.copyPixels(param1,param2,point,param4,param5,param6);
         }
         if(class_31.method_1047() && var_281)
         {
            point.x = param3.x + var_281.width * 0.5;
            point.y = param3.y + var_281.height * 0.5;
            var_281.bitmapData.copyPixels(param1,param2,point,param4,param5,param6);
         }
      }
      
      public static function method_3570() : void
      {
         name_46.width = class_31.method_57 * 1 / _GROUND.scaleX;
         name_46.height = class_31.method_110 * 1 / _GROUND.scaleY;
         name_46.x = -(_GROUND.x * 1 / _GROUND.scaleX) + (const_611 >> 1) + class_31.method_115;
         name_46.y = -(_GROUND.y * 1 / _GROUND.scaleY) + (const_622 >> 1) + class_31.method_87;
      }
      
      private static function method_197(param1:Event) : void
      {
         var_3083.method_106();
      }
      
      private static function onMouseOut(param1:MouseEvent = null) : void
      {
         if(_GROUND)
         {
            Units.OnCursorTargetChanged(null,null,null,new Point(_GROUND.mouseX,_GROUND.mouseY));
         }
         else
         {
            Units.OnCursorTargetChanged(null,null,null,new Point(0,0));
         }
      }
      
      private static function method_2876(param1:KeyboardEvent) : void
      {
         var_2304 = param1;
         if(class_28.method_30 && class_106.method_125 && class_106.method_125.method_1016())
         {
            return;
         }
         if(class_97.method_76(class_253.const_2358))
         {
            return;
         }
         if(stage.focus is TextField)
         {
            return;
         }
         method_3221(param1);
         class_449.method_2876(param1);
         if(param1.keyCode == Keyboard.SPACE && !var_1821)
         {
            var_1821 = true;
            class_31.var_62.mouseChildren = false;
            var_1000 = new Point(_GROUND.mouseX,_GROUND.mouseY);
         }
      }
      
      private static function method_1636(param1:KeyboardEvent) : void
      {
         class_449.method_1636(param1);
         if(param1.keyCode == Keyboard.SPACE && var_1821)
         {
            var_1821 = false;
            class_31.var_62.mouseChildren = true;
            Units.SelectGroup(var_1000.x,var_1000.y,_GROUND.mouseX,_GROUND.mouseY,true);
            method_1792();
         }
      }
      
      public static function TickFast() : void
      {
         _frame = _frame + 1;
         method_3857();
         if(_GROUND)
         {
            if(_GROUND.scaleX != var_68.scaleX)
            {
               _GROUND.scaleX = var_68.scaleX;
            }
            if(_GROUND.scaleY != var_68.scaleY)
            {
               _GROUND.scaleY = var_68.scaleY;
            }
            method_743(var_68.x,var_68.y);
         }
         if(var_1821 && _frame % 2 == 0)
         {
            method_1792();
            var_1163 = new Sprite();
            var_1163.graphics.beginFill(3768783,0.2);
            var_1163.graphics.lineStyle(1,3768783,0.8,true);
            var_1163.graphics.drawRect(var_1000.x,var_1000.y,_GROUND.mouseX - var_1000.x,_GROUND.mouseY - var_1000.y);
            var_957.addChild(var_1163);
            Units.SelectGroup(var_1000.x,var_1000.y,_GROUND.mouseX,_GROUND.mouseY);
         }
         if(var_1344)
         {
            var_1344.method_18();
         }
         if(var_3083)
         {
            var_3083.method_106();
         }
      }
      
      private static function method_1792() : void
      {
         if(var_1163 && var_1163.parent)
         {
            var_1163.parent.removeChild(var_1163);
         }
      }
      
      public static function Clear() : void
      {
         class_135.name_11(var_68);
         if(_GROUND && _GROUND.parent)
         {
            MouseHandler.instance.method_128(_GROUND,MouseEvent.MOUSE_DOWN,method_1414);
            MouseHandler.instance.method_128(_GROUND,MouseEvent.MOUSE_OUT,onMouseOut);
            MouseHandler.instance.method_128(_GROUND,MouseEvent.CLICK,onClick);
            MouseHandler.instance.method_128(stage,MouseEvent.MOUSE_UP,method_1212);
            class_31.var_62.stage.removeEventListener(KeyboardEvent.KEY_DOWN,method_2876);
            class_31.var_62.stage.removeEventListener(KeyboardEvent.KEY_UP,method_1636);
            class_31.var_62.stage.removeEventListener(Event.ACTIVATE,method_3264);
            if(_GROUND.parent != null)
            {
               _GROUND.parent.removeChild(_GROUND);
            }
         }
         class_456.Hide();
         var_208 = null;
         var_1593 = null;
         var_1079 = null;
         var_2035 = null;
         var_739 = null;
         var_1697 = null;
         var_1440 = null;
         var_957 = null;
         var_689 = null;
         var_218 = null;
         var_2720 = null;
         var_1572 = null;
         _GROUND = null;
         var_68 = null;
         if(var_2235)
         {
            var_2235.clear();
         }
         if(var_281)
         {
            if(var_281.parent)
            {
               var_281.parent.removeChild(var_281);
            }
            var_281.bitmapData.dispose();
         }
         var_2235 = null;
         var_281 = null;
      }
      
      public static function method_1932() : void
      {
         var _loc1_:Point = null;
         if(!var_2996)
         {
            return;
         }
         if(var_367)
         {
            var_2996.removeChild(var_367);
         }
         var_367 = var_2996.addChild(new Sprite()) as Sprite;
         var_367.graphics.lineStyle(2,16777215,0.5);
         _loc1_ = class_175.method_183(new Point((0 - BASE.var_215) / 2,(0 - BASE.var_222) / 2),0);
         var_367.graphics.moveTo(_loc1_.x,_loc1_.y);
         _loc1_ = class_175.method_183(new Point(BASE.var_215 / 2,(0 - BASE.var_222) / 2),0);
         var_367.graphics.lineTo(_loc1_.x,_loc1_.y);
         _loc1_ = class_175.method_183(new Point(BASE.var_215 / 2,BASE.var_222 / 2),0);
         var_367.graphics.lineTo(_loc1_.x,_loc1_.y);
         _loc1_ = class_175.method_183(new Point((0 - BASE.var_215) / 2,BASE.var_222 / 2),0);
         var_367.graphics.lineTo(_loc1_.x,_loc1_.y);
         _loc1_ = class_175.method_183(new Point((0 - BASE.var_215) / 2,(0 - BASE.var_222) / 2),0);
         var_367.graphics.lineTo(_loc1_.x,_loc1_.y);
         var_367.cacheAsBitmap = true;
         var_367.visible = false;
      }
      
      public static function method_4316() : void
      {
         if(var_367)
         {
            var_367.visible = true;
         }
      }
      
      public static function method_2474() : void
      {
         if(var_367)
         {
            var_367.visible = false;
         }
      }
      
      public static function method_5468(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(class_31.var_154)
         {
            if(var_1079)
            {
               method_1852(var_1079);
            }
            if(var_1440)
            {
               method_1852(var_1440);
            }
         }
      }
      
      public static function method_1852(param1:Sprite) : void
      {
         var _loc3_:* = 0;
         var _loc4_:DisplayObject = null;
         var _loc5_:MovieClip = null;
         var _loc2_:* = 0;
         var _loc6_:int = param1.numChildren;
         if(var_594.length <= _loc6_)
         {
            var_594.fixed = false;
            var_594.length = _loc6_;
            var_594.fixed = true;
         }
         _loc2_ = _loc6_ - 1;
         while(_loc2_ > -1)
         {
            _loc4_ = param1.getChildAt(_loc2_);
            if(_loc4_)
            {
               _loc5_ = _loc4_ as MovieClip;
               _loc3_ = _loc4_.y;
               if(_loc5_)
               {
                  _loc3_ = _loc3_ + _loc5_._middle;
               }
               _loc3_ = _loc3_ * 1000 + _loc4_.x;
               if(var_594[_loc2_])
               {
                  var_594[_loc2_]._DispObj = _loc4_;
                  var_594[_loc2_]._Depth = _loc3_;
               }
               else
               {
                  var_594[_loc2_] = new DepthObject(_loc4_,_loc3_);
               }
            }
            _loc2_--;
         }
         var_594.sort(DepthObject.SortOnDepth);
         _loc2_ = _loc6_ - 1;
         while(_loc2_ > -1)
         {
            _loc4_ = var_594[_loc2_]._DispObj;
            if(param1.getChildIndex(_loc4_) != _loc2_)
            {
               param1.setChildIndex(_loc4_,_loc2_);
            }
            var_594[_loc2_]._DispObj = null;
            var_594[_loc2_]._Depth = int.MAX_VALUE;
            _loc2_--;
         }
      }
      
      public static function method_3485(param1:KeyboardEvent) : void
      {
         var _loc3_:* = false;
         if(param1.shiftKey)
         {
            if(var_560 == 0 && param1.keyCode == Keyboard.UP)
            {
               var_560 = 1;
            }
            else if(var_560 == 1 && param1.keyCode == Keyboard.DOWN)
            {
               var_560 = 2;
            }
            else if(var_560 == 2 && param1.keyCode == Keyboard.LEFT)
            {
               var_560 = 3;
            }
            else if(!(var_560 == 3 && param1.keyCode == Keyboard.RIGHT))
            {
               var_560 = 0;
            }
         }
         if(class_31.var_1236)
         {
            _loc3_ = false;
            if(_loc3_ == false)
            {
               if(param1.shiftKey)
               {
                  switch(param1.keyCode)
                  {
                     case Keyboard.NUMBER_1:
                     case Keyboard.NUMPAD_1:
                        Units.setControlGroup(0);
                        break;
                     case Keyboard.NUMBER_2:
                     case Keyboard.NUMPAD_2:
                        Units.setControlGroup(1);
                        break;
                     case Keyboard.NUMBER_3:
                     case Keyboard.NUMPAD_3:
                        Units.setControlGroup(2);
                        break;
                     case Keyboard.NUMBER_4:
                     case Keyboard.NUMPAD_4:
                        Units.setControlGroup(3);
                        break;
                  }
               }
               else
               {
                  switch(param1.keyCode)
                  {
                     case Keyboard.NUMBER_1:
                     case Keyboard.NUMPAD_1:
                        Units.useControlGroup(0);
                        break;
                     case Keyboard.NUMBER_2:
                     case Keyboard.NUMPAD_2:
                        Units.useControlGroup(1);
                        break;
                     case Keyboard.NUMBER_3:
                     case Keyboard.NUMPAD_3:
                        Units.useControlGroup(2);
                        break;
                     case Keyboard.NUMBER_4:
                     case Keyboard.NUMPAD_4:
                        Units.useControlGroup(3);
                        break;
                  }
               }
            }
            switch(param1.keyCode)
            {
               case Keyboard.A:
                  if(Units._unitsSelected)
                  {
                     if(Units.commandMode != Units.COMMAND_ATTACK)
                     {
                        Units.setSpecAttack();
                        break;
                     }
                     Units.setSmartCommand();
                     break;
                  }
                  break;
               case Keyboard.M:
                  if(Units._unitsSelected)
                  {
                     if(Units.commandMode != Units.COMMAND_MOVE)
                     {
                        Units.setMove();
                        break;
                     }
                     Units.setSmartCommand();
                     break;
                  }
                  break;
               case Keyboard.R:
                  Units.setAIEnabled(!Units.isRUBIEnabled);
                  break;
               case Keyboard.S:
                  stopUnits();
                  break;
               case Keyboard.D:
                  method_3182();
                  break;
               case Keyboard.F:
                  method_4403();
                  break;
               case Keyboard.H:
                  if(class_28.method_30)
                  {
                     Message.messenger.dispatch(new class_455());
                     break;
                  }
                  break;
            }
         }
      }
      
      private static function stopUnits() : void
      {
         Units.stopUnits();
         UI._unitsSelected.method_385();
      }
      
      private static function method_3182() : void
      {
         Units.setStandGround();
         UI._unitsSelected.method_385();
      }
      
      private static function method_4403() : void
      {
         Units.setFireAtWill();
         UI._unitsSelected.method_385();
      }
      
      public static function method_3221(param1:KeyboardEvent) : void
      {
         method_3485(param1);
      }
      
      private static function method_1414(param1:MouseEvent = null) : void
      {
         if(UI.var_2779)
         {
            var_3179 = stage.mouseX - _GROUND.x;
            var_3807 = stage.mouseY - _GROUND.y;
            var_3968 = _GROUND.x;
            var_4260 = _GROUND.y;
            var_2228 = true;
            MouseHandler.instance.method_212(stage,MouseEvent.MOUSE_UP,method_1212);
         }
      }
      
      public static function method_1212(param1:MouseEvent) : void
      {
         var_2228 = false;
         var_1394 = false;
         MouseHandler.instance.method_128(stage,MouseEvent.MOUSE_UP,method_1212);
      }
      
      private static function onClick(param1:MouseEvent) : void
      {
         var _loc3_:AbstractUnit = null;
         var _loc2_:class_271 = ReticleManager.instance.method_5000();
         if(_loc2_ is class_454)
         {
            _loc3_ = UnitManager.class_2093.method_92((_loc2_ as class_454).method_5138);
         }
         if(_loc3_ != null)
         {
            _loc2_.method_202(_GROUND.mouseX,_GROUND.mouseY);
            _loc2_.method_86(class_454.const_621);
            if(_loc3_.GetUnit() != null)
            {
               _loc3_.GetUnit().method_1898(_GROUND.mouseX,_GROUND.mouseY,param1.shiftKey);
            }
            else
            {
               ATTACK.method_5561(_loc3_.uid);
            }
         }
         else if(MissileManager.instance.method_589)
         {
            MissileManager.instance.method_4484(_GROUND.mouseX,_GROUND.mouseY);
         }
         else if(MercenaryManager.instance.method_589)
         {
            MercenaryManager.instance.method_5104(_GROUND.mouseX,_GROUND.mouseY);
         }
         else
         {
            Units.Order(null,null,null,new Point(_GROUND.mouseX,_GROUND.mouseY),param1.shiftKey,param1.altKey);
         }
      }
      
      public static function method_205(param1:int, param2:int) : void
      {
         method_743(param1,param2);
         tx = _GROUND.x;
         ty = _GROUND.y;
         var_68.x = _GROUND.x;
         var_68.y = _GROUND.y;
      }
      
      public static function method_270(param1:int, param2:int, param3:Number, param4:Number = 0, param5:Function = null, param6:Boolean = true) : void
      {
         var FocusToDone:Function = null;
         var X:int = param1;
         var Y:int = param2;
         var time:Number = param3;
         var delay:Number = param4;
         var callback:Function = param5;
         var ease:Boolean = param6;
         FocusToDone = function():void
         {
            tx = _GROUND.x;
            ty = _GROUND.y;
            _autoScroll = false;
            if(callback != null)
            {
               callback();
            }
         };
         if(_GROUND.x == X && _GROUND.y == Y)
         {
            if(callback != null)
            {
               callback();
            }
            return;
         }
         _autoScroll = true;
         if(ease)
         {
            class_135.to(var_68,time,{
               "x":X,
               "y":Y,
               "ease":class_453.name_12,
               "delay":delay,
               "onComplete":FocusToDone,
               class_2.method_7(-1820296257):true
            });
         }
         else
         {
            class_135.to(var_68,time,{
               "x":X,
               "y":Y,
               "delay":delay,
               "onComplete":FocusToDone,
               class_2.method_7(-1820296257):true
            });
         }
      }
      
      public static function method_8452(param1:class_128) : void
      {
         method_1993(param1.name_5,param1.name_4);
      }
      
      public static function method_1959(param1:class_128, param2:Number, param3:Number = 0, param4:Function = null, param5:Boolean = true) : void
      {
         method_2214(param1.name_5,param1.name_4,param2,param3,param4,param5);
      }
      
      public static function method_858(param1:Point) : Point
      {
         var _loc4_:Point = new Point();
         _loc4_.x = -param1.x / 2 + 380;
         _loc4_.y = -param1.y / 2 + 750 / 2;
         return _loc4_;
      }
      
      public static function method_2214(param1:int, param2:int, param3:Number, param4:Number = 0, param5:Function = null, param6:Boolean = true) : void
      {
         var _loc7_:Point = method_858(new Point(param1,param2));
         method_270(_loc7_.x,_loc7_.y,param3,param4,param5,param6);
      }
      
      public static function method_1993(param1:int, param2:int) : void
      {
         var _loc3_:Point = method_858(new Point(param1,param2));
         method_205(_loc3_.x,_loc3_.y);
      }
      
      public static function method_7084(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 0, param7:Function = null, param8:Boolean = true) : void
      {
         var FocusToDone:Function = null;
         var X:int = param1;
         var Y:int = param2;
         var sX:Number = param3;
         var sY:Number = param4;
         var time:Number = param5;
         var delay:Number = param6;
         var callback:Function = param7;
         var ease:Boolean = param8;
         FocusToDone = function():void
         {
            tx = _GROUND.x;
            ty = _GROUND.y;
            _autoScroll = false;
            if(callback != null)
            {
               callback();
            }
         };
         _autoScroll = true;
         if(time == 0)
         {
            class_135.name_11(var_68);
            _GROUND.scaleX = var_68.scaleX = sX;
            _GROUND.scaleY = var_68.scaleY = sY;
            method_743(X,Y);
            var_68.x = _GROUND.x;
            var_68.y = _GROUND.y;
            FocusToDone();
         }
         else if(ease)
         {
            class_135.to(var_68,time,{
               "x":X,
               "y":Y,
               "scaleX":sX,
               "scaleY":sY,
               "ease":class_453.name_12,
               "delay":delay,
               "onComplete":FocusToDone,
               class_2.method_7(-1820296257):true
            });
         }
         else
         {
            class_135.to(var_68,time,{
               "x":X,
               "y":Y,
               "scaleX":sX,
               "scaleY":sY,
               "delay":delay,
               "onComplete":FocusToDone,
               class_2.method_7(-1820296257):true
            });
         }
      }
      
      public static function method_3857() : void
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         if(!_GROUND)
         {
            return;
         }
         if(UI.var_2779 && !_autoScroll && var_102)
         {
            if(var_2228)
            {
               tx = int(stage.mouseX - var_3179);
               ty = int(stage.mouseY - var_3807);
               _loc4_ = stage.mouseX - (var_3179 + var_3968);
               _loc5_ = stage.mouseY - (var_3807 + var_4260);
               _loc6_ = Math.abs(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               if(_loc6_ > class_31.const_8.Get())
               {
                  var_1394 = true;
                  class_456.Hide();
                  class_142.Hide();
               }
               var_795 = const_2214;
            }
            else if(class_449.method_4423)
            {
               tx = tx + var_795 * class_449.method_4216;
               ty = ty + var_795 * class_449.method_3348;
               if(var_795 < const_1908)
               {
                  var_795 = var_795 + const_4287;
               }
               else
               {
                  var_795 = const_1908;
               }
            }
         }
         tx = method_1425(tx);
         ty = method_1801(ty);
         var _loc1_:* = 2;
         var _loc2_:int = _GROUND.x;
         var _loc3_:int = _GROUND.y;
         if(_loc2_ < tx)
         {
            _loc2_ = _loc2_ + int((tx - _loc2_) / 2);
         }
         else if(_loc2_ > tx)
         {
            _loc2_ = _loc2_ - int((_loc2_ - tx) / 2);
         }
         if(Math.abs(_loc2_ - tx) <= 2)
         {
            _loc2_ = tx;
            _loc1_--;
         }
         if(_loc3_ < ty - 1)
         {
            _loc3_ = _loc3_ + (ty - _loc3_) / 2;
         }
         else
         {
            _loc3_ = _loc3_ - (_loc3_ - ty) / 2;
         }
         if(Math.abs(_loc3_ - ty) <= 2)
         {
            _loc3_ = ty;
            _loc1_--;
         }
         if(!(_loc1_ == 0 || _autoScroll))
         {
            var_68.x = int(_loc2_);
            var_68.y = int(_loc3_);
         }
         if(class_31.method_200())
         {
            method_3570();
         }
      }
      
      public static function method_2024(param1:int, param2:int) : Boolean
      {
         var _loc3_:int = class_31.method_57;
         var _loc4_:int = class_31.method_110;
         return param1 + const_1014 > (-_GROUND.x + (0 - (_loc3_ - GAME.const_240) * 0.5)) * 2 && param1 - const_1014 < (-_GROUND.x + (_loc3_ - (_loc3_ - GAME.const_240) * 0.5)) * 2 && param2 + const_1014 > (-_GROUND.y + (0 - (_loc4_ - GAME.const_251) * 0.5)) * 2 && param2 - const_1014 < (-_GROUND.y + (_loc4_ - (_loc4_ - GAME.const_251) * 0.5)) * 2;
      }
      
      public static function method_743(param1:int, param2:int) : void
      {
         var _loc3_:int = method_1425(param1);
         var _loc4_:int = method_1801(param2);
         if(_GROUND.x != _loc3_)
         {
            _GROUND.x = _loc3_;
         }
         if(_GROUND.y != _loc4_)
         {
            _GROUND.y = _loc4_;
         }
      }
      
      public static function method_6106() : Point
      {
         return new Point(_GROUND.mouseX,_GROUND.mouseY);
      }
      
      public static function method_1425(param1:int) : int
      {
         var _loc4_:* = 0;
         var _loc2_:int = class_31.method_57;
         _loc4_ = const_2033 / 2 + (760 - _loc2_) / 2;
         if(param1 > _loc4_)
         {
            var param1:int = _loc4_;
         }
         _loc4_ = -const_2033 / 2 + (760 + _loc2_) / 2 + 4;
         if(param1 < _loc4_)
         {
            param1 = _loc4_;
         }
         return param1;
      }
      
      public static function method_1801(param1:int) : int
      {
         var _loc5_:* = 0;
         var _loc2_:int = class_31.method_110 - (class_31.method_57 > 760?0:150);
         _loc2_ = _loc2_ + (class_31.method_57 <= 760 && !UI.var_580?225:0);
         _loc5_ = const_2221 / 2 + (750 - _loc2_) / 2;
         if(param1 > _loc5_)
         {
            var param1:int = _loc5_;
         }
         _loc5_ = -const_2221 / 2 + (750 + _loc2_) / 2 + 4;
         if(param1 < _loc5_)
         {
            param1 = _loc5_;
         }
         return param1;
      }
      
      public static function get method_8275() : Boolean
      {
         return var_4309;
      }
      
      public function method_7841() : void
      {
         if(_canvas && _canvas.width !== class_31.method_57 || _canvas.height !== class_31.method_110)
         {
            _canvas = new BitmapData(class_31.method_57,class_31.method_110,true,4.27825536E9);
            var_2553.bitmapData = _canvas;
            var_2553.x = class_31.method_115;
            var_2553.y = class_31.method_87;
            var_3083.method_5765 = _canvas;
         }
      }
   }
}

import flash.display.DisplayObject;

class DepthObject extends Object
{
    
   public var _DispObj:DisplayObject;
   
   public var _Depth:int;
   
   function DepthObject(param1:DisplayObject, param2:int)
   {
      super();
      this._DispObj = param1;
      this._Depth = param2;
   }
   
   public static function SortOnDepth(param1:DepthObject, param2:DepthObject) : int
   {
      if(param1._Depth < param2._Depth)
      {
         return -1;
      }
      if(param1._Depth > param2._Depth)
      {
         return 1;
      }
      return 0;
   }
}
