package
{
   import flash.geom.Point;
   import package_15.class_43;
   
   public class class_714 extends Object
   {
      
      private static const const_1860:String = "purchase";
      
      private static const const_1149:String = "basetype";
      
      private static const const_1157:String = "baseid";
      
      private static const const_1474:String = "storeCode";
      
      private static const const_1229:String = "cost";
      
      private static const const_1833:String = "description";
      
      private static const const_1381:String = "block";
      
      private static const const_443:String = "id";
      
      private static const const_1471:String = "typeID";
      
      private static const const_1449:String = "subTypeID";
      
      private static const const_1623:String = "oldTypeID";
      
      private static const const_1723:String = "op";
      
      private static const const_1459:String = "b";
      
      private static const const_1761:String = "level";
      
      private static const const_1679:String = "platformLevel";
      
      private static const const_1407:String = "design";
      
      private static const const_2027:String = "name";
      
      private static const const_1790:String = "repairEverything";
      
      private static const const_1472:String = "dozer";
      
      private static const const_1672:String = "q";
      
      private static const const_1231:String = "max";
      
      private static const const_1473:String = "time";
      
      private static const const_1710:String = "unitCounts";
      
      private static const const_1277:String = "produced";
      
      private static const const_1394:String = "isInstant";
      
      private static const const_1234:String = "oldSector";
      
      private static const const_1106:String = "techId";
      
      private static const const_1696:String = "pieces";
      
      private static const const_1546:String = "r1";
      
      private static const const_1827:String = "r2";
      
      private static const const_1704:String = "r3";
      
      private static const const_1631:String = "unitIds";
      
      private static const const_1587:String = "oldPos";
      
      private static const const_1640:String = "blockCharge";
      
      private static const const_1914:String = "lvl";
       
      public var purchase:String;
      
      public var basetype:String;
      
      public var baseid:int;
      
      public var storeCode:String;
      
      public var cost:int;
      
      public var description:String;
      
      public var var_2351:Boolean;
      
      public var id:String;
      
      public var typeID:int;
      
      public var subTypeID:int;
      
      public var oldTypeID:int;
      
      public var op:String;
      
      public var b:int;
      
      public var level:int;
      
      public var platformLevel:int;
      
      public var design:Object;
      
      public var name:String;
      
      public var repairEverything:Boolean;
      
      public var dozer:Boolean;
      
      public var q:int;
      
      public var max:int;
      
      public var time:int;
      
      public var unitCounts:Object;
      
      public var produced:int;
      
      public var isInstant:Boolean;
      
      public var oldSector:int;
      
      public var techId:int;
      
      public var pieces:int;
      
      public var r1:int;
      
      public var r2:int;
      
      public var r3:int;
      
      public var unitIds:Vector.<Number>;
      
      public var oldPos:Point;
      
      public var blockCharge:Boolean;
      
      public function class_714(param1:Object = null)
      {
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:Object = null;
         super();
         if(param1 != null)
         {
            if(param1.hasOwnProperty(const_1860))
            {
               this.purchase = param1[const_1860];
            }
            if(param1.hasOwnProperty(const_1149))
            {
               this.basetype = param1[const_1149];
            }
            if(param1.hasOwnProperty(const_1157))
            {
               this.baseid = param1[const_1157];
            }
            if(param1.hasOwnProperty(const_1474))
            {
               this.storeCode = param1[const_1474];
            }
            if(param1.hasOwnProperty(const_1229))
            {
               this.cost = param1[const_1229];
            }
            if(param1.hasOwnProperty(const_1833))
            {
               this.description = class_43.getString(param1[const_1833]);
            }
            if(param1.hasOwnProperty(const_1381))
            {
               this.var_2351 = param1[const_1381];
            }
            if(param1.hasOwnProperty(const_443))
            {
               if(param1[const_443] != null && !(param1[const_443] is String))
               {
                  param1[const_443] = param1[const_443].toString();
               }
               this.id = param1[const_443];
            }
            if(param1.hasOwnProperty(const_1471))
            {
               this.typeID = param1[const_1471];
            }
            if(param1.hasOwnProperty(const_1449))
            {
               this.subTypeID = param1[const_1449];
            }
            if(param1.hasOwnProperty(const_1623))
            {
               this.oldTypeID = param1[const_1623];
            }
            if(param1.hasOwnProperty(const_1723))
            {
               this.op = param1[const_1723];
            }
            if(param1.hasOwnProperty(const_1459))
            {
               this.b = param1[const_1459];
            }
            if(param1.hasOwnProperty(const_1761))
            {
               this.level = param1[const_1761];
            }
            else if(param1.hasOwnProperty(const_1914))
            {
               this.level = param1[const_1914];
            }
            if(param1.hasOwnProperty(const_1679))
            {
               this.platformLevel = param1[const_1679];
            }
            if(param1.hasOwnProperty(const_1407))
            {
               this.design = param1[const_1407];
            }
            if(param1.hasOwnProperty(const_2027))
            {
               this.name = class_43.getString(param1[const_2027]);
            }
            if(param1.hasOwnProperty(const_1790))
            {
               this.repairEverything = param1[const_1790];
            }
            if(param1.hasOwnProperty(const_1472))
            {
               this.dozer = param1[const_1472];
            }
            if(param1.hasOwnProperty(const_1672))
            {
               this.q = param1[const_1672];
            }
            if(param1.hasOwnProperty(const_1231))
            {
               this.max = param1[const_1231];
            }
            if(param1.hasOwnProperty(const_1473))
            {
               this.time = param1[const_1473];
            }
            if(param1.hasOwnProperty(const_1710))
            {
               this.unitCounts = param1[const_1710];
            }
            if(param1.hasOwnProperty(const_1277))
            {
               this.produced = param1[const_1277];
            }
            if(param1.hasOwnProperty(const_1394))
            {
               this.isInstant = param1[const_1394];
            }
            if(param1.hasOwnProperty(const_1234))
            {
               this.oldSector = param1[const_1234];
            }
            if(param1.hasOwnProperty(const_1106))
            {
               this.techId = param1[const_1106];
            }
            if(param1.hasOwnProperty(const_1696))
            {
               this.pieces = param1[const_1696];
            }
            if(param1.hasOwnProperty(const_1546))
            {
               this.r1 = param1[const_1546];
            }
            if(param1.hasOwnProperty(const_1827))
            {
               this.r2 = param1[const_1827];
            }
            if(param1.hasOwnProperty(const_1704))
            {
               this.r3 = param1[const_1704];
            }
            if(param1.hasOwnProperty(const_1631))
            {
               this.unitIds = new Vector.<Number>();
               _loc2_ = param1[const_1631] as Array;
               if(_loc2_ != null)
               {
                  _loc3_ = 0;
                  while(_loc3_ < _loc2_.length)
                  {
                     this.unitIds.push(Number(_loc2_[_loc3_]));
                     _loc3_++;
                  }
               }
            }
            if(param1.hasOwnProperty(const_1587))
            {
               _loc4_ = param1[const_1587];
               if(_loc4_ != null)
               {
                  this.oldPos = new Point(_loc4_.x,_loc4_.y);
               }
            }
            if(param1.hasOwnProperty(const_1640))
            {
               this.blockCharge = param1[const_1640];
            }
         }
      }
      
      public function method_1287() : Object
      {
         var _loc2_:Array = null;
         var _loc3_:* = NaN;
         var _loc1_:Object = {};
         if(this.purchase != null)
         {
            _loc1_[const_1860] = this.purchase;
         }
         if(this.basetype != null)
         {
            _loc1_[const_1149] = this.basetype;
         }
         if(this.baseid != 0)
         {
            _loc1_[const_1157] = this.baseid;
         }
         if(this.storeCode != null)
         {
            _loc1_[const_1474] = this.storeCode;
         }
         if(this.cost != 0)
         {
            _loc1_[const_1229] = this.cost;
         }
         if(this.description != null)
         {
            _loc1_[const_1833] = this.description;
         }
         if(this.var_2351)
         {
            _loc1_[const_1381] = this.var_2351;
         }
         if(this.id != null)
         {
            _loc1_[const_443] = this.id;
         }
         if(this.typeID != 0)
         {
            _loc1_[const_1471] = this.typeID;
         }
         if(this.subTypeID != 0)
         {
            _loc1_[const_1449] = this.subTypeID;
         }
         if(this.oldTypeID != 0)
         {
            _loc1_[const_1623] = this.oldTypeID;
         }
         if(this.op != null)
         {
            _loc1_[const_1723] = this.op;
         }
         if(this.b != 0)
         {
            _loc1_[const_1459] = this.b;
         }
         if(this.level != 0)
         {
            _loc1_[const_1761] = this.level;
         }
         if(this.platformLevel != 0)
         {
            _loc1_[const_1679] = this.platformLevel;
         }
         if(this.design != null)
         {
            _loc1_[const_1407] = this.design;
         }
         if(this.repairEverything)
         {
            _loc1_[const_1790] = this.repairEverything;
         }
         if(this.dozer)
         {
            _loc1_[const_1472] = this.dozer;
         }
         if(this.q != 0)
         {
            _loc1_[const_1672] = this.q;
         }
         if(this.max != 0)
         {
            _loc1_[const_1231] = this.max;
         }
         if(this.time != 0)
         {
            _loc1_[const_1473] = this.time;
         }
         if(this.unitCounts != null)
         {
            _loc1_[const_1710] = this.unitCounts;
         }
         if(this.produced != 0)
         {
            _loc1_[const_1277] = this.produced;
         }
         if(this.isInstant)
         {
            _loc1_[const_1394] = this.isInstant;
         }
         if(this.oldSector != 0)
         {
            _loc1_[const_1234] = this.oldSector;
         }
         if(this.techId != 0)
         {
            _loc1_[const_1106] = this.techId;
         }
         if(this.pieces != 0)
         {
            _loc1_[const_1696] = this.pieces;
         }
         if(this.r1 != 0)
         {
            _loc1_[const_1546] = this.r1;
         }
         if(this.r2 != 0)
         {
            _loc1_[const_1827] = this.r2;
         }
         if(this.r3 != 0)
         {
            _loc1_[const_1704] = this.r3;
         }
         if(this.unitIds != null)
         {
            _loc2_ = [];
            for each(_loc3_ in this.unitIds)
            {
               _loc2_.push(_loc3_);
            }
            _loc1_[const_1631] = _loc2_;
         }
         if(this.oldPos != null)
         {
            _loc1_[const_1587] = {
               "x":this.oldPos.x,
               "y":this.oldPos.y
            };
         }
         if(this.blockCharge)
         {
            _loc1_[const_1640] = this.blockCharge;
         }
         return _loc1_;
      }
   }
}
