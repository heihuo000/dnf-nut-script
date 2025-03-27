// ��� �������½�ų ����

// ���
SUB_STATE_START		<- 0
SUB_STATE_LOOP		<- 1
SUB_STATE_END		<- 2

// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_AvengerGuard(obj, state, datas, isResetTimer)
{	
 	if(obj == NULL && isAvengerAwakenning(obj) == false)
 		return;

	local sq_var = obj.getVar();
	local substate = obj.sq_getVectorData(datas, 0);
	local direction = obj.sq_getVectorData(datas, 1);
	obj.setSkillSubState(substate);
	obj.sq_stopMove();

	local ani = null;
	if (substate == SUB_STATE_START)
	{
		// ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�.
		ani = obj.getVar().GetAnimationMap("AVENGER_GUARD_START", "Character/Priest/Animation/AvengerGuard/AvengerGuardStart.ani");
		obj.setCurrentAnimation(ani);

		// ���� �������
		local appendage = null;
	
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Appendage/Character/ap_avenger_guard.nut"))
		{
			CNSquirrelAppendage.sq_RemoveAppendage(obj, "Appendage/Character/ap_avenger_guard.nut");
		}
		
		obj.sq_PlaySound("DGUARDIAN_BACK_1");
		appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_AVENGER_GUARD, true, "Appendage/Character/ap_avenger_guard.nut", false);
				
		if (appendage) 
		{
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, APID_MAGIC_SHIELD, true);
		}
	}
	else if (substate == SUB_STATE_LOOP)
	{
		ani = obj.getVar().GetAnimationMap("AVENGER_GUARD_LOOP", "Character/Priest/Animation/AvengerGuard/AvengerGuardLoop.ani");
		obj.setCurrentAnimation(ani);
	}
	else if (substate == SUB_STATE_END)
	{
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Appendage/Character/ap_avenger_guard.nut"))
			CNSquirrelAppendage.sq_RemoveAppendage(obj, "Appendage/Character/ap_avenger_guard.nut");
		ani = obj.getVar().GetAnimationMap("AVENGER_GUARD_END", "Character/Priest/Animation/AvengerGuard/AvengerGuardEnd.ani");
		obj.setCurrentAnimation(ani);
	}
}

// prepareDraw �Լ� �Դϴ�..
function prepareDraw_AvengerGuard(obj)
{
	if(!obj) return;
}

function onDamage_AvengerGuard(obj, attacker, boundingBox)
{
	if(!obj) return;

	obj.sq_setShake(obj, 2, 300);
	return;
}

// loop �κ��Դϴ� ismycontrol�� ������ ���� ����� ��� object���� �̰��� ��ġ�Ե˴ϴ�.
function onProc_AvengerGuard(obj)
{
 	if(obj == NULL && isAvengerAwakenning(obj) == false)
 		return;
}

// loop �κ��Դϴ� ismycontrol ȣ��Ʈ�� ������ object�� �̰��� ���ϴ�. setstate �����̳� �нú������Ʈ ���� , ��� ó���մϴ�.
function onProcCon_AvengerGuard(obj)
{
 	if(obj == NULL && isAvengerAwakenning(obj) == false)
 		return;
	
	local pAni = obj.sq_getCurrentAni();
	local bEnd = obj.sq_ani_IsEnd(pAni);
	local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);
	
	local subState = obj.getSkillSubState();
        
	if(bEnd) 
	{
		if (subState == SUB_STATE_START)
		{
 			obj.sq_IntVectClear();
 			obj.sq_IntVectPush(SUB_STATE_LOOP);
 			obj.sq_IntVectPush(obj.getDirection());
 			obj.sq_addSetStatePacket(STATE_AVENGER_GUARD, STATE_PRIORITY_USER, true);
		}
		else if (subState == SUB_STATE_LOOP)
		{
 			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_END);
 			obj.sq_IntVectPush(obj.getDirection());
 			obj.sq_addSetStatePacket(STATE_AVENGER_GUARD, STATE_PRIORITY_USER, true);
		}
		else if (subState == SUB_STATE_END)
		{
 			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Appendage/Character/ap_avenger_guard.nut"))
 				CNSquirrelAppendage.sq_RemoveAppendage(obj, "Appendage/Character/ap_avenger_guard.nut");

			obj.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
	}
}

function onAfterSetState_AvengerGuard(obj, state, datas, isResetTimer)
{
 	if(obj == NULL && isAvengerAwakenning(obj) == false)
 		return;
}

function checkExecutableSkill_AvengerGuard(obj)  
{
 	if(obj == NULL && isAvengerAwakenning(obj) == false)
 		return;

	local b_useskill = obj.sq_IsUseSkill(SKILL_AVENGER_GUARD);

	if(b_useskill) 
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_START); // substate����
		obj.sq_IntVectPush(obj.getDirection()); // substate����
		obj.sq_addSetStatePacket(STATE_AVENGER_GUARD, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	
	
	return false;
}

function checkCommandEnable_AvengerGuard(obj)
{
	// ��� ���� ���¿����� ��� ������ ��ų�� ��ҿ� falseó���մϴ�.
	return false;
}
