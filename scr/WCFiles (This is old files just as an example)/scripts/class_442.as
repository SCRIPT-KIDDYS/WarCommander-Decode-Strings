package
{
   import org.osflash.signals.class_59;
   import package_160.class_1104;
   import package_160.class_1103;
   import package_160.class_1109;
   import package_160.class_1107;
   import package_160.class_1121;
   import package_160.class_1120;
   import package_160.class_1108;
   import package_160.class_1114;
   import package_160.class_1061;
   import package_160.class_1115;
   import package_160.class_1119;
   import package_160.class_1100;
   import package_160.class_1122;
   import package_160.class_1102;
   import package_160.class_1118;
   import package_160.class_1099;
   import package_160.class_1112;
   import package_160.class_1105;
   import package_160.class_1116;
   import package_160.class_1106;
   import package_160.class_1113;
   import package_160.class_1110;
   import package_160.class_1111;
   import package_160.class_1101;
   import package_160.class_1117;
   import package_2.class_201;
   import com.cc.utils.class_191;
   import com.cc.utils.class_9;
   import flash.events.Event;
   import package_32.class_440;
   import package_32.class_441;
   import package_32.SaveManager;
   import package_15.class_43;
   import flash.geom.Point;
   import com.cc.ui.MouseHandler;
   import com.cc.units.UnitManager;
   import com.cc.units.class_136;
   import com.cc.logging.class_18;
   import package_2.class_110;
   
   public class class_442 extends Object
   {
       
      private var var_2081:int = -1;
      
      private var var_138:int = -1;
      
      private var var_1585:int = -1;
      
      private var var_2466:Boolean;
      
      private var var_4090:Boolean;
      
      private var var_4257:Boolean = false;
      
      private var var_3629:class_172;
      
      private var var_861:class_172;
      
      private var var_4176:class_59;
      
      protected var var_1603:class_1104;
      
      protected var attack:class_1103;
      
      protected var base:class_1109;
      
      protected var name_76:class_1107;
      
      protected var name_75:class_1121;
      
      protected var var_4732:class_1120;
      
      protected var flags:class_1108;
      
      protected var var_4080:class_1114;
      
      protected var var_1636:class_1061;
      
      protected var var_4109:class_1115;
      
      protected var var_5199:class_1119;
      
      protected var var_5065:class_1100;
      
      protected var name_48:class_1122;
      
      protected var name_64:class_1102;
      
      protected var var_698:class_1118;
      
      protected var var_3564:class_1099;
      
      protected var var_5270:class_1112;
      
      protected var repairShop:class_1105;
      
      protected var name_39:class_1116;
      
      protected var var_1749:class_1106;
      
      protected var var_5137:class_1113;
      
      protected var name_63:class_1110;
      
      protected var var_5077:class_1111;
      
      protected var worldmap:class_1101;
      
      protected var var_5002:class_1117;
      
      public function class_442(param1:Boolean = true)
      {
         this.var_4176 = new class_59(int,int);
         super();
         if(param1)
         {
            this.method_6660();
         }
      }
      
      public static function method_3415(param1:int) : String
      {
         switch(param1)
         {
            case class_105.const_158:
               return class_2.method_7(-1820302284);
            case class_105.const_182:
               return class_2.method_7(-1820298043);
            case class_105.const_254:
               return class_2.method_7(-1820310623);
            case class_105.const_193:
               return class_2.method_7(-1820311025);
            case class_105.const_284:
               return class_2.method_7(-1820296833);
            case class_105.const_310:
               return class_2.method_7(-1820297917);
            case class_105.const_398:
               return class_2.method_7(-1820299391);
            case class_105.const_236:
               return class_2.method_7(-1820297922);
            case class_105.const_280:
               return class_2.method_7(-1820300855);
            case class_105.const_345:
               return class_2.method_7(-1820311509);
            case class_105.const_231:
               return class_2.method_7(-1820296480);
            case class_105.const_319:
               return class_2.method_7(-1820296274);
            case class_105.const_301:
               return class_2.method_7(-1820297871);
            case class_105.const_723:
               return class_2.method_7(-1820310871);
            default:
               return class_2.method_7(-1820295630);
         }
      }
      
      public function method_391() : int
      {
         return this.var_138;
      }
      
      public function method_3507() : String
      {
         return "";
      }
      
      public function method_49() : class_172
      {
         return this.var_861;
      }
      
      public function method_1605() : void
      {
         this.var_4090 = true;
      }
      
      public function method_1042(param1:class_201) : void
      {
         if(!this.var_2466)
         {
            this.name_63.method_748();
            this.name_64.method_3892();
            this.var_1636.setup();
            this.base.setup();
            this.attack.setup();
            this.attack.method_1473(param1);
            this.var_2466 = true;
         }
      }
      
      public function goHome() : void
      {
         var _loc1_:class_172 = null;
         if(this.var_1603.method_7378())
         {
            this.var_1603.method_6912(this.name_1.method_179);
         }
         else if(this.name_1 != null && this.method_1465())
         {
            _loc1_ = new class_172();
            _loc1_.method_93 = this.name_1.id;
            _loc1_.var_509 = this.name_1.name_44;
            _loc1_.var_200 = this.name_1.method_179;
            this.method_302(class_105.const_158,_loc1_);
         }
      }
      
      public function method_924() : Boolean
      {
         return class_191.method_924(this.var_138);
      }
      
      public function method_167() : Boolean
      {
         return this.var_2466 == false && class_191.method_2001(this.var_138);
      }
      
      public function method_1373() : Boolean
      {
         return this.var_1585 != class_105.const_203;
      }
      
      public function method_302(param1:int, param2:class_172 = null, param3:Boolean = false) : void
      {
         if(this.var_1585 != class_105.const_203)
         {
            return;
         }
         if(param1 == class_105.const_158)
         {
            if(param2 == null)
            {
               this.var_1636.method_74(class_9.const_2684,class_2.method_7(-1820311427));
               return;
            }
            if(param2.method_93 != this.name_1.id || param2.baseID != 0)
            {
               this.var_1636.method_74(class_9.const_2924,class_2.method_7(-1820301530) + param2.method_93 + class_2.method_7(-1820298395) + param2.baseID);
               return;
            }
         }
         var _loc4_:* = "";
         if(param2 != null)
         {
            _loc4_ = param2.toString();
         }
         if(this.name_48.method_52)
         {
            this.var_4080.Log(FrameworkLogger.KEY_LOAD_ERROR,class_2.method_7(-1820302572) + param1 + class_2.method_7(-1820311455) + _loc4_ + class_2.method_7(-1820311417) + this.name_48.state + class_2.method_7(-1820311455) + this.name_48.method_648());
            return;
         }
         var _loc5_:class_172 = this.method_49();
         if(!param3 && param2 && !this.method_65() && !(this.method_23() && param2.baseID == this.name_1.method_237) && !(_loc5_ && _loc5_.baseID != 0 && param2.baseID == _loc5_.baseID))
         {
            this.name_39.method_5719();
         }
         else if(param3 || class_191.method_1835(param1))
         {
            this.name_39.method_1398();
         }
         this.var_2081 = this.var_138;
         this.var_1585 = param1;
         this.var_3629 = this.var_861;
         this.var_861 = param2;
         if(this.flags.method_2572)
         {
            this.var_4080.Log(FrameworkLogger.KEY_STATE_CHANGED,class_2.method_7(-1820308091) + param1 + class_2.method_7(-1820311486) + _loc4_);
         }
         this.method_1940();
      }
      
      private function method_1940(param1:Event = null) : void
      {
         this.name_39.removeEventListener(class_440.const_80,class_441.const_610,this.method_1940,SaveManager.const_2070);
         if(this.name_39.method_7428())
         {
            this.var_3564.show(class_43.getString(class_2.method_7(-1820302024)),true);
            this.name_39.addEventListener(class_440.const_80,class_441.const_610,this.method_1940,true,SaveManager.const_2070);
         }
         else
         {
            this.method_1555();
         }
      }
      
      public function method_1555() : void
      {
         var _loc3_:Point = null;
         if(this.var_1585 == class_105.const_203)
         {
            return;
         }
         if(this.var_1585 == class_105.const_158)
         {
            if(this.var_861 == null)
            {
               this.var_1636.method_74(class_9.const_2992,class_2.method_7(-1820306785));
               return;
            }
            if(this.var_861.method_93 != this.name_1.id || this.var_861.baseID != 0)
            {
               this.var_1636.method_74(class_9.const_2411,class_2.method_7(-1820309223) + this.var_861.method_93 + class_2.method_7(-1820298395) + this.var_861.baseID);
               return;
            }
         }
         if(this.var_1585 == class_105.const_182 && !this.worldmap.method_859)
         {
            this.var_3564.show(class_43.getString(class_2.method_7(-1820302024)),true);
            this.worldmap.method_5751();
            return;
         }
         this.var_138 = this.var_1585;
         this.var_1585 = class_105.const_203;
         this.var_2466 = false;
         this.var_4257 = false;
         this.var_5270.method_5022();
         this.var_3564.method_208();
         this.name_39.method_1398();
         MouseHandler.instance.clear();
         if(this.var_2081 != class_105.const_203)
         {
            this.var_5065.method_6062();
         }
         switch(this.var_2081)
         {
            case class_105.const_182:
               if(this.worldmap.method_2088)
               {
                  this.worldmap.method_2088.method_2344();
                  this.worldmap.method_5984();
                  break;
               }
               break;
            case class_105.const_254:
            case class_105.const_284:
            case class_105.const_310:
            case class_105.const_280:
            case class_105.const_345:
            case class_105.const_236:
               if(this.var_3629)
               {
                  _loc3_ = new Point(this.var_3629.var_1219,this.var_3629.var_1254);
               }
               else
               {
                  _loc3_ = this.name_1.method_59;
               }
               this.worldmap.setLocation(_loc3_);
               if(!this.method_706())
               {
                  this.name_76.onLeaveBattle();
                  break;
               }
               break;
         }
         var _loc1_:* = this.var_2081 == class_105.const_158;
         if(_loc1_ || this.var_2081 == class_105.const_236)
         {
            this.var_5199.method_4830();
         }
         if(_loc1_)
         {
            this.repairShop.method_5324();
         }
         var _loc2_:class_136 = UnitManager.class_2093.method_656(true);
         if(_loc2_ != null)
         {
            _loc2_.method_7401();
         }
         this.name_63.method_748();
         this.name_75.method_748();
         this.name_64.method_3892();
         this.var_5002.method_748();
         if(this.var_138 != class_105.const_193)
         {
            this.var_4090 = false;
         }
         this.var_1636.setup();
         this.base.setup();
         this.var_1749.stop(class_18.const_1404);
         this.var_1749.stop(class_18.const_2443);
         this.var_1749.stop(class_18.const_1708);
         this.var_1749.stop(class_18.const_2036);
         this.var_1749.stop(class_18.const_1094);
         this.var_1749.stop(class_18.const_1955);
         this.name_48.method_1796();
         this.var_4176.dispatch(this.var_138,this.var_2081);
      }
      
      public function method_23() : Boolean
      {
         return !this.var_1603.isAttacker && class_191.method_3807(this.var_138);
      }
      
      public function method_131() : Boolean
      {
         return !this.var_1603.isAttacker && class_191.method_2585(this.var_138);
      }
      
      public function method_885() : Boolean
      {
         return this.var_138 == class_105.const_398;
      }
      
      public function method_55() : Boolean
      {
         return this.method_574() || !this.var_1603.isAttacker && class_191.method_2363(this.var_138);
      }
      
      public function method_1754() : Boolean
      {
         return class_191.method_5008(this.var_138);
      }
      
      public function method_118() : Boolean
      {
         return this.var_138 == class_105.const_182;
      }
      
      public function method_65() : Boolean
      {
         return this.var_1603.isAttacker || class_191.isBattle(this.var_138);
      }
      
      public function method_706() : Boolean
      {
         return class_191.method_2429(this.var_138);
      }
      
      public function method_171() : Boolean
      {
         return class_191.method_1835(this.var_138);
      }
      
      public function method_509() : Boolean
      {
         return class_191.method_2517(this.var_138);
      }
      
      public function method_184() : Boolean
      {
         return class_191.method_4172(this.var_138);
      }
      
      public function method_457() : Boolean
      {
         return this.var_138 == class_105.const_254;
      }
      
      public function method_466() : Boolean
      {
         return this.var_138 == class_105.const_236;
      }
      
      public function method_450() : Boolean
      {
         return class_191.method_2281(this.var_138) && this.method_49().var_363 != class_110.const_61;
      }
      
      public function method_244() : Boolean
      {
         return class_191.method_5945(this.var_138);
      }
      
      public function method_1917() : Boolean
      {
         return class_191.method_2011(this.var_138);
      }
      
      public function method_2664() : Boolean
      {
         return this.method_450() || this.method_1917() || this.method_1976();
      }
      
      public function method_2915() : Boolean
      {
         return class_191.method_2071(this.var_138);
      }
      
      public function method_81() : Boolean
      {
         return class_191.method_3384(this.var_138);
      }
      
      public function method_109() : Boolean
      {
         return class_191.method_2154(this.var_138);
      }
      
      public function method_949() : Boolean
      {
         return class_191.method_2039(this.var_138);
      }
      
      public function method_1976() : Boolean
      {
         return this.method_949() && !this.method_560();
      }
      
      public function method_560() : Boolean
      {
         return this.method_49().method_93 == 0;
      }
      
      public function method_574() : Boolean
      {
         return this.var_138 == class_105.const_723;
      }
      
      public function method_102() : Boolean
      {
         return this.method_65() && this.var_2466;
      }
      
      public function method_1985() : Boolean
      {
         return this.method_81() && this.var_4090;
      }
      
      public function method_189() : Boolean
      {
         return this.var_5077.method_6221 || this.var_4109.attacking && !this.var_4109.method_2034 || this.method_65() && this.var_1603.method_1453();
      }
      
      public function method_2266() : Boolean
      {
         var _loc1_:class_172 = this.method_49();
         return this.var_5137.method_234 && (this.method_509() || this.var_138 == class_105.const_231) && _loc1_.var_363 == class_110.const_61 && !this.method_7350(_loc1_);
      }
      
      public function method_199() : Boolean
      {
         return this.var_138 == class_105.const_158;
      }
      
      public function method_891() : Boolean
      {
         if(this.method_167())
         {
            return false;
         }
         return this.var_138 == class_105.const_158 || this.var_138 == class_105.const_193;
      }
      
      public function method_1465() : Boolean
      {
         if(this.worldmap.method_21 != null)
         {
            return !this.worldmap.method_21.method_1800();
         }
         return true;
      }
      
      public function method_141() : Point
      {
         var _loc1_:Point = null;
         if(!this.method_118())
         {
            if(this.method_23())
            {
               return this.name_1.method_59;
            }
            if(this.var_861)
            {
               _loc1_ = new Point(this.var_861.var_1219,this.var_861.var_1254);
               return _loc1_;
            }
         }
         return null;
      }
      
      public function set method_768(param1:Boolean) : void
      {
         this.var_4257 = param1;
      }
      
      public function get method_768() : Boolean
      {
         return this.var_4257;
      }
      
      public function get name_15() : class_59
      {
         return this.var_4176;
      }
      
      private function method_7350(param1:class_172) : Boolean
      {
         return this.var_4732.method_5757(param1.var_244,param1.method_206);
      }
      
      private function method_6660() : void
      {
         this.var_1603 = new class_1104();
         this.attack = new class_1103();
         this.base = new class_1109();
         this.name_76 = new class_1107();
         this.name_75 = new class_1121();
         this.var_4732 = new class_1120();
         this.flags = new class_1108();
         this.var_4080 = new class_1114();
         this.var_1636 = new class_1061();
         this.var_4109 = new class_1115();
         this.var_5199 = new class_1119();
         this.var_5065 = new class_1100();
         this.name_48 = new class_1122();
         this.name_64 = new class_1102();
         this.var_698 = new class_1118();
         this.var_3564 = new class_1099();
         this.var_5270 = new class_1112();
         this.repairShop = new class_1105();
         this.name_39 = new class_1116();
         this.var_1749 = new class_1106();
         this.var_5137 = new class_1113();
         this.name_63 = new class_1110();
         this.var_5077 = new class_1111();
         this.worldmap = new class_1101();
         this.var_5002 = new class_1117();
      }
      
      protected function get name_1() : class_1118
      {
         if(this.var_698.method_1376)
         {
            return this.var_698;
         }
         return null;
      }
   }
}
