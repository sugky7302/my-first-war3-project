globals
//globals from Base:
constant boolean LIBRARY_Base=true
//endglobals from Base
//globals from JapiConstantLib:
constant boolean LIBRARY_JapiConstantLib=true
integer array i_1
integer array i_2
integer array i_3
integer array i_4
integer array i_5
integer array i_6
integer array i_7
integer array i_8
integer array i_9
integer array i_10
integer array i_11
integer array i_12
integer array i_13
integer array i_14
integer array i_15
integer array i_16
integer array i_17
integer array i_18
integer array i_19
integer array i_20
integer array i_21
integer array i_22
integer array i_23
integer array i_24
integer array i_25
integer array i_26
integer array i_27
integer array i_28
integer array i_29
integer array i_30
integer array i_31
integer array i_32

//endglobals from JapiConstantLib
//globals from japi:
constant boolean LIBRARY_japi=true
hashtable japi_ht=InitHashtable()
integer japi__key=StringHash("jass")
//endglobals from japi
//globals from LocalActionLib:
constant boolean LIBRARY_LocalActionLib=true
constant hashtable LocalActionLib__ht=japi_ht
constant integer LocalActionLib__key=StringHash("jass")
//endglobals from LocalActionLib
//globals from d3d:
constant boolean LIBRARY_d3d=true
constant hashtable d3d__ht=japi_ht
constant integer d3d__key=StringHash("jass")
//endglobals from d3d
    // Generated
trigger gg_trg_japi_constant_lib= null
trigger gg_trg_japi= null
trigger gg_trg_d3d= null
trigger gg_trg_async_japi= null

trigger l__library_init

//JASSHelper struct globals:
constant integer si__LOGFONT=1
integer si__LOGFONT_F=0
integer si__LOGFONT_I=0
integer array si__LOGFONT_V
integer array s__LOGFONT_font
trigger st__LOGFONT_onDestroy
integer f__arg_this

endglobals
    native SetHeroLevels takes code f returns nothing 
    native TeleportCaptain takes real x, real y returns nothing
    native GetUnitGoldCost takes integer unitid returns integer


//Generated method caller for LOGFONT.onDestroy
function sc__LOGFONT_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__LOGFONT_onDestroy)
endfunction

//Generated allocator of LOGFONT
function s__LOGFONT__allocate takes nothing returns integer
 local integer this=si__LOGFONT_F
    if (this!=0) then
        set si__LOGFONT_F=si__LOGFONT_V[this]
    else
        set si__LOGFONT_I=si__LOGFONT_I+1
        set this=si__LOGFONT_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__LOGFONT_V[this]=-1
 return this
endfunction

//Generated destructor of LOGFONT
function sc__LOGFONT_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__LOGFONT_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__LOGFONT_onDestroy)
    set si__LOGFONT_V[this]=si__LOGFONT_F
    set si__LOGFONT_F=this
endfunction

//library Base:
    function Base__init takes nothing returns nothing
        call AbilityId("exec-lua: main")
    endfunction

//library Base ends
//library JapiConstantLib:
    function JapiConstantLib_init_memory takes nothing returns nothing
         set i_1[8191]=0
 set i_2[8191]=0
 set i_3[8191]=0
 set i_4[8191]=0
 set i_5[8191]=0
 set i_6[8191]=0
 set i_7[8191]=0
 set i_8[8191]=0
 set i_9[8191]=0
 set i_10[8191]=0
 set i_11[8191]=0
 set i_12[8191]=0
 set i_13[8191]=0
 set i_14[8191]=0
 set i_15[8191]=0
 set i_16[8191]=0
 set i_17[8191]=0
 set i_18[8191]=0
 set i_19[8191]=0
 set i_20[8191]=0
 set i_21[8191]=0
 set i_22[8191]=0
 set i_23[8191]=0
 set i_24[8191]=0
 set i_25[8191]=0
 set i_26[8191]=0
 set i_27[8191]=0
 set i_28[8191]=0
 set i_29[8191]=0
 set i_30[8191]=0
 set i_31[8191]=0
 set i_32[8191]=0

    endfunction
    function JapiConstantLib_init takes nothing returns integer
        call ExecuteFunc("JapiConstantLib_init_memory")
        return 1
    endfunction

