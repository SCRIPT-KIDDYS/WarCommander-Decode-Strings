package
{
   import package_5.class_14;
   import package_5.class_15;
   import flash.utils.Dictionary;
   import package_32.SaveManager;
   import com.adverserealms.log.Logger;
   import package_4.class_66;
   import flash.events.IOErrorEvent;
   import com.cc.utils.js_utils.WCJSON;
   import flash.system.Capabilities;
   
   public class FrameworkLogger extends Object implements class_14, class_15
   {
      
      public static const KEY_LOAD_PERFORMANCE:String = "ldp";
      
      public static const KEY_UNIT_CHANGE:String = "uch";
      
      public static const KEY_PLATOON_ABSORB_ERROR:String = "pae";
      
      public static const KEY_OPERATION_STORE_PURCHASE:String = "osp";
      
      public static const KEY_SYNC_ROUNDTRIP_TIME:String = "rtt";
      
      public static const KEY_WARLORD:String = "e12";
      
      public static const KEY_WARLORD_PURCHASE:String = "12p";
      
      public static const KEY_CROSSFIRE:String = "e13";
      
      public static const KEY_CROSSFIRE_PURCHASE:String = "13p";
      
      public static const KEY_FRONTLINE:String = "e14";
      
      public static const KEY_FRONTLINE_PURCHASE:String = "14p";
      
      public static const KEY_ARCHANGEL:String = "e15";
      
      public static const KEY_ARCHANGEL_PURCHASE:String = "15p";
      
      public static const KEY_HALCYON:String = "e16";
      
      public static const KEY_HALCYON_PURCHASE:String = "16p";
      
      public static const KEY_DEADPOINT:String = "e17";
      
      public static const KEY_DEADPOINT_PURCHASE:String = "17p";
      
      public static const KEY_DEADPOINT2:String = "e18";
      
      public static const KEY_DEADPOINT2_PURCHASE:String = "18p";
      
      public static const KEY_EVENT_DEBUG:String = "event_debug";
      
      public static const KEY_ATTACK_END_LOCAL:String = "ael";
      
      public static const KEY_MAX_HEALTH_HACK:String = "mhh";
      
      public static const KEY_RESOURCE_CAPACITY_HACK:String = "rch";
      
      public static const KEY_OVER_AIRCRAFT_DEPLOYMENT:String = "oad";
      
      public static const KEY_UNIT_LEVEL_HACK:String = "ulh";
      
      public static const KEY_FAILED_PURCHASE:String = "flp";
      
      public static const KEY_DEFAULT:String = "log";
      
      public static const KEY_HELLSTORM:String = "e10";
      
      public static const KEY_CULL_BUNKER:String = "bnk";
      
      public static const KEY_EVENT_XP_UNDER:String = "event_xp_under";
      
      public static const KEY_EVENT_XP_OVER:String = "event_xp_over";
      
      public static const KEY_ERROR_BUILDING_POSCLAMP:String = "oob";
      
      public static const KEY_STAT_HACK:String = "stat_hack";
      
      public static const KEY_STAT_HACK_UNITS:String = "sh_units";
      
      public static const KEY_STAT_HACK_BUILDINGS:String = "sh_buildings";
      
      public static const KEY_STAT_HACK_TOWERS:String = "sh_towers";
      
      public static const KEY_STAT_HACK_ASUNITS:String = "sh_units_as";
      
      public static const KEY_STAT_HACK_STATUS:String = "sh_status";
      
      public static const KEY_STAT_HACK_BUNKERS:String = "sh_bunkers";
      
      public static const KEY_STAT_HACK_ACTIVE:String = "stat_hack_ative";
      
      public static const KEY_ENYO_TIMEOUT:String = "enyo_connection_timeout";
      
      public static const KEY_PLATOON_STATE:String = "platoon_states";
      
      public static const KEY_PLATOON_CHANGE:String = "platoon_change";
      
      public static const KEY_PLATOON_INVALID:String = "platoon_invalid";
      
      public static const KEY_PLATOON_DUPLICATE:String = "platoon_duplicate";
      
      public static const KEY_ERROR:String = "err";
      
      public static const KEY_WARN:String = "wrn";
      
      public static const KEY_HALT:String = "hlt";
      
      public static const KEY_RELOAD:String = "rld";
      
      public static const KEY_HACK:String = "hak";
      
      public static const KEY_JAILED:String = "player_jailed";
      
      public static const KEY_FREE_PURCHASE_GOLD:String = "fpg";
      
      public static const KEY_FREE_BUILDING_UPGRADE_RESOURCES:String = "hak_fbur";
      
      public static const KEY_FREE_BUILDING_CONSTRUCTION_RESOURCES:String = "hak_fbcr";
      
      public static const KEY_FREE_BUNKER_EQUIP_RESOURCES:String = "hak_fber";
      
      public static const KEY_FREE_ACADEMY_UPGRADE_RESOURCES:String = "hak_faur";
      
      public static const KEY_FREE_TOWER_UPGRADE_RESOURCES:String = "hak_ftur";
      
      public static const KEY_FREE_TECH_CENTER_UPGRADE_RESOURCES:String = "hak_ftcur";
      
      public static const KEY_INSTANT_REPAIR_HACK:String = "hak_inst_repair";
      
      public static const KEY_UPGRADE_COST_HACK:String = "hak_upgrd_cost";
      
      public static const KEY_UNIT_TYPE_HACK:String = "hak_unit_type";
      
      public static const KEY_MYSTERIOUS_BUILDING_DAMAGE:String = "mys_bld_dmg";
      
      public static const KEY_FPS_T0:String = "fpst0";
      
      public static const KEY_FPS_T1:String = "fpst1";
      
      public static const KEY_FPS_T2:String = "fpst2";
      
      public static const KEY_FPS_T3:String = "fpst3";
      
      public static const KEY_FPS_T4:String = "fpst4";
      
      public static const KEY_FPS_T5:String = "fpst5";
      
      public static const KEY_FPS_T6:String = "fpst6";
      
      public static const KEY_FPS_T7:String = "fpst7";
      
      public static const KEY_FPS_PVPB_T1:String = "fps_pvpb_t1";
      
      public static const KEY_FPS_PVPB_T2:String = "fps_pvpb_t2";
      
      public static const KEY_FPS_PVPB_T3:String = "fps_pvpb_t3";
      
      public static const KEY_FPS_PVPB_T4:String = "fps_pvpb_t4";
      
      public static const KEY_FPS_PVPB_T5:String = "fps_pvpb_t5";
      
      public static const KEY_FPS_PVPB_T6:String = "fps_pvpb_t6";
      
      public static const KEY_FPS_PVPB_T7:String = "fps_pvpb_t7";
      
      public static const KEY_EVENT_WAVE_RESET:String = "evt_wv_rst";
      
      public static const KEY_INFAMY_CHANGED:String = "infamy_chg";
      
      public static const KEY_INFAMY_DEV_CHANGED:String = "infamy_dev_chg";
      
      public static const KEY_INFAMY_RANK_CHANGED:String = "infamy_rank_chg";
      
      public static const KEY_KIX_SERVICES_LIB_ERROR:String = "gs_err";
      
      public static const KEY_TECH_RESEARCH_MISSING:String = "tech_missing";
      
      public static const KEY_LOW_LEVEL_RESET:String = "low_level_reset";
      
      public static const KEY_STATE_CHANGED:String = "state_changed";
      
      public static const KEY_LOAD_ERROR:String = "load_error";
      
      public static const KEY_GOLD_TOPUP_ERROR:String = "topup_error";
      
      public static const KEY_STORE_ERROR:String = "store_error";
      
      public static const KEY_ASSERT:String = "assert";
      
      public static const KEY_BASE_LOAD_UID_MISMATCH:String = "bl_uid_err";
      
      public static const KEY_BASE_LOAD_TS_DELTA:String = "latency_d_bl";
      
      public static const KEY_BASE_SAVE_TS_DELTA:String = "latency_d_bs";
      
      public static const KEY_BASE_UPDATE_TS_DELTA:String = "latency_d_bu";
      
      public static const KEY_BUILDING_DATA_REPLACED:String = "building_data_replaced";
      
      public static const KEY_BASE_VALUE_DECREASE:String = "base_value_decrease";
      
      public static const KEY_BASE_RESTORE:String = "base_restore";
      
      public static const KEY_BASE_NEEDS_RESTORE:String = "base_needs_restore";
      
      public static const KEY_ROSTER_ERROR:String = "roster_error";
      
      public static const KEY_STORE_ERROR_MAP:String = "store_purchase_world_map_error";
      
      public static const KEY_LOOT_LOAD_FAILED:String = "loot_load_failed";
      
      public static const KEY_BUFF_FULL:String = "buff_full";
      
      public static const KEY_TECH_DESIGN_JSON_ERROR:String = "tech_design_json_error";
      
      public static const KEY_TOO_MANY_UNIQUE_UNITS:String = "too_many_uniques";
      
      public static const KEY_EXCESSIVE_FRAME_TIME:String = "excessive_frame_time";
      
      public static const KEY_BASE_CLEAN_UP:String = "base_clean_up";
      
      public static const KEY_AMMO_CULL:String = "ammo_cull";
      
      public static const KEY_ACTUAL_SEND_BANDIWDTH:String = "actual_send_bandwidth";
      
      public static const KEY_UNCOMPRESSED_SEND_BANDIWDTH:String = "uncomp_send_bandwidth";
      
      public static const KEY_ERROR_RESEARCH:String = "err_research";
      
      public static const KEY_ERROR_BUILDING:String = "err_building";
      
      public static const KEY_COMPRESS_TIME_LIMIT:String = "compress_time_limit";
      
      public static const KEY_SCOUT_ERROR:String = "scout_error";
      
      public static const KEY_STARTERPACK:String = "sp";
      
      public static const KEY_BUILDING_ID_ERROR:String = "building_id_error";
      
      public static const KEY_CHECKSUM_MISMATCH:String = "checksum_mismatch";
      
      public static const KEY_RESPONSE_SIGNATURE_VERSION_MISSING:String = "resp_sign_ver_missing";
      
      public static const KEY_UNIT_XP_UNITS_REPLACED:String = "vxp_units_replaced";
      
      public static const KEY_UNIT_XP_UNITS_STRANDED:String = "vxp_units_stranded";
      
      public static const KEY_EASTER_EGG_LASER_SHOW:String = "easter_egg_laser_show";
      
      public static const KEY_DISCONNECT_ENYO_UI:String = "dc_enyo_ui";
      
      public static const KEY_DISCONNECT_ENYO_START:String = "dc_err_enyo_start";
      
      public static const KEY_DISCONNECT_ENYO_MID:String = "dc_err_enyo_mid";
      
      public static const KEY_DISCONNECT_ENYO_END:String = "dc_err_enyo_end";
      
      public static const KEY_DISCONNECT_ATLAS:String = "dc_atlas";
      
      public static const KEY_DISCONNECT_CONN_FAIL:String = "dc_conn_fail";
      
      public static const KEY_DISCONNECT_BAD_MSG:String = "dc_bad_msg";
      
      public static const KEY_PING_DISCONNECT:String = "pdc";
      
      public static const KEY_PING_NOT_CONNECTED:String = "pnc";
      
      public static const KEY_BUILDING_STAT_VALIDATION:String = "bldg_stat_val";
      
      public static const KEY_UNIT_STAT_VALIDATION:String = "unit_stat_val";
      
      public static const KEY_TOWER_STAT_VALIDATION:String = "tower_stat_val";
      
      public static const KEY_STAT_CHECKSUM_VALIDATION:String = "cksm_stat_val";
      
      public static const KEY_UNIT_DEPLOYABLE_CULLING:String = "user_deployable_culling";
      
      public static const KEY_INITIAL_BASE_LOAD_TIME:String = "initial_base_load_time";
      
      public static const KEY_TIME_TO_GET_BALANCES:String = "time_to_get_balances";
      
      public static const KEY_CDN_BANDWIDTH_LATENCY:String = "cdn_latency_mbps";
      
      public static const KEY_EVENT_INFO:String = "event_info";
      
      public static const KEY_MANIFEST_MISMATCH:String = "manifest_chksm_mismatch";
      
      public static const KEY_INVALID_BUILDING_DATA:String = "invalid_bldg_data";
      
      public static const KEY_MISSING_BUILDING_HITBOX:String = "bldg_miss_hitbox";
      
      public static const TOOL_NONE:int = -1;
      
      public static const TOOL_BASE_CLEAN:int = 1;
      
      public static const TOOL_AMMO_CULL:int = 2;
      
      public static var _logged:Object = {};
      
      public static var _statQueue:Array = [];
      
      public static var _statUpdated:int = 0;
      
      public static var logSession:String;
      
      private static var _oncePerSession:Dictionary = new Dictionary();
      
      {
         _oncePerSession[KEY_UNIT_TYPE_HACK] = false;
      }
      
      public function FrameworkLogger()
      {
         super();
      }
      
      private static function canLog(param1:String) : Boolean
      {
         if(_oncePerSession.hasOwnProperty(param1))
         {
            return !_oncePerSession[param1];
         }
         return true;
      }
      
      private static function logged(param1:String) : void
      {
         if(_oncePerSession.hasOwnProperty(param1))
         {
            _oncePerSession[param1] = true;
         }
      }
      
      public static function Log(param1:String, param2:String, param3:Boolean = false) : void
      {
         var _loc4_:Array = null;
         if(class_31.var_4555 != null)
         {
            _loc4_ = [[class_2.method_7(-1820299222),class_2.method_7(-1820302210)],["userid",int(class_68.name_1.id)],["key",param1],["value",param2],[class_2.method_7(-1820302498),SaveManager.class_2093.method_835(SaveManager.const_1151)]];
            logInternal(param1,param2,param3,class_31.var_4555,_loc4_);
         }
      }
      
      public static function LogProbe(param1:String, param2:String, param3:Boolean = false, param4:Array = null) : void
      {
         var _loc5_:Array = [[class_2.method_7(-1820299222),class_2.method_7(-1820302210)]];
         if(param4 != null)
         {
            _loc5_ = _loc5_.concat(param4);
         }
         logInternal(param1,param2,param3,class_31.var_5083,_loc5_);
      }
      
      public static function LogMonocle(param1:String, param2:int) : void
      {
         var _loc3_:Array = [["reason",param1]];
         if(param2 != TOOL_NONE)
         {
            _loc3_.push([class_2.method_7(-1820309569),param2]);
         }
         Logger.debug(class_2.method_7(-1820302786) + _loc3_);
         class_20.method_136(class_31.var_116 + class_2.method_7(-1820302949),_loc3_,handleLoadSuccessful,handleLoadError);
      }
      
      private static function logInternal(param1:String, param2:String, param3:Boolean, param4:String, param5:Array = null) : void
      {
         Logger.debug(class_2.method_7(-1820297090) + param1 + " " + param2);
         if(canLog(param1) && (param3 || class_66.gamedebug))
         {
            if(!_logged[param1 + param2])
            {
               if(param1 == KEY_HACK || param1 == KEY_ERROR)
               {
                  _logged[param1 + param2] = 1;
               }
               class_20.method_575(param4,param5,handleLoadSuccessful,handleLoadError,true,false,true,false);
               logged(param1);
            }
         }
         else
         {
            Logger.debug(class_2.method_7(-1820299075) + param1 + " " + param2);
         }
      }
      
      public static function Tick() : void
      {
      }
      
      public static function handleLoadSuccessful(param1:Object) : void
      {
         if(param1.error != 0)
         {
            Logger.error(class_2.method_7(-1820297721) + param1);
         }
      }
      
      public static function handleLoadError(param1:IOErrorEvent) : void
      {
         Logger.error(class_2.method_7(-1820309321) + param1.text + class_2.method_7(-1820299808) + param1.errorID);
      }
      
      public function sendRemoteLog(param1:String, param2:Object, param3:Boolean = true) : void
      {
         LogProbe(param1,WCJSON.encode(param2));
      }
      
      public function sendLoadTime(param1:String, param2:Number, param3:int, param4:int) : void
      {
         LogProbe(param1,"TransitionLogger",false,[["userid",int(class_68.name_1.id)],[class_2.method_7(-1820308444),logSession],["key",param1],[class_2.method_7(-1820300626),param2],[class_2.method_7(-1820307610),Capabilities.version],["ts",param4]]);
      }
   }
}
