
SUB_STATE_ELEMENTALSTRIKEEX_0	<- 0
SUB_STATE_ELEMENTALSTRIKEEX_1	<- 1

function checkExecutableSkill_ElementalStrikeEx(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_ELEMENTAL_STRIKE_EX);

	if(b_useskill)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_ELEMENTALSTRIKEEX_0); // substate????
		obj.sq_AddSetStatePacket(STATE_ELEMENTAL_STRIKE_EX, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	

	return false;

}

function checkCommandEnable_ElementalStrikeEx(obj)
{
	if(!obj) return false;
	if(sq_GetSkillLevel(obj, SKILL_ELEMENTAL_BOMBING) > 4){
		return true;
	}
	local state = obj.sq_GetState();
	if(state == STATE_ATTACK || state == STATE_STAND || state == STATE_DASH)
	{
		return true;
	}
	return false;
}

function onSetState_ElementalStrikeEx(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	
	obj.sq_StopMove();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0)
	{
		local expAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_ELEMENTAL_STRIKE_EX, STATE_ELEMENTAL_STRIKE_EX, 0, 1.0); // 0.????????(%)
		local poleAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_ELEMENTAL_STRIKE_EX, STATE_ELEMENTAL_STRIKE_EX, 1, 1.0); // 1.????????? (%)
		local imagePerRate = obj.sq_GetIntData(SKILL_ELEMENTAL_STRIKE_EX, 0); // 0.???						
		local speedRate = obj.sq_GetIntData(SKILL_ELEMENTAL_STRIKE_EX, 1); // 150 // 1.?????
	
	
		local element = obj.getThrowElement();	
		local passiveObjectIndex = 24310; // 24310	`Character/Mage/ATElementalStrikeFireEx.obj`		// ??????? ???????? (???) : ????
		addElementalChain_ATMage(obj, element);
		
		if (element == ENUM_ELEMENT_FIRE)
		{
			obj.sq_PlaySound("EBUSTER_CAST_01");
			passiveObjectIndex = 24310; // 24310	`Character/Mage/ATElementalStrikeFireEx.obj`		// ??????? ???????? (???) : ????
		}
		else if(element == ENUM_ELEMENT_WATER)
		{			
			obj.sq_PlaySound("EBUSTER_CAST_02");
			passiveObjectIndex = 24313; // 24313	`Character/Mage/ATElementalStrikeWaterEx.obj`		// ??????? ???????? (???) : ?????
		}
		else if(element == ENUM_ELEMENT_DARK)
		{			
			obj.sq_PlaySound("EBUSTER_CAST_04");
			passiveObjectIndex = 24311; // 24311	`Character/Mage/ATElementalStrikeDarkEx.obj`		// ??????? ???????? (???) : ????
		}
		else if(element == ENUM_ELEMENT_LIGHT)
		{			
			obj.sq_PlaySound("EBUSTER_CAST_03");
			passiveObjectIndex = 24314; // 24314	`Character/Mage/ATElementalStrikeLightEx.obj`		// ??????? ???????? (???) : ?????
		}
		else if(element == ENUM_ELEMENT_NONE)
		{			
			obj.sq_PlaySound("EBUSTER_CAST_01");
			passiveObjectIndex = 24312; // 24312	`Character/Mage/ATElementalStrikeNoneEx.obj`		// ??????? ???????? (???) : ?????
		}

		if(obj.isMyControlObject())
		{
			local distanceL = 200;
			
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(poleAttackRate); // ?????????
			sq_BinaryWriteDword(expAttackRate); // ???? ?????
			sq_BinaryWriteDword(imagePerRate); // ????? ????
			sq_BinaryWriteDword(element); // ???
			sq_BinaryWriteDword(speedRate); // ?????	
			
			obj.sq_SendCreatePassiveObjectPacket(passiveObjectIndex, 0, distanceL, -30, 0); // 24310	`Character/Mage/ATElementalStrikeFireEx.obj`		// ??????? ???????? (???) : ????
		}
	
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ELEMENTAL_STRIKE_EX);
		
		local currentAni = obj.getCurrentAnimation();
		
		if(currentAni)
		{
			currentAni.setSpeedRate(speedRate.tofloat());
		}
		
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_fire.ani";
		
		local element = obj.getThrowElement();	
		
		if (element == ENUM_ELEMENT_FIRE)
		{
			aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_fire.ani";
		}
		else if(element == ENUM_ELEMENT_WATER)
		{			
			aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_water.ani";
		}
		else if(element == ENUM_ELEMENT_DARK)
		{			
			aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_dark.ani";
		}
		else if(element == ENUM_ELEMENT_LIGHT)
		{			
			aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_light.ani";
		}
		else if(element == ENUM_ELEMENT_NONE)
		{			
			aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_nothing.ani";
		}
		local addAni = sq_CreateAnimation("",aniStr);
		currentAni.addLayerAnimation(10001,addAni,true);
		
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ????????? ???
	}
	
obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED , SPEED_TYPE_CAST_SPEED , SPEED_VALUE_DEFAULT , SPEED_VALUE_DEFAULT , 1.0 , 1.0);
}

function prepareDraw_ElementalStrikeEx(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
		// SUB_STATE_ELEMENTALSTRIKEEX_0 ????????? ???
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ????????? ???
	}
	

}

function onProc_ElementalStrikeEx(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
		// SUB_STATE_ELEMENTALSTRIKEEX_0 ????????? ???
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ????????? ???
	}
	

}

function onProcCon_ElementalStrikeEx(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
		// SUB_STATE_ELEMENTALSTRIKEEX_0 ????????? ???
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ????????? ???
	}
	

}

function onEndCurrentAni_ElementalStrikeEx(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	
	if(!obj.isMyControlObject())
		return;

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ????????? ???
	}
	

}

function onKeyFrameFlag_ElementalStrikeEx(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
		// SUB_STATE_ELEMENTALSTRIKEEX_0 ????????? ???
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ????????? ???
	}
	

	return false;

}

function onEndState_ElementalStrikeEx(obj, new_state)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ????????? ???
	}
	

}

function onAfterSetState_ElementalStrikeEx(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
		// SUB_STATE_ELEMENTALSTRIKEEX_0 ????????? ???
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ????????? ???
	}
	

}