//library JapiConstantLib ends
//library japi:



    
    
     function Call takes string str returns nothing
        call UnitId(str)
    endfunction
    //獲取鼠標在地圖中的x軸
     function GetMouseX takes nothing returns real
        call SaveStr(japi_ht, japi__key, 0, "()R")
        call Call("GetMouseX")
        return LoadReal(japi_ht, japi__key, 0)
    endfunction
    //獲取鼠標在地圖中的y軸
     function GetMouseY takes nothing returns real
        call SaveStr(japi_ht, japi__key, 0, "()R")
        call Call("GetMouseY")
        return LoadReal(japi_ht, japi__key, 0)
    endfunction
    
    
    
    
    //==========================================================================
     function EXGetUnitAbility takes unit u,integer abilityId returns integer
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(u))
        call SaveInteger(japi_ht, japi__key, 2, abilityId)
        call SaveStr(japi_ht, japi__key, 0, "(II)I")
        call Call("EXGetUnitAbility")
        return LoadInteger(japi_ht, japi__key, 0)
    endfunction
    
    // yd japi ==================================================================
    // 技能----------------------------------------------------
    
    ///<summary>技能屬性 [JAPI]</summary>
  function YDWEGetUnitAbilityState takes unit u,integer abilcode,integer data_type returns real
        call SaveInteger(japi_ht, japi__key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi__key, 2, data_type)
        call SaveStr(japi_ht, japi__key, 0, "(II)R")
        call Call("EXGetAbilityState")
		return LoadReal(japi_ht, japi__key, 0)
	endfunction
	///<summary>技能數據 (整數) [JAPI]</summary>
  function YDWEGetUnitAbilityDataInteger takes unit u,integer abilcode,integer level,integer data_type returns integer
        call SaveInteger(japi_ht, japi__key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi__key, 2, level)
        call SaveInteger(japi_ht, japi__key, 3, data_type)
        call SaveStr(japi_ht, japi__key, 0, "(III)I")
        call Call("EXGetAbilityDataInteger")
		return LoadInteger(japi_ht, japi__key, 0)
	endfunction
	///<summary>技能數據 (實數) [JAPI]</summary>
  function YDWEGetUnitAbilityDataReal takes unit u,integer abilcode,integer level,integer data_type returns real
        call SaveInteger(japi_ht, japi__key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi__key, 2, level)
        call SaveInteger(japi_ht, japi__key, 3, data_type)
        call SaveStr(japi_ht, japi__key, 0, "(III)R")
        call Call("EXGetAbilityDataReal")
		return LoadReal(japi_ht, japi__key, 0)
    endfunction
	///<summary>技能數據 (字符串) [JAPI]</summary>
  function YDWEGetUnitAbilityDataString takes unit u,integer abilcode,integer level,integer data_type returns string
        call SaveInteger(japi_ht, japi__key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi__key, 2, level)
        call SaveInteger(japi_ht, japi__key, 3, data_type)
        call SaveStr(japi_ht, japi__key, 0, "(III)S")
        call Call("EXGetAbilityDataString")
		return LoadStr(japi_ht, japi__key, 0)
	endfunction
	///<summary>設置技能屬性 [JAPI]</summary>
  function YDWESetUnitAbilityState takes unit u,integer abilcode,integer data_type,real value returns nothing
        call SaveInteger(japi_ht, japi__key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi__key, 2, data_type)
        call SaveReal(japi_ht, japi__key, 3, value)
        call SaveStr(japi_ht, japi__key, 0, "(IIR)V")
        call Call("EXSetAbilityState")
    endfunction
	///<summary>設置技能數據 (整數) [JAPI]</summary>
  function YDWESetUnitAbilityDataInteger takes unit u,integer abilcode,integer level,integer data_type,integer value returns nothing
        call SaveInteger(japi_ht, japi__key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi__key, 2, level)
        call SaveInteger(japi_ht, japi__key, 3, data_type)
        call SaveInteger(japi_ht, japi__key, 4, value)
        call SaveStr(japi_ht, japi__key, 0, "(IIII)V")
        call Call("EXSetAbilityDataInteger")
    endfunction
	///<summary>設置技能數據 (實數) [JAPI]</summary>
  function YDWESetUnitAbilityDataReal takes unit u,integer abilcode,integer level,integer data_type,real value returns nothing
        call SaveInteger(japi_ht, japi__key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi__key, 2, level)
        call SaveInteger(japi_ht, japi__key, 3, data_type)
        call SaveReal(japi_ht, japi__key, 4, value)
        call SaveStr(japi_ht, japi__key, 0, "(IIIR)V")
        call Call("EXSetAbilityDataReal")
    endfunction
	///<summary>設置技能數據 (字符串) [JAPI]</summary>
  function YDWESetUnitAbilityDataString takes unit u,integer abilcode,integer level,integer data_type,string value returns nothing
        call SaveInteger(japi_ht, japi__key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi__key, 2, level)
        call SaveInteger(japi_ht, japi__key, 3, data_type)
        call SaveStr(japi_ht, japi__key, 4, value)
        call SaveStr(japi_ht, japi__key, 0, "(IIIS)V")
        call Call("EXSetAbilityDataString")
    endfunction
	
    
    //設置技能變身數據A
     function EXSetAbilityAEmeDataA takes integer ability_handle,integer value returns boolean
        call SaveInteger(japi_ht, japi__key, 1, ability_handle)
        call SaveInteger(japi_ht, japi__key, 2, value)
        call SaveStr(japi_ht, japi__key, 0, "(II)B")
        call Call("EXSetAbilityAEmeDataA")
        return LoadBoolean(japi_ht, japi__key, 0)
    endfunction
    
    //單位變身
     function YDWEUnitTransform takes unit u,integer abilcode,integer targetid returns nothing
		call UnitAddAbility(u, abilcode)
		call YDWESetUnitAbilityDataInteger(u , abilcode , 1 , 117 , GetUnitTypeId(u))
		call EXSetAbilityAEmeDataA(EXGetUnitAbility(u , abilcode) , GetUnitTypeId(u))
		call UnitRemoveAbility(u, abilcode)
		call UnitAddAbility(u, abilcode)
		call EXSetAbilityAEmeDataA(EXGetUnitAbility(u , abilcode) , targetid)
		call UnitRemoveAbility(u, abilcode)
	endfunction
    
    // 單位-------------------------------------------------------
    
    //暫停單位
     function EXPauseUnit takes unit unit_handle,boolean flag returns nothing
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(unit_handle))
        call SaveBoolean(japi_ht, japi__key, 2, flag)
        call SaveStr(japi_ht, japi__key, 0, "(IB)V")
        call Call("EXPauseUnit")
    endfunction
    
    //獲取單位字符串
     function EXGetUnitString takes integer unitcode,integer Type returns string
        call SaveInteger(japi_ht, japi__key, 1, unitcode)
        call SaveInteger(japi_ht, japi__key, 2, Type)
        call SaveStr(japi_ht, japi__key, 0, "(II)S")
        call Call("EXGetUnitString")
        return LoadStr(japi_ht, japi__key, 0)
    endfunction
    
       //設置單位字符串
     function EXSetUnitString takes integer unitcode,integer Type,string value returns boolean
        call SaveInteger(japi_ht, japi__key, 1, unitcode)
        call SaveInteger(japi_ht, japi__key, 2, Type)
        call SaveStr(japi_ht, japi__key, 3, value)
        call SaveStr(japi_ht, japi__key, 0, "(IIS)B")
        call Call("EXSetUnitString")
        return LoadBoolean(japi_ht, japi__key, 0)
    endfunction
    
    //獲取單位實數
     function EXGetUnitReal takes integer unitcode,integer Type returns real
        call SaveInteger(japi_ht, japi__key, 1, unitcode)
        call SaveInteger(japi_ht, japi__key, 2, Type)
        call SaveStr(japi_ht, japi__key, 0, "(II)R")
        call Call("EXGetUnitReal")
        return LoadReal(japi_ht, japi__key, 0)
    endfunction
    
    //設置單位實數
     function EXSetUnitReal takes integer unitcode,integer Type,real value returns boolean
        call SaveInteger(japi_ht, japi__key, 1, unitcode)
        call SaveInteger(japi_ht, japi__key, 2, Type)
        call SaveReal(japi_ht, japi__key, 3, value)
        call SaveStr(japi_ht, japi__key, 0, "(IIR)B")
        call Call("EXSetUnitReal")
        return LoadBoolean(japi_ht, japi__key, 0)
    endfunction
    
    
    //獲取單位整數
     function EXGetUnitInteger takes integer unitcode,integer Type returns integer
        call SaveInteger(japi_ht, japi__key, 1, unitcode)
        call SaveInteger(japi_ht, japi__key, 2, Type)
        call SaveStr(japi_ht, japi__key, 0, "(II)I")
        call Call("EXGetUnitInteger")
        return LoadInteger(japi_ht, japi__key, 0)
    endfunction
    
    //設置單位整數
     function EXSetUnitInteger takes integer unitcode,integer Type,integer value returns boolean
        call SaveInteger(japi_ht, japi__key, 1, unitcode)
        call SaveInteger(japi_ht, japi__key, 2, Type)
        call SaveInteger(japi_ht, japi__key, 3, value)
        call SaveStr(japi_ht, japi__key, 0, "(III)B")
        call Call("EXSetUnitInteger")
        return LoadBoolean(japi_ht, japi__key, 0)
    endfunction
    
        //獲取單位數組字符串
     function EXGetUnitArrayString takes integer unitcode,integer Type,integer index returns string
        call SaveInteger(japi_ht, japi__key, 1, unitcode)
        call SaveInteger(japi_ht, japi__key, 2, Type)
        call SaveInteger(japi_ht, japi__key, 3, index)
        call SaveStr(japi_ht, japi__key, 0, "(III)S")
        call Call("EXGetUnitArrayString")
        return LoadStr(japi_ht, japi__key, 0)
    endfunction
    
    //設置單位數組字符串
     function EXSetUnitArrayString takes integer unitcode,integer Type,integer index,string value returns boolean
        call SaveInteger(japi_ht, japi__key, 1, unitcode)
        call SaveInteger(japi_ht, japi__key, 2, Type)
        call SaveInteger(japi_ht, japi__key, 3, index)
        call SaveStr(japi_ht, japi__key, 4, value)
        call SaveStr(japi_ht, japi__key, 0, "(IIIS)B")
        call Call("EXSetUnitArrayString")
        return LoadBoolean(japi_ht, japi__key, 0)
    endfunction
    //設置單位面向角度(立即轉向)
     function EXSetUnitFacing takes unit unit_handle,real angle returns nothing
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(unit_handle))
        call SaveReal(japi_ht, japi__key, 2, angle)
        call SaveStr(japi_ht, japi__key, 0, "(IR)V")
        call Call("EXSetUnitFacing")
    endfunction
    
    //設置單位碰撞類型
     function EXSetUnitCollisionType takes boolean enable,unit unit_handle,integer Type returns nothing
        call SaveBoolean(japi_ht, japi__key, 1, enable)
        call SaveInteger(japi_ht, japi__key, 2, GetHandleId(unit_handle))
        call SaveInteger(japi_ht, japi__key, 3, Type)
        call SaveStr(japi_ht, japi__key, 0, "(BII)V")
        call Call("EXSetUnitCollisionType")
    endfunction
    
    //設置單位移動類型
     function EXSetUnitMoveType takes unit unit_handle,integer Type returns nothing
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(unit_handle))
        call SaveInteger(japi_ht, japi__key, 2, Type)
        call SaveStr(japi_ht, japi__key, 0, "(II)V")
        call Call("EXSetUnitMoveType")
    endfunction
    
    //單位添加眩暈
     function YDWEUnitAddStun takes unit u returns nothing
		call EXPauseUnit(u , true)
	endfunction
    
    //單位刪除眩暈
  function YDWEUnitRemoveStun takes unit u returns nothing
		call EXPauseUnit(u , false)
	endfunction
    
    //獲取傷害數據
     function EXGetEventDamageData takes integer Type returns integer
        //call SaveInteger(ht,key,1,Type)
        //call SaveStr(ht,key,0,"(I)I")
        //call Call("EXGetEventDamageData")
        //return LoadInteger(ht,key,0)
        return GetUnitGoldCost(Type)
    endfunction
	
    //設置傷害
     function EXSetEventDamage takes real Damage returns boolean
        //call SaveReal(ht,key,1,Damage)
        //call SaveStr(ht,key,0,"(R)B")
        //call Call("EXSetEventDamage")
        //return LoadBoolean(ht,key,0)
        call TeleportCaptain(Damage, 0.00)
        return true
    endfunction
    
    //判斷是否是物理傷害
     function YDWEIsEventPhysicalDamage takes nothing returns boolean
		return 0 != EXGetEventDamageData(1)
	endfunction
    //判斷是否是攻擊傷害
  function YDWEIsEventAttackDamage takes nothing returns boolean
		return 0 != EXGetEventDamageData(2)
	endfunction
	
    //判斷是否是範圍傷害
  function YDWEIsEventRangedDamage takes nothing returns boolean
		return 0 != EXGetEventDamageData(3)
	endfunction
	
    //判斷傷害類型
  function YDWEIsEventDamageType takes damagetype damageType returns boolean
		return damageType == ConvertDamageType(EXGetEventDamageData(4))
	endfunction
    
    //判斷武器類型
  function YDWEIsEventWeaponType takes weapontype weaponType returns boolean
		return weaponType == ConvertWeaponType(EXGetEventDamageData(5))
	endfunction
	
    //判斷攻擊類型
  function YDWEIsEventAttackType takes attacktype attackType returns boolean
		return attackType == ConvertAttackType(EXGetEventDamageData(6))
	endfunction
	//設置傷害
  function YDWESetEventDamage takes real amount returns boolean
		return EXSetEventDamage(amount)
	endfunction
    
    // 物品----------------------------------------------------
    
    ///<summary>設置物品數據 (字符串) [JAPI]</summary>
     function YDWESetItemDataString takes integer ItemTypeId,integer Type,string Value returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(IIS)V")
        call SaveInteger(japi_ht, japi__key, 1, ItemTypeId)
        call SaveInteger(japi_ht, japi__key, 2, Type)
        call SaveStr(japi_ht, japi__key, 3, Value)
        call Call("EXSetItemDataString")
    endfunction
    ///<summary>獲取物品數據 (字符串) [JAPI]</summary>
     function YDWEGetItemDataString takes integer ItemTypeId,integer Type returns string
        call SaveStr(japi_ht, japi__key, 0, "(II)S")
        call SaveInteger(japi_ht, japi__key, 1, ItemTypeId)
        call SaveInteger(japi_ht, japi__key, 2, Type)
        call Call("EXGetItemDataString")
        return LoadStr(japi_ht, japi__key, 0)
    endfunction
    
    //特效--------------------------------------------------------
    
    ///<summary>設置特效坐標 [JAPI]</summary>
     function EXSetEffectXY takes effect Handle,real x,real y returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(IRR)V")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi__key, 2, x)
        call SaveReal(japi_ht, japi__key, 3, y)
        call Call("EXSetEffectXY")
    endfunction
    
    ///<summary>設置特效Z軸 [JAPI]</summary>
     function EXSetEffectZ takes effect Handle,real z returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(IRR)V")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi__key, 2, z)
		call Call("EXSetEffectZ")
	endfunction
    
    ///<summary>獲取特效X軸 [JAPI]</summary>
     function EXGetEffectX takes effect Handle returns real
        call SaveStr(japi_ht, japi__key, 0, "(I)R")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call Call("EXGetEffectX")
        return LoadReal(japi_ht, japi__key, 0)
	endfunction
    
    ///<summary>獲取特效Y軸 [JAPI]</summary>
  function EXGetEffectY takes effect Handle returns real
        call SaveStr(japi_ht, japi__key, 0, "(I)R")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call Call("EXGetEffectY")
        return LoadReal(japi_ht, japi__key, 0)
	endfunction
    
    ///<summary>獲取特效Z軸 [JAPI]</summary>
  function EXGetEffectZ takes effect Handle returns real
        call SaveStr(japi_ht, japi__key, 0, "(I)R")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call Call("EXGetEffectZ")
		return LoadReal(japi_ht, japi__key, 0)
	endfunction
    
    ///<summary>設置特效尺寸 [JAPI]</summary>
  function EXSetEffectSize takes effect Handle,real size returns nothing
		call SaveStr(japi_ht, japi__key, 0, "(IR)V")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi__key, 2, size)
        call Call("EXSetEffectSize")
	endfunction
    
    ///<summary>獲取特效尺寸 [JAPI]</summary>
  function EXGetEffectSize takes effect Handle returns real
        call SaveStr(japi_ht, japi__key, 0, "(I)R")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call Call("EXGetEffectSize")
		return LoadReal(japi_ht, japi__key, 0)
	endfunction
    
    ///<summary>設置特效X旋轉軸 [JAPI]</summary>
  function EXEffectMatRotateX takes effect Handle,real x returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(IR)V")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi__key, 2, x)
        call Call("EXEffectMatRotateX")
	endfunction
    
    ///<summary>設置特效Y旋轉軸 [JAPI]</summary>
  function EXEffectMatRotateY takes effect Handle,real y returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(IR)V")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi__key, 2, y)
        call Call("EXEffectMatRotateY")
	endfunction
    
    ///<summary>設置特效Z旋轉軸 [JAPI]</summary>
  function EXEffectMatRotateZ takes effect Handle,real z returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(IR)V")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi__key, 2, z)
        call Call("EXEffectMatRotateZ")
	endfunction
    
    ///<summary>設置特效比例 [JAPI]</summary>
  function EXEffectMatScale takes effect Handle,real x,real y,real z returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(IRRR)V")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi__key, 2, x)
        call SaveReal(japi_ht, japi__key, 3, y)
        call SaveReal(japi_ht, japi__key, 4, z)
        call Call("EXEffectMatScale")
	endfunction
    
    ///<summary>設置特效重置 [JAPI]</summary>
  function EXEffectMatReset takes effect Handle returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(I)V")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call Call("EXEffectMatReset")
	endfunction
    
    ///<summary>設置特效速率 [JAPI]</summary>
  function EXSetEffectSpeed takes effect Handle,real speed returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(IR)V")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi__key, 2, speed)
        call Call("EXSetEffectSpeed")
	endfunction
    
    ///<summary>設置可追蹤物坐標 [JAPI]</summary>
     function EXSetTrackableXY takes trackable Handle,real x,real y returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(IRR)V")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi__key, 2, x)
        call SaveReal(japi_ht, japi__key, 3, y)
        call Call("EXSetEffectXY")
    endfunction
    
    
    ///<summary>獲取可追蹤物X軸 [JAPI]</summary>
     function EXGetTrackableX takes trackable Handle returns real
        call SaveStr(japi_ht, japi__key, 0, "(I)R")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call Call("EXGetEffectX")
        return LoadReal(japi_ht, japi__key, 0)
	endfunction
    
    ///<summary>獲取可追蹤物Y軸 [JAPI]</summary>
  function EXGetTrackableY takes trackable Handle returns real
        call SaveStr(japi_ht, japi__key, 0, "(I)R")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(Handle))
        call Call("EXGetEffectY")
        return LoadReal(japi_ht, japi__key, 0)
	endfunction
    
    
    
     function EXExecuteScript takes string str returns string
        call SaveStr(japi_ht, japi__key, 0, "(S)S")
        call SaveStr(japi_ht, japi__key, 1, str)
        call Call("EXExecuteScript")
        return LoadStr(japi_ht, japi__key, 0)
    endfunction
    //-----------------模擬聊天----------------------------
     function EXDisplayChat takes player p,integer chat_recipient,string message returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(IIS)V")
        call SaveInteger(japi_ht, japi__key, 1, GetHandleId(p))
        call SaveInteger(japi_ht, japi__key, 2, chat_recipient)
        call SaveStr(japi_ht, japi__key, 3, message)
        call Call("EXDisplayChat")
    endfunction
  function YDWEDisplayChat takes player p,integer chat_recipient,string message returns nothing
		call EXDisplayChat(p , chat_recipient , message)
	endfunction
    
    //-----------版本描述-------------------------------------
    
    //獲取地圖名字
     function GetMapName takes nothing returns string
        call SaveStr(japi_ht, japi__key, 0, "()S")
        call Call("GetMapName")
        return LoadStr(japi_ht, japi__key, 0)
    endfunction
    
    //獲取魔獸版本
     function GetGameVersion takes nothing returns integer
        call SaveStr(japi_ht, japi__key, 0, "()I")
        call Call("GetGameVersion")
        return LoadInteger(japi_ht, japi__key, 0)
    endfunction
    
    //獲取插件版本
     function GetPluginVersion takes nothing returns string
        call SaveStr(japi_ht, japi__key, 0, "()S")
        call Call("GetPluginVersion")
        return LoadStr(japi_ht, japi__key, 0)
    endfunction
    
     function GetFuncAddr takes code f returns integer
        call SetHeroLevels(f)
        return LoadInteger(japi_ht, japi__key, 0)
    endfunction
     function japiDoNothing takes nothing returns nothing
        
    endfunction
    
     function func_bind_trigger_name takes code functions,string name returns nothing
        call SaveStr(japi_ht, japi__key, 0, "(IS)V")
        call SaveInteger(japi_ht, japi__key, 1, GetFuncAddr(functions))
        call SaveStr(japi_ht, japi__key, 2, name)
        call Call("func_bind_trigger_name")
    endfunction
    
     function open_code_run_logs takes boolean open returns nothing
        local string l=""
        set l=l + "(function () "
        set l=l + "lfunc={}  lfunc_name={}"
        set l=l + "save_lfunc_info=function (func,name,index)index=1<<index lfunc[func]=index lfunc_name[index]=name end "
        set l=l + "save_lfunc_info('GetLocalPlayer','[本地玩家]',0)"
        set l=l + "save_lfunc_info('GetFps','[獲取幀數]',1)"
        set l=l + "save_lfunc_info('GetChatState','[聊天狀態]',2)"
        set l=l + "save_lfunc_info('GetCameraTargetPositionLoc','[當前鏡頭目標點]',3)"
        set l=l + "save_lfunc_info('GetCameraTargetPositionX','[當前鏡頭目標X坐標]',4)"
        set l=l + "save_lfunc_info('GetCameraTargetPositionY','[當前鏡頭目標Y坐標]',5)"
        set l=l + "save_lfunc_info('GetCameraTargetPositionZ','[當前鏡頭目標Z坐標]',6)"
        
        set l=l + "save_lfunc_info('GetCameraEyePositionLoc','[當前鏡頭源位置]',7)"
        set l=l + "save_lfunc_info('GetCameraEyePositionX','[當前鏡頭源X坐標]',8)"
        set l=l + "save_lfunc_info('GetCameraEyePositionY','[當前鏡頭源Y坐標]',9)"
        set l=l + "save_lfunc_info('GetCameraEyePositionZ','[當前鏡頭源Z坐標]',10)"
        
        set l=l + "save_lfunc_info('GetMouseX','[獲取鼠標X軸]',11)"
        set l=l + "save_lfunc_info('GetMouseY','[獲取鼠標Y軸]',12)"
        set l=l + "save_lfunc_info('GetMouseVectorX','[獲取鼠標屏幕X軸]',13)"
        set l=l + "save_lfunc_info('GetMouseVectorY','[獲取鼠標屏幕Y軸]',14)"
        
        set l=l + "end)() or '' "
        call EXExecuteScript(l)
        
        set l=""
        
        set l=l + "(function () "
        
        set l=l + "get_jass_func_info=function (func_name) "
        set l=l + " return lfunc[func_name] or 0 "
        set l=l + "end "
        
        set l=l + "get_jass_func_msg=function (func_name_index)"
        set l=l + " return lfunc_name[func_name_index] or '' "
        set l=l + "end "
        
        set l=l + "local storm=require 'jass.storm' "
        set l=l + "local ss=storm.load('war3map.j') "
        set l=l + "ss:gsub('function%s+([%w_]+)%s+takes(.-)endfunction',function (name,code)\n"
        set l=l + "code=code:gsub('function%s+','function_'):gsub('//[^\\n]-\\n','')\n"
        set l=l + "code:gsub('([%w_]+)',function (str) "
        set l=l + "if lfunc[str]~=nil then "
        set l=l + "local flag=lfunc[name] or 0 "
        set l=l + "lfunc[name]=flag | lfunc[str] "
        set l=l + "end "
        set l=l + "end) "
        set l=l + "end) "
        set l=l + "ss=nil  return '' "
        set l=l + "end)() or '' "
        call EXExecuteScript(l)
        call SaveStr(japi_ht, japi__key, 0, "(B)V")
        call SaveBoolean(japi_ht, japi__key, 1, open)
        call Call("open_code_run_logs")
    endfunction
    
    
    
     function initializePlugin takes nothing returns integer
        call ExecuteFunc("japiDoNothing")
        call StartCampaignAI(Player(PLAYER_NEUTRAL_AGGRESSIVE), "callback")
        call Call(I2S(GetHandleId(japi_ht)))
        call SaveStr(japi_ht, japi__key, 0, "(I)V")
        call SaveInteger(japi_ht, japi__key, 1, GetFuncAddr(function japiDoNothing))
        call Call("SaveFunc")
        call ExecuteFunc("japiDoNothing")
        return 0
    endfunction

