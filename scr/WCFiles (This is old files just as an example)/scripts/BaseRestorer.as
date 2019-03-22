package
{
   import package_11.class_28;
   import package_15.class_43;
   import package_20.class_158;
   import package_20.class_132;
   import com.cc.build.BuildingData;
   import com.cc.units.UnitData;
   import com.cc.units.UnitLevelData;
   import package_20.class_203;
   import com.cc.build.C_Buildings;
   import com.cc.units.Units;
   import com.cc.towers.TowerData;
   import com.cc.towers.TowerLevelData;
   import com.cc.towers.Towers;
   import package_20.class_125;
   import com.cc.build.BuildingLevelData;
   import com.cc.build.class_177;
   
   public class BaseRestorer extends Object
   {
      
      private static const const_5223:String = "{\"0\":{\"l\":6,\"X\":-110,\"t\":14,\"Y\":-140,\"id\":0},\"1\":{\"X\":70,\"Y\":450,\"st\":10000,\"rCP\":1500,\"t\":1,\"id\":1},\"2\":{\"X\":-30,\"Y\":450,\"st\":10000,\"rCP\":1500,\"t\":2,\"id\":2},\"4\":{\"X\":-665,\"l\":10,\"Y\":-205,\"rCP\":-44448,\"t\":29,\"id\":4},\"25\":{\"X\":-655,\"l\":10,\"Y\":-365,\"id\":25,\"rally\":[100,-50],\"t\":7},\"26\":{\"l\":10,\"X\":-190,\"t\":3,\"Y\":20,\"id\":26},\"27\":{\"l\":10,\"X\":210,\"t\":4,\"Y\":-90,\"id\":27},\"29\":{\"l\":10,\"X\":-665,\"t\":26,\"Y\":25,\"id\":29},\"30\":{\"X\":-35,\"Y\":-295,\"tcl\":1,\"tct\":2,\"t\":10,\"id\":30},\"31\":{\"X\":135,\"Y\":-205,\"tcl\":1,\"tct\":10,\"t\":10,\"id\":31},\"32\":{\"X\":-105,\"Y\":105,\"tcl\":1,\"tct\":2,\"t\":10,\"id\":32},\"33\":{\"l\":10,\"X\":-585,\"t\":8,\"Y\":145,\"id\":33},\"34\":{\"l\":10,\"X\":-30,\"t\":6,\"Y\":-220,\"id\":34},\"35\":{\"l\":10,\"X\":-190,\"t\":3,\"Y\":-220,\"id\":35},\"36\":{\"l\":10,\"X\":50,\"t\":4,\"Y\":-220,\"id\":36},\"37\":{\"X\":-90,\"Y\":390,\"st\":10000,\"rCP\":1500,\"t\":1,\"id\":37},\"38\":{\"X\":70,\"Y\":390,\"st\":10000,\"rCP\":1500,\"t\":2,\"id\":38},\"39\":{\"l\":10,\"X\":-665,\"t\":31,\"Y\":145,\"id\":39},\"40\":{\"X\":-655,\"l\":10,\"Y\":-485,\"rCP\":-44448,\"t\":30,\"id\":40},\"41\":{\"X\":-270,\"Y\":20,\"tcl\":1,\"tct\":10,\"t\":10,\"id\":41},\"42\":{\"X\":-270,\"Y\":-120,\"tcl\":1,\"tct\":2,\"t\":10,\"id\":42},\"43\":{\"X\":-90,\"Y\":450,\"st\":10000,\"rCP\":1500,\"t\":1,\"id\":43},\"44\":{\"X\":-30,\"Y\":390,\"st\":10000,\"rCP\":1500,\"t\":2,\"id\":44},\"45\":{\"l\":10,\"X\":50,\"t\":3,\"Y\":20,\"id\":45},\"46\":{\"l\":10,\"X\":210,\"t\":4,\"Y\":-170,\"id\":46},\"47\":{\"X\":-665,\"l\":10,\"Y\":245,\"rCP\":-44448,\"t\":13,\"id\":47},\"48\":{\"l\":5,\"X\":-110,\"t\":19,\"Y\":20,\"id\":48},\"49\":{\"X\":-175,\"Y\":105,\"tcl\":1,\"tct\":1,\"t\":10,\"id\":49},\"50\":{\"X\":-175,\"Y\":-295,\"tcl\":1,\"tct\":10,\"t\":10,\"id\":50},\"51\":{\"X\":135,\"Y\":5,\"tcl\":1,\"tct\":1,\"t\":10,\"id\":51},\"52\":{\"X\":-270,\"Y\":-50,\"tcl\":1,\"tct\":6,\"t\":10,\"id\":52},\"53\":{\"l\":5,\"X\":455,\"t\":5,\"Y\":115,\"id\":53},\"54\":{\"X\":130,\"t\":22,\"Y\":-300,\"id\":54},\"55\":{\"X\":130,\"t\":22,\"Y\":100,\"id\":55},\"84\":{\"l\":10,\"X\":-110,\"t\":6,\"Y\":-220,\"id\":84},\"85\":{\"X\":-250,\"Y\":450,\"st\":10000,\"rCP\":1500,\"t\":1,\"id\":85},\"86\":{\"X\":-190,\"Y\":450,\"st\":10000,\"rCP\":1500,\"t\":2,\"id\":86},\"87\":{\"l\":10,\"X\":-75,\"t\":3,\"Y\":175,\"id\":87},\"88\":{\"l\":10,\"X\":50,\"t\":4,\"Y\":-140,\"id\":88},\"89\":{\"X\":-270,\"Y\":-190,\"tcl\":1,\"tct\":1,\"t\":10,\"id\":89},\"90\":{\"X\":135,\"Y\":-65,\"tcl\":1,\"tct\":2,\"t\":10,\"id\":90},\"91\":{\"X\":135,\"Y\":-135,\"tcl\":1,\"tct\":6,\"t\":10,\"id\":91},\"92\":{\"X\":-270,\"t\":22,\"Y\":-300,\"id\":92},\"93\":{\"X\":-190,\"Y\":390,\"st\":10000,\"rCP\":1500,\"t\":2,\"id\":93},\"94\":{\"X\":-250,\"Y\":390,\"st\":10000,\"rCP\":1500,\"t\":1,\"id\":94},\"95\":{\"X\":-270,\"t\":22,\"Y\":100,\"id\":95},\"96\":{\"X\":-105,\"Y\":-295,\"tcl\":1,\"tct\":6,\"t\":10,\"id\":96},\"98\":{\"X\":35,\"Y\":-295,\"tcl\":1,\"tct\":1,\"t\":10,\"id\":98},\"99\":{\"X\":35,\"Y\":105,\"tcl\":1,\"tct\":10,\"t\":10,\"id\":99},\"101\":{\"l\":10,\"X\":-155,\"t\":3,\"Y\":175,\"id\":101},\"102\":{\"l\":10,\"X\":5,\"t\":4,\"Y\":175,\"id\":102},\"103\":{\"X\":-35,\"Y\":105,\"tcl\":1,\"tct\":6,\"t\":10,\"id\":103},\"109\":{\"l\":10,\"X\":-190,\"t\":6,\"Y\":-140,\"id\":109},\"110\":{\"l\":10,\"X\":-190,\"t\":6,\"Y\":-60,\"id\":110},\"111\":{\"X\":-665,\"t\":46,\"Y\":-85,\"id\":111},\"112\":{\"X\":455,\"rCP\":-1032,\"t\":37,\"Y\":235,\"id\":112},\"113\":{\"X\":-30,\"t\":42,\"Y\":20,\"id\":113},\"114\":{\"X\":-330,\"t\":17,\"Y\":280,\"id\":114},\"115\":{\"X\":-390,\"t\":17,\"Y\":280,\"id\":115},\"116\":{\"X\":-370,\"t\":17,\"Y\":280,\"id\":116},\"117\":{\"X\":-350,\"t\":17,\"Y\":280,\"id\":117},\"118\":{\"X\":-390,\"t\":17,\"Y\":260,\"id\":118},\"119\":{\"X\":-390,\"t\":17,\"Y\":240,\"id\":119},\"120\":{\"X\":-390,\"t\":17,\"Y\":220,\"id\":120},\"121\":{\"X\":-390,\"t\":17,\"Y\":200,\"id\":121},\"122\":{\"X\":-390,\"t\":17,\"Y\":180,\"id\":122},\"123\":{\"X\":-390,\"t\":17,\"Y\":160,\"id\":123},\"124\":{\"X\":-390,\"t\":17,\"Y\":140,\"id\":124},\"125\":{\"X\":-390,\"t\":17,\"Y\":120,\"id\":125},\"126\":{\"X\":-390,\"t\":17,\"Y\":100,\"id\":126},\"127\":{\"X\":-390,\"t\":17,\"Y\":80,\"id\":127},\"128\":{\"X\":-390,\"t\":17,\"Y\":60,\"id\":128},\"129\":{\"X\":-390,\"t\":17,\"Y\":40,\"id\":129},\"130\":{\"X\":-390,\"t\":17,\"Y\":20,\"id\":130},\"131\":{\"X\":-390,\"t\":17,\"Y\":0,\"id\":131},\"132\":{\"X\":-390,\"t\":17,\"Y\":-20,\"id\":132},\"133\":{\"X\":-390,\"t\":17,\"Y\":-40,\"id\":133},\"134\":{\"X\":-390,\"t\":17,\"Y\":-60,\"id\":134},\"135\":{\"X\":-390,\"t\":17,\"Y\":-80,\"id\":135},\"136\":{\"X\":-390,\"t\":17,\"Y\":-100,\"id\":136},\"137\":{\"X\":-390,\"t\":17,\"Y\":-120,\"id\":137},\"138\":{\"X\":-390,\"t\":17,\"Y\":-140,\"id\":138},\"139\":{\"X\":-390,\"t\":17,\"Y\":-160,\"id\":139},\"140\":{\"X\":-390,\"t\":17,\"Y\":-180,\"id\":140},\"141\":{\"X\":-390,\"t\":17,\"Y\":-200,\"id\":141},\"142\":{\"X\":-390,\"t\":17,\"Y\":-220,\"id\":142},\"143\":{\"X\":-390,\"t\":17,\"Y\":-240,\"id\":143},\"144\":{\"X\":-390,\"t\":17,\"Y\":-320,\"id\":144},\"145\":{\"X\":-390,\"t\":17,\"Y\":-300,\"id\":145},\"146\":{\"X\":-390,\"t\":17,\"Y\":-280,\"id\":146},\"147\":{\"X\":-390,\"t\":17,\"Y\":-260,\"id\":147},\"148\":{\"X\":-370,\"t\":17,\"Y\":-420,\"id\":148},\"149\":{\"X\":-390,\"t\":17,\"Y\":-340,\"id\":149},\"150\":{\"X\":-390,\"t\":17,\"Y\":-360,\"id\":150},\"151\":{\"X\":-390,\"t\":17,\"Y\":-380,\"id\":151},\"152\":{\"X\":-390,\"t\":17,\"Y\":-400,\"id\":152},\"153\":{\"X\":-350,\"t\":17,\"Y\":-420,\"id\":153},\"154\":{\"X\":-390,\"t\":17,\"Y\":-420,\"id\":154},\"155\":{\"X\":-330,\"t\":17,\"Y\":-420,\"id\":155},\"156\":{\"X\":-310,\"t\":17,\"Y\":-420,\"id\":156},\"157\":{\"X\":-290,\"t\":17,\"Y\":-420,\"id\":157},\"158\":{\"X\":-270,\"t\":17,\"Y\":-420,\"id\":158},\"159\":{\"X\":-250,\"t\":17,\"Y\":-420,\"id\":159},\"160\":{\"X\":-230,\"t\":17,\"Y\":-420,\"id\":160},\"161\":{\"X\":-210,\"t\":17,\"Y\":-420,\"id\":161},\"162\":{\"X\":-190,\"t\":17,\"Y\":-420,\"id\":162},\"163\":{\"X\":-170,\"t\":17,\"Y\":-420,\"id\":163},\"164\":{\"X\":-150,\"t\":17,\"Y\":-420,\"id\":164},\"165\":{\"X\":-130,\"t\":17,\"Y\":-420,\"id\":165},\"166\":{\"X\":-110,\"t\":17,\"Y\":-420,\"id\":166},\"167\":{\"X\":-90,\"t\":17,\"Y\":-420,\"id\":167},\"168\":{\"X\":-70,\"t\":17,\"Y\":-420,\"id\":168},\"169\":{\"X\":-50,\"t\":17,\"Y\":-420,\"id\":169},\"170\":{\"X\":-30,\"t\":17,\"Y\":-420,\"id\":170},\"171\":{\"X\":-10,\"t\":17,\"Y\":-420,\"id\":171},\"172\":{\"X\":10,\"t\":17,\"Y\":-420,\"id\":172},\"173\":{\"X\":30,\"t\":17,\"Y\":-420,\"id\":173},\"174\":{\"X\":50,\"t\":17,\"Y\":-420,\"id\":174},\"175\":{\"X\":70,\"t\":17,\"Y\":-420,\"id\":175},\"176\":{\"X\":90,\"t\":17,\"Y\":-420,\"id\":176},\"177\":{\"X\":110,\"t\":17,\"Y\":-420,\"id\":177},\"178\":{\"X\":130,\"t\":17,\"Y\":-420,\"id\":178},\"179\":{\"X\":150,\"t\":17,\"Y\":-420,\"id\":179},\"180\":{\"X\":170,\"t\":17,\"Y\":-420,\"id\":180},\"181\":{\"X\":190,\"t\":17,\"Y\":-420,\"id\":181},\"182\":{\"X\":210,\"t\":17,\"Y\":-420,\"id\":182},\"183\":{\"X\":230,\"t\":17,\"Y\":-420,\"id\":183},\"184\":{\"X\":250,\"t\":17,\"Y\":-420,\"id\":184},\"185\":{\"X\":270,\"t\":17,\"Y\":-420,\"id\":185},\"186\":{\"X\":310,\"t\":17,\"Y\":-300,\"id\":186},\"187\":{\"X\":310,\"t\":17,\"Y\":-320,\"id\":187},\"188\":{\"X\":310,\"t\":17,\"Y\":-340,\"id\":188},\"189\":{\"X\":310,\"t\":17,\"Y\":-360,\"id\":189},\"190\":{\"X\":310,\"t\":17,\"Y\":-380,\"id\":190},\"191\":{\"X\":310,\"t\":17,\"Y\":-420,\"id\":191},\"192\":{\"X\":290,\"t\":17,\"Y\":-420,\"id\":192},\"193\":{\"X\":310,\"t\":17,\"Y\":-400,\"id\":193},\"194\":{\"X\":-310,\"t\":17,\"Y\":280,\"id\":194},\"195\":{\"X\":-290,\"t\":17,\"Y\":280,\"id\":195},\"196\":{\"X\":-270,\"t\":17,\"Y\":280,\"id\":196},\"197\":{\"X\":-250,\"t\":17,\"Y\":280,\"id\":197},\"198\":{\"X\":-230,\"t\":17,\"Y\":280,\"id\":198},\"199\":{\"X\":-210,\"t\":17,\"Y\":280,\"id\":199},\"200\":{\"X\":-190,\"t\":17,\"Y\":280,\"id\":200},\"201\":{\"X\":-170,\"t\":17,\"Y\":280,\"id\":201},\"202\":{\"X\":-150,\"t\":17,\"Y\":280,\"id\":202},\"203\":{\"X\":-130,\"t\":17,\"Y\":280,\"id\":203},\"204\":{\"X\":-110,\"t\":17,\"Y\":280,\"id\":204},\"205\":{\"X\":-90,\"t\":17,\"Y\":280,\"id\":205},\"206\":{\"X\":-70,\"t\":17,\"Y\":280,\"id\":206},\"207\":{\"X\":-50,\"t\":17,\"Y\":280,\"id\":207},\"208\":{\"X\":-30,\"t\":17,\"Y\":280,\"id\":208},\"209\":{\"X\":-10,\"t\":17,\"Y\":280,\"id\":209},\"210\":{\"X\":10,\"t\":17,\"Y\":280,\"id\":210},\"211\":{\"X\":30,\"t\":17,\"Y\":280,\"id\":211},\"212\":{\"X\":50,\"t\":17,\"Y\":280,\"id\":212},\"213\":{\"X\":70,\"t\":17,\"Y\":280,\"id\":213},\"214\":{\"X\":90,\"t\":17,\"Y\":280,\"id\":214},\"215\":{\"X\":110,\"t\":17,\"Y\":280,\"id\":215},\"216\":{\"X\":130,\"t\":17,\"Y\":280,\"id\":216},\"217\":{\"X\":150,\"t\":17,\"Y\":280,\"id\":217},\"218\":{\"X\":170,\"t\":17,\"Y\":280,\"id\":218},\"219\":{\"X\":190,\"t\":17,\"Y\":280,\"id\":219},\"220\":{\"X\":210,\"t\":17,\"Y\":280,\"id\":220},\"221\":{\"X\":230,\"t\":17,\"Y\":280,\"id\":221},\"222\":{\"X\":310,\"t\":17,\"Y\":-280,\"id\":222},\"223\":{\"X\":310,\"t\":17,\"Y\":-260,\"id\":223},\"224\":{\"X\":310,\"t\":17,\"Y\":-240,\"id\":224},\"225\":{\"X\":310,\"t\":17,\"Y\":-220,\"id\":225},\"226\":{\"X\":310,\"t\":17,\"Y\":-200,\"id\":226},\"227\":{\"X\":310,\"t\":17,\"Y\":-180,\"id\":227},\"228\":{\"X\":310,\"t\":17,\"Y\":-160,\"id\":228},\"229\":{\"X\":310,\"t\":17,\"Y\":-140,\"id\":229},\"230\":{\"X\":310,\"t\":17,\"Y\":-120,\"id\":230},\"231\":{\"X\":310,\"t\":17,\"Y\":-100,\"id\":231},\"232\":{\"X\":310,\"t\":17,\"Y\":-80,\"id\":232},\"233\":{\"X\":310,\"t\":17,\"Y\":-60,\"id\":233},\"234\":{\"X\":310,\"t\":17,\"Y\":-40,\"id\":234},\"235\":{\"X\":310,\"t\":17,\"Y\":-20,\"id\":235},\"236\":{\"X\":310,\"t\":17,\"Y\":0,\"id\":236},\"237\":{\"X\":310,\"t\":17,\"Y\":20,\"id\":237},\"238\":{\"X\":310,\"t\":17,\"Y\":40,\"id\":238},\"239\":{\"X\":310,\"t\":17,\"Y\":60,\"id\":239},\"240\":{\"X\":310,\"t\":17,\"Y\":80,\"id\":240},\"241\":{\"X\":310,\"t\":17,\"Y\":100,\"id\":241},\"242\":{\"X\":310,\"t\":17,\"Y\":120,\"id\":242},\"243\":{\"X\":310,\"t\":17,\"Y\":140,\"id\":243},\"244\":{\"X\":310,\"t\":17,\"Y\":160,\"id\":244},\"245\":{\"X\":310,\"t\":17,\"Y\":180,\"id\":245},\"246\":{\"X\":310,\"t\":17,\"Y\":200,\"id\":246},\"247\":{\"X\":310,\"t\":17,\"Y\":220,\"id\":247},\"248\":{\"X\":310,\"t\":17,\"Y\":240,\"id\":248},\"249\":{\"X\":310,\"t\":17,\"Y\":260,\"id\":249},\"250\":{\"X\":310,\"t\":17,\"Y\":280,\"id\":250},\"251\":{\"X\":250,\"t\":17,\"Y\":280,\"id\":251},\"252\":{\"X\":270,\"t\":17,\"Y\":280,\"id\":252},\"253\":{\"X\":290,\"t\":17,\"Y\":280,\"id\":253},\"254\":{\"X\":330,\"t\":17,\"Y\":400,\"id\":254},\"255\":{\"X\":350,\"t\":17,\"Y\":400,\"id\":255},\"256\":{\"X\":370,\"t\":17,\"Y\":400,\"id\":256},\"257\":{\"X\":390,\"t\":17,\"Y\":400,\"id\":257},\"258\":{\"X\":350,\"t\":17,\"Y\":420,\"id\":258},\"259\":{\"X\":330,\"t\":17,\"Y\":420,\"id\":259},\"260\":{\"X\":370,\"t\":17,\"Y\":420,\"id\":260},\"261\":{\"X\":390,\"t\":17,\"Y\":420,\"id\":261},\"262\":{\"X\":330,\"t\":17,\"Y\":440,\"id\":262},\"263\":{\"X\":350,\"t\":17,\"Y\":440,\"id\":263},\"264\":{\"X\":370,\"t\":17,\"Y\":440,\"id\":264},\"265\":{\"X\":390,\"t\":17,\"Y\":440,\"id\":265},\"266\":{\"X\":330,\"t\":17,\"Y\":460,\"id\":266},\"267\":{\"X\":350,\"t\":17,\"Y\":460,\"id\":267},\"268\":{\"X\":370,\"t\":17,\"Y\":460,\"id\":268},\"269\":{\"X\":390,\"t\":17,\"Y\":460,\"id\":269},\"270\":{\"X\":330,\"t\":17,\"Y\":480,\"id\":270},\"271\":{\"X\":350,\"t\":17,\"Y\":480,\"id\":271},\"272\":{\"X\":370,\"t\":17,\"Y\":480,\"id\":272},\"273\":{\"X\":390,\"t\":17,\"Y\":480,\"id\":273},\"274\":{\"X\":50,\"t\":42,\"Y\":-60,\"id\":274},\"275\":{\"X\":220,\"t\":36,\"Y\":180,\"id\":275}}";
      
      private static const const_5668:int = 99;
      
      private static var var_2844:Boolean = false;
      
      private static var var_5539:Object;
       
      public function BaseRestorer()
      {
         super();
      }
      
      public static function method_4556(param1:Object) : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:BuildingLevelRequiredData = null;
         var _loc10_:BuildingLevelRequiredData = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         if(!var_2844 && class_105.method_23() && param1 != null && param1.tutorialstage == class_28.const_167 && param1.flags != null && (param1.flags.log_basesave_failure || param1.flags.restore_truncated_building_data))
         {
            var_2844 = true;
            if(param1.buildingdata == null)
            {
               FrameworkLogger.Log(FrameworkLogger.KEY_BASE_NEEDS_RESTORE + class_2.method_7(-1820301612),class_2.method_7(-1820301278));
               return true;
            }
            _loc2_ = param1.buildingdata;
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = false;
            _loc9_ = new BuildingLevelRequiredData();
            _loc11_ = 0;
            for each(_loc3_ in _loc2_)
            {
               _loc13_ = _loc3_.t;
               _loc14_ = 1;
               if("l" in _loc3_)
               {
                  _loc14_ = _loc3_.l;
               }
               switch(_loc13_)
               {
                  case class_158.const_101:
                     _loc4_ = true;
                     _loc10_ = method_1848(param1,_loc14_);
                     _loc9_.offenderCount = _loc9_.offenderCount + _loc10_.offenderCount;
                     if(_loc10_.buildingLevel - _loc14_ > _loc11_)
                     {
                        _loc7_ = class_43.getString(class_2.method_7(-1820306779));
                        _loc8_ = _loc14_;
                        _loc9_.setNameAndLevels(_loc10_);
                        _loc11_ = _loc10_.buildingLevel - _loc14_;
                     }
                     continue;
                  case class_158.const_91:
                     _loc5_ = true;
                     _loc10_ = method_1639(param1,_loc14_);
                     _loc9_.offenderCount = _loc9_.offenderCount + _loc10_.offenderCount;
                     if(_loc10_.buildingLevel - _loc14_ > _loc11_)
                     {
                        _loc7_ = class_43.getString(class_2.method_7(-1820298601));
                        _loc8_ = _loc14_;
                        _loc9_.setNameAndLevels(_loc10_);
                        _loc11_ = _loc10_.buildingLevel - _loc14_;
                     }
                     continue;
                  case class_158.const_29:
                     _loc6_ = true;
                     _loc10_ = method_1567(param1,_loc14_);
                     _loc9_.offenderCount = _loc9_.offenderCount + _loc10_.offenderCount;
                     if(_loc10_.buildingLevel - _loc14_ > _loc11_)
                     {
                        _loc7_ = class_43.getString(class_2.method_7(-1820308223));
                        _loc8_ = _loc14_;
                        _loc9_.setNameAndLevels(_loc10_);
                        _loc11_ = _loc10_.buildingLevel - _loc14_;
                     }
                     continue;
                  default:
                     continue;
               }
            }
            _loc12_ = int.MAX_VALUE;
            if(!_loc4_)
            {
               _loc10_ = method_1848(param1,0);
               if(_loc10_.buildingLevel > 0)
               {
                  _loc7_ = class_43.getString(class_2.method_7(-1820306779));
                  _loc8_ = 0;
                  _loc9_.setNameAndLevels(_loc10_);
                  _loc9_.offenderCount = _loc9_.offenderCount + _loc10_.offenderCount;
                  _loc11_ = _loc12_;
               }
            }
            if(!_loc5_)
            {
               _loc10_ = method_1639(param1,0);
               if(_loc10_.buildingLevel > 0)
               {
                  _loc7_ = class_43.getString(class_2.method_7(-1820298601));
                  _loc8_ = 0;
                  _loc9_.setNameAndLevels(_loc10_);
                  _loc9_.offenderCount = _loc9_.offenderCount + _loc10_.offenderCount;
                  _loc11_ = _loc12_;
               }
            }
            if(!_loc6_)
            {
               _loc10_ = method_1567(param1,0);
               if(_loc10_.buildingLevel > 0)
               {
                  _loc7_ = class_43.getString(class_2.method_7(-1820308223));
                  _loc8_ = 0;
                  _loc9_.setNameAndLevels(_loc10_);
                  _loc9_.offenderCount = _loc9_.offenderCount + _loc10_.offenderCount;
                  _loc11_ = _loc12_;
               }
            }
            if(_loc11_ > 0)
            {
               _loc15_ = param1.flags.log_basesave_failure;
               if(_loc15_ > 0 && _loc11_ >= _loc15_)
               {
                  method_4313(_loc8_,_loc9_,_loc7_);
               }
               _loc16_ = param1.flags.restore_truncated_building_data;
               return _loc16_ > 0 && _loc11_ >= _loc16_;
            }
         }
         return false;
      }
      
      private static function method_4313(param1:int, param2:BuildingLevelRequiredData, param3:String) : void
      {
         var _loc4_:* = param3 + class_2.method_7(-1820311329) + param1 + class_2.method_7(-1820309446) + param2.buildingLevel + class_2.method_7(-1820308130) + param2.offenderLevel + " " + param2.offenderName + ". " + param2.offenderCount + class_2.method_7(-1820298815);
         var _loc5_:* = FrameworkLogger.KEY_BASE_NEEDS_RESTORE + class_2.method_7(-1820310191);
         if(param1 == 0)
         {
            _loc5_ = _loc5_ + "0";
         }
         else if(param1 <= 3)
         {
            _loc5_ = _loc5_ + "3";
         }
         else if(param1 <= 5)
         {
            _loc5_ = _loc5_ + "5";
         }
         else
         {
            _loc5_ = _loc5_ + class_2.method_7(-1820309380);
         }
         FrameworkLogger.Log(_loc5_,_loc4_);
         var _loc6_:int = param2.buildingLevel - param1;
         FrameworkLogger.Log(FrameworkLogger.KEY_BASE_NEEDS_RESTORE + class_2.method_7(-1820296624) + _loc6_,_loc4_);
         _loc5_ = FrameworkLogger.KEY_BASE_NEEDS_RESTORE + class_2.method_7(-1820300458);
         if(param2.offenderCount <= 2)
         {
            _loc5_ = _loc5_ + "2";
         }
         else if(param2.offenderCount <= 5)
         {
            _loc5_ = _loc5_ + "5";
         }
         else
         {
            _loc5_ = _loc5_ + class_2.method_7(-1820309380);
         }
         FrameworkLogger.Log(_loc5_,_loc4_);
      }
      
      private static function method_3597(param1:int) : Boolean
      {
         return param1 == class_132.const_264 || param1 == class_132.const_472 || param1 == class_132.const_702 || param1 == class_132.const_2253 || param1 == class_132.const_4787;
      }
      
      private static function method_673(param1:Object, param2:int, param3:int) : BuildingLevelRequiredData
      {
         var _loc6_:BuildingData = null;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:* = 0;
         var _loc10_:UnitData = null;
         var _loc11_:* = 0;
         var _loc12_:UnitLevelData = null;
         var _loc4_:BuildingLevelRequiredData = new BuildingLevelRequiredData();
         var _loc5_:* = 0;
         if(param2 == class_203.const_14)
         {
            _loc6_ = C_Buildings.GetData(class_158.const_101);
         }
         else if(param2 == class_203.const_30)
         {
            _loc6_ = C_Buildings.GetData(class_158.const_29);
         }
         else if(param2 == class_203.const_46)
         {
            _loc6_ = C_Buildings.GetData(class_158.const_104);
         }
         else
         {
            _loc6_ = C_Buildings.GetData(class_158.const_91);
         }
         if(_loc6_ != null)
         {
            _loc5_ = _loc6_.maxLevel;
         }
         if(param1 != null && param1.academy != null)
         {
            _loc7_ = param1.academy;
            for(_loc8_ in _loc7_)
            {
               _loc9_ = int(_loc8_.replace("u",""));
               if(!method_3597(_loc9_))
               {
                  _loc10_ = Units.GetData(_loc9_);
                  if(_loc10_ != null && _loc10_.group == param2)
                  {
                     _loc11_ = _loc7_[_loc8_].l;
                     if(_loc11_ > 0)
                     {
                        _loc12_ = Units.GetLevelData(_loc9_,_loc11_);
                        if(_loc12_ != null && _loc12_.upgradeAcademyLevel <= _loc5_ && !(_loc11_ == 1 && _loc10_.blocked))
                        {
                           if(_loc12_.upgradeAcademyLevel > param3)
                           {
                              _loc4_.offenderCount++;
                           }
                           if(_loc12_.upgradeAcademyLevel > _loc4_.buildingLevel)
                           {
                              _loc4_.buildingLevel = _loc12_.upgradeAcademyLevel;
                              _loc4_.offenderLevel = _loc11_;
                              _loc4_.offenderName = _loc10_.name;
                           }
                        }
                     }
                  }
               }
            }
         }
         return _loc4_;
      }
      
      private static function method_1848(param1:Object, param2:int = 99) : BuildingLevelRequiredData
      {
         return method_673(param1,class_203.const_14,param2);
      }
      
      private static function method_1639(param1:Object, param2:int = 99) : BuildingLevelRequiredData
      {
         var _loc3_:BuildingLevelRequiredData = method_673(param1,class_203.const_43,param2);
         var _loc4_:BuildingLevelRequiredData = method_673(param1,class_203.const_24,param2);
         var _loc5_:int = _loc3_.offenderCount + _loc4_.offenderCount;
         if(_loc3_.buildingLevel > _loc4_.buildingLevel)
         {
            _loc3_.offenderCount = _loc5_;
            return _loc3_;
         }
         _loc4_.offenderCount = _loc5_;
         return _loc4_;
      }
      
      private static function method_4086(param1:Object, param2:int) : BuildingLevelRequiredData
      {
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:TowerData = null;
         var _loc11_:TowerLevelData = null;
         var _loc3_:BuildingLevelRequiredData = new BuildingLevelRequiredData();
         var _loc4_:* = 0;
         var _loc5_:BuildingData = C_Buildings.GetData(class_158.const_29);
         if(_loc5_ != null)
         {
            _loc4_ = _loc5_.maxLevel;
         }
         if(param1 != null && param1.defenselabdata != null)
         {
            _loc6_ = param1.defenselabdata;
            for(_loc7_ in _loc6_)
            {
               _loc8_ = int(_loc7_);
               _loc9_ = _loc6_[_loc7_].l;
               if(_loc9_ > 0)
               {
                  _loc10_ = Towers.GetData(_loc8_);
                  _loc11_ = Towers.GetLevelData(_loc8_,_loc9_);
                  if(_loc10_ != null && _loc11_ != null && _loc11_.upgradeResearchLevel <= _loc4_ && !(_loc9_ == 1 && (_loc10_.block || _loc8_ == class_125.const_118 || _loc8_ == class_125.const_281)))
                  {
                     if(_loc11_.upgradeResearchLevel > param2)
                     {
                        _loc3_.offenderCount++;
                     }
                     if(_loc11_.upgradeResearchLevel > _loc3_.buildingLevel)
                     {
                        _loc3_.buildingLevel = _loc11_.upgradeResearchLevel;
                        _loc3_.offenderLevel = _loc9_;
                        _loc3_.offenderName = _loc10_.name;
                     }
                  }
               }
            }
         }
         return _loc3_;
      }
      
      private static function method_1567(param1:Object, param2:int = 99) : BuildingLevelRequiredData
      {
         var _loc3_:BuildingLevelRequiredData = method_673(param1,class_203.const_30,param2);
         var _loc4_:BuildingLevelRequiredData = method_4086(param1,param2);
         var _loc5_:int = _loc3_.offenderCount + _loc4_.offenderCount;
         if(_loc3_.buildingLevel > _loc4_.buildingLevel)
         {
            _loc3_.offenderCount = _loc5_;
            return _loc3_;
         }
         _loc4_.offenderCount = _loc5_;
         return _loc4_;
      }
      
      private static function method_7776(param1:Object, param2:int) : int
      {
         var _loc3_:String = param2.toString();
         if(param1 != null && param1.defenselabdata != null && param1.defenselabdata[_loc3_] != null && param1.defenselabdata[_loc3_].l)
         {
            return param1.defenselabdata[_loc3_].l;
         }
         return 1;
      }
      
      private static function method_4367(param1:Object) : BuildingLevelRequiredData
      {
         var _loc5_:Object = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:BuildingData = null;
         var _loc9_:BuildingLevelData = null;
         var _loc10_:class_177 = null;
         var _loc2_:BuildingLevelRequiredData = new BuildingLevelRequiredData();
         _loc2_.buildingLevel = 1;
         var _loc3_:* = 1;
         var _loc4_:BuildingData = C_Buildings.GetData(class_158.const_13);
         if(_loc4_ != null)
         {
            _loc3_ = _loc4_.maxLevel;
         }
         if(param1 != null && param1.buildingdata != null)
         {
            for each(_loc5_ in param1.buildingdata)
            {
               _loc6_ = _loc5_.t;
               if(!(_loc6_ == class_158.const_2187 || _loc6_ == class_158.const_2367 || _loc6_ == class_158.const_2839))
               {
                  _loc7_ = 1;
                  if("l" in _loc5_)
                  {
                     _loc7_ = _loc5_.l;
                  }
                  _loc8_ = C_Buildings.GetData(_loc6_);
                  _loc9_ = C_Buildings.GetLevelData(_loc6_,_loc7_);
                  if(_loc8_ != null && _loc9_ != null && _loc9_.re != null)
                  {
                     for each(_loc10_ in _loc9_.re)
                     {
                        if(_loc10_.id == class_158.const_13 && _loc10_.level <= _loc3_)
                        {
                           if(_loc10_.level > _loc2_.buildingLevel)
                           {
                              _loc2_.buildingLevel = _loc10_.level;
                              _loc2_.offenderLevel = _loc7_;
                              _loc2_.offenderName = _loc8_.name;
                           }
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

class BuildingLevelRequiredData extends Object
{
    
   public var buildingLevel:int;
   
   public var offenderLevel:int;
   
   public var offenderName:String;
   
   public var offenderCount:int;
   
   function BuildingLevelRequiredData()
   {
      super();
   }
   
   public function setNameAndLevels(param1:BuildingLevelRequiredData) : void
   {
      this.buildingLevel = param1.buildingLevel;
      this.offenderLevel = param1.offenderLevel;
      this.offenderName = param1.offenderName;
   }
}
