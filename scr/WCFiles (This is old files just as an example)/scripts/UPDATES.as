package
{
   import org.osflash.signals.class_59;
   import flash.utils.Dictionary;
   import com.cc.utils.js_utils.WCJSON;
   import com.adverserealms.log.Logger;
   import package_32.SaveManager;
   import com.cc.build.BldgFoundation;
   import com.cc.tech.class_712;
   import com.cc.units.UnitData;
   import com.cc.units.AbstractUnit;
   import com.cc.tech.class_405;
   import com.cc.towers.TowerData;
   import com.cc.build.BuildingData;
   import com.cc.units.class_143;
   import com.cc.units.class_541;
   import com.cc.units.C_Platoon;
   import package_67.class_409;
   import com.cc.units.class_342;
   import flash.geom.Point;
   import package_44.class_715;
   import com.cc.build.class_255;
   import package_31.class_97;
   import package_31.class_716;
   import package_22.ResourceManager;
   import com.cc.units.Units;
   import package_20.class_203;
   import package_126.class_713;
   import com.cc.utils.class_44;
   import com.cc.units.UnitManager;
   import com.cc.build.class_184;
   import com.cc.towers.Towers;
   import com.cc.towers.TowerResearch;
   import com.cc.build.C_Buildings;
   import com.cc.worldmap.class_23;
   import com.cc.units.PlatoonManager;
   import package_12.class_30;
   import package_15.class_43;
   import package_29.DepositManager;
   import package_2.class_110;
   import com.cc.tech.TechManager;
   import package_31.class_124;
   
   public class UPDATES extends Object
   {
      
      public static const const_4891:int = 1;
      
      private static const const_3151:String = "BE";
      
      private static const const_4118:String = "PCU";
      
      private static const const_3202:String = "RRG";
      
      private static const const_3167:String = "GOLDPURCHASED";
      
      private static const const_4738:String = "DOTOPUPACTION";
      
      private static const const_4904:String = "ADPROMO";
      
      private static const const_4638:String = "UPDATEINVENTORYUNIT";
      
      private static const const_4494:String = "DELETEINVENTORYUNIT";
      
      private static const const_5262:String = "UNITDELETE";
      
      private static const const_3621:String = "UNITADD";
      
      public static const const_4272:String = "PLATOONADD";
      
      private static const const_3472:String = "UPDATE_INV_TOWER";
      
      private static const const_4755:String = "UPDATEINVENTORYBUILDING";
      
      private static const const_3697:String = "FRIENDRELOCATED";
      
      private static const const_4626:String = "WASCULLED";
      
      private static const const_3164:String = "RSDELTAS";
      
      private static const const_3199:String = "ATTACKLOOT";
      
      private static const const_3826:String = "EVENTXPUPDATE";
      
      private static const const_3875:String = "EVENTBASEDESTROYED";
      
      private static const const_4054:String = "THORIUMEXPIRED";
      
      private static const UPDATE_RESOURCES_BUFF:String = "UPDATE_RESOURCES_BUFF";
      
      private static const const_4766:String = "UNITDELETEFROMSTORAGE";
      
      private static const const_3190:String = "UNITADDTOSTORAGE";
      
      private static const const_5111:String = "UPDATESCHEMATICINVENTORY";
      
      private static const const_3714:String = "UPDATETECHITEMINVENTORY";
      
      private static const const_3949:String = "UPDATETECHITEMINVENTORYBYCATEGORY";
      
      private static const const_3908:String = "UPDATEBASEPOINTS";
      
      public static const const_474:class_59 = new class_59();
      
      private static var var_1269:Vector.<UpdateItemData>;
      
      private static var var_3316:Dictionary;
      
      private static var var_1715:Vector.<String>;
      
      private static var var_1814:Boolean = false;
       
      public function UPDATES()
      {
         super();
      }
      
      public static function Setup() : void
      {
         var_1269 = new Vector.<UpdateItemData>();
         var_3316 = new Dictionary();
      }
      
      public static function Process(param1:Array) : void
      {
         var update:Object = null;
         var updateData:Object = null;
         var jsonError:Boolean = false;
         var item:Array = null;
         var updates:Array = param1;
         if(updates)
         {
            for each(update in updates)
            {
               if(update.data)
               {
                  jsonError = false;
                  try
                  {
                     updateData = WCJSON.decode(update.data);
                  }
                  catch(e:Error)
                  {
                     FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820309065) + update.id + class_2.method_7(-1820296098));
                     jsonError = true;
                  }
                  if(!jsonError)
                  {
                     if(!var_3316[update.id])
                     {
                        var_3316[update.id] = true;
                        for each(item in updateData)
                        {
                           var_1269.push(new UpdateItemData(update.id,item));
                        }
                     }
                  }
               }
               else
               {
                  Logger.warn(class_2.method_7(-1820296506));
               }
            }
         }
      }
      
      public static function Check() : void
      {
         var u:int = 0;
         var update:Array = null;
         var actioned:Boolean = false;
         if(!class_105.method_55() || class_105.method_171())
         {
            return;
         }
         var t:int = class_31.method_691();
         u = 0;
         while(u < var_1269.length)
         {
            update = var_1269[u].data;
            if(update[0] <= t)
            {
               actioned = false;
               try
               {
                  actioned = Action(var_1269[u]);
               }
               catch(e:Error)
               {
                  FrameworkLogger.Log(FrameworkLogger.KEY_ERROR,class_2.method_7(-1820298714) + WCJSON.encode(var_1269[u]) + " | " + e.message);
                  actioned = true;
               }
               if(actioned)
               {
                  method_3303(var_1269[u].guid);
                  SaveManager.class_2093.Base.method_38(true);
                  var_1269.splice(u,1);
                  u--;
               }
            }
            u++;
         }
         const_474.dispatch();
      }
      
      private static function Action(param1:UpdateItemData) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:class_712 = null;
         var _loc14_:* = 0;
         var _loc15_:String = null;
         var _loc16_:* = 0;
         var _loc17_:UnitData = null;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         var _loc20_:Array = null;
         var _loc21_:String = null;
         var _loc22_:* = 0;
         var _loc23_:Vector.<AbstractUnit> = null;
         var _loc24_:String = null;
         var _loc25_:* = NaN;
         var _loc26_:AbstractUnit = null;
         var _loc27_:Object = null;
         var _loc28_:Array = null;
         var _loc29_:* = 0;
         var _loc30_:String = null;
         var _loc31_:class_405 = null;
         var _loc32_:UnitData = null;
         var _loc33_:String = null;
         var _loc34_:* = 0;
         var _loc35_:* = 0;
         var _loc36_:TowerData = null;
         var _loc37_:String = null;
         var _loc38_:* = 0;
         var _loc39_:BuildingData = null;
         var _loc40_:Vector.<class_143> = null;
         var _loc41_:class_143 = null;
         var _loc43_:Vector.<class_541> = null;
         var _loc44_:String = null;
         var _loc45_:* = false;
         var _loc46_:C_Platoon = null;
         var _loc47_:* = 0;
         var _loc48_:String = null;
         var _loc49_:String = null;
         var _loc50_:Array = null;
         var _loc51_:Vector.<class_409> = null;
         var _loc52_:class_342 = null;
         var _loc53_:Object = null;
         var _loc54_:class_409 = null;
         var _loc55_:String = null;
         var _loc56_:Point = null;
         var _loc57_:Array = null;
         var _loc58_:Array = null;
         var _loc59_:* = 0;
         var _loc60_:* = 0;
         var _loc61_:String = null;
         var _loc62_:* = 0;
         var _loc63_:* = 0;
         var _loc64_:String = null;
         var _loc65_:String = null;
         var _loc66_:* = 0;
         var _loc67_:* = 0;
         var _loc68_:* = NaN;
         var _loc8_:String = param1.data[1];
         switch(_loc8_)
         {
            case const_3199:
               _loc9_ = WCJSON.decode(param1.data[2]);
               if(!class_105.method_23())
               {
                  return false;
               }
               _loc14_ = 0;
               if(_loc9_.r1 || _loc9_.r2 || _loc9_.r3)
               {
                  if(_loc9_.r1 && _loc9_.r1 > 0)
                  {
                     BASE.method_404(Math.ceil(_loc9_.r1 / 50));
                     _loc14_ = _loc14_ + Math.ceil(_loc9_.r1 / 50);
                  }
                  if(_loc9_.r2 && _loc9_.r2 > 0)
                  {
                     BASE.method_404(Math.ceil(_loc9_.r2 / 50));
                     _loc14_ = _loc14_ + Math.ceil(_loc9_.r2 / 50);
                  }
                  if(_loc9_.r3 && _loc9_.r3 > 0)
                  {
                     BASE.method_404(Math.ceil(_loc9_.r3 / 50));
                     _loc14_ = _loc14_ + Math.ceil(_loc9_.r3 / 10);
                     break;
                  }
                  break;
               }
               break;
            case const_3164:
               return true;
            case const_4904:
               if(!class_105.method_23())
               {
                  return false;
               }
               _loc3_ = param1.data[2].items[0];
               Logger.debug(class_2.method_7(-1820310455) + _loc3_.item_id + " " + WCJSON.encode(_loc3_));
               if(!class_715.method_6929(_loc3_.item_id))
               {
                  return false;
               }
               break;
            case const_4118:
               _loc3_ = param1.data[2].items[0];
               class_32.method_2895(new StoreItem(_loc3_.item_id,"","",_loc3_.price,new class_714(WCJSON.decode(WCJSON.decode(_loc3_.data)[class_2.method_7(-1820310803)]))));
               break;
            case const_3167:
               if(BASE.method_52())
               {
                  Logger.warn(class_2.method_7(-1820298526) + class_68.name_1.id + class_2.method_7(-1820302946) + param1.data[2].nb + class_2.method_7(-1820297726) + BASE.var_217.Get());
                  return true;
               }
               BASE.var_217.Set(int(param1.data[2].nb));
               class_255.method_1100(false);
               break;
            case const_4738:
               if(BASE.method_1226() || BASE.var_217 == null)
               {
                  return false;
               }
               _loc3_ = param1.data[2];
               if(BASE.method_52())
               {
                  FrameworkLogger.Log(FrameworkLogger.KEY_FAILED_PURCHASE,class_2.method_7(-1820310185) + class_68.name_1.id + class_2.method_7(-1820310915) + WCJSON.encode(_loc3_));
                  return true;
               }
               if(_loc3_.cost > BASE.var_217.Get())
               {
                  FrameworkLogger.Log(FrameworkLogger.KEY_FAILED_PURCHASE,class_2.method_7(-1820310185) + class_68.name_1.id + class_2.method_7(-1820298652) + _loc3_.cost + class_2.method_7(-1820296385) + BASE.var_217.Get() + class_2.method_7(-1820302243) + WCJSON.encode(_loc3_));
                  return true;
               }
               class_32.method_2895(new StoreItem(_loc3_.storeCode,"","",_loc3_.cost,new class_714(_loc3_)));
               break;
            case const_3202:
               if(!class_105.method_23())
               {
                  return false;
               }
               class_97.class_2206(new class_716(param1.data[2],param1.data[3]));
               break;
            case const_3151:
               ResourceManager.method_22.method_222(1,-param1.data[3],false);
               ResourceManager.method_22.method_222(2,-param1.data[4],false);
               BASE.var_217.Add(-param1.data[5]);
               class_255.method_1100(true);
               break;
            case UPDATE_RESOURCES_BUFF:
               _loc9_ = param1.data[2];
               if(_loc9_.r1 || _loc9_.r2)
               {
                  if(_loc9_.r1 && _loc9_.r1 > 0)
                  {
                     ResourceManager.method_22.method_222(1,_loc9_.r1);
                  }
                  if(_loc9_.r2 && _loc9_.r2 > 0)
                  {
                     ResourceManager.method_22.method_222(2,_loc9_.r2);
                     break;
                  }
                  break;
               }
               break;
            case const_4638:
               if(!class_105.method_23())
               {
                  return false;
               }
               _loc3_ = param1.data[2];
               for(_loc15_ in _loc3_)
               {
                  _loc16_ = int(_loc15_.replace("u",""));
                  _loc17_ = Units.GetData(_loc16_);
                  _loc18_ = _loc3_[_loc15_].l != null?int(_loc3_[_loc15_].l):-1;
                  _loc19_ = _loc3_[_loc15_].sk != null?int(_loc3_[_loc15_].sk):-1;
                  if(_loc19_ <= 0 && _loc18_ <= 0 || _loc17_ != null && (_loc17_.userDeployable || _loc17_.group == class_203.const_30))
                  {
                     C_ACADEMY.method_1747(_loc16_,_loc18_,_loc19_);
                     if(_loc19_ != 0)
                     {
                        if(class_713.method_5322(_loc16_))
                        {
                           C_ACADEMY.method_1275(_loc16_);
                        }
                     }
                  }
                  else
                  {
                     class_44.assert(false,class_2.method_7(-1820300242) + _loc16_);
                  }
               }
               class_138.method_272();
               break;
            case const_4494:
               if(!class_105.method_23())
               {
                  return false;
               }
               _loc20_ = param1.data[2];
               for each(_loc21_ in _loc20_)
               {
                  _loc22_ = int(_loc21_.replace("u",""));
                  if(_loc22_)
                  {
                     C_ACADEMY.method_2480(_loc22_);
                  }
               }
               break;
            case const_4766:
               if(!class_105.method_23())
               {
                  return false;
               }
               _loc3_ = WCJSON.decode(param1.data[2]);
               _loc23_ = new Vector.<AbstractUnit>();
               for each(_loc24_ in _loc3_)
               {
                  _loc25_ = Number(_loc24_);
                  _loc26_ = UnitManager.class_2093.method_92(_loc25_);
                  if(_loc26_)
                  {
                     _loc23_.push(_loc26_);
                  }
               }
               if(_loc23_.length > 0)
               {
                  Units.ScrapUnits(_loc23_,false);
                  break;
               }
               break;
            case const_3190:
               if(!class_105.method_23())
               {
                  return false;
               }
               _loc3_ = WCJSON.decode(param1.data[2]);
               for each(_loc27_ in _loc3_)
               {
                  _loc28_ = _loc27_.tech_item_ids;
                  _loc29_ = _loc27_.hasOwnProperty(class_2.method_7(-1820295622))?_loc27_.icon_id:0;
                  _loc30_ = _loc27_.hasOwnProperty(class_2.method_7(-1820300207))?_loc27_.design_name:"";
                  _loc31_ = null;
                  if(_loc30_ != "" && _loc28_.length > 0)
                  {
                     _loc31_ = new class_405(_loc27_.id,_loc30_,0,_loc29_,Vector.<int>(_loc28_));
                  }
                  _loc32_ = Units.GetData(_loc27_.id);
                  _loc10_ = 0;
                  while(_loc10_ < _loc27_.quantity)
                  {
                     class_184.Spawn(_loc27_.id,_loc32_.group,null,0,0,0,_loc31_);
                     _loc10_++;
                  }
               }
               break;
            case const_3472:
               if(!class_105.method_23())
               {
                  return false;
               }
               _loc3_ = param1.data[2];
               for(_loc33_ in _loc3_)
               {
                  _loc34_ = parseInt(_loc33_.substr(1));
                  _loc35_ = _loc3_[_loc33_].l != null?int(_loc3_[_loc33_].l):1;
                  _loc36_ = Towers.GetData(_loc34_);
                  if(_loc35_ == 0 || _loc36_ != null && _loc36_.userDeployable)
                  {
                     TowerResearch.method_1238(_loc34_,_loc35_,true);
                  }
                  else
                  {
                     class_44.assert(false,class_2.method_7(-1820311156) + _loc34_);
                  }
               }
               class_138.method_272();
               break;
            case const_4755:
               if(!class_105.method_23())
               {
                  return false;
               }
               _loc3_ = param1.data[2];
               for(_loc37_ in _loc3_)
               {
                  _loc38_ = parseInt(_loc37_.substr(1));
                  _loc39_ = C_Buildings.GetData(_loc38_);
                  if(_loc39_ != null && _loc39_.userDeployable)
                  {
                     BASE.method_507(_loc38_);
                  }
                  else
                  {
                     class_44.assert(false,class_2.method_7(-1820301700) + _loc38_);
                  }
               }
               break;
            case const_3621:
               if(!class_23.hasFinishedLoading)
               {
                  return false;
               }
               _loc3_ = WCJSON.decode(param1.data[2]);
               _loc6_ = [];
               _loc5_ = _loc3_[class_2.method_7(-1820302155)];
               if(_loc5_)
               {
                  for each(_loc4_ in _loc5_)
                  {
                     if(_loc4_)
                     {
                        _loc6_ = _loc6_.concat(_loc4_);
                        for each(_loc7_ in _loc4_)
                        {
                           if(UnitManager.class_2093.method_1076(_loc7_.t))
                           {
                              FrameworkLogger.Log(class_2.method_7(-1820298255),class_2.method_7(-1820301557) + _loc7_.t);
                              return true;
                           }
                        }
                        method_2952(_loc4_);
                     }
                  }
               }
               UnitManager.class_2093.method_1158(_loc6_,class_2.method_7(-1820299956));
               break;
            case const_4272:
               if(!class_105.method_23())
               {
                  return false;
               }
               if(!class_23.hasFinishedLoading)
               {
                  return false;
               }
               _loc40_ = new Vector.<class_143>(4);
               _loc3_ = WCJSON.decode(param1.data[2]);
               _loc44_ = _loc3_.pid;
               _loc45_ = false;
               if(!_loc44_ || _loc44_.charAt(0) != "p")
               {
                  _loc45_ = true;
                  _loc44_ = PlatoonManager.class_2093.method_952();
               }
               _loc46_ = PlatoonManager.class_2093.method_359(_loc44_);
               if(_loc46_ != null)
               {
                  if(_loc46_.state != C_Platoon.const_53)
                  {
                     Logger.debug(class_2.method_7(-1820310857) + _loc46_.ID);
                     return true;
                  }
                  if(_loc46_.method_616 || _loc46_.method_134)
                  {
                     Logger.debug(class_2.method_7(-1820298458) + _loc46_.ID);
                     return true;
                  }
               }
               _loc5_ = _loc3_[class_2.method_7(-1820302155)];
               _loc6_ = [];
               if(_loc5_)
               {
                  for(_loc48_ in _loc5_)
                  {
                     _loc47_ = int(_loc48_.charAt(1));
                     _loc43_ = new Vector.<class_541>();
                     for each(_loc7_ in _loc5_[_loc48_])
                     {
                        _loc6_.push(_loc7_);
                        _loc43_.push(new class_541(_loc7_));
                     }
                     if(_loc45_ && _loc43_.length > 0)
                     {
                        _loc45_ = false;
                        if(UnitManager.class_2093.method_92(_loc43_[0].u))
                        {
                           Logger.error(class_2.method_7(-1820310027));
                           return true;
                        }
                     }
                     _loc41_ = new class_143(_loc43_,class_143.const_2290,true);
                     _loc40_[_loc47_] = _loc41_;
                  }
                  if(_loc3_.pname)
                  {
                     _loc49_ = _loc3_.pname;
                  }
                  else
                  {
                     _loc49_ = PlatoonManager.class_2093.method_1256(_loc3_.pn);
                  }
                  _loc50_ = _loc3_["ft"];
                  _loc51_ = new Vector.<class_409>();
                  if(_loc50_ != null)
                  {
                     for each(_loc53_ in _loc50_)
                     {
                        _loc54_ = class_409.method_731(_loc53_);
                        if(_loc54_ != null)
                        {
                           _loc51_.push(_loc54_);
                        }
                     }
                  }
                  _loc52_ = new class_342(_loc40_,_loc44_,_loc49_,-1,_loc51_);
                  _loc46_ = new C_Platoon(_loc52_,true);
                  UnitManager.class_2093.method_1158(_loc6_,class_2.method_7(-1820300824));
                  PlatoonManager.class_2093.method_6801(_loc46_);
                  break;
               }
               break;
            case const_3697:
               if(class_31.method_883())
               {
                  return false;
               }
               _loc3_ = param1.data[2];
               _loc55_ = _loc3_["coords"];
               _loc56_ = null;
               if(_loc55_)
               {
                  _loc57_ = _loc55_.split(",");
                  if(_loc57_.length >= 2)
                  {
                     _loc56_ = new Point(int(_loc57_[0]),int(_loc57_[1]));
                  }
               }
               class_30.ShowInfo(_loc3_[class_2.method_7(-1820298236)] + " " + _loc3_[class_2.method_7(-1820308829)].substr(0,1),_loc56_,_loc3_[class_2.method_7(-1820298554)]);
               break;
            case const_4626:
               if(!class_105.method_23() || class_31.method_883())
               {
                  return false;
               }
               POPUPS.method_158(class_43.getString(class_2.method_7(-1820300259)),class_43.getString(class_2.method_7(-1820310974)));
               break;
            case const_3826:
               Logger.debug(class_2.method_7(-1820301870));
               break;
            case const_3875:
               break;
            case const_4054:
               _loc3_ = param1.data[2];
               if(!_loc3_["coords"] || !_loc3_["size"])
               {
                  Logger.warn(class_2.method_7(-1820301965) + WCJSON.encode(_loc3_));
                  return true;
               }
               _loc58_ = _loc3_["coords"].split(",");
               if(_loc58_.length != 2)
               {
                  Logger.warn(class_2.method_7(-1820300752) + WCJSON.encode(_loc3_));
                  return true;
               }
               _loc59_ = _loc58_[0];
               _loc60_ = _loc58_[1];
               DepositManager.class_2093.method_3331(_loc3_["size"],new Point(_loc59_,_loc60_),class_110.const_40);
               break;
            case const_5111:
               if(!class_105.method_23() || !TechManager.instance.hasLoadedSchematics)
               {
                  return false;
               }
               _loc3_ = param1.data[2];
               for(_loc61_ in _loc3_)
               {
                  if("l" in _loc3_[_loc61_])
                  {
                     _loc62_ = parseInt(_loc61_);
                     _loc63_ = _loc3_[_loc61_].l;
                     TechManager.instance.setSchematicLevelForUnitType(_loc63_,_loc62_);
                  }
               }
               break;
            case const_3714:
               if(!class_105.method_23() || !TechManager.instance.hasLoadedTechResearch || !TechManager.instance.hasLoadedStaticTechData)
               {
                  return false;
               }
               _loc3_ = param1.data[2];
               for(_loc64_ in _loc3_)
               {
                  if("l" in _loc3_[_loc64_])
                  {
                     _loc11_ = parseInt(_loc64_);
                     _loc12_ = _loc3_[_loc64_].l;
                     _loc13_ = TechManager.instance.getTechItemFromId(_loc11_);
                     if(_loc13_ != null && !_loc13_.method_376)
                     {
                        if(_loc12_ > 0)
                        {
                           TechManager.instance.unlockTechItem(_loc11_);
                        }
                        else
                        {
                           TechManager.instance.lockTechItem(_loc11_);
                        }
                     }
                     else
                     {
                        Logger.warn(class_2.method_7(-1820298155) + _loc11_ + class_2.method_7(-1820310224));
                     }
                  }
               }
               break;
            case const_3949:
               if(!class_105.method_23() || !TechManager.instance.hasLoadedTechResearch || !TechManager.instance.hasLoadedStaticTechData)
               {
                  return false;
               }
               _loc3_ = param1.data[2];
               for(_loc65_ in _loc3_)
               {
                  if("l" in _loc3_[_loc65_])
                  {
                     _loc66_ = parseInt(_loc65_);
                     _loc67_ = 1;
                     if("o" in _loc3_[_loc65_])
                     {
                        _loc67_ = _loc3_[_loc65_].o;
                     }
                     _loc12_ = _loc3_[_loc65_].l;
                     _loc13_ = TechManager.instance.getTechItemFromCategory(_loc66_,_loc67_);
                     if(_loc13_ != null && !_loc13_.method_376)
                     {
                        _loc11_ = _loc13_.id;
                        if(_loc12_ > 0)
                        {
                           TechManager.instance.unlockTechItem(_loc11_);
                        }
                        else
                        {
                           TechManager.instance.lockTechItem(_loc11_);
                        }
                     }
                     else
                     {
                        Logger.warn(class_2.method_7(-1820303258) + _loc66_ + class_2.method_7(-1820310224));
                     }
                  }
               }
               break;
            case const_3908:
               if(!class_105.method_23())
               {
                  return false;
               }
               _loc68_ = Number(param1.data[2]);
               if(isNaN(_loc68_))
               {
                  return true;
               }
               if(_loc68_ + BASE.var_1042.Get() < 0)
               {
                  _loc68_ = -BASE.var_1042.Get();
               }
               BASE.method_404(_loc68_);
               break;
         }
         return true;
      }
      
      public static function method_3303(param1:String) : void
      {
         if(var_1715 == null)
         {
            var_1715 = new Vector.<String>();
         }
         var_1715.push(param1);
      }
      
      public static function method_6208() : String
      {
         var _loc1_:Array = [];
         if(var_1715 != null)
         {
            while(var_1715.length > 0)
            {
               _loc1_.push(var_1715.shift());
            }
         }
         return WCJSON.encode(_loc1_);
      }
      
      public static function method_6265() : void
      {
         var_1814 = true;
         true;
      }
      
      public static function method_3294() : void
      {
         var_1814 = false;
         false;
      }
      
      public static function get method_6431() : Boolean
      {
         return var_1814;
      }
      
      private static function method_2952(param1:Array) : void
      {
         var _loc3_:Object = null;
         var _loc4_:AbstractUnit = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:UnitManager = UnitManager.class_2093;
         var _loc5_:int = param1.length - 1;
         while(_loc5_ > -1)
         {
            _loc3_ = param1[_loc5_];
            if(_loc3_ && "t" in _loc3_)
            {
               _loc4_ = AbstractUnit.method_778(_loc3_);
               if(_loc4_)
               {
                  _loc2_.method_2045(_loc4_);
               }
            }
            _loc5_--;
         }
         class_97.Message(class_124.const_173);
      }
   }
}

class UpdateItemData extends Object
{
    
   public var guid:String;
   
   public var data:Array;
   
   function UpdateItemData(param1:String, param2:Array)
   {
      super();
      this.guid = param1;
      this.data = param2;
   }
}
