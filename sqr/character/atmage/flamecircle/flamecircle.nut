
SUB_STATE_FLAMECIRCLE_0	<- 0
SUB_STATE_FLAMECIRCLE_1	<- 1
SUB_STATE_FLAMECIRCLE_2	<- 2
SUB_STATE_FLAMECIRCLE_3	<- 3
SUB_STATE_FLAMECIRCLE_4	<- 4
SUB_STATE_FLAMECIRCLE_CASTING	<- 5

SKL_LV_FRAMECIRCLE_0 <- 0 // 0. ?????
SKL_LV_FRAMECIRCLE_1 <- 1 // 1. ?????? ???? (100%~)
SKL_LV_FRAMECIRCLE_2 <- 2 // 2. ??? ?????(%)
SKL_LV_FRAMECIRCLE_3 <- 3 // 3. ???? ?????(%)


function checkExecutableSkill_FlameCircle(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_FLAMECIRCLE);

	if(b_useskill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_FLAMECIRCLE_CASTING); // substate????
		obj.sq_AddSetStatePacket(STATE_FLAMECIRCLE, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	

	return false;

}

function checkCommandEnable_FlameCircle(obj)
{

	if(!obj) return false;
	if(sq_GetSkillLevel(obj, SKILL_ELEMENTAL_BOMBING) > 2){
		return true;
	}
	local state = obj.sq_GetState();
	if(state == STATE_ATTACK || state == STATE_STAND || state == STATE_DASH)
	{
		return true;
	}
	return false;

}

function onSetState_FlameCircle(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	
	obj.sq_StopMove();
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	obj.getVar().clear_vector();
	obj.getVar().push_vector(0);	
	obj.getVar().push_vector(0);

	obj.getVar("expflag").clear_vector();
	obj.getVar("expflag").push_vector(0);
	
	if(substate == SUB_STATE_FLAMECIRCLE_CASTING)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FLAMECIRCLE_CASTING);
		
		// ????? ????? ???????? ????
		// ????? ????? ??????? ???????? ????? ???? ????.
		// ????? ???????? ???? ??????.
		//local skillLevel = sq_GetSkillLevel(obj, SKILL_FLAMECIRCLE);
		//local castTime = sq_GetCastTime(obj, SKILL_FLAMECIRCLE, skillLevel);
		//local animation = sq_GetCurrentAnimation(obj);
		//local startTime = sq_GetFrameStartTime(animation, 16);
		//local speedRate = startTime.tofloat() / castTime.tofloat();
		//obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
		//	SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, speedRate, speedRate);
		//
		//sq_StartDrawCastGauge(obj, startTime, true);
		
		addElementalChain_ATMage(obj, ENUM_ELEMENT_FIRE);
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_0) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FLAMECIRCLE1);
		local pAni = obj.sq_GetCurrentAni();
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_1) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FLAMECIRCLE2);
		local pAni = obj.sq_GetCurrentAni();
		//pAni.setSpeedRate(100.0);
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_2) {
		obj.sq_PlaySound("MW_FLAMECILCLE");
	
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FLAMECIRCLE3);
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_FLAMECIRCLE);
		local pAttack = sq_GetCurrentAttackInfo(obj);
		
		// ??? ??δ?? ???
		local currentAni = sq_GetCurrentAnimation(obj);		
		local exp100Rate = obj.sq_GetIntData(SKILL_FLAMECIRCLE, 1); // 1. ?????? ???? ?????? ???? (100%~)
		
		local deyelevel = sq_GetSkillLevel(obj, SKILL_DARK_EYE);
		local sizeRate = obj.sq_GetLevelData(SKILL_DARK_EYE, 9, deyelevel).tofloat() / 1000.0;
		
		local expRate = exp100Rate.tofloat() / 100.0 + sizeRate;
		print( " expRate:" + expRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, expRate, expRate, expRate);
		obj.getVar("expflag").set_vector(0, 1);
		///////////////////////////
		
		//SKL_LV_FRAMECIRCLE_3 <- 3 // 3. ???? ?????(%)
		local firstAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_FLAMECIRCLE, STATE_FLAMECIRCLE, SKL_LV_FRAMECIRCLE_3, 1.0); //3. ???? ?????(%)
		sq_SetCurrentAttackBonusRate(pAttack, firstAttackRate);
		obj.sq_SetShake(obj,2,300);
		
		//sq_SetCurrentAttackBonusRate(pAttack, attack_rate);
		
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_3) {
		// SUB_STATE_FLAMECIRCLE_3 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_4) {
		// SUB_STATE_FLAMECIRCLE_4 ????????? ???
	}

obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED , SPEED_TYPE_CAST_SPEED , SPEED_VALUE_DEFAULT , SPEED_VALUE_DEFAULT , 1.0 , 1.0);
}

function prepareDraw_FlameCircle(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FLAMECIRCLE_0) {
		// SUB_STATE_FLAMECIRCLE_0 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_1) {
		// SUB_STATE_FLAMECIRCLE_1 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_2) {
		// SUB_STATE_FLAMECIRCLE_2 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_3) {
		// SUB_STATE_FLAMECIRCLE_3 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_4) {
		// SUB_STATE_FLAMECIRCLE_4 ????????? ???
	}
	

}

function onProc_FlameCircle(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);


	if(substate == SUB_STATE_FLAMECIRCLE_0) {
		if(frmIndex >= 2) {
			if(!obj.getVar().get_vector(0)) {
			
				
				if(obj.isMyControlObject()) {
					local distanceL = 0;
					local h = 0;

//SKL_LV_FRAMECIRCLE_0 <- 0 // 0. ?????
//SKL_LV_FRAMECIRCLE_1 <- 1 // 1. ?????? ???? (100%~)
//SKL_LV_FRAMECIRCLE_2 <- 2 // 2. ??? ?????(%)
//SKL_LV_FRAMECIRCLE_3 <- 3 // 3. ???? ?????(%)
					local skill_level = obj.sq_GetSkillLevel(SKILL_FLAMECIRCLE);
					
					local spin_num = obj.sq_GetLevelData(SKILL_FLAMECIRCLE, SKL_LV_FRAMECIRCLE_0, skill_level); // 0.??? ??? ???? 
					local speed_rate = obj.sq_GetLevelData(SKILL_FLAMECIRCLE, SKL_LV_FRAMECIRCLE_1, skill_level);	// 1.????e?
					local firstAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_FLAMECIRCLE, STATE_FLAMECIRCLE, SKL_LV_FRAMECIRCLE_2, 1.0); //2.?????(%)


					local spin_radius = obj.sq_GetIntData(SKILL_FLAMECIRCLE, 0); // ?????? (100%~)
					local spin_r = spin_radius.tofloat() / 100.0;
					
					sq_BinaryStartWrite();
					sq_BinaryWriteWord(spin_num); // ???? ????
					sq_BinaryWriteFloat(spin_r); // ???? ???
					sq_BinaryWriteFloat(speed_rate.tofloat()); // ???
					sq_BinaryWriteDword(firstAttackRate); // ??? ?????(%)
					obj.sq_SendCreatePassiveObjectPacket(24244, 0, distanceL, 1, h);
				}
				
				obj.getVar().set_vector(0, 1);
			}
		}
		
		if(frmIndex >= 3) {
			if(obj.getVar().get_vector(0) == 1) {
				local flame_passive_obj = obj.sq_GetPassiveObject(24244); // ???? ?????? ???????? 
				local next_state = false;
				
				if(!flame_passive_obj) {
					next_state = true;
				}
				else {
					if(flame_passive_obj.sq_var.get_vector(3) == 1) {
						next_state = true;
					}
				}
				
				if(next_state) {
					// ??? ?????? 
					if(obj.isMyControlObject()) {
						obj.sq_IntVectClear();
						obj.sq_IntVectPush(SUB_STATE_FLAMECIRCLE_1);
						obj.sq_AddSetStatePacket(STATE_FLAMECIRCLE, STATE_PRIORITY_USER, true);
					}
				}
			}
		}
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_1) {
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_2) {
		if(frmIndex >= 1) {
			if(!obj.getVar().get_vector(0)) {
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_FLAMECIRCLE, true, "Appendage/Character/ap_atmage_effect.nut", true);
				obj.getVar().set_vector(0, 1);
			}
		}
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_3) {
		// SUB_STATE_FLAMECIRCLE_3 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_4) {
		// SUB_STATE_FLAMECIRCLE_4 ????????? ???
	}
	

}