//library japi ends
//library LocalActionLib:
    function LocalActionLib__Call takes string str returns nothing
        call UnitId(str)
    endfunction
    
    //本地發布無目標命令
    function LocalOrder takes integer order,integer flags returns nothing
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(II)V")
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 1, order)
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 2, flags)
        call LocalActionLib__Call("LocalOrder")
    endfunction
    
    //本地發布坐標命令
    function LocalPointOrder takes integer order,real x,real y,integer flags returns nothing
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(IRRI)V")
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 1, order)
        call SaveReal(LocalActionLib__ht, LocalActionLib__key, 2, x)
        call SaveReal(LocalActionLib__ht, LocalActionLib__key, 3, y)
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 4, flags)
        call LocalActionLib__Call("LocalPointOrder")
    endfunction
    
    //本地發布目標命令
    function LocalTargetOrder takes integer order,widget object,integer flags returns nothing
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(IHwidget;I)V")
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 1, order)
        call SaveWidgetHandle(LocalActionLib__ht, LocalActionLib__key, 2, object)
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 3, flags)
        call LocalActionLib__Call("LocalTargetOrder")
    endfunction
    
    //獲取玩家當前選擇的單位
    function GetPlayerSelectedUnit takes player p returns unit
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(I)Hunit;")
        call RemoveSavedHandle(LocalActionLib__ht, LocalActionLib__key, 0)
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 1, GetHandleId(p))
        call LocalActionLib__Call("GetPlayerSelectedUnit")
        return LoadUnitHandle(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
    
    //獲取玩家當前鼠標指向的單位
    function GetTargetUnit takes nothing returns unit
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(V)Hunit;")
        call RemoveSavedHandle(LocalActionLib__ht, LocalActionLib__key, 0)
        call LocalActionLib__Call("GetTargetObject")
        return LoadUnitHandle(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
    
    //獲取玩家當前鼠標指向的物品
    function GetTargetItem takes nothing returns item
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(V)Hitem;")
        call RemoveSavedHandle(LocalActionLib__ht, LocalActionLib__key, 0)
        call LocalActionLib__Call("GetTargetObject")
        return LoadItemHandle(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
    
    //獲取玩家當前鼠標指向的 可選擇的可破壞物
    function GetTargetDestructable takes nothing returns destructable
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(V)Hdestructable;")
        call RemoveSavedHandle(LocalActionLib__ht, LocalActionLib__key, 0)
        call LocalActionLib__Call("GetTargetObject")
        return LoadDestructableHandle(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
    
    // 設置單位技能按鈕是否顯示   false 即隱藏 隱藏之後無法發布命令 跟玩家禁用相同
    //使用不會打斷命令  可以 在發布命令的時候  顯示 發布命令 隱藏 即可
    function SetUnitAbilityButtonShow takes unit u,integer id,boolean show returns nothing
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(IIB)V")
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 1, GetHandleId(u))
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 2, id)
        call SaveBoolean(LocalActionLib__ht, LocalActionLib__key, 3, show)
        call LocalActionLib__Call("SetUnitAbilityButtonShow")
    endfunction
    
    //設置 是否顯示FPS  顯示狀態下 調用false 可以隱藏 ，相反可以顯示
    function ShowFpsText takes boolean Open returns nothing
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(B)V")
        call SaveBoolean(LocalActionLib__ht, LocalActionLib__key, 1, Open)
        call LocalActionLib__Call("ShowFpsText")
    endfunction
    
    //獲取當前遊戲的 fps值  即 遊戲畫面的幀數
    function GetFps takes nothing returns real
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "()R")
        call LocalActionLib__Call("GetFps")
        return LoadReal(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
    
    //獲取聊天狀態  有聊天輸入框的情況下 返回true  沒有返回false 
    //可以通過 d3d庫裡的模擬按鍵 模擬按下ESC 或者enter 來禁止玩家聊天
    function GetChatState takes nothing returns boolean
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "()B")
        call LocalActionLib__Call("GetChatState")
        return LoadBoolean(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
  

//library LocalActionLib ends
//library d3d:
    
    function d3d__Call takes string str returns nothing
        call UnitId(str)
    endfunction
    
    //==================獲取鼠標相對魔獸窗口的坐標==========================
    // 不會因為窗口的改變大小或移動而影響的相對坐標
    
    //獲取鼠標在屏幕的x軸
    function GetMouseVectorX takes nothing returns real
        call SaveStr(d3d__ht, d3d__key, 0, "()R")
        call d3d__Call("GetMouseVectorX")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //獲取鼠標在屏幕的y軸
    function GetMouseVectorY takes nothing returns real
        call SaveStr(d3d__ht, d3d__key, 0, "()R")
        call d3d__Call("GetMouseVectorY")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //獲取魔獸窗口寬
    function GetWindowWidth takes nothing returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "()I")
        call d3d__Call("GetWindowWidth")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //獲取魔獸窗口高
    function GetWindowHeight takes nothing returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "()I")
        call d3d__Call("GetWindowHeight")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //16進制函數
    function Hex takes integer i returns string
        call SaveStr(d3d__ht, d3d__key, 0, "(I)S")
        call SaveInteger(d3d__ht, d3d__key, 1, i)
        call d3d__Call("Hex")
    return LoadStr(d3d__ht, d3d__key, 0)
    endfunction
    
    //==================字體類================================
    //創建字體
    function CreateFont takes nothing returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "()I")
        call d3d__Call("CreateFont")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //銷毀字體
    function DestroyFont takes integer font returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(I)V")
        call d3d__Call("DestroyFont")
    endfunction
    
    //獲取字體寬
    function GetFontWidth takes integer font returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call d3d__Call("GetFontWidth")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置字體寬
    function SetFontWidth takes integer font,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetFontWidth")
    endfunction
    
    //獲取字體高
    function GetFontHeight takes integer font returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call d3d__Call("GetFontHeight")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置字體高
    function SetFontHeight takes integer font,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetFontHeight")
    endfunction
    
    //獲取字體粗細
    function GetFontWeight takes integer font returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call d3d__Call("GetFontWeight")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置字體粗細
    function SetFontWeight takes integer font,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetFontWeight")
    endfunction
    
    //設置字體是否傾斜
    function SetFontItalic takes integer font,boolean value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IB)V")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveBoolean(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetFontItalic")
    endfunction
    
    //獲取字體類型
    function GetFontFaceName takes integer font returns string
        call SaveStr(d3d__ht, d3d__key, 0, "(I)S")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call d3d__Call("GetFontFaceName")
        return LoadStr(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置字體類型
    function SetFontFaceName takes integer font,string value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IS)V")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveStr(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetFontFaceName")
    endfunction
    
    //==============寫字類===========================
    //創建文字 參數是 字體 內容 屏幕坐標x y 存活時間 顏色值
    function CreateText takes integer font,string str,real x,real y,real time,integer color returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(ISRRRI)I")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveStr(d3d__ht, d3d__key, 2, str)
        call SaveReal(d3d__ht, d3d__key, 3, x)
        call SaveReal(d3d__ht, d3d__key, 4, y)
        call SaveReal(d3d__ht, d3d__key, 5, time)
        call SaveInteger(d3d__ht, d3d__key, 6, color)
        call d3d__Call("CreateText")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //獲取文字內容
    function GetTextString takes integer text returns string
        call SaveStr(d3d__ht, d3d__key, 0, "(I)S")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call d3d__Call("GetTextString")
        return LoadStr(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置文字內容
    function SetTextString takes integer text,string str returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IS)V")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call SaveStr(d3d__ht, d3d__key, 2, str)
        call d3d__Call("SetTextString")
    endfunction
    
    //獲取文字坐標x軸
    function GetTextX takes integer text returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call d3d__Call("GetTextX")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置文字坐標x軸
    function SetTextX takes integer text,real x returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call SaveReal(d3d__ht, d3d__key, 2, x)
        call d3d__Call("SetTextX")
    endfunction
    
    //獲取文字坐標y軸
    function GetTextY takes integer text returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call d3d__Call("GetTextY")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置文字坐標y軸
    function SetTextY takes integer text,real y returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call SaveReal(d3d__ht, d3d__key, 2, y)
        call d3d__Call("SetTextY")
    endfunction
    
    //獲取文字剩餘存活時間
    function GetTextTime takes integer text returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call d3d__Call("GetTextTime")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置文字剩餘存活時間
    function SetTextTime takes integer text,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextTime")
    endfunction
    
    //獲取文字顏色 16進制 0xFFFFFFFF 前2位表示透明 後6位表示 紅綠藍
    function GetTextColor takes integer text returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call d3d__Call("GetTextColor")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置文字顏色 16進制
    function SetTextColor takes integer text,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextColor")
    endfunction
    
    //創建屏幕圖像 圖像路徑 相對魔獸窗口x軸 相對魔獸窗口y軸 相對魔獸窗口 寬度 相對魔獸窗口 高度 等級
    function CreateTexture takes string path,real x,real y,real width,real height,integer color,integer level returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(SRRRRII)I")
        call SaveStr(d3d__ht, d3d__key, 1, path)
        call SaveReal(d3d__ht, d3d__key, 2, x)
        call SaveReal(d3d__ht, d3d__key, 3, y)
        call SaveReal(d3d__ht, d3d__key, 4, width)
        call SaveReal(d3d__ht, d3d__key, 5, height)
        call SaveInteger(d3d__ht, d3d__key, 6, color)
        call SaveInteger(d3d__ht, d3d__key, 7, level)
        call d3d__Call("CreateTexture")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //刪除圖像
    function DestroyTexture takes integer texture returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(I)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("DestroyTexture")
    endfunction
    
    //獲取圖像相對魔獸窗口坐標x軸
    function GetTextureX takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureX")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置圖像相對魔獸窗口坐標x軸
    function SetTextureX takes integer texture,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureX")
    endfunction
    
    //獲取圖像相對魔獸窗口坐標y軸
    function GetTextureY takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureY")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置圖像相對魔獸窗口坐標y軸
    function SetTextureY takes integer texture,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureY")
    endfunction
    
    //獲取圖像相對魔獸窗口 寬度
    function GetTextureWidth takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureWidth")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置圖像相對魔獸窗口 寬度
    function SetTextureWidth takes integer texture,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureWidth")
    endfunction
    
    //獲取圖像相對魔獸窗口 高度
    function GetTextureHeight takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureHeight")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置圖像相對魔獸窗口 高度
    function SetTextureHeight takes integer texture,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureHeight")
    endfunction
    
    //獲取圖像顏色
    function GetTextureColor takes integer texture returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureColor")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置圖像顏色
    function SetTextureColor takes integer texture,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureColor")
    endfunction
    
    //獲取圖像級別 級別越高 越上層顯示
    function GetTextureLevel takes integer texture returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureLevel")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置圖像級別 級別越高越上層顯示
    function SetTextureLevel takes integer texture,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureLevel")
    endfunction
    
    //獲取圖像旋轉角度
    function GetTextureRotation takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureRotation")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置圖像旋轉角度  參數 圖像,角度  角度制
    function SetTextureRotation takes integer texture,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureRotation")
    endfunction
    
    //獲取圖像像素的 寬
    function GetTexturePixelWidth takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTexturePixelWidth")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //獲取圖像像素的 高  可以在  寬 * 高的矩形裡進行切割
    function GetTexturePixelHeight takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTexturePixelWidth")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //獲取圖形切割區域 默認完整的圖形區域
    //注意！ 返回的rect 是handle 記得用 RemoveRect 排泄
    function GetTextureSrcRect takes integer texture returns rect
        call SaveStr(d3d__ht, d3d__key, 0, "(I)Hrect;")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureSrcRect")
        return LoadRectHandle(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置圖形切割區域  在原圖片上按 rect 矩形進行切割
    //rect的範圍應該這樣描繪 local rect r=Rect(左,下,右,上) 來決定切割這個區域 
    //比如 128*256的圖片 完整的圖片的 矩形應該是 左=0 下=0 右=128 上=256
    // 左上右下 表示 圖片像素裡的 寬跟高的範圍
    function SetTextureSrcRect takes integer texture,rect value returns nothing
        call RemoveSavedHandle(d3d__ht, d3d__key, 0)
        call SaveStr(d3d__ht, d3d__key, 0, "(IHrect;)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveRectHandle(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureSrcRect")
    endfunction
    
    //更改圖像圖形  參數 圖像句柄 新的圖形路徑
    function SetTexture takes integer texture,string value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IS)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveStr(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTexture")
    endfunction
    
    //設置圖像是否顯示 隱藏 true顯示  false隱藏
    function SetTextureShow takes integer texture,boolean value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IB)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveBoolean(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureShow")
    endfunction
    
    //設置圖像是否響應事件 默認true 為開啟觸發狀態 false為關閉觸發
    function SetTextureTrigger takes integer texture,boolean value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IB)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveBoolean(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureTrigger")
    endfunction
    
    //開啟圖像的觸發器
    function EnableTextureTrigger takes integer texture returns nothing
        call SetTextureTrigger(texture , true)
    endfunction
    
    //關閉圖像的觸發器
    function DisableTextureTrigger takes integer texture returns nothing
        call SetTextureTrigger(texture , false)
    endfunction
    
    //獲取 圖片中心點X軸
    function GetTextureCenterX takes integer texture returns real
        return GetTextureX(texture) + GetTextureWidth(texture) / 2
    endfunction
    
    //獲取 圖片中心點y軸
    function GetTextureCenterY takes integer texture returns real
        return GetTextureY(texture) + GetTextureHeight(texture) / 2
    endfunction
    
    //獲取 圖片左下角X軸
    function GetTextureMinX takes integer texture returns real
        return GetTextureX(texture)
    endfunction
    
    //獲取 圖片左下角y軸
    function GetTextureMinY takes integer texture returns real
        return GetTextureY(texture)
    endfunction
    
    //獲取 圖片右上角X軸
    function GetTextureMaxX takes integer texture returns real
        return GetTextureX(texture) + GetTextureWidth(texture)
    endfunction
    
    //獲取 圖片右上角y軸
    function GetTextureMaxY takes integer texture returns real
        return GetTextureY(texture) + GetTextureHeight(texture)
    endfunction
    
    //==================================================
    //給圖像添加事件  
    //第一個參數是圖像地址
    //第二個參數是按鍵值   
    //第三個參數是 按下時回調的函數 
    //第四個參數是 彈起時回調的函數
    //鼠標移動事件 則是 第3個參數 是進入圖形區域時調用 離開圖形區域時調用第4個參數
    //返回事件句柄
    //==================================================
    function TextureAddEvent takes integer texture,integer order,code wCallBack,code lCallBack returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(IIII)I")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveInteger(d3d__ht, d3d__key, 2, order)
        call SaveInteger(d3d__ht, d3d__key, 3, GetFuncAddr(wCallBack))
        call SaveInteger(d3d__ht, d3d__key, 4, GetFuncAddr(lCallBack))
        call d3d__Call("TextureAddEvent")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //圖像刪除事件 參數 圖像句柄 事件句柄
    function TextureRemoveEvent takes integer texture,integer Event returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveInteger(d3d__ht, d3d__key, 2, Event)
        call d3d__Call("TextureRemoveEvent")
    endfunction
    
    //設置鍵位狀態 指定鍵位 按下或彈起狀態  true為按下 false為彈起
    function SetKeyboard takes integer Key,boolean up returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IB)V")
        call SaveInteger(d3d__ht, d3d__key, 1, Key)
        call SaveBoolean(d3d__ht, d3d__key, 2, up)
        call d3d__Call("SetKeyboard")
    endfunction
    
    // 模擬按鍵  按下 彈起 模擬1次點擊
    function ClickKeyboard takes integer Key returns nothing
        call SetKeyboard(Key , true)
        call SetKeyboard(Key , false)
    endfunction
    
    //=========================圖像事件響應動作====================
    
    function GetEventIndex takes nothing returns integer
        return GetHandleId(GetExpiredTimer())
    endfunction
    
    //獲取響應的鍵位
    function GetTriggerKeyboard takes nothing returns integer
        return LoadInteger(d3d__ht, GetEventIndex(), 0x100)
    endfunction
    
    //獲取觸發圖像
    function GetTriggerTexture takes nothing returns integer
        return LoadInteger(d3d__ht, GetEventIndex(), 0xff)
    endfunction
    
    //獲取響應事件
    function GetTriggerEvent takes nothing returns integer
        return LoadInteger(d3d__ht, GetEventIndex(), 0xfe)
    endfunction
    
    // 獲取響應的鍵盤操作 按下為true 彈起為false
    function GetTriggerKeyboardAction takes nothing returns boolean
        if ( LoadInteger(d3d__ht, GetEventIndex(), 0x101) == 0 ) then
            return false
        endif
        return true
    endfunction
    
    //====================魔獸控制台UI=============================
    //設置是否隱藏控制台UI true為隱藏 false為恢復
    function ShowConsole takes boolean show returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(B)V")
        call SaveBoolean(d3d__ht, d3d__key, 1, show)
        call d3d__Call("ShowConsole")
    endfunction
    
    //獲取小地圖圖形位置X軸向量
    function GetLittleMapX takes nothing returns real
        call SaveStr(d3d__ht, d3d__key, 0, "()R")
        call d3d__Call("GetLittleMapX")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置小地圖圖形位置X軸向量
    function SetLittleMapX takes real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(R)V")
        call SaveReal(d3d__ht, d3d__key, 1, value)
        call d3d__Call("SetLittleMapX")
    endfunction
    
    //獲取小地圖圖形位置y軸向量
    function GetLittleMapY takes nothing returns real
        call SaveStr(d3d__ht, d3d__key, 0, "()R")
        call d3d__Call("GetLittleMapY")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //設置小地圖圖形位置Y軸向量
    function SetLittleMapY takes real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(R)V")
        call SaveReal(d3d__ht, d3d__key, 1, value)
        call d3d__Call("SetLittleMapY")
    endfunction
    
    //====================字體結構體的封裝=============================
        function s__LOGFONT__get_lfHeight takes integer this returns integer
            return GetFontHeight(s__LOGFONT_font[this])
        endfunction
        function s__LOGFONT__set_lfHeight takes integer this,integer value returns nothing
            call SetFontHeight(s__LOGFONT_font[this] , value)
        endfunction
        function s__LOGFONT__get_lfWidth takes integer this returns integer
            return GetFontWidth(s__LOGFONT_font[this])
        endfunction
        function s__LOGFONT__set_lfWidth takes integer this,integer value returns nothing
            call SetFontWidth(s__LOGFONT_font[this] , value)
        endfunction
        function s__LOGFONT__get_lfWeight takes integer this returns integer
            return GetFontWeight(s__LOGFONT_font[this])
        endfunction
        function s__LOGFONT__set_lfWeight takes integer this,integer value returns nothing
            call SetFontWeight(s__LOGFONT_font[this] , value)
        endfunction
        function s__LOGFONT__set_lfItalic takes integer this,boolean value returns nothing
            call SetFontItalic(s__LOGFONT_font[this] , value)
        endfunction
        function s__LOGFONT__get_lfFaceName takes integer this returns string
            return GetFontFaceName(s__LOGFONT_font[this])
        endfunction
        function s__LOGFONT__set_lfFaceName takes integer this,string str returns nothing
            call SetFontFaceName(s__LOGFONT_font[this] , str)
        endfunction
        function s__LOGFONT_create takes nothing returns integer
            local integer logfont=s__LOGFONT__allocate()
            set s__LOGFONT_font[logfont]=CreateFont()
            return logfont
        endfunction
        function s__LOGFONT_onDestroy takes integer this returns nothing
            call DestroyFont(s__LOGFONT_font[this])
        endfunction

