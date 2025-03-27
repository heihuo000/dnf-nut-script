ENUM_ICE_CRASH_SUBSTATE_START <-0 ;			  
ENUM_ICE_CRASH_SUBSTATE_LOOP  <-1 ;			  
ENUM_ICE_CRASH_SUBSTATE_LOOP_ATTACKING  <-2 ; 
ENUM_ICE_CRASH_SUBSTATE_END   <-3 ;			  

ENUM_ICE_CRASH_TIMER_SPIN <- 0;
ENUM_ICE_CRASH_MULTI_HIT  <- 1;

VAR_ICE_CRASH <-0


function setCharacterFristAnimation_IceCrash(obj)
{
    local level = sq_GetSkillLevel(obj, SKILL_ICE_CRASH );		
    if (level > 0)
    {
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/icecrashend.ani");
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/icecrashloop.ani");
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/icecrashloopattack.ani");
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/icecrashstart.ani");
    }
}


function checkExecutableSkill_IceCrash(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_ICE_CRASH);
	if(b_useskill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(ENUM_ICE_CRASH_SUBSTATE_START); 
		obj.sq_AddSetStatePacket(STATE_ICE_CRASH , STATE_PRIORITY_USER, true);
		return true;
	}	
	return false;

}

function checkCommandEnable_IceCrash(obj)
{
	if(!obj)
		return false;

	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK) {
		
		return obj.sq_IsCommandEnable(SKILL_ICE_CRASH); 
	}
	
	return true;
}

function onEndState_IceCrash(obj, newState)
{
	if(!obj)
		return;

	if(newState != STATE_ICE_CRASH)
	{
		removeAllIceCrashAppendage(obj);
		sq_RemoveParticle("Character/Mage/Particle/IceCrashIceDust.ptl",obj);
	}
}

function onSetState_IceCrash(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
	local level	       = sq_GetSkillLevel(obj, SKILL_ICE_CRASH);
	local spinDistance = sq_GetIntData(obj, SKILL_ICE_CRASH, 0, level); 
	local spinSpeed    = sq_GetIntData(obj, SKILL_ICE_CRASH, 1, level); 
	local spinTime	   = (spinDistance.tofloat()/spinSpeed.tofloat()) * 1000.0;		
	local multiHitGap  = sq_GetLevelData(obj, SKILL_ICE_CRASH, 0, level);

	local subState = sq_GetVectorData(datas, 0);
	obj.setSkillSubState(subState);	
	if(subState == ENUM_ICE_CRASH_SUBSTATE_START) {
        obj.getVar("dama").clear_obj_vector();

		local attackPower = obj.sq_GetBonusRateWithPassive(SKILL_ICE_CRASH , STATE_ICE_CRASH, 1, 1.0);
		local var = obj.getVar();
		var.setBool(VAR_ICE_CRASH,true);
		
		obj.sq_StopMove();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE_CRASH_START);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_CRASH);	
		local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(currentAttackInfo, attackPower);
		sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);
		obj.sq_PlaySound("MW_ICECRASH");
	}
	else if(subState == ENUM_ICE_CRASH_SUBSTATE_LOOP) {		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE_CRASH_LOOP);
		obj.setTimeEvent(ENUM_ICE_CRASH_TIMER_SPIN,spinTime.tointeger(),1,false);
		obj.setTimeEvent(ENUM_ICE_CRASH_MULTI_HIT,multiHitGap,9999,false);		
	}	
	else if(subState == ENUM_ICE_CRASH_SUBSTATE_LOOP_ATTACKING) {
		
		if(!obj.isExistTimeEvent(ENUM_ICE_CRASH_TIMER_SPIN)) { 			
			obj.setTimeEvent(ENUM_ICE_CRASH_TIMER_SPIN,spinTime.tointeger(),1,false);
			obj.setTimeEvent(ENUM_ICE_CRASH_MULTI_HIT,multiHitGap,9999,false);	
		}
			
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE_CRASH_LOOP_ATTACK);
	}	
	else if(subState == ENUM_ICE_CRASH_SUBSTATE_END) {
		obj.sq_StopMove();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE_CRASH_END);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_CRASH_LAST);	
		
		sq_RemoveParticle("Character/Mage/Particle/IceCrashIceDust.ptl",obj);
		
		local attackPower = obj.sq_GetBonusRateWithPassive(SKILL_ICE_CRASH , STATE_ICE_CRASH, 2, 1.0);
		sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackPower);	
		sq_SetMyShake(obj,2,120);	
	}		


}

function onTimeEvent_IceCrash(obj, timeEventIndex, timeEventCount)
{	
	if(!obj)
		return false;

	if(!obj.isMyControlObject())
		return false;
		
	if(timeEventIndex == ENUM_ICE_CRASH_TIMER_SPIN)
	{	
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(ENUM_ICE_CRASH_SUBSTATE_END); 
		obj.sq_AddSetStatePacket(STATE_ICE_CRASH , STATE_PRIORITY_USER, true);
		return true; 
	}
	else if( timeEventIndex == ENUM_ICE_CRASH_MULTI_HIT )
	{		
		if(obj.getSkillSubState() == ENUM_ICE_CRASH_SUBSTATE_END)
			return true; 
			
		
		local sq_var = obj.getVar();  		
		local i=0;		
		local objectsSize = sq_var.get_obj_vector_size();
        obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICE_CRASH);	
		for(;i<objectsSize;++i)
		{
			local damager = sq_var.get_obj_vector(i);			
			if(damager)
				sq_SendHitObjectPacket(obj,damager,0,0,0);
		}
		
		
	}
	
	return false;	
} 

