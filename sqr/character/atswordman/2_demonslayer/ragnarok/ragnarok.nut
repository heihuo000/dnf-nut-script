

function checkExecutableSkill_Ragnarok(CQeus7osDNSOS1qC)
{
	if (!CQeus7osDNSOS1qC) return false
local CQ4BnFLQUsD737iUA5z = CQeus7osDNSOS1qC.sq_IsUseSkill(166)
if (CQ4BnFLQUsD737iUA5z)
	{
		CQeus7osDNSOS1qC.getVar("Ragnarok").clear_vector()
CQeus7osDNSOS1qC.getVar("Ragnarok").push_vector(CQeus7osDNSOS1qC.getXPos())
CQeus7osDNSOS1qC.getVar("Ragnarok").push_vector(CQeus7osDNSOS1qC.getYPos())
local CQQGG3pkS4cBBpuW = CQeus7osDNSOS1qC.getVar("Ragnarok")
local CQLEnTh2lkZG4cuQ5L = sq_flashScreen(CQeus7osDNSOS1qC,150, 10500, 300, 255, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQQGG3pkS4cBBpuW.setObject(0,CQLEnTh2lkZG4cuQ5L)
CQeus7osDNSOS1qC.sq_IntVectClear()
CQeus7osDNSOS1qC.sq_IntVectPush(0)
CQeus7osDNSOS1qC.sq_AddSetStatePacket(166, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Ragnarok(CQlwMrNppEqKNKyn9TeI)
{
	if (!CQlwMrNppEqKNKyn9TeI) return false
return true
}

function onSetState_Ragnarok(obj, CQ7ddMwRenuyM6PqT5B, CQrMAjjFHi9mXoOy, CQCHcQMufMIlH9Oeu4)
{
	if(!obj) return
local CQcaCOyYIvk9CHIoaQBe = obj.sq_GetVectorData(CQrMAjjFHi9mXoOy, 0)
obj.setSkillSubState(CQcaCOyYIvk9CHIoaQBe)
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,	SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);	
switch(CQcaCOyYIvk9CHIoaQBe)
	{
	case 0:
		obj.sq_StopMove()
local CQAecBxB3AH1JYstP = obj.getObjectManager()
local CQdcXR5AbVbKSLsaNTU = CQAecBxB3AH1JYstP.getFieldXPos(400+CFG_SCREEN_WIDTH_OFFSETX, ENUM_DRAWLAYER_NORMAL)
local CQyfemHWXcVOsuai = CQAecBxB3AH1JYstP.getFieldYPos(500, 0, ENUM_DRAWLAYER_NORMAL)
local CQN16si8kOeuD7EI75 = obj.getDirection()
local CQbJsXYXD65mIpEpfQo8 = obj.getObjectManager()
local CQFsTdCr8lplocpAm = CQbJsXYXD65mIpEpfQo8.getFieldXPos(CQN16si8kOeuD7EI75 == ENUM_DIRECTION_LEFT ? (800+2*CFG_SCREEN_WIDTH_OFFSETX):0, ENUM_DRAWLAYER_NORMAL)
local CQgWJbslQsRdOKoseT4 = CQbJsXYXD65mIpEpfQo8.getFieldYPos(0, 0, ENUM_DRAWLAYER_NORMAL)
local CQivmpm5M4A1EvFF = CQAecBxB3AH1JYstP.getFieldZPos(200, 0, ENUM_DRAWLAYER_NORMAL)
if(obj.isMyControlObject())
		{
			sq_SetMyShake(obj,12,400)
sq_flashScreen(obj,0,120,540,204,sq_RGB(255,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
createPooledObjEff(obj, "character/swordman/effect/animation/atragnarok/transformation/rtransformation_body.ani", CQFsTdCr8lplocpAm, CQgWJbslQsRdOKoseT4, CQivmpm5M4A1EvFF, ENUM_DRAWLAYER_COVER, CQN16si8kOeuD7EI75)
obj.sq_StartWrite()
obj.sq_WriteDword(166)
obj.sq_WriteDword(0)
obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(166, -1, 0, getATSwordmanBonus(obj,1.0,166)))
obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(166, -1, 2, getATSwordmanBonus(obj,1.0,166)))
obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(166, -1, 3, getATSwordmanBonus(obj,1.0,166)))
obj.sq_WriteDword(sq_GetLevelData(obj,166, 1, sq_GetSkillLevel(obj, 166)))
obj.sq_WriteDword(sq_GetIntData(obj,166, 1))
sq_SendCreatePassiveObjectPacketPos(obj, 24383, 0, CQdcXR5AbVbKSLsaNTU, CQyfemHWXcVOsuai, 0)
}
		obj.setCurrentAnimation(null)
break
}
}


function onEndCurrentAni_Ragnarok(CQ1bJ4RsxmxKyZDPp)
{
	if(!CQ1bJ4RsxmxKyZDPp) return
local CQjhmlVqapLXaiSa = CQ1bJ4RsxmxKyZDPp.getSkillSubState()
switch(CQjhmlVqapLXaiSa)
	{
	case 0:
	
		CQ1bJ4RsxmxKyZDPp.sq_IntVectClear()
CQ1bJ4RsxmxKyZDPp.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Ragnarok(CQE41WIjR2mSu8SDV4, CQ4ZiDTJWnMoeEAO2QOf, CQQPR12o4itQiYAH6, CQLyDkFnnM8crLPScTf)
{
	if(!CQE41WIjR2mSu8SDV4 || CQLyDkFnnM8crLPScTf)	return false
local CQlnvwt1AvsRmnOL = CQE41WIjR2mSu8SDV4.getSkillSubState()
Calldaimus_onAttack(CQE41WIjR2mSu8SDV4,CQ4ZiDTJWnMoeEAO2QOf, CQQPR12o4itQiYAH6, CQLyDkFnnM8crLPScTf)
switch(CQlnvwt1AvsRmnOL)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Ragnarok(CQIjVPzFTAj3W7OGQ5, CQ75YN4yoVFXqoICWQYN)
{
	if(!CQIjVPzFTAj3W7OGQ5) return
if (!CQIjVPzFTAj3W7OGQ5) return false
switch(CQ75YN4yoVFXqoICWQYN)
	{
	case 4:
		CQIjVPzFTAj3W7OGQ5.sq_PlaySound("SW_RAGNAROK_02")
break
case 7:
		CQIjVPzFTAj3W7OGQ5.sq_PlaySound("SW_RAGNAROK_03")
break
case 9:
		CQIjVPzFTAj3W7OGQ5.sq_PlaySound("SW_RAGNAROK_04")
break
}
}

function onEndState_Ragnarok(CQrXVgpfBcvSv9sKD, CQCAWqbBwOColJsNKTG)
{
	if(!CQrXVgpfBcvSv9sKD) return
if(CQCAWqbBwOColJsNKTG != 166)
	{
		CQrXVgpfBcvSv9sKD.sq_SetCurrentPos(CQrXVgpfBcvSv9sKD, CQrXVgpfBcvSv9sKD.getVar("Ragnarok").get_vector(0), CQrXVgpfBcvSv9sKD.getVar("Ragnarok").get_vector(1), 0)
local CQcu8I9tH6wwbvaX = CQrXVgpfBcvSv9sKD.getVar("Ragnarok").getObject(0)
if(CQcu8I9tH6wwbvaX)
		{
			local CQAmICZcdl3czZH2Mk = sq_GetCNRDObjectToFlashScreen(CQcu8I9tH6wwbvaX)
if(CQAmICZcdl3czZH2Mk)
				CQAmICZcdl3czZH2Mk.fadeOut()
}
	}
	
}

function onProc_Ragnarok(CQdTlfE8ssiRhUHBja1u)
{
	if(!CQdTlfE8ssiRhUHBja1u) return
local CQy7LUUO24f4x8GLz = CQdTlfE8ssiRhUHBja1u.getSkillSubState()
}

function onKeyFrameFlag_Ragnarok(CQNVQEMetmPXjEFMvQQ, CQbDLZAlZplSdfFC)
{
	if (!CQNVQEMetmPXjEFMvQQ) return false
switch(CQbDLZAlZplSdfFC)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Ragnarok(CQFoq8eLj2JGkKD3IT)
{
	if(!CQFoq8eLj2JGkKD3IT) return
local CQgp3vkaSnUafbSNSaEb = CQFoq8eLj2JGkKD3IT.getSkillSubState()
switch(CQgp3vkaSnUafbSNSaEb)
	{
	case 0:
		
		break
}
}