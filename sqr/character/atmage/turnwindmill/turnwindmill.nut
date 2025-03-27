
SUB_STATE_TURNWINDMILL_0	<- 0
SUB_STATE_TURNWINDMILL_1	<- 1
SUB_STATE_TURNWINDMILL_2	<- 2
SUB_STATE_TURNWINDMILL_3	<- 3
SUB_STATE_TURNWINDMILL_4	<- 4

function checkExecutableSkill_TurnWindmill(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_TURNWINDMILL);

	if(b_useskill) {
		obj.getVar("cnt").clear_vector();
		obj.getVar("cnt").push_vector(0);
		
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_TURNWINDMILL_0); // substate????
		obj.sq_AddSetStatePacket(STATE_TURNWINDMILL, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	
	
	return false;

}

function checkCommandEnable_TurnWindmill(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();

	if(state == STATE_ATTACK)
	{
		// ?????????? ???????? ????? ????????. ?????:?????? [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_TURNWINDMILL); // ?????????? ???????? ????? ????????. ?????:?????? [2012.04.20] obj.sq_IsCommandEnable(SKILL_TURNWINDMILL);
	}

	return true;

}

function onAttack_TurnWindmill(obj, damager, boundingBox, isStuck)
{
    if ( !sq_IsFixture(damager) )
    {
        obj.getVar("dama").push_obj_vector(damager);
    }
}

function onSetState_TurnWindmill(obj, state, datas, isResetTimer)
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
	

	
	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_TURN_WINDMILL);

	local pAttack = sq_GetCurrentAttackInfo(obj);			
	local attackRate = obj.sq_GetBonusRateWithPassive(SKILL_TURNWINDMILL STATE_TURNWINDMILL, 0, 1.0); //0.?????(%)
	sq_SetCurrentAttackBonusRate(pAttack, attackRate);


	if(substate == SUB_STATE_TURNWINDMILL_0) {
	
        obj.getVar("dama").clear_obj_vector();


		obj.sq_SetCurrentAnimation(CUSTOM_ANI_TURNWINDMILL1);
		
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
				SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		
		//local term = obj.sq_GetIntData(SKILL_TURNWINDMILL, 0); // 0. ?????? ????
		local ani = obj.sq_GetCurrentAni();
		local term = ani.getDelaySum(false) / 5;
		
		obj.sq_timer_.setParameter(term, -1);
		obj.sq_timer_.resetInstant(0);
		
	}
	else if(substate == SUB_STATE_TURNWINDMILL_1) {
	
		obj.sq_PlaySound("MW_SPINSPEAR_1ATK");
		
		//if(obj.isMyControlObject())
		//{
			//// IRDSQRCharacter.pushPassiveObj("Character/ATMage/TurnWindmill/po_ATTurnWidmill.nut", 24251)
			//local fireOffsetX = 100;
			//local fireOffsetY = 0;
			//local fireOffsetZ = 13;
			//
			//local distance = obj.sq_GetIntData(SKILL_TURNWINDMILL, 1); // 1. ???????? ??????? ???
			//
			//local pAttack = sq_GetCurrentAttackInfo(obj);			
			//local attackRate = obj.sq_GetBonusRateWithPassive(SKILL_TURNWINDMILL STATE_TURNWINDMILL, 0, 1.0); //0.?????(%)
			//local term = obj.sq_GetIntData(SKILL_TURNWINDMILL, 0); // 0. ?????? ????
//
			//
			//sq_BinaryStartWrite();
			//sq_BinaryWriteDword(0); // 
			//sq_BinaryWriteDword(distance); // 
			//sq_BinaryWriteDword(attackRate); // 
			//sq_BinaryWriteDword(term); //
			//sq_BinaryWriteDword(0); //			
			//sq_BinaryWriteDword(0); //




			//obj.sq_SendCreatePassiveObjectPacket(24251, 0, fireOffsetX, fireOffsetY + 1, fireOffsetZ); // po_ATTurnWidmill.nut
//
			//local dirFiringSwitch = obj.sq_GetIntData(SKILL_TURNWINDMILL, 3);// 3. ??????? ???? ???? ?????? on/off?????
			//
			//if(dirFiringSwitch)
			//{
				//local dir = obj.sq_GetIntData(SKILL_TURNWINDMILL, 4);// 4. 3???? on???
//
				//sq_BinaryStartWrite();
				//sq_BinaryWriteDword(0); // 
				//sq_BinaryWriteDword(distance); // 
				//sq_BinaryWriteDword(attackRate); // 
				//sq_BinaryWriteDword(term); //
				//sq_BinaryWriteDword(2); //
				//sq_BinaryWriteDword(dir); //
				//obj.sq_SendCreatePassiveObjectPacket(24251, 0, fireOffsetX, fireOffsetY + 1, fireOffsetZ); // po_ATTurnWidmill.nut
			//}
			//
			//local cnt = obj.getVar("cnt").get_vector(0);			
			//cnt = cnt + 1;			
			//obj.getVar("cnt").set_vector(0, cnt);	
		//}
	
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_TURNWINDMILL2);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
				SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	}
	else if(substate == SUB_STATE_TURNWINDMILL_2) {
		// SUB_STATE_TURNWINDMILL_2 ????????? ???
	}
	else if(substate == SUB_STATE_TURNWINDMILL_3) {
		// SUB_STATE_TURNWINDMILL_3 ????????? ???
	}
	else if(substate == SUB_STATE_TURNWINDMILL_4) {
		// SUB_STATE_TURNWINDMILL_4 ????????? ???
	}
	
}