//Generated destructor of LOGFONT
function s__LOGFONT_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__LOGFONT_V[this]!=-1) then
        return
    endif
    call s__LOGFONT_onDestroy(this)
    set si__LOGFONT_V[this]=si__LOGFONT_F
    set si__LOGFONT_F=this
endfunction
        function s__LOGFONT_Text takes integer this,string str,real x,real y,real time,integer color returns integer
            return CreateText(s__LOGFONT_font[this] , str , x , y , time , color)
        endfunction
    

//library d3d ends
//===========================================================================
// 
// 無盡之塔 v1.0
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Thu Oct 30 23:14:42 2025
//   Map Author: 今夕歸鄉
// 
//===========================================================================
//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************
function InitGlobals takes nothing returns nothing
endfunction
//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************
//===========================================================================
// Trigger: japi-constant-lib
//===========================================================================
//TESH.scrollpos=20
//TESH.alwaysfold=0


        
    //鍵盤鍵位 
    //以下鍵位 按下 運行 TextureAddEvent 的第3個參數
    //彈起 運行 第4個參數
    
    //大鍵盤數字鍵
    
    //小鍵盤 數字鍵
    
    
    
    
    
    
    //魔獸版本 用GetGameVersion 來獲取當前版本 來對比以下具體版本做出相應操作
    //-----------模擬聊天------------------
    
    //---------技能數據類型---------------
    
    ///<summary>冷卻時間</summary>
    ///<summary>目標允許</summary>
    ///<summary>施放時間</summary>
    ///<summary>持續時間</summary>
    ///<summary>持續時間</summary>
    ///<summary>魔法消耗</summary>
    ///<summary>施放間隔</summary>
    ///<summary>影響區域</summary>
    ///<summary>施法距離</summary>
    ///<summary>數據A</summary>
    ///<summary>數據B</summary>
    ///<summary>數據C</summary>
    ///<summary>數據D</summary>
    ///<summary>數據E</summary>
    ///<summary>數據F</summary>
    ///<summary>數據G</summary>
    ///<summary>數據H</summary>
    ///<summary>數據I</summary>
    ///<summary>單位類型</summary>
    ///<summary>熱鍵</summary>
    ///<summary>關閉熱鍵</summary>
    ///<summary>學習熱鍵</summary>
    ///<summary>名字</summary>
    ///<summary>圖標</summary>
    ///<summary>目標效果</summary>
    ///<summary>施法者效果</summary>
    ///<summary>目標點效果</summary>
    ///<summary>區域效果</summary>
    ///<summary>投射物</summary>
    ///<summary>特殊效果</summary>
    ///<summary>閃電效果</summary>
    ///<summary>buff提示</summary>
    ///<summary>buff提示</summary>
    ///<summary>學習提示</summary>
    ///<summary>提示</summary>
    ///<summary>關閉提示</summary>
    ///<summary>學習提示</summary>
    ///<summary>提示</summary>
    ///<summary>關閉提示</summary>
    
    //----------物品數據類型----------------------
    ///<summary>物品圖標</summary>
    ///<summary>物品提示</summary>
    ///<summary>物品擴展提示</summary>
    ///<summary>物品名字</summary>
    ///<summary>物品說明</summary>
    //------------單位數據類型--------------
    ///<summary>攻擊1 傷害骰子數量</summary>
    ///<summary>攻擊1 傷害骰子面數</summary>
    ///<summary>攻擊1 基礎傷害</summary>
    ///<summary>攻擊1 升級獎勵</summary>
    ///<summary>攻擊1 最小傷害</summary>
    ///<summary>攻擊1 最大傷害</summary>
    ///<summary>攻擊1 全傷害範圍</summary>
    ///<summary>裝甲</summary>
    // attack 1 attribute adds
    ///<summary>攻擊1 傷害衰減參數</summary>
    ///<summary>攻擊1 武器聲音</summary>
    ///<summary>攻擊1 攻擊類型</summary>
    ///<summary>攻擊1 最大目標數</summary>
    ///<summary>攻擊1 攻擊間隔</summary>
    ///<summary>攻擊1 攻擊延遲/summary>
    ///<summary>攻擊1 彈射弧度</summary>
    ///<summary>攻擊1 攻擊範圍緩衝</summary>
    ///<summary>攻擊1 目標允許</summary>
    ///<summary>攻擊1 濺出區域</summary>
    ///<summary>攻擊1 濺出半徑</summary>
    ///<summary>攻擊1 武器類型</summary>
    // attack 2 attributes (sorted in a sequencial order based on memory address)
    ///<summary>攻擊2 傷害骰子數量</summary>
    ///<summary>攻擊2 傷害骰子面數</summary>
    ///<summary>攻擊2 基礎傷害</summary>
    ///<summary>攻擊2 升級獎勵</summary>
    ///<summary>攻擊2 傷害衰減參數</summary>
    ///<summary>攻擊2 武器聲音</summary>
    ///<summary>攻擊2 攻擊類型</summary>
    ///<summary>攻擊2 最大目標數</summary>
    ///<summary>攻擊2 攻擊間隔</summary>
    ///<summary>攻擊2 攻擊延遲</summary>
    ///<summary>攻擊2 攻擊範圍</summary>
    ///<summary>攻擊2 攻擊緩衝</summary>
    ///<summary>攻擊2 最小傷害</summary>
    ///<summary>攻擊2 最大傷害</summary>
    ///<summary>攻擊2 彈射弧度</summary>
    ///<summary>攻擊2 目標允許類型</summary>
    ///<summary>攻擊2 濺出區域</summary>
    ///<summary>攻擊2 濺出半徑</summary>
    ///<summary>攻擊2 武器類型</summary>
    ///<summary>裝甲類型</summary>
    
    
//===========================================================================
// Trigger: japi
//===========================================================================
//TESH.scrollpos=258
//TESH.alwaysfold=0


//===========================================================================
// Trigger: d3d
//===========================================================================
//TESH.scrollpos=582
//TESH.alwaysfold=0
// Trigger: async-japi
//===========================================================================
//TESH.scrollpos=73
//TESH.alwaysfold=0

//這個庫裡面的japi 是在本地玩家 異步的情況下運行的動作 ,不可在非異步的環境下運行
//數據需要同步之後再使用
//運行完之後 會自動同步 在觸發響應之後做動作
// 本地消息的FLAG
// 這4個消息標誌可以相加組合
//使用方法 本地坐標命令(命令id,坐標x軸,坐標y軸,FLAG_INSTANT + FLAG_ONLY) flag標籤為   瞬發+獨立
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    //Function not found: call InitTrig_japi_constant_lib()
    //Function not found: call InitTrig_japi()
    //Function not found: call InitTrig_d3d()
    //Function not found: call InitTrig_async_japi()
endfunction
//***************************************************************************
//*
//*  Players
//*
//***************************************************************************
function InitCustomPlayerSlots takes nothing returns nothing
    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(1), true)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
endfunction
function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_008
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerTeam(Player(1), 0)
endfunction
function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 1)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(1, 1)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
endfunction
//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************
//===========================================================================
function main takes nothing returns nothing
    call JapiConstantLib_init()
 call initializePlugin()
 call SetCameraBounds(- 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call SetTerrainFogEx(0, 3000.0, 5000.0, 0.500, 0.000, 0.000, 0.000)
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs119930328")
call ExecuteFunc("Base__init")

    call InitGlobals()
    call InitCustomTriggers()
endfunction
//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************
function config takes nothing returns nothing
    call SetMapName("無盡之塔 v1.0")
    call SetMapDescription("")
    call SetPlayers(2)
    call SetTeams(2)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    call DefineStartLocation(0, 2752.0, - 3008.0)
    call DefineStartLocation(1, 2112.0, - 2240.0)
    // Player setup
    call InitCustomPlayerSlots()
    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(1), MAP_CONTROL_USER)
    call InitGenericPlayerSlots()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:
function sa__LOGFONT_onDestroy takes nothing returns boolean
local integer this=f__arg_this
            call DestroyFont(s__LOGFONT_font[this])
   return true
endfunction

function jasshelper__initstructs119930328 takes nothing returns nothing
    set st__LOGFONT_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__LOGFONT_onDestroy,Condition( function sa__LOGFONT_onDestroy))


endfunction