function removeAllIceCrashAppendage(obj)
{
	if(!obj)
		return;
	local sq_var = obj.getVar();  		
	local objectsSize = sq_var.get_obj_vector_size();
	
	for(local i=0;i<objectsSize;++i)
	{
		local damager = sq_var.get_obj_vector(i);
		if(damager)
			CNSquirrelAppendage.sq_RemoveAppendage(damager, "Character/ATMage/IceCrash/ap_IceCrash.nut");		
	}		
	sq_var.clear_obj_vector();
}

function prepareDraw_IceCrash(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

}

function onEndCurrentAni_IceCrash(obj)
{
	if(!obj) return;
	
	local subState = obj.getSkillSubState();
	
	if(subState	== ENUM_ICE_CRASH_SUBSTATE_START) {	
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(ENUM_ICE_CRASH_SUBSTATE_LOOP);
		obj.sq_AddSetStatePacket(STATE_ICE_CRASH, STATE_PRIORITY_USER, true);
	}
	else if(subState == ENUM_ICE_CRASH_SUBSTATE_END) {		

		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}	
	
}


function onBeforeAttack_IceCrash(obj, damager, boundingBox, isStuck)
{
	local subState = obj.getSkillSubState();
    local attackPower = 0;
    if (subState <  ENUM_ICE_CRASH_SUBSTATE_END)
    {

		local leftPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL);
		local rightPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL);
        local rate = 100;

        if (!leftPress && !rightPress)
        {
            rate = obj.sq_GetIntData(SKILL_ICE_CRASH, 3);
        }

        if (!sq_IsFixture(damager) && sq_IsGrabable(obj,damager))
        {


            attackPower = obj.sq_GetBonusRateWithPassive(SKILL_ICE_CRASH , STATE_ICE_CRASH, 1, 1.0 + rate.tofloat() / 100.0);


        }else{

            attackPower = obj.sq_GetBonusRateWithPassive(SKILL_ICE_CRASH , STATE_ICE_CRASH, 3, 1.0 + rate.tofloat() / 100.0);


        }
        sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackPower);	
    }
}


function onAttack_IceCrash(obj, damager, boundingBox, isStuck)
{
	if(!obj)
		return 0;

	local subState = obj.getSkillSubState();
	
	local var = obj.getVar();	
	if(subState <  ENUM_ICE_CRASH_SUBSTATE_END && !var.is_obj_vector(damager)) {
		if(sq_IsHoldable(obj,damager) && sq_IsGrabable(obj,damager) && !sq_IsFixture(damager)) {		
		
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_ICE_CRASH, false, "Character/ATMage/IceCrash/ap_IceCrash.nut", true);				 
			if(masterAppendage) {
				damager.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
				var.push_obj_vector(damager);
			}
		}
	}
	
	if(subState < ENUM_ICE_CRASH_SUBSTATE_LOOP_ATTACKING && var.get_obj_vector_size() > 0) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(ENUM_ICE_CRASH_SUBSTATE_LOOP_ATTACKING); 
		obj.sq_AddSetStatePacket(STATE_ICE_CRASH , STATE_PRIORITY_USER, true);
	}


    obj.getVar("dama").push_obj_vector(damager);

}

function onKeyFrameFlag_IceCrash(obj, flagIndex)
{
	if(!obj) return true;
	
	if(flagIndex == 1) {		
		obj.sq_SetStaticMoveInfo(0, 200, 100, false);	
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
	}
	else if(flagIndex == 2) {	

		local leftPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL);
		local rightPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL);
        local rate = 100;

        if (!leftPress && !rightPress)
        {
            rate = obj.sq_GetIntData(SKILL_ICE_CRASH, 2);
        }

		local level		  = sq_GetSkillLevel(obj, SKILL_ICE_CRASH);
		local speed = (sq_GetIntData(obj, SKILL_ICE_CRASH, 1, level) * rate) / 100;
			
		obj.sq_SetStaticMoveInfo(0, speed, speed, false);	
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);	
		
		sq_CreateParticle("Character/Mage/Particle/IceCrashIceDust.ptl",obj,0,0,50,true,100,500,100);		
	}
	else if(flagIndex == 3) {		
		removeAllIceCrashAppendage(obj);
	}
    else if(flagIndex == 10) {		

        local damager = obj.getVar("dama").get_obj_vector(0);
        local atk = obj.sq_GetBonusRateWithPassive(SKILL_ICE_CRASH , STATE_ICE_CRASH, 3, 1.0);

        if (damager)
        {
            sendIcecraft(obj,damager,atk);

        }

	}
	return true;

}

function onEndState_IceCrash(obj, new_state)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
        local damager = obj.getVar("dama").get_obj_vector(0);
        local atk = obj.sq_GetBonusRateWithPassive(SKILL_ICE_CRASH , STATE_ICE_CRASH, 3, 1.0);

        if (damager)
        {
            sendIcecraft(obj,damager,atk);

        }
        return true;

}