function prepareDraw_TurnWindmill(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_TURNWINDMILL_0) {
		// SUB_STATE_TURNWINDMILL_0 ????????? ???
	}
	else if(substate == SUB_STATE_TURNWINDMILL_1) {
		// SUB_STATE_TURNWINDMILL_1 ????????? ???
	}
	else if(substate == SUB_STATE_TURNWINDMILL_2) {
		// SUB_STATE_TURNWINDMILL_2 ????????? ???
	}
	else if(substate == SUB_STATE_TURNWINDMILL_3) {
		// SUB_STATE_TURNWINDMILL_3 ????????? ???
	}
	else if(substate == SUB_STATE_TURNWINDMILL_4) {
		// SUB_STATE_TURNWINDMILL_4 ????????? ???
	}
	

}

function onProc_TurnWindmill(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);
	
	
	if (obj.sq_timer_.isOnEvent(currentT) == true)
		obj.resetHitObjectList();	

}

function onProcCon_TurnWindmill(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	if(substate == SUB_STATE_TURNWINDMILL_0) {
	}
	else if(substate == SUB_STATE_TURNWINDMILL_1) {
		
		if(frmIndex >= 7)
		{
			if(!obj.getVar().get_vector(0))
			{
				obj.sq_PlaySound("MW_SPINSPEAR_2ATK");
			
				local fireOffsetX = 100;
				local fireOffsetY = 0;
				local fireOffsetZ = 13;
				
				local distance = obj.sq_GetIntData(SKILL_TURNWINDMILL, 1); // 1. ???????? ??????? ???
				
				local pAttack = sq_GetCurrentAttackInfo(obj);			
				local attackRate = obj.sq_GetBonusRateWithPassive(SKILL_TURNWINDMILL, STATE_TURNWINDMILL, 0, 1.0); //0.?????(%)
				local term = obj.sq_GetIntData(SKILL_TURNWINDMILL, 0); // 0. ?????? ????

//update
                local skillLevel = sq_GetSkillLevel(obj, SKILL_TURNWINDMILL);		

                local freezeProc = sq_GetLevelData(obj, SKILL_TURNWINDMILL, 2, skillLevel);
                local freezeLevel = sq_GetLevelData(obj, SKILL_TURNWINDMILL,3, skillLevel);
                local freezeTime = sq_GetLevelData(obj, SKILL_TURNWINDMILL, 4, skillLevel);
//endupdate
				if(obj.isMyControlObject())
				{
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(1); // 
					sq_BinaryWriteDword(distance); // 
					sq_BinaryWriteDword(attackRate); // 
					sq_BinaryWriteDword(term); //
					sq_BinaryWriteDword(0); // 		

					

//update 
                    local skill_level2 = sq_GetSkillLevel(obj, SKILL_ICEMASTER);
                    if(skill_level2 > 0)
                    {

                        sq_BinaryWriteDword(0); // 		
                        sq_BinaryWriteDword(freezeProc); // 		
                        sq_BinaryWriteDword(freezeLevel + sq_GetLevelData(obj, SKILL_ICEMASTER , 1, skill_level2) ); // 		
                        sq_BinaryWriteDword(freezeTime); // 		
                    }else{
                        sq_BinaryWriteDword(0); // 		
                        sq_BinaryWriteDword(0); // 		
                        sq_BinaryWriteDword(0); // 		
                        sq_BinaryWriteDword(0); // 		
                    }


//endupdate
					obj.sq_SendCreatePassiveObjectPacket(24251, 0, fireOffsetX, fireOffsetY + 1, fireOffsetZ); // po_ATTurnWidmill.nut
					
					local dirFiringSwitch = obj.sq_GetIntData(SKILL_TURNWINDMILL, 3);// 3. ??????? ???? ???? ?????? on/off?????
					
					if(dirFiringSwitch)
					{
						local dir = obj.sq_GetIntData(SKILL_TURNWINDMILL, 4);// 4. 3???? on???

						sq_BinaryStartWrite();
						sq_BinaryWriteDword(0); // 
						sq_BinaryWriteDword(distance); // 
						sq_BinaryWriteDword(attackRate); // 
						sq_BinaryWriteDword(term); //
						sq_BinaryWriteDword(1); //
						sq_BinaryWriteDword(dir); //
//update 
                        local skill_level2 = sq_GetSkillLevel(obj, SKILL_ICEMASTER);
                        if(skill_level2 > 0)
                        {
                            sq_BinaryWriteDword(freezeProc); // 		
                            sq_BinaryWriteDword(freezeLevel + sq_GetLevelData(obj, SKILL_ICEMASTER , 1, skill_level2) ); // 		
                            sq_BinaryWriteDword(freezeTime); // 		
                        }else{
                            sq_BinaryWriteDword(0); // 		
                            sq_BinaryWriteDword(0); // 		
                            sq_BinaryWriteDword(0); // 		
                        }
//endupdate

						obj.sq_SendCreatePassiveObjectPacket(24251, 0, fireOffsetX, fireOffsetY + 1, fireOffsetZ); // po_ATTurnWidmill.nut
					}
					
					
					local cnt = obj.getVar("cnt").get_vector(0);
					cnt = cnt + 1;			
					obj.getVar("cnt").set_vector(0, cnt);

				}
				
				obj.getVar().set_vector(0, 1);
			}
		}
	}

}