function onProcCon_FlameCircle(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FLAMECIRCLE_0) {
		// SUB_STATE_FLAMECIRCLE_0 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_1) {
		// SUB_STATE_FLAMECIRCLE_1 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_2) {
		// SUB_STATE_FLAMECIRCLE_2 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_3) {
		// SUB_STATE_FLAMECIRCLE_3 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_4) {
		// SUB_STATE_FLAMECIRCLE_4 ????????? ???
	}
	

}

function onEndCurrentAni_FlameCircle(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	print( " substate:" + substate);
	
	if(substate == SUB_STATE_FLAMECIRCLE_CASTING)
	{
		if(obj.isMyControlObject()) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_FLAMECIRCLE_0);
			obj.sq_AddSetStatePacket(STATE_FLAMECIRCLE, STATE_PRIORITY_USER, true);
		}
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_0) {
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_1) {
		if(obj.isMyControlObject()) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_FLAMECIRCLE_2);
			obj.sq_AddSetStatePacket(STATE_FLAMECIRCLE, STATE_PRIORITY_USER, true);
		}
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_2) {
		if(obj.isMyControlObject()) {
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_3) {
		// SUB_STATE_FLAMECIRCLE_3 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_4) {
		// SUB_STATE_FLAMECIRCLE_4 ????????? ???
	}
	

}

function onKeyFrameFlag_FlameCircle(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FLAMECIRCLE_0) {
		// SUB_STATE_FLAMECIRCLE_0 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_1) {
		// SUB_STATE_FLAMECIRCLE_1 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_2) {
		// SUB_STATE_FLAMECIRCLE_2 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_3) {
		// SUB_STATE_FLAMECIRCLE_3 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_4) {
		// SUB_STATE_FLAMECIRCLE_4 ????????? ???
	}
	

	return false;

}

function onEndState_FlameCircle(obj, new_state)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	
	// ??δ?? ??? ??? 
	// ???ù?? ?????? ?????·? ??????????.
	if(obj.getVar("expflag").get_vector(0))
	{
		local ani = sq_GetCustomAni(obj, CUSTOM_ANI_FLAMECIRCLE3);	
		if(ani)
		{
			local currentAni = sq_GetCurrentAnimation(obj);		
			local exp100Rate = obj.sq_GetIntData(SKILL_FLAMECIRCLE, 1); // 1. ?????? ???? ?????? ???? (100%~)
			local expOldRate = 100.0 / exp100Rate.tofloat();
			sq_SetAttackBoundingBoxSizeRate(currentAni, expOldRate, expOldRate, expOldRate);
		}
	}
	///////////////////////////
	

	if(substate == SUB_STATE_FLAMECIRCLE_0) {
		// SUB_STATE_FLAMECIRCLE_0 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_1) {
		// SUB_STATE_FLAMECIRCLE_1 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_2) {
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_3) {
		// SUB_STATE_FLAMECIRCLE_3 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_4) {
		// SUB_STATE_FLAMECIRCLE_4 ????????? ???
	}
	
	// ??????? ???? ??? ?????????? ????? ?????? ????
	//sq_EndDrawCastGauge(obj);
}

function onAfterSetState_FlameCircle(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FLAMECIRCLE_0) {
		// SUB_STATE_FLAMECIRCLE_0 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_1) {
		// SUB_STATE_FLAMECIRCLE_1 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_2) {
		// SUB_STATE_FLAMECIRCLE_2 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_3) {
		// SUB_STATE_FLAMECIRCLE_3 ????????? ???
	}
	else if(substate == SUB_STATE_FLAMECIRCLE_4) {
		// SUB_STATE_FLAMECIRCLE_4 ????????? ???
	}
	

}


function onAttack_FlameCircle(obj, damager, boundingBox, isStuck)
{
	if(!obj) return;
	
	local substate = obj.getSkillSubState();
	
	if(substate == SUB_STATE_FLAMECIRCLE_2) {
		// SUB_STATE_FLAMECIRCLE_2 ????????? ???
		sq_AddHitObject(obj, damager);
		
	}	


}