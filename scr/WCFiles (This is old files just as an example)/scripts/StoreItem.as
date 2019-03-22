package
{
   import com.cc.utils.AudioController;
   import com.cc.build.BldgFoundation;
   import com.cc.build.class_131;
   import com.cc.build.class_181;
   import package_15.class_43;
   import com.cc.build.class_130;
   import package_54.class_590;
   import package_4.class_216;
   import package_54.class_176;
   import com.cc.units.PlatoonManager;
   import com.cc.units.C_Platoon;
   import com.adverserealms.log.Logger;
   import flash.geom.Point;
   import com.cc.build.C_Buildings;
   import com.cc.build.BuildingData;
   import com.cc.build.BuildingLevelData;
   import com.cc.towers.TowerResearch;
   import com.cc.towers.Towers;
   import com.cc.towers.TowerData;
   import package_66.class_228;
   import com.cc.build.class_184;
   import com.cc.units.Units;
   import com.cc.utils.SecNum;
   import package_50.class_167;
   import com.cc.units.UnitData;
   import com.cc.units.UnitLevelData;
   import com.cc.tech.class_405;
   import com.cc.units.AbstractUnit;
   import package_56.class_204;
   import package_56.class_566;
   import package_121.class_560;
   import com.cc.tech.TechManager;
   import package_38.ItemStoreManager;
   import package_18.Alias;
   import package_20.class_206;
   import package_60.MissileManager;
   import package_60.MercenaryManager;
   import package_32.SaveManager;
   import com.cc.utils.js_utils.WCJSON;
   import package_20.class_158;
   import com.cc.utils.class_9;
   import com.cc.units.UnitManager;
   import com.cc.battle.class_118;
   import flash.events.IOErrorEvent;
   import package_56.class_180;
   
   public class StoreItem extends Object
   {
      
      public static const const_165:String = "IU";
      
      public static const const_218:String = "SP4";
      
      public static const const_694:String = "BUF";
      
      public static const const_649:String = "FIX";
      
      public static const const_957:String = "UFIX";
      
      public static const const_999:String = "PFIX";
      
      public static const const_576:String = "CB";
      
      public static const const_1507:String = "ALIASC";
      
      public static const const_1348:String = "RBI";
      
      public static const const_684:String = "MF";
      
      public static const const_367:String = "ENL";
      
      public static const const_509:String = "BIP";
      
      public static const const_108:String = "BR";
      
      public static const const_5658:String = "BRTOPUP";
      
      public static const const_529:String = "BLK";
      
      public static const const_922:String = "MERCENARY";
      
      public static const const_664:String = "MIS";
      
      public static const const_807:String = "UIP";
      
      public static const const_884:String = "LTP";
      
      public static const const_5028:String = "GRR";
      
      public static const const_5149:String = "STAR";
      
      public static const const_3419:String = "STARP";
      
      private static const const_671:String = "b";
      
      private static const const_929:String = "p";
      
      private static const const_878:String = "u";
      
      private static const const_962:String = "tu";
      
      private static const const_1061:String = "e";
      
      private static const const_906:String = "tr";
      
      private static const const_809:String = "te";
      
      private static const const_1711:String = "fa";
      
      private static const const_1423:String = "uxpu";
      
      private static const const_742:String = "b";
      
      private static const const_758:String = "u";
      
      private static const const_812:String = "r";
      
      private static const const_696:String = "e";
      
      private static const const_853:String = "cb";
      
      private static const const_800:String = "tr";
      
      private static const const_863:String = "uu";
      
      private static const const_844:String = "tu";
      
      private static const const_826:String = "p";
      
      private static const const_942:String = "u";
      
      private static const const_2279:int = 64000;
       
      private var var_521:String;
      
      public var var_61:SecNum;
      
      private var var_15:class_714;
      
      private var var_677:String;
      
      private var _title:String;
      
      private var var_5154:int = 0;
      
      private var var_4885:Object = null;
      
      public function StoreItem(param1:String, param2:String, param3:String, param4:int, param5:class_714)
      {
         super();
         this.var_521 = param1;
         this._title = param2;
         this.var_677 = param3;
         this.var_61 = new SecNum(param4);
         this.var_15 = param5;
         if(this.var_15 == null)
         {
            this.var_15 = new class_714();
         }
      }
      
      public static function method_681() : void
      {
         if(int(Math.random() * 5) == 1)
         {
            AudioController.instance.method_32(class_2.method_7(-1820297804));
         }
         else
         {
            AudioController.instance.method_32(class_2.method_7(-1820302558));
         }
      }
      
      public static function method_4466(param1:String, param2:String, param3:String, param4:int, param5:int) : StoreItem
      {
         var _loc6_:class_714 = null;
         if(param5 > 0)
         {
            _loc6_ = new class_714();
            _loc6_.q = param5;
         }
         return new StoreItem(param1,param2,param3,param4,_loc6_);
      }
      
      public static function method_5340(param1:BldgFoundation) : StoreItem
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc6_:class_131 = null;
         var _loc7_:class_181 = null;
         if(param1._repairing)
         {
            if(param1.isUpgrading())
            {
               _loc2_ = class_43.getString(class_2.method_7(-1820302525));
               _loc3_ = class_43.getString(class_2.method_7(-1820296427),{"building":param1.buildingData.name});
            }
            else
            {
               _loc2_ = class_43.getString(class_2.method_7(-1820302319));
               _loc3_ = class_43.getString(class_2.method_7(-1820309826),{"building":param1.buildingData.name});
            }
         }
         else
         {
            _loc2_ = param1.isUpgrading()?class_43.getString(class_2.method_7(-1820296821)):class_43.getString(class_2.method_7(-1820299733));
            _loc3_ = param1.isUpgrading()?class_43.getString(class_2.method_7(-1820296821),{"building":param1.buildingData.name}):class_43.getString(class_2.method_7(-1820299257),{"building":param1.buildingData.name});
         }
         var _loc4_:int = param1.method_143() + param1.method_590();
         var _loc5_:class_714 = new class_714();
         _loc5_.id = param1.id.toString();
         _loc5_.dozer = true;
         _loc5_.time = _loc4_;
         if(param1.method_286())
         {
            _loc5_.op = const_742;
            _loc5_.level = param1.level;
            _loc5_.typeID = param1.type;
         }
         else if(param1.isUpgrading())
         {
            _loc5_.op = const_758;
            _loc5_.level = param1.level;
            _loc5_.typeID = param1.type;
         }
         else if(param1 is class_130 && class_130(param1).isEquipping())
         {
            _loc5_.op = const_696;
            _loc6_ = param1 as class_131;
            _loc5_.typeID = _loc6_.equipType;
            _loc5_.level = _loc6_.equipLevel;
            _loc5_.platformLevel = _loc6_.level;
         }
         else if(param1.isChanging)
         {
            _loc5_.op = const_853;
            _loc7_ = param1 as class_181;
            _loc5_.typeID = _loc7_.changeType;
            _loc5_.oldTypeID = _loc7_.type;
            _loc5_.level = _loc7_.level;
         }
         return new StoreItem(const_218,_loc2_,_loc3_,class_32.method_153(_loc4_),_loc5_);
      }
      
      public static function method_7300(param1:BldgFoundation) : StoreItem
      {
         var _loc2_:String = class_43.getString(class_2.method_7(-1820299257),{"building":param1.buildingData.name});
         var _loc3_:int = param1.method_143();
         var _loc4_:class_714 = new class_714();
         _loc4_.id = param1.id.toString();
         _loc4_.op = const_742;
         _loc4_.level = param1.level;
         _loc4_.typeID = param1.type;
         _loc4_.time = _loc3_;
         return new StoreItem(const_218,class_43.getString(class_2.method_7(-1820299733)),_loc2_,class_32.method_153(_loc3_),_loc4_);
      }
      
      public static function method_6452(param1:BldgFoundation) : StoreItem
      {
         var _loc2_:String = class_43.getString(class_2.method_7(-1820299476),{"building":param1.buildingData.name});
         var _loc3_:int = param1.method_590();
         var _loc4_:class_714 = new class_714();
         _loc4_.id = param1.id.toString();
         _loc4_.op = const_812;
         _loc4_.level = param1.level;
         _loc4_.typeID = param1.type;
         _loc4_.time = _loc3_;
         return new StoreItem(const_218,class_43.getString(class_2.method_7(-1820301881)),_loc2_,class_32.method_153(_loc3_),_loc4_);
      }
      
      public static function method_6919(param1:BldgFoundation) : StoreItem
      {
         var _loc2_:int = param1.level + 1;
         var _loc3_:String = class_43.getString(class_2.method_7(-1820300354),{"building":param1.buildingData.name});
         var _loc4_:int = param1.method_143();
         var _loc5_:class_714 = new class_714();
         _loc5_.id = param1.id.toString();
         _loc5_.op = const_758;
         _loc5_.level = _loc2_;
         _loc5_.typeID = param1.type;
         _loc5_.time = _loc4_;
         var _loc6_:Number = param1.method_1732(_loc2_);
         return new StoreItem(const_218,class_43.getString(class_2.method_7(-1820296821)),_loc3_,class_32.method_153(_loc4_,_loc6_,false,false,true),_loc5_);
      }
      
      public static function method_5301(param1:BldgFoundation) : StoreItem
      {
         var _loc5_:class_130 = null;
         var _loc2_:String = class_43.getString(class_2.method_7(-1820309711),{"building":param1.buildingData.name});
         var _loc3_:int = param1.method_143();
         var _loc4_:class_714 = new class_714();
         _loc4_.id = param1.id.toString();
         _loc4_.op = const_696;
         if(param1 is class_130)
         {
            _loc5_ = param1 as class_130;
            _loc4_.typeID = _loc5_.equipType;
            _loc4_.level = _loc5_.equipLevel;
            _loc4_.platformLevel = param1.level;
            _loc4_.time = _loc3_;
            return new StoreItem(const_218,class_43.getString(class_2.method_7(-1820299992)),_loc2_,class_32.method_153(_loc3_),_loc4_);
         }
         FrameworkLogger.Log(FrameworkLogger.KEY_STORE_ERROR,class_2.method_7(-1820310761));
         return null;
      }
      
      public static function method_3239() : StoreItem
      {
         var _loc1_:class_590 = class_590.method_2203();
         var _loc2_:class_714 = new class_714();
         _loc2_.repairEverything = false;
         _loc2_.time = _loc1_.method_472.time;
         return new StoreItem(const_649,class_43.getString(class_2.method_7(-1820295710)),class_43.getString(class_2.method_7(-1820298460),{"time":class_31.method_39(_loc1_.method_472.time)}),_loc1_.method_472.cost,_loc2_);
      }
      
      public static function method_4583() : StoreItem
      {
         var _loc1_:class_590 = class_590.method_2203();
         var _loc2_:class_714 = new class_714();
         _loc2_.repairEverything = true;
         _loc2_.time = _loc1_.method_3027;
         return new StoreItem(const_649,class_43.getString(class_2.method_7(-1820295710)),class_43.getString(class_2.method_7(-1820311172),{"time":class_31.method_39(_loc1_.method_3027)}),_loc1_.method_3378,_loc2_);
      }
      
      public static function method_8279(param1:class_216, param2:int) : StoreItem
      {
         var _loc3_:class_714 = new class_714();
         _loc3_.id = param2.toString();
         _loc3_.time = param1.time;
         _loc3_.unitCounts = class_176.method_4884(param2);
         return new StoreItem(const_957,class_43.getString(class_2.method_7(-1820297337)),class_43.getString(class_2.method_7(-1820307659),{"time":class_31.method_39(param1.time)}),param1.credits,_loc3_);
      }
      
      public static function method_3393(param1:class_216, param2:String) : StoreItem
      {
         var _loc4_:class_714 = null;
         var _loc3_:C_Platoon = PlatoonManager.class_2093.method_359(param2);
         if(_loc3_ != null)
         {
            _loc4_ = new class_714();
            _loc4_.id = param2;
            _loc4_.time = param1.time;
            return new StoreItem(const_999,class_43.getString(class_2.method_7(-1820306887)),class_43.getString(class_2.method_7(-1820299150),{"time":class_31.method_39(param1.time)}),param1.credits,_loc4_);
         }
         Logger.error(class_2.method_7(-1820296230) + param2);
         return null;
      }
      
      public static function method_5106(param1:class_216, param2:int, param3:Point, param4:int) : StoreItem
      {
         var _loc5_:class_714 = new class_714();
         _loc5_.time = param2;
         _loc5_.oldPos = param3;
         _loc5_.oldSector = param4;
         return new StoreItem(const_1348,class_43.getString(class_2.method_7(-1820301216)),class_43.getString(class_2.method_7(-1820298129),{"time":class_31.method_39(param1.time)}),param1.credits,_loc5_);
      }
      
      public static function method_1328(param1:int, param2:int) : StoreItem
      {
         var _loc3_:BuildingData = C_Buildings.GetData(param1);
         var _loc4_:BuildingLevelData = _loc3_.levelData[0];
         var _loc5_:int = class_32.method_193(_loc4_.r1 + _loc4_.r2,_loc4_.r3,_loc4_.time);
         var _loc6_:String = class_43.getString(class_2.method_7(-1820311011),{
            class_2.method_7(-1820302469):_loc3_.name,
            "time":class_31.method_39(_loc4_.time),
            "amount":class_31.method_35(_loc4_.r1 + _loc4_.r2 + _loc4_.r3)
         });
         var _loc7_:class_714 = new class_714();
         _loc7_.id = class_2.method_7(-1820303247);
         _loc7_.b = param1;
         _loc7_.op = const_671;
         _loc7_.level = param2;
         _loc7_.typeID = param1;
         _loc7_.time = _loc4_.time;
         _loc7_.r1 = _loc4_.r1;
         _loc7_.r2 = _loc4_.r2;
         _loc7_.r3 = _loc4_.r3;
         return new StoreItem(const_165,class_43.getString(class_2.method_7(-1820308541)),_loc6_,_loc5_,_loc7_);
      }
      
      public static function method_6887(param1:BldgFoundation) : StoreItem
      {
         var _loc2_:BuildingLevelData = param1.buildingData.getLevelData(param1.level + 1);
         var _loc3_:String = class_43.getString(class_2.method_7(-1820299473),{
            "building":param1.buildingData.name,
            "level":int(param1.level + 1),
            "time":class_31.method_39(_loc2_.time)
         });
         var _loc4_:class_714 = new class_714();
         _loc4_.id = param1.id.toString();
         _loc4_.op = const_671;
         _loc4_.level = param1.level;
         _loc4_.typeID = param1.type;
         _loc4_.time = _loc2_.time;
         _loc4_.r1 = _loc2_.r1;
         _loc4_.r2 = _loc2_.r2;
         _loc4_.r3 = _loc2_.r3;
         return new StoreItem(const_165,class_43.getString(class_2.method_7(-1820296438)),_loc3_,param1.method_3581(),_loc4_);
      }
      
      public static function method_6214(param1:BldgFoundation, param2:int) : StoreItem
      {
         var _loc3_:class_216 = TowerResearch.method_651(param2);
         var _loc4_:TowerData = Towers.GetData(param2);
         var _loc5_:String = class_43.getString(class_2.method_7(-1820296765),{
            "building":param1.buildingData.name,
            "tower":_loc4_.name,
            "time":class_31.method_39(_loc3_.time)
         });
         var _loc6_:class_714 = new class_714();
         _loc6_.id = param1.id.toString();
         _loc6_.op = const_1061;
         _loc6_.typeID = param2;
         _loc6_.level = TowerResearch.method_44(param2);
         _loc6_.platformLevel = param1.level;
         _loc6_.time = _loc3_.time;
         _loc6_.r1 = _loc3_.metal;
         _loc6_.r2 = _loc3_.oil;
         _loc6_.r3 = _loc3_.thorium;
         return new StoreItem(const_165,class_43.getString(class_2.method_7(-1820299434)),_loc5_,_loc3_.credits,_loc6_);
      }
      
      public static function method_2688(param1:BldgFoundation, param2:int) : StoreItem
      {
         var _loc3_:BuildingData = C_Buildings.GetData(param2);
         var _loc4_:class_216 = C_Buildings.GetLevelData(param2,param1.level).changeCosts;
         var _loc5_:String = class_43.getString(class_2.method_7(-1820299484),{
            "building":param1.buildingData.name,
            class_2.method_7(-1820302469):_loc3_.name,
            "time":class_31.method_39(_loc4_.time)
         });
         var _loc6_:class_714 = new class_714();
         _loc6_.id = param1.id.toString();
         _loc6_.typeID = param2;
         _loc6_.time = _loc4_.time;
         _loc6_.r1 = _loc4_.metal;
         _loc6_.r2 = _loc4_.oil;
         _loc6_.r3 = _loc4_.thorium;
         return new StoreItem(const_576,class_43.getString(class_2.method_7(-1820295740)),_loc5_,_loc4_.credits,_loc6_);
      }
      
      public static function method_4871(param1:BldgFoundation, param2:int) : StoreItem
      {
         var _loc3_:BuildingData = C_Buildings.GetData(param2);
         var _loc4_:int = param1.changeTypeTimeRemaining;
         var _loc5_:String = class_43.getString(class_2.method_7(-1820298369),{
            "building":param1.buildingData.name,
            class_2.method_7(-1820302469):_loc3_.name,
            "time":class_31.method_39(_loc4_)
         });
         var _loc6_:class_714 = new class_714();
         _loc6_.id = param1.id.toString();
         _loc6_.typeID = param2;
         _loc6_.time = _loc4_;
         return new StoreItem(const_576,class_43.getString(class_2.method_7(-1820298430)),_loc5_,class_32.method_153(_loc4_),_loc6_);
      }
      
      public static function method_6930(param1:Object) : StoreItem
      {
         var _loc2_:String = class_43.getString(class_2.method_7(-1820296285),{class_2.method_7(-1820310447):class_43.getString(param1.name)});
         var _loc3_:class_714 = new class_714();
         _loc3_.id = param1.id;
         return new StoreItem(const_694,class_43.getString(class_2.method_7(-1820310379)),_loc2_,param1.price,_loc3_);
      }
      
      public static function method_8495(param1:String, param2:int) : StoreItem
      {
         var param2:int = class_228.instance.method_4311;
         var _loc3_:class_714 = new class_714();
         _loc3_.id = param1;
         _loc3_.cost = param2;
         return new StoreItem(StoreItem.const_5028,class_43.getString(class_2.method_7(-1820302601)),class_43.getString(class_2.method_7(-1820302601)),param2,_loc3_);
      }
      
      public static function method_5250(param1:class_184) : StoreItem
      {
         var _loc2_:int = param1.inProduction?1:0;
         while(0 < param1.var_56.length)
         {
            _loc2_ = _loc2_ + param1.var_56[0].name_10;
            _loc3_++;
         }
         var _loc4_:int = param1.method_304(BldgFoundation.const_1146);
         var _loc5_:String = class_43.getString(class_2.method_7(-1820310142),{
            "units":_loc2_,
            "time":class_31.method_39(_loc4_)
         });
         var _loc6_:class_714 = new class_714();
         _loc6_.b = param1.type;
         _loc6_.op = const_929;
         _loc6_.time = _loc4_;
         return new StoreItem(const_165,class_43.getString(class_2.method_7(-1820299188)),_loc5_,param1.method_3667(),_loc6_);
      }
      
      public static function method_6562(param1:int) : StoreItem
      {
         var _loc5_:String = null;
         var _loc2_:int = C_ACADEMY.method_44(param1) + 1;
         var _loc3_:class_216 = C_ACADEMY.method_223(param1);
         var _loc4_:int = _loc3_.time;
         if(_loc2_ == 1)
         {
            _loc5_ = class_43.getString(class_2.method_7(-1820303069),{
               "unit":Units.GetData(param1).name,
               "time":class_31.method_39(_loc4_)
            });
         }
         else
         {
            _loc5_ = class_43.getString(class_2.method_7(-1820296505),{
               "unit":Units.GetData(param1).name,
               "level":_loc2_,
               "time":class_31.method_39(_loc4_)
            });
         }
         var _loc6_:class_714 = new class_714();
         _loc6_.id = param1.toString();
         _loc6_.level = _loc2_;
         _loc6_.op = const_878;
         _loc6_.time = _loc4_;
         _loc6_.r1 = _loc3_.metal;
         _loc6_.r2 = _loc3_.oil;
         _loc6_.r3 = _loc3_.thorium;
         return new StoreItem(const_165,class_43.getString(class_2.method_7(-1820301052)),_loc5_,C_ACADEMY.method_900(param1),_loc6_);
      }
      
      public static function method_6238(param1:int) : StoreItem
      {
         var _loc2_:int = C_ACADEMY.method_44(param1) + 1;
         var _loc3_:String = _loc2_ == 1?class_43.getString(class_2.method_7(-1820307863)):class_43.getString(class_2.method_7(-1820296821));
         var _loc4_:String = _loc2_ == 1?class_43.getString(class_2.method_7(-1820302501)):class_43.getString(class_2.method_7(-1820310770));
         var _loc5_:SecNum = new SecNum(C_ACADEMY.method_344(param1));
         var _loc6_:class_714 = new class_714();
         _loc6_.id = param1.toString();
         _loc6_.level = _loc2_;
         _loc6_.op = const_863;
         _loc6_.time = _loc5_.Get();
         return new StoreItem(const_218,_loc3_,_loc4_,class_32.method_153(_loc5_.Get()),_loc6_);
      }
      
      public static function method_4967(param1:int) : StoreItem
      {
         var _loc5_:String = null;
         var _loc2_:int = TowerResearch.method_44(param1) + 1;
         var _loc3_:TowerData = Towers.GetData(param1);
         var _loc4_:class_216 = TowerResearch.method_398(param1);
         if(_loc2_ == 1)
         {
            _loc5_ = class_43.getString(class_2.method_7(-1820301798),{
               "tower":_loc3_.name,
               "time":class_31.method_39(_loc4_.time)
            });
         }
         else
         {
            _loc5_ = class_43.getString(class_2.method_7(-1820295339),{
               "tower":_loc3_.name,
               "level":_loc2_,
               "time":class_31.method_39(_loc4_.time)
            });
         }
         var _loc6_:class_714 = new class_714();
         _loc6_.id = param1.toString();
         _loc6_.level = _loc2_;
         _loc6_.op = const_962;
         _loc6_.time = _loc4_.time;
         _loc6_.r1 = _loc4_.metal;
         _loc6_.r2 = _loc4_.oil;
         _loc6_.r3 = _loc4_.thorium;
         return new StoreItem(const_165,class_43.getString(class_2.method_7(-1820301305)),_loc5_,TowerResearch.method_2175(param1),_loc6_);
      }
      
      public static function method_5939(param1:int) : StoreItem
      {
         var _loc2_:int = TowerResearch.method_44(param1) + 1;
         var _loc3_:String = _loc2_ == 1?class_43.getString(class_2.method_7(-1820307863)):class_43.getString(class_2.method_7(-1820296821));
         var _loc4_:String = _loc2_ == 1?class_43.getString(class_2.method_7(-1820302501)):class_43.getString(class_2.method_7(-1820310770));
         var _loc5_:int = TowerResearch.method_999();
         var _loc6_:class_714 = new class_714();
         _loc6_.id = param1.toString();
         _loc6_.level = _loc2_;
         _loc6_.op = const_844;
         _loc6_.time = _loc5_;
         return new StoreItem(const_218,_loc3_,_loc4_,class_32.method_153(_loc5_),_loc6_);
      }
      
      public static function method_8584(param1:int, param2:int) : StoreItem
      {
         var _loc3_:int = BASE.method_813(C_Buildings.GetLevelData(param1,param2));
         var _loc4_:class_714 = new class_714();
         _loc4_.b = param1;
         _loc4_.level = param2;
         return new StoreItem(const_108,class_43.getString(class_2.method_7(-1820302046)),class_43.getString(class_2.method_7(-1820299041),{"cost":_loc3_}),class_32.method_308(_loc3_),_loc4_);
      }
      
      public static function method_2761(param1:int, param2:String) : StoreItem
      {
         var _loc3_:class_714 = new class_714();
         _loc3_.name = param2;
         return new StoreItem(const_1507,class_43.getString(class_2.method_7(-1820302480)),class_43.getString(class_2.method_7(-1820309551),{"name":param2}),param1,_loc3_);
      }
      
      public static function method_5128() : StoreItem
      {
         var _loc1_:* = class_167.var_169.Get() == 0;
         var _loc2_:class_714 = new class_714();
         _loc2_.op = const_942;
         _loc2_.level = class_167.var_80.Get() + 1;
         _loc2_.isInstant = _loc1_;
         _loc2_.time = class_167.method_5972();
         return new StoreItem(const_684,class_43.getString(class_2.method_7(-1820295298)),_loc1_?class_43.getString(class_2.method_7(-1820311346)):class_43.getString(class_2.method_7(-1820300181)),class_167.method_6754(),_loc2_);
      }
      
      public static function method_6167() : StoreItem
      {
         var _loc1_:* = 0;
         if(class_167.var_214)
         {
            _loc1_ = class_167.var_214.inProduction;
         }
         var _loc2_:class_714 = new class_714();
         _loc2_.op = const_826;
         _loc2_.produced = _loc1_;
         _loc2_.level = class_167.var_80.Get();
         _loc2_.time = class_167.var_64.Get();
         return new StoreItem(const_684,class_43.getString(class_2.method_7(-1820300415)),class_43.getString(class_2.method_7(-1820296524)),class_32.method_153(class_167.var_64.Get()),_loc2_);
      }
      
      public static function method_7390(param1:int, param2:int) : StoreItem
      {
         return method_970(param1,param2,const_922,class_2.method_7(-1820295533),class_2.method_7(-1820309356));
      }
      
      public static function method_4736(param1:int, param2:int) : StoreItem
      {
         return method_970(param1,param2,const_664,class_2.method_7(-1820298062),class_2.method_7(-1820296905));
      }
      
      public static function method_7595(param1:int, param2:int) : StoreItem
      {
         return method_970(param1,param2,const_807,class_2.method_7(-1820301432),class_2.method_7(-1820307505));
      }
      
      private static function method_970(param1:int, param2:int, param3:String, param4:String, param5:String) : StoreItem
      {
         var _loc6_:class_714 = new class_714();
         _loc6_.id = param1.toString();
         var _loc7_:UnitData = Units.GetData(param1);
         var _loc8_:UnitLevelData = _loc7_.levelData[param2 - 1];
         var _loc9_:int = class_32.method_193(_loc8_.productionCostR1 + _loc8_.productionCostR2,_loc8_.productionCostR3,_loc8_.productionTime,class_32.const_297,false,false,class_32.const_1324);
         return new StoreItem(param3,param4,param5,_loc9_,_loc6_);
      }
      
      public static function method_5419(param1:int, param2:int) : StoreItem
      {
         var _loc3_:class_714 = new class_714();
         _loc3_.op = const_800;
         _loc3_.typeID = param1;
         _loc3_.time = param2;
         return new StoreItem(const_218,class_43.getString(class_2.method_7(-1820306564)),class_43.getString(class_2.method_7(-1820307987)),class_32.method_153(param2),_loc3_);
      }
      
      public static function method_4795(param1:int, param2:class_216) : StoreItem
      {
         var _loc3_:int = class_32.method_193(param2.metal + param2.oil,param2.thorium,param2.time);
         var _loc4_:class_714 = new class_714();
         _loc4_.op = const_906;
         _loc4_.typeID = param1;
         _loc4_.r1 = param2.metal;
         _loc4_.r2 = param2.oil;
         _loc4_.r3 = param2.thorium;
         _loc4_.time = param2.time;
         return new StoreItem(const_165,class_43.getString(class_2.method_7(-1820300092)),class_43.getString(class_2.method_7(-1820311060)),_loc3_,_loc4_);
      }
      
      public static function method_6134(param1:int, param2:int, param3:int, param4:int) : StoreItem
      {
         var _loc5_:class_714 = new class_714();
         _loc5_.id = param1.toString();
         _loc5_.techId = param2;
         _loc5_.pieces = param4;
         return new StoreItem(const_884,class_43.getString(class_2.method_7(-1820295192)),class_43.getString(class_2.method_7(-1820296481),{"pieces":param4}),param3,_loc5_);
      }
      
      public static function method_6084(param1:class_405, param2:Vector.<AbstractUnit>, param3:class_216) : StoreItem
      {
         var _loc4_:* = 0;
         var _loc5_:Vector.<Number> = null;
         var _loc6_:AbstractUnit = null;
         var _loc7_:class_714 = null;
         if(param1 != null && param2 != null && param2.length > 0)
         {
            _loc5_ = new Vector.<Number>();
            for each(_loc6_ in param2)
            {
               if(_loc6_ != null)
               {
                  _loc4_ = _loc6_.type;
                  _loc5_.push(_loc6_.uid);
               }
            }
            _loc7_ = new class_714();
            _loc7_.op = const_809;
            _loc7_.typeID = _loc4_;
            _loc7_.design = param1.method_542();
            _loc7_.unitIds = _loc5_;
            return new StoreItem(const_165,class_43.getString(class_2.method_7(-1820309611)),class_43.getString(class_2.method_7(-1820298965)),param3.credits,_loc7_);
         }
         return null;
      }
      
      public static function method_4568(param1:String, param2:int, param3:int, param4:int, param5:int, param6:int) : StoreItem
      {
         var _loc7_:class_714 = new class_714();
         _loc7_.op = const_1711;
         _loc7_.id = param1;
         _loc7_.typeID = param2;
         _loc7_.subTypeID = param3;
         _loc7_.q = param4;
         _loc7_.max = param5;
         _loc7_.blockCharge = true;
         return new StoreItem(const_165,class_43.getString(class_2.method_7(-1820300063)),class_43.getString(class_2.method_7(-1820302563)),param6,_loc7_);
      }
      
      public static function method_4243(param1:AbstractUnit) : StoreItem
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Vector.<Number> = new Vector.<Number>();
         if(param1 != null)
         {
            _loc2_ = _loc2_ + param1.method_1686();
            _loc3_ = _loc3_ + param1.method_2419();
            _loc4_.push(param1.uid);
         }
         var _loc5_:class_714 = new class_714();
         _loc5_.op = const_1423;
         _loc5_.unitIds = _loc4_;
         _loc5_.blockCharge = true;
         return new StoreItem(const_165,class_43.getString(class_2.method_7(-1820310420)),class_43.getString(class_2.method_7(-1820311488),{"xp":_loc3_}),_loc2_,_loc5_);
      }
      
      private static function method_4234(param1:Boolean) : class_204
      {
         if(param1)
         {
            return BASE.method_4234();
         }
         return BASE.method_1132();
      }
      
      public function get method_5902() : Boolean
      {
         if(this.var_15 != null)
         {
            return !this.var_15.var_2351;
         }
         return false;
      }
      
      public function get method_5387() : Boolean
      {
         if(this.var_15 != null)
         {
            return !this.var_15.blockCharge;
         }
         return true;
      }
      
      public function method_1742(param1:Boolean) : void
      {
         var building:BldgFoundation = null;
         var step:int = 0;
         var shouldLogPurchase:Boolean = false;
         var executeLogData:PurchaseExecuteLogData = null;
         var unitGroupId:int = 0;
         var platoon:C_Platoon = null;
         var eventID:int = 0;
         var techDesign:class_405 = null;
         var unitId:Number = NaN;
         var title:String = null;
         var unitType:int = 0;
         var unitData:UnitData = null;
         var useCurrencyFB:Boolean = param1;
         if(this.var_15 == null)
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_STORE_ERROR,class_2.method_7(-1820309343));
            return;
         }
         if(this.var_61.Get() > 0)
         {
            class_31.method_215(class_2.method_7(-1820296239),[{"amount":this.var_61.Get()}],false);
         }
         try
         {
            shouldLogPurchase = false;
            executeLogData = new PurchaseExecuteLogData();
            loop1:
            switch(this.var_521)
            {
               case const_694:
                  shouldLogPurchase = true;
                  break;
               case const_649:
                  executeLogData.repairLog = method_4234(this.var_15.repairEverything);
                  if(this.var_15.repairEverything)
                  {
                     BASE.method_3538();
                  }
                  else
                  {
                     BASE.method_1307();
                  }
                  shouldLogPurchase = true;
                  break;
               case const_957:
                  unitGroupId = parseInt(this.var_15.id);
                  executeLogData.repairLog = class_176.method_5442(unitGroupId);
                  class_176.method_4805(unitGroupId);
                  shouldLogPurchase = true;
                  break;
               case const_999:
                  platoon = PlatoonManager.class_2093.method_359(this.var_15.id);
                  if(platoon != null)
                  {
                     executeLogData.repairLog = platoon.method_1108();
                  }
                  this.var_5154 = class_176.method_708(platoon,true);
                  this.var_4885 = platoon.method_1749();
                  PlatoonManager.class_2093.method_6005(this.var_15.id);
                  shouldLogPurchase = true;
                  break;
               case const_576:
                  building = BASE.var_41["b" + this.var_15.id];
                  if(building != null)
                  {
                     eventID = building.changeTypeTimeRemaining > 0?class_566.const_103:class_566.const_85;
                     class_560.method_1783(building.level,building.type,this.var_15.typeID,this.var_61.Get(),false,0,0,eventID);
                     building.method_874(this.var_15.typeID);
                     break;
                  }
                  break;
               case const_165:
                  switch(this.var_15.op)
                  {
                     case const_671:
                        if(parseInt(this.var_15.id) == -1)
                        {
                           BASE.method_507(this.var_15.b);
                        }
                        else
                        {
                           building = BASE.var_41["b" + this.var_15.id];
                           if(building != null)
                           {
                              building.method_240(this.var_61.Get());
                           }
                        }
                        shouldLogPurchase = true;
                        break loop1;
                     case const_929:
                        for each(building in BASE.var_41)
                        {
                           if(building.type == this.var_15.b)
                           {
                              executeLogData.unitsProduced = (building as class_184).method_1219(this.var_61.Get());
                              break;
                           }
                        }
                        shouldLogPurchase = true;
                        break loop1;
                     case const_878:
                        C_ACADEMY.method_1238(parseInt(this.var_15.id),this.var_15.level);
                        shouldLogPurchase = true;
                        break loop1;
                     case const_962:
                        TowerResearch.method_1238(parseInt(this.var_15.id),this.var_15.level);
                        shouldLogPurchase = true;
                        break loop1;
                     case const_1061:
                        building = BASE.var_41["b" + this.var_15.id];
                        if(building != null && building is class_131)
                        {
                           class_131(building).FinishEquip(this.var_15.typeID);
                        }
                        shouldLogPurchase = true;
                        break loop1;
                     case const_906:
                        TechManager.instance.unlockTechItem(this.var_15.typeID);
                        shouldLogPurchase = true;
                        break loop1;
                     case const_809:
                        if(this.var_15.design != null && this.var_15.unitIds != null)
                        {
                           techDesign = class_405.method_1134(this.var_15.design,this.var_15.typeID);
                           TechManager.instance.applyEquipUnits(techDesign,this.var_15.unitIds);
                        }
                        shouldLogPurchase = true;
                        break loop1;
                     case const_1711:
                        ItemStoreManager.method_956(this.var_15.id + class_2.method_7(-1820307704),this.var_15.max - this.var_15.q);
                        shouldLogPurchase = true;
                        if(BASE.var_217.Get() < this.var_61.Get())
                        {
                           BASE.var_217.Set(class_31.const_96.Get());
                           break loop1;
                        }
                        BASE.var_217.Add(-this.var_61.Get());
                        break loop1;
                     case const_1423:
                        this.method_2674(useCurrencyFB,executeLogData);
                        if(this.var_15.unitIds != null && this.var_15.unitIds.length == 1)
                        {
                           unitId = this.var_15.unitIds[0];
                           class_215.method_2292(unitId);
                           MultipleAttemptURLLoader.method_136(class_31.var_116 + class_2.method_7(-1820311382),[["uid",unitId],[class_2.method_7(-1820308626),this.var_61.Get()]],this.method_6931,this.method_7393);
                           break loop1;
                        }
                        break loop1;
                     default:
                        break loop1;
                  }
               case const_108:
                  BASE.method_6664(this.var_15.b,this.var_15.level);
                  shouldLogPurchase = true;
                  break;
               case const_1507:
                  Alias.method_4841(this.var_15.name);
                  shouldLogPurchase = true;
                  break;
               case const_1348:
                  shouldLogPurchase = true;
                  break;
               case const_684:
                  if(this.var_15.op == const_826)
                  {
                     class_167.method_6311();
                  }
                  else if(this.var_15.op == const_942)
                  {
                     class_167.method_433(this.var_15.level,this.var_61.Get());
                  }
                  shouldLogPurchase = true;
                  break;
               case const_218:
                  switch(this.var_15.op)
                  {
                     case const_812:
                        building = BASE.var_41["b" + this.var_15.id];
                        if(building != null)
                        {
                           executeLogData.repairLog = class_204.method_2738(building);
                           building.method_3811();
                           break;
                        }
                        break;
                     case const_742:
                        building = BASE.var_41["b" + this.var_15.id];
                        if(building != null)
                        {
                           building.method_107(this.var_61.Get());
                           break;
                        }
                        break;
                     case const_758:
                        building = BASE.var_41["b" + this.var_15.id];
                        if(building != null)
                        {
                           building.method_240(this.var_61.Get());
                           break;
                        }
                        break;
                     case const_696:
                        building = BASE.var_41["b" + this.var_15.id];
                        if(building != null && building is class_130)
                        {
                           (building as class_130).FinishEquip(this.var_15.typeID);
                           break;
                        }
                        break;
                     case const_853:
                        building = BASE.var_41["b" + this.var_15.id];
                        if(building != null)
                        {
                           building.method_874();
                           break;
                        }
                        break;
                     case const_800:
                        TechManager.instance.finishTechResearch();
                        break;
                     case const_863:
                        C_ACADEMY.method_1177(parseInt(this.var_15.id));
                        break;
                     case const_844:
                        TowerResearch.method_433(parseInt(this.var_15.id));
                        break;
                  }
                  if(building != null && this.var_15.dozer && building._repairing)
                  {
                     building.method_3811();
                  }
                  shouldLogPurchase = true;
                  break;
               case const_108 + class_2.method_7(-1820303287):
                  this.method_914(class_206.const_5,int(this.var_15.q),class_43.getString(class_2.method_7(-1820302761)));
                  shouldLogPurchase = true;
                  break;
               case const_108 + class_2.method_7(-1820303288):
                  this.method_914(class_206.const_5,int(this.var_15.q),class_43.getString(class_2.method_7(-1820310902)));
                  shouldLogPurchase = true;
                  break;
               case const_108 + class_2.method_7(-1820303284):
                  this.method_914(class_206.const_5,int(this.var_15.q),class_43.getString(class_2.method_7(-1820300170)));
                  method_681();
                  shouldLogPurchase = true;
                  break;
               case const_108 + class_2.method_7(-1820303178):
                  this.method_914(class_206.const_6,int(this.var_15.q),class_43.getString(class_2.method_7(-1820310437)));
                  shouldLogPurchase = true;
                  break;
               case const_108 + class_2.method_7(-1820303253):
                  this.method_914(class_206.const_6,int(this.var_15.q),class_43.getString(class_2.method_7(-1820308178)));
                  shouldLogPurchase = true;
                  break;
               case const_108 + class_2.method_7(-1820303254):
                  this.method_914(class_206.const_6,int(this.var_15.q),class_43.getString(class_2.method_7(-1820306818)));
                  method_681();
                  shouldLogPurchase = true;
                  break;
               case const_367:
                  step = class_32.method_4034(this.var_521);
                  title = class_43.getString(class_2.method_7(-1820296252));
                  switch(step)
                  {
                     case 1:
                        POPUPS.method_158(title,class_43.getString(class_2.method_7(-1820311337)));
                        break;
                     case 2:
                        POPUPS.method_158(title,class_43.getString(class_2.method_7(-1820311319)));
                        break;
                     case 3:
                        POPUPS.method_158(title,class_43.getString(class_2.method_7(-1820311316)));
                        break;
                     case 4:
                        POPUPS.method_158(title,class_43.getString(class_2.method_7(-1820311315)));
                        break;
                     case 5:
                        POPUPS.method_158(title,class_43.getString(class_2.method_7(-1820311314)));
                        break;
                  }
                  method_681();
                  shouldLogPurchase = true;
                  break;
               case const_509:
                  step = class_32.method_4034(this.var_521);
                  switch(step)
                  {
                     case 1:
                        POPUPS.method_158(class_43.getString(class_2.method_7(-1820301191)),class_43.getString(class_2.method_7(-1820310121)));
                        break;
                     case 2:
                        POPUPS.method_158(class_43.getString(class_2.method_7(-1820301191)),class_43.getString(class_2.method_7(-1820310168)));
                        break;
                     case 3:
                        POPUPS.method_158(class_43.getString(class_2.method_7(-1820301191)),class_43.getString(class_2.method_7(-1820310166)));
                        break;
                     default:
                        if(step == 4 || step == 5)
                        {
                           POPUPS.method_158(class_43.getString(class_2.method_7(-1820301191)),class_43.getString(class_2.method_7(-1820295250)));
                           break;
                        }
                        if(step >= 6)
                        {
                           POPUPS.method_158(class_43.getString(class_2.method_7(-1820301191)),class_43.getString(class_2.method_7(-1820310186)));
                           break;
                        }
                        break;
                  }
                  method_681();
                  shouldLogPurchase = true;
                  break;
               case const_664:
                  MissileManager.instance.method_1421(parseInt(this.var_15.id));
                  shouldLogPurchase = true;
                  break;
               case const_922:
                  MercenaryManager.instance.method_1421(parseInt(this.var_15.id));
                  shouldLogPurchase = true;
                  break;
               case const_807:
                  unitType = parseInt(this.var_15.id);
                  unitData = Units.GetData(unitType);
                  class_184.Spawn(unitType,unitData.group);
                  break;
               case const_884:
                  TechManager.instance.unlockLostTechItemForCategory(parseInt(this.var_15.id));
                  shouldLogPurchase = true;
                  break;
               default:
                  if(this.storeCode.substr(0,3) == StoreItem.const_529)
                  {
                     this.method_5505(parseInt(this.var_521.substr(3)));
                     shouldLogPurchase = true;
                     break;
                  }
            }
            if(shouldLogPurchase)
            {
               this.method_2674(useCurrencyFB,executeLogData);
            }
            SaveManager.class_2093.Base.method_38(true);
            return;
         }
         catch(error:Error)
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_STORE_ERROR,class_2.method_7(-1820310814) + var_521 + class_2.method_7(-1820301932) + WCJSON.encode(var_15.method_1287()) + class_2.method_7(-1820311234) + error.name + " " + error.message + " " + error.getStackTrace());
            return;
         }
      }
      
      public function method_5505(param1:int) : void
      {
         var _loc2_:BldgFoundation = null;
         for each(_loc2_ in BASE.var_923)
         {
            while(_loc2_.level < param1)
            {
               _loc2_.method_240();
            }
         }
         if(param1 == 5 || param1 == 8)
         {
            class_245.Popup(class_245.const_180,{
               "type":class_158.const_111,
               class_2.method_7(-1820296659):param1
            });
         }
      }
      
      protected function method_914(param1:int, param2:int, param3:String) : void
      {
         BASE.method_261(param1,param2);
         var _loc4_:String = param1 == class_206.const_5?class_43.getString(class_2.method_7(-1820300478)):class_43.getString(class_2.method_7(-1820299658));
         POPUPS.method_158(_loc4_,param3);
      }
      
      private function method_6931(param1:Object) : void
      {
         var _loc3_:* = NaN;
         var _loc4_:AbstractUnit = null;
         if(param1.error)
         {
            class_31.method_74(class_9.const_1370,class_2.method_7(-1820296283) + param1.error);
            return;
         }
         var _loc2_:* = false;
         if(this.var_15.unitIds != null)
         {
            for each(_loc3_ in this.var_15.unitIds)
            {
               _loc4_ = UnitManager.class_2093.method_92(_loc3_);
               if(_loc4_ != null && _loc4_.method_5410())
               {
                  class_118.battle.upgradeUnitXpForUnit(_loc3_,_loc4_.type,_loc4_.level);
                  _loc4_.method_2126();
                  _loc2_ = true;
               }
            }
         }
         if(_loc2_)
         {
            SaveManager.class_2093.Base.method_38();
         }
      }
      
      private function method_7393(param1:IOErrorEvent) : void
      {
         class_31.method_74(class_9.const_1370,class_2.method_7(-1820296283) + param1.target.data);
      }
      
      protected function method_2674(param1:Boolean, param2:PurchaseExecuteLogData) : void
      {
         var _loc4_:* = 0;
         var _loc5_:Object = null;
         var _loc6_:C_Platoon = null;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:* = 0;
         var _loc10_:class_405 = null;
         var _loc11_:Vector.<class_405> = null;
         var _loc12_:* = NaN;
         var _loc13_:AbstractUnit = null;
         if(this.var_15 == null)
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_STORE_ERROR,class_2.method_7(-1820298993));
            return;
         }
         if(param2 == null)
         {
            var param2:PurchaseExecuteLogData = new PurchaseExecuteLogData();
         }
         var _loc3_:String = class_2.method_7(-1820295450);
         if(this.var_61.Get() == 0)
         {
            _loc5_ = this.method_3592();
            if(_loc5_ != null && _loc5_.action)
            {
               _loc3_ = _loc3_ + (class_2.method_7(-1820297510) + _loc5_.action);
            }
         }
         loop2:
         switch(this.var_521)
         {
            case const_694:
               class_180.method_4761(this.var_61.Get(),param1,this.var_15.id);
               _loc3_ = _loc3_ + (class_2.method_7(-1820299755) + this.var_15.id);
               break;
            case const_649:
               if(this.var_15.repairEverything)
               {
                  class_180.method_5864(this.var_61.Get(),param1,param2.repairLog);
               }
               else
               {
                  class_180.method_3174(this.var_61.Get(),param1,param2.repairLog);
               }
               _loc3_ = _loc3_ + (class_2.method_7(-1820308987) + this.var_15.repairEverything);
               _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
               break;
            case const_957:
               class_180.method_5797(this.var_61.Get(),param1,class_566.const_103,this.var_15.unitCounts,param2.repairLog);
               _loc3_ = _loc3_ + (class_2.method_7(-1820299663) + this.var_15.id);
               _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
               break;
            case const_999:
               _loc6_ = PlatoonManager.class_2093.method_359(this.var_15.id);
               class_180.method_1952(this.var_61.Get(),param1,0,0,0,class_566.const_103,_loc6_,param2.repairLog,this.var_5154,this.var_4885);
               _loc3_ = _loc3_ + (class_2.method_7(-1820299663) + this.var_15.id);
               _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
               break;
            case const_576:
               _loc3_ = _loc3_ + (class_2.method_7(-1820299663) + this.var_15.id);
               _loc3_ = _loc3_ + (class_2.method_7(-1820308679) + this.var_15.typeID);
               _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
               break;
            case const_165:
               switch(this.var_15.op)
               {
                  case const_671:
                     class_560.method_453(this.var_15.level + 1,this.var_15.typeID,this.var_61.Get(),param1,0,0,0,class_566.const_85);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820299663) + this.var_15.id);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820308679) + this.var_15.typeID);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_929:
                     if(param2.unitsProduced != null)
                     {
                        _loc7_ = param2.unitsProduced;
                        for(_loc8_ in _loc7_)
                        {
                           class_180.method_1970(this.var_61.Get(),param1,true,int(_loc8_.substr(1)),_loc7_[_loc8_]);
                        }
                     }
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.b);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_878:
                     class_560.method_989(this.var_15.level,parseInt(this.var_15.id),this.var_61.Get(),param1,0,0,0,class_566.const_85,C_ACADEMY.method_180(parseInt(this.var_15.id)),Units.GetData(parseInt(this.var_15.id)).group);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.id);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_962:
                     class_560.method_1730(this.var_15.level,parseInt(this.var_15.id),this.var_61.Get(),param1,0,0,0,class_566.const_85);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.id);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_1061:
                     class_560.method_1466(this.var_15.level,this.var_15.typeID,this.var_15.platformLevel,this.var_61.Get(),param1,0,0,0,class_566.const_85);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.typeID);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_906:
                     class_560.method_1079(this.var_15.typeID,new class_216(0,0,0,0,this.var_61.Get()),param1,class_566.const_85);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.typeID);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_809:
                     _loc9_ = this.var_15.typeID;
                     _loc10_ = class_405.method_1134(this.var_15.design,_loc9_);
                     _loc11_ = TechManager.instance.getAllDesignsForUnitType(_loc9_);
                     if(_loc10_ != null && _loc11_ != null)
                     {
                        class_180.method_3758(_loc9_,class_215.method_137(_loc9_),_loc11_.length,class_566.const_2445,_loc10_.method_235,this.var_61.Get(),param1,0,0,0);
                        break loop2;
                     }
                     break loop2;
                  case const_1711:
                     class_560.method_3166(this.var_15.id,this.var_15.typeID,this.var_15.subTypeID,this.var_15.q,this.var_15.max,0,this.var_61.Get());
                     break loop2;
                  case const_1423:
                     for each(_loc12_ in this.var_15.unitIds)
                     {
                        _loc13_ = UnitManager.class_2093.method_92(_loc12_);
                        if(_loc13_ != null)
                        {
                           class_560.method_7238(_loc13_.level + 1,_loc13_.type,_loc13_.method_2419(),_loc13_.method_1686(),_loc13_.skin,this.var_15.unitIds.length);
                        }
                     }
                     break loop2;
                  default:
                     break loop2;
               }
            case const_684:
               if(this.var_15.op == const_826)
               {
                  class_180.method_3210(this.var_15.level,this.var_61.Get(),param1,this.var_15.produced,true);
               }
               else if(this.var_15.op == const_942)
               {
                  _loc4_ = this.var_15.isInstant?class_566.const_85:class_566.const_103;
                  class_560.method_453(this.var_15.level,class_158.const_123,this.var_61.Get(),param1,0,0,0,_loc4_);
               }
               _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
               _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
               break;
            case const_218:
               switch(this.var_15.op)
               {
                  case const_812:
                     class_180.method_1617(this.var_61.Get(),param1,class_566.const_1022,0,0,0,this.var_15.typeID,this.var_15.level,param2.repairLog);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.typeID);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_742:
                     class_560.method_453(this.var_15.level + 1,this.var_15.typeID,this.var_61.Get(),param1,0,0,0,class_566.const_103);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.typeID);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_758:
                     class_560.method_453(this.var_15.level,this.var_15.typeID,this.var_61.Get(),param1,0,0,0,class_566.const_103);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.typeID);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_696:
                     class_560.method_1466(this.var_15.level,this.var_15.typeID,this.var_15.platformLevel,this.var_61.Get(),param1,0,0,0,class_566.const_103);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.typeID);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_853:
                     class_560.method_1783(this.var_15.level,this.var_15.oldTypeID,this.var_15.typeID,this.var_61.Get(),param1,0,0,class_566.const_103);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.typeID);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
                     break loop2;
                  case const_800:
                     class_560.method_1079(this.var_15.typeID,new class_216(0,0,0,this.var_15.time,this.var_61.Get()),param1,class_566.const_103);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.typeID);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_863:
                     class_560.method_989(this.var_15.level,parseInt(this.var_15.id),this.var_61.Get(),param1,0,0,0,class_566.const_103,C_ACADEMY.method_180(parseInt(this.var_15.id)),Units.GetData(parseInt(this.var_15.id)).group);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.id);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  case const_844:
                     class_560.method_1730(this.var_15.level,parseInt(this.var_15.id),this.var_61.Get(),param1,0,0,0,class_566.const_103);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.id);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820300717) + this.var_15.level);
                     _loc3_ = _loc3_ + (class_2.method_7(-1820303200) + this.var_15.time);
                     break loop2;
                  default:
                     break loop2;
               }
            case const_1507:
               class_180.method_7374(this.var_61.Get(),param1,class_68.name_1.alias,this.var_15.name);
               break;
            case const_1348:
               class_180.method_6798(this.var_61.Get(),param1,class_566.const_2859,this.var_15.time,this.var_15.oldPos,new Point(-1,-1),this.var_15.oldSector,-1,class_2.method_7(-1820298574),-1);
               break;
            case const_922:
            case const_664:
               class_560.method_1085(parseInt(this.var_15.id),C_ACADEMY.method_44(parseInt(this.var_15.id)),class_566.const_85,0,0,0,this.var_61.Get());
               _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.id);
               break;
            case const_807:
               class_560.method_4499(parseInt(this.var_15.id),C_ACADEMY.method_44(parseInt(this.var_15.id)),class_566.const_85,0,0,0,this.var_61.Get());
               _loc3_ = _loc3_ + (class_2.method_7(-1820297762) + this.var_15.id);
               break;
            case const_884:
               class_560.method_1079(this.var_15.techId,new class_216(0,0,0,0,this.var_61.Get()),param1,class_566.const_85,this.var_15.pieces);
               _loc3_ = _loc3_ + (class_2.method_7(-1820299663) + this.var_15.id);
               _loc3_ = _loc3_ + (class_2.method_7(-1820298247) + this.var_15.techId);
               _loc3_ = _loc3_ + (class_2.method_7(-1820300645) + this.var_15.pieces);
               break;
            default:
               if(this.var_521.substr(0,3) == StoreItem.const_529)
               {
                  class_560.method_5938(parseInt(this.var_521.substr(3)),this.var_521,this.var_61.Get(),param1);
                  break;
               }
               class_180.method_465(this.var_521,this.var_61.Get(),param1);
               break;
         }
         if(this.var_61.Get() == 0)
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_FREE_PURCHASE_GOLD,_loc3_);
         }
      }
      
      public function method_1287() : Object
      {
         var _loc1_:String = null;
         if(this.var_15 != null)
         {
            this.method_3038(this.var_15);
            _loc1_ = WCJSON.encode(this.var_15.method_1287());
            if(_loc1_.length >= const_2279)
            {
               FrameworkLogger.Log(FrameworkLogger.KEY_GOLD_TOPUP_ERROR,class_2.method_7(-1820309214) + _loc1_.length + class_2.method_7(-1820295721) + const_2279 + class_2.method_7(-1820300830) + _loc1_);
               this.var_15 = null;
            }
         }
         if(this.var_15 == null)
         {
            this.var_15 = new class_714();
            this.method_3038(this.var_15);
            this.var_15.var_2351 = true;
         }
         return {
            class_2.method_7(-1820307999):this._title,
            class_2.method_7(-1820303168):BASE.var_217.Get(),
            class_2.method_7(-1820299327):this.var_61.Get() - BASE.var_217.Get(),
            class_2.method_7(-1820303304):this.var_15.method_1287(),
            "callback":class_2.method_7(-1820296716)
         };
      }
      
      private function method_3038(param1:class_714) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.purchase = class_2.method_7(-1820306834);
         param1.basetype = class_105.method_23()?"base":"deposit";
         param1.baseid = class_105.method_23()?class_68.name_1.method_237:class_105.method_49().baseID;
         param1.storeCode = this.var_521;
         param1.cost = this.var_61.Get();
         param1.description = this.var_677;
      }
      
      public function get storeCode() : String
      {
         return this.var_521;
      }
      
      public function method_3592() : Object
      {
         if(this.var_15 == null)
         {
            FrameworkLogger.Log(FrameworkLogger.KEY_STORE_ERROR,class_2.method_7(-1820302767));
            return null;
         }
         var _loc1_:* = "";
         var _loc2_:* = "";
         var _loc3_:* = "";
         var _loc4_:* = 0;
         var _loc5_:* = "";
         var _loc6_:* = "";
         var _loc7_:* = 0;
         loop0:
         switch(this.var_521)
         {
            case const_694:
               _loc2_ = const_694;
               _loc5_ = this.var_15.id;
               break;
            case const_649:
               if(this.var_15.repairEverything)
               {
                  _loc1_ = class_2.method_7(-1820306899);
                  break;
               }
               _loc1_ = class_2.method_7(-1820296437);
               break;
            case const_957:
            case const_999:
               _loc1_ = class_2.method_7(-1820296354);
               break;
            case const_576:
               _loc1_ = class_2.method_7(-1820300527);
               break;
            case const_165:
               switch(this.var_15.op)
               {
                  case const_671:
                     _loc1_ = class_2.method_7(-1820301092);
                     _loc2_ = this.var_15.typeID.toString();
                     _loc4_ = this.var_15.level + 1;
                     break loop0;
                  case const_929:
                     _loc1_ = class_2.method_7(-1820309389);
                     break loop0;
                  case const_878:
                     _loc1_ = class_2.method_7(-1820308676);
                     _loc2_ = this.var_15.id;
                     _loc4_ = this.var_15.level;
                     break loop0;
                  case const_962:
                     _loc1_ = class_2.method_7(-1820295220);
                     _loc2_ = this.var_15.id;
                     _loc4_ = this.var_15.level;
                     break loop0;
                  case const_1061:
                     _loc1_ = class_2.method_7(-1820309424);
                     _loc2_ = this.var_15.id;
                     break loop0;
                  case const_906:
                     _loc1_ = class_2.method_7(-1820299683);
                     _loc2_ = this.var_15.typeID.toString();
                     break loop0;
                  case const_809:
                     _loc1_ = class_2.method_7(-1820301378);
                     _loc2_ = this.var_15.typeID.toString();
                     break loop0;
                  default:
                     break loop0;
               }
            case const_684:
               if(this.var_15.op == const_826)
               {
                  _loc1_ = class_2.method_7(-1820309367);
                  _loc4_ = this.var_15.level;
                  break;
               }
               if(this.var_15.op == const_942)
               {
                  _loc1_ = class_2.method_7(-1820301092);
                  _loc2_ = class_158.const_123.toString();
                  _loc4_ = this.var_15.level;
                  break;
               }
               break;
            case const_664:
               _loc2_ = const_664;
               _loc6_ = this.var_15.id;
               break;
            case const_922:
               _loc2_ = this.var_15.id;
               _loc7_ = 1;
               break;
            case const_807:
               _loc1_ = class_2.method_7(-1820297777);
               break;
            case const_218:
               switch(this.var_15.op)
               {
                  case const_812:
                     _loc1_ = class_2.method_7(-1820296437);
                     break loop0;
                  case const_742:
                     _loc1_ = class_2.method_7(-1820301092);
                     _loc2_ = this.var_15.typeID.toString();
                     _loc4_ = this.var_15.level + 1;
                     break loop0;
                  case const_758:
                     _loc1_ = class_2.method_7(-1820301092);
                     _loc2_ = this.var_15.typeID.toString();
                     _loc4_ = this.var_15.level;
                     break loop0;
                  case const_696:
                     _loc1_ = class_2.method_7(-1820309424);
                     _loc2_ = this.var_15.typeID.toString();
                     _loc4_ = this.var_15.level;
                     break loop0;
                  case const_853:
                     _loc1_ = class_2.method_7(-1820298176);
                     _loc2_ = this.var_15.typeID.toString();
                     _loc4_ = this.var_15.level;
                     break loop0;
                  case const_800:
                     _loc1_ = class_2.method_7(-1820310692);
                     _loc2_ = this.var_15.typeID.toString();
                     break loop0;
                  case const_863:
                     _loc1_ = class_2.method_7(-1820308676);
                     _loc2_ = this.var_15.id;
                     _loc4_ = this.var_15.level;
                     break loop0;
                  case const_844:
                     _loc1_ = class_2.method_7(-1820295220);
                     _loc2_ = this.var_15.id;
                     _loc4_ = this.var_15.level;
                     break loop0;
                  default:
                     break loop0;
               }
            case const_884:
               _loc1_ = class_2.method_7(-1820306875);
               _loc2_ = this.var_15.id;
               break;
            default:
               _loc1_ = class_2.method_7(-1820298243);
               _loc3_ = this.var_521;
         }
         var _loc8_:Object = {};
         _loc8_.user_level = class_215.method_7445();
         if(_loc1_.length > 0)
         {
            _loc8_.action = _loc1_;
         }
         if(_loc2_.length > 0)
         {
            _loc8_.item_id = _loc2_;
         }
         else if(_loc3_.length > 0)
         {
            _loc8_.item_id = _loc3_;
         }
         if(_loc4_ > 0)
         {
            _loc8_.item_level = _loc4_;
         }
         if(this.var_15)
         {
            if(this.var_15.time != 0)
            {
               _loc8_.speedup_seconds = this.var_15.time;
            }
            if(this.var_15.r1 != 0 || this.var_15.r2 != 0 || this.var_15.r3 != 0)
            {
               _loc8_.r1 = this.var_15.r1;
               _loc8_.r2 = this.var_15.r2;
               _loc8_.r3 = this.var_15.r3;
            }
         }
         if(_loc5_.length > 0)
         {
            _loc8_.buff_id = _loc5_;
         }
         if(_loc6_.length > 0)
         {
            _loc8_.missile_id = _loc6_;
         }
         if(_loc7_ > 0)
         {
            _loc8_.quantity = _loc7_;
         }
         return _loc8_;
      }
   }
}

import package_56.class_204;

class PurchaseExecuteLogData extends Object
{
    
   public var repairLog:class_204;
   
   public var unitsProduced:Object;
   
   function PurchaseExecuteLogData()
   {
      super();
   }
}
