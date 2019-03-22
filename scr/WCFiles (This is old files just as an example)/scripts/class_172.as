package
{
   import package_2.class_8;
   import com.cc.utils.class_61;
   import com.cc.worldmap.class_52;
   import com.cc.worldmap.WorldmapController;
   import package_29.DepositManager;
   import package_2.class_110;
   import com.cc.units.PlatoonManager;
   import com.cc.utils.SecNum;
   import com.cc.worldmap.class_314;
   import package_57.class_185;
   import package_29.class_111;
   
   public class class_172 extends Object
   {
      
      public static const const_5400:int = 100;
       
      private var var_4432:SecNum;
      
      public var var_509:String = "";
      
      public var var_200:String = "";
      
      public var var_1219:int = 0;
      
      public var var_1254:int = 0;
      
      public var var_363:int = 0;
      
      private var var_3001:SecNum;
      
      private var var_3891:SecNum;
      
      public var var_379:int = 0;
      
      public var var_299:int;
      
      public var var_244:int = 0;
      
      public var var_311:int = 0;
      
      public var var_3947:int = 0;
      
      private var var_3748:int = 0;
      
      public var specialAttributes:class_314;
      
      public var var_2118:Number = 0;
      
      public var var_1153:String = "";
      
      public var _height:int = 0;
      
      public function class_172()
      {
         this.var_4432 = new SecNum(0);
         this.var_3001 = new SecNum(0);
         this.var_3891 = new SecNum(0);
         this.var_299 = class_111.const_358;
         this.specialAttributes = class_314.method_7658;
         super();
      }
      
      public static function method_630(param1:class_8, param2:int = 0) : class_172
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc3_:class_172 = new class_172();
         _loc3_.var_509 = param1.mapId;
         _loc3_.var_200 = param1.entityId;
         _loc3_.var_1219 = param1.x;
         _loc3_.var_1254 = param1.y;
         _loc3_.var_363 = param1.entityType;
         _loc3_.var_2118 = Number(class_61.method_36(param1,class_52.const_650)) / 1000;
         _loc3_._height = param2;
         _loc3_.method_93 = int(param1.ownerId);
         _loc3_.baseID = int(class_61.method_36(param1,class_52.const_458));
         if(WorldmapController.method_81(param1.entityType))
         {
            _loc3_.var_299 = DepositManager.class_2093.method_1983(param1.entityType);
            _loc3_.var_379 = int(class_61.method_36(param1,class_52.const_132));
         }
         if(WorldmapController.method_81(param1.entityType) || param1.entityType == class_110.const_61)
         {
            _loc3_.var_311 = parseInt(class_61.method_36(param1,class_52.const_156));
            _loc3_.method_206 = parseInt(class_61.method_36(param1,class_52.const_142));
            if(param1.entityType == class_110.const_61)
            {
               _loc3_.var_244 = parseInt(class_61.method_36(param1,class_52.LEVEL));
               _loc3_.var_3947 = parseInt(class_61.method_36(param1,class_52.const_2154));
               _loc3_.specialAttributes = class_61.method_1823(param1);
            }
         }
         if(param1.entityType == class_110.const_32)
         {
            _loc4_ = class_61.method_36(param1,class_52.const_317);
            _loc5_ = class_61.method_36(param1,class_52.const_485);
            if(_loc4_ && _loc4_ != "")
            {
               _loc3_.var_1153 = _loc4_;
            }
            else if(_loc5_ && _loc5_ != "")
            {
               _loc3_.var_1153 = PlatoonManager.class_2093.method_1256(int(parseInt(_loc5_)));
            }
            else
            {
               _loc3_.var_1153 = PlatoonManager.class_2093.const_607;
            }
         }
         return _loc3_;
      }
      
      public function clone() : class_172
      {
         var _loc1_:class_172 = new class_172();
         _loc1_.baseID = this.baseID;
         if(this.var_509 != null)
         {
            _loc1_.var_509 = this.var_509.concat();
         }
         else
         {
            _loc1_.var_509 = null;
         }
         if(this.var_200 != null)
         {
            _loc1_.var_200 = this.var_200.concat();
         }
         else
         {
            _loc1_.var_200 = null;
         }
         _loc1_.var_1219 = this.var_1219;
         _loc1_.var_1254 = this.var_1254;
         _loc1_.var_363 = this.var_363;
         _loc1_.method_93 = this.method_93;
         _loc1_.var_379 = this.var_379;
         _loc1_.var_299 = this.var_299;
         _loc1_.var_244 = this.var_244;
         _loc1_.var_311 = this.var_311;
         _loc1_.var_3748 = this.var_3748;
         _loc1_.var_3947 = this.var_3947;
         _loc1_.var_2118 = this.var_2118;
         _loc1_.specialAttributes = this.specialAttributes;
         _loc1_.method_890 = this.method_890;
         if(this.var_1153 != null)
         {
            _loc1_.var_1153 = this.var_1153.concat();
         }
         else
         {
            _loc1_.var_1153 = null;
         }
         _loc1_._height = this._height;
         return _loc1_;
      }
      
      public function get method_93() : int
      {
         return this.var_3001.Get();
      }
      
      public function set method_93(param1:int) : void
      {
         this.var_3001.Set(param1);
      }
      
      public function get baseID() : int
      {
         return this.var_4432.Get();
      }
      
      public function set baseID(param1:int) : void
      {
         this.var_4432.Set(param1);
      }
      
      public function get method_890() : int
      {
         return this.var_3891.Get();
      }
      
      public function set method_890(param1:int) : void
      {
         this.var_3891.Set(param1);
      }
      
      public function method_1417() : String
      {
         switch(class_105.method_391())
         {
            case class_105.const_158:
               return "build";
            case class_105.const_193:
               return class_2.method_7(-1820301591);
            case class_105.const_398:
               return class_2.method_7(-1820299440);
            default:
               switch(this.var_363)
               {
                  case class_110.const_48:
                  case class_110.const_55:
                  case class_110.const_40:
                  case class_110.const_57:
                     return class_105.method_102()?class_2.method_7(-1820309377):class_2.method_7(-1820296996);
                  case class_110.const_42:
                     return class_105.method_102()?"attack":"view";
                  case class_110.const_61:
                     return class_105.method_102()?class_2.method_7(-1820296025):class_2.method_7(-1820296188);
                  default:
                     return "";
               }
         }
      }
      
      public function method_1468() : String
      {
         return this.var_1219.toString() + "," + this.var_1254.toString();
      }
      
      public function toString() : String
      {
         var _loc1_:* = "{";
         var _loc2_:Vector.<String> = new Vector.<String>();
         if(this.baseID)
         {
            _loc2_.push(class_2.method_7(-1820307461) + this.baseID);
         }
         if(this.method_890)
         {
            _loc2_.push(class_2.method_7(-1820310036) + this.method_890);
         }
         if(this.var_509)
         {
            _loc2_.push(class_2.method_7(-1820311536) + this.var_509);
         }
         if(this.var_200)
         {
            _loc2_.push(class_2.method_7(-1820309034) + this.var_200);
         }
         if(this.var_1219)
         {
            _loc2_.push(class_2.method_7(-1820300763) + this.var_1219);
         }
         if(this.var_1254)
         {
            _loc2_.push(class_2.method_7(-1820300739) + this.var_1254);
         }
         if(this.var_363)
         {
            _loc2_.push(class_2.method_7(-1820309760) + this.var_363);
         }
         if(this.method_93)
         {
            _loc2_.push(class_2.method_7(-1820309716) + this.method_93);
         }
         if(this.var_379)
         {
            _loc2_.push(class_2.method_7(-1820302579) + this.var_379);
         }
         if(this.var_299)
         {
            _loc2_.push(class_2.method_7(-1820302269) + this.var_299);
         }
         if(this.var_244)
         {
            _loc2_.push(class_2.method_7(-1820306839) + this.var_244);
         }
         if(this.var_311)
         {
            _loc2_.push(class_2.method_7(-1820298260) + this.var_311);
         }
         if(this.method_206)
         {
            _loc2_.push(class_2.method_7(-1820307552) + this.method_206);
         }
         if(this.var_1153)
         {
            _loc2_.push(class_2.method_7(-1820307898) + this.var_1153);
         }
         if(this._height)
         {
            _loc2_.push(class_2.method_7(-1820309475) + this._height);
         }
         if(this.var_2118)
         {
            _loc2_.push(class_2.method_7(-1820296676) + this.var_2118);
         }
         _loc1_ = _loc1_ + _loc2_.join(",");
         _loc1_ = _loc1_ + "}";
         return _loc1_;
      }
      
      public function get method_206() : int
      {
         return this.var_3748;
      }
      
      public function set method_206(param1:int) : void
      {
         this.var_3748 = param1;
      }
      
      public function get method_6145() : int
      {
         var _loc1_:int = this.method_206;
         if(class_185.method_514(_loc1_))
         {
            _loc1_ = _loc1_ * class_31.const_8.Get() + class_31.const_65.Get();
            if(this.specialAttributes.isBossBase())
            {
               _loc1_ = _loc1_ + class_31.const_65.Get();
            }
         }
         return _loc1_;
      }
   }
}