function onEndCurrentAni_TurnWindmill(obj)
{

	if(!obj) return;
	
	if(!obj.isMyControlObject()) {
		return;
	}

	local substate = obj.getSkillSubState();
	
	local cnt = obj.getVar("cnt").get_vector(0);
	
	local maxCnt = obj.sq_GetIntData(SKILL_TURNWINDMILL, 2); // 2. ?????? ???????

	print(" cnt:" + cnt + " maxCnt:" + maxCnt);	
	if(cnt >= maxCnt)
	{

		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		return;
	}
	

	if(substate == SUB_STATE_TURNWINDMILL_0) {
	
		// IRDSQRCharacter.pushPassiveObj("Character/ATMage/TurnWindmill/po_ATTurnWidmill.nut", 24251)
		local fireOffsetX = 100;
		local fireOffsetY = 0;
		local fireOffsetZ = 13;
		
		local distance = obj.sq_GetIntData(SKILL_TURNWINDMILL, 1); // 1. ???????? ??????? ???
		
		local pAttack = sq_GetCurrentAttackInfo(obj);			
		local attackRate = obj.sq_GetBonusRateWithPassive(SKILL_TURNWINDMILL, STATE_TURNWINDMILL, 0, 1.0); //0.?????(%)
		local term = obj.sq_GetIntData(SKILL_TURNWINDMILL, 0); // 0. ?????? ????

		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(0); // 
		sq_BinaryWriteDword(distance); // 
		sq_BinaryWriteDword(attackRate); // 
		sq_BinaryWriteDword(term); //
		sq_BinaryWriteDword(0); //			
		sq_BinaryWriteDword(0); //
		obj.sq_SendCreatePassiveObjectPacket(24251, 0, fireOffsetX, fireOffsetY + 1, fireOffsetZ); // po_ATTurnWidmill.nut

		local dirFiringSwitch = obj.sq_GetIntData(SKILL_TURNWINDMILL, 3);// 3. ??????? ???? ???? ?????? on/off?????
		
		if(dirFiringSwitch)
		{
			local dir = obj.sq_GetIntData(SKILL_TURNWINDMILL, 4);// 4. 3???? on???

			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0); // 
			sq_BinaryWriteDword(distance); // 
			sq_BinaryWriteDword(attackRate); // 
			sq_BinaryWriteDword(term); //
			sq_BinaryWriteDword(2); //
			sq_BinaryWriteDword(dir); //
			obj.sq_SendCreatePassiveObjectPacket(24251, 0, fireOffsetX, fireOffsetY + 1, fireOffsetZ); // po_ATTurnWidmill.nut
		}
		
		local cnt = obj.getVar("cnt").get_vector(0);			
		cnt = cnt + 1;			
		obj.getVar("cnt").set_vector(0, cnt);	
	
		if(cnt >= maxCnt)
		{
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			return;
		}
		else
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_TURNWINDMILL_1); // substate????
			obj.sq_AddSetStatePacket(STATE_TURNWINDMILL, STATE_PRIORITY_IGNORE_FORCE, true);
		}
	}
	else if(substate == SUB_STATE_TURNWINDMILL_1) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_TURNWINDMILL_0); // substate????
		obj.sq_AddSetStatePacket(STATE_TURNWINDMILL, STATE_PRIORITY_IGNORE_FORCE, true);
		//obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}

}

function onKeyFrameFlag_TurnWindmill(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();

	return false;

}

function onEndState_TurnWindmill(obj, new_state)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
        local damager = obj.getVar("dama").get_obj_vector(0);
        local atk = obj.sq_GetBonusRateWithPassive(SKILL_TURNWINDMILL, STATE_TURNWINDMILL, 0, 1.0);

        if (damager)
        {
            sendIcecraft(obj,damager,atk);

        }
        return true;



}

function onAfterSetState_TurnWindmill(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

}

