function procAppend_ATSwordman_SWordMaster(CQ2sLwRGx3vU1w7BhS)
{
	procAppend_ATSwordman_Drawsword(CQ2sLwRGx3vU1w7BhS)
procAppend_ATSwordman_Bladesoul(CQ2sLwRGx3vU1w7BhS)
procAppend_ATSwordman_Magicswordshoot(CQ2sLwRGx3vU1w7BhS)
return
}
function procAppend_ATSwordman_Drawsword(CQmrQPViJUCTCR6ZldEK)
{
	local CQJv3BIRRFe92O5MY = sq_GetSkillLevel(CQmrQPViJUCTCR6ZldEK, 17)
if(CQJv3BIRRFe92O5MY > 0)
	{
		local CQjgqgqNIf4fVj5CU97 = "character/atswordman/1_swordmaster/drawsword/ap_drawsword.nut"
if(!CNSquirrelAppendage.sq_IsAppendAppendage(CQmrQPViJUCTCR6ZldEK, CQjgqgqNIf4fVj5CU97))
		{
			CNSquirrelAppendage.sq_AppendAppendage(CQmrQPViJUCTCR6ZldEK, CQmrQPViJUCTCR6ZldEK, -1, false, CQjgqgqNIf4fVj5CU97, true)
}
	}
	return
}

function procAppend_ATSwordman_Bladesoul(obj)
{
	local CQXcwjTYTTPYiLLU = sq_GetSkillLevel(obj, 15)
	if(CQXcwjTYTTPYiLLU < 1)
		return
	local CQQOhCt9X9AALNhXGYz = sq_GetIntData(obj,15, 2)
	if(IsInterval_Bladesoul(obj, CQQOhCt9X9AALNhXGYz))
	{
		local CQLtFdzAkrziFeg2 = sq_GetLevelData(obj,15, 2, sq_GetSkillLevel(obj, 15))
		local objman = obj.getObjectManager()
		for(local i=0; i<objman.getCollisionObjectNumber(); ++i)
		{
			local cobj = objman.getCollisionObject(i)
			if(cobj && obj.isEnemy(cobj) && cobj.isObjectType(OBJECTTYPE_ACTIVE)&&cobj.isInDamagableState(obj))
			{
				local CQc5B8xIMst3EBf8 = "character/atswordman/1_swordmaster/bladesoul/ap_bladesoultar.nut"
				if(CNSquirrelAppendage.sq_IsAppendAppendage(cobj, CQc5B8xIMst3EBf8))
					continue
				local CQAXtvZQc57ZSQd4uS = CNSquirrelAppendage.sq_AppendAppendage(cobj, obj, -1, false, CQc5B8xIMst3EBf8, false)
				CQAXtvZQc57ZSQd4uS.sq_SetValidTime(CQLtFdzAkrziFeg2)
				CNSquirrelAppendage.sq_Append(CQAXtvZQc57ZSQd4uS, cobj, obj, true)
			}
		}
	}
}

function IsInterval_Bladesoul(CQdA9iE5sqaAsM9fEdhr, CQyuPJnKRHhiiI97O)
{
	if (!CQdA9iE5sqaAsM9fEdhr)
		return false
local CQNUx6fpW3FQIh8hD9s = CQdA9iE5sqaAsM9fEdhr.getVar("BladesoulInterval").get_ct_vector(0)
if (!CQNUx6fpW3FQIh8hD9s)
	{
		CQdA9iE5sqaAsM9fEdhr.getVar("BladesoulInterval").clear_ct_vector()
CQdA9iE5sqaAsM9fEdhr.getVar("BladesoulInterval").push_ct_vector()
CQNUx6fpW3FQIh8hD9s = CQdA9iE5sqaAsM9fEdhr.getVar("BladesoulInterval").get_ct_vector(0)
CQNUx6fpW3FQIh8hD9s.Reset()
CQNUx6fpW3FQIh8hD9s.Start(10000,0)
return true
}
	local CQbTZxCjLUYxoA7d = CQNUx6fpW3FQIh8hD9s.Get()
if(CQbTZxCjLUYxoA7d > CQyuPJnKRHhiiI97O)
	{
		CQNUx6fpW3FQIh8hD9s.Reset()
CQNUx6fpW3FQIh8hD9s.Start(10000,0)
return true
}
	return false
}
function procAppend_ATSwordman_Magicswordshoot(CQF7wys2nFXfWql67V)
{
	local CQgV5FkFAfQ3pNTgfYKx = sq_GetSkillLevel(CQF7wys2nFXfWql67V, 138)
if(CQgV5FkFAfQ3pNTgfYKx < 1)
		return
local CQoDw31n6b35tek9j = CQF7wys2nFXfWql67V.sq_GetSkillLoad(138)
if(!CQoDw31n6b35tek9j)
		CQF7wys2nFXfWql67V.sq_AddSkillLoad(138, 101, 0, sq_GetIntData(CQF7wys2nFXfWql67V,138, 9))
return
}
function procAppend_ATSwordman_Usir(obj)
{
	local CQmqErrFB9dFbOjf = sq_GetSkillLevel(obj, 198)
if(CQmqErrFB9dFbOjf < 1)
		return
if(IsInterval_Usir(obj, 2000))
	{
		local objman = obj.getObjectManager()
for(local i=0; i<objman.getCollisionObjectNumber(); ++i)
		{
			local cobj = objman.getCollisionObject(i)
			if(cobj && obj.isEnemy(cobj) && cobj.isObjectType(OBJECTTYPE_ACTIVE)&&cobj.isInDamagableState(obj))
			{
				local CQ5F1wvPIwnhUMRT1YN = "character/atswordman/4_darktempler/usir/ap_usir.nut"
if(!CNSquirrelAppendage.sq_IsAppendAppendage(obj, CQ5F1wvPIwnhUMRT1YN))
					local CQwGuO8r2KB5crRb = CNSquirrelAppendage.sq_AppendAppendage(cobj, obj, -1, false, CQ5F1wvPIwnhUMRT1YN, true)
}
		}
	}
}
function IsInterval_Usir(CQZEMBL8v5rVkhfx9d, CQzwugpZZq6FYAdmbtdA)
{
	if (!CQZEMBL8v5rVkhfx9d)
		return false
local CQOxfmbsjHEETkdvQ = CQZEMBL8v5rVkhfx9d.getVar("Usir").get_ct_vector(0)
if (!CQOxfmbsjHEETkdvQ)
	{
		CQZEMBL8v5rVkhfx9d.getVar("Usir").clear_ct_vector()
CQZEMBL8v5rVkhfx9d.getVar("Usir").push_ct_vector()
CQOxfmbsjHEETkdvQ = CQZEMBL8v5rVkhfx9d.getVar("Usir").get_ct_vector(0)
CQOxfmbsjHEETkdvQ.Reset()
CQOxfmbsjHEETkdvQ.Start(10000,0)
return true
}
	local CQVfAsBlSggrRBxz = CQOxfmbsjHEETkdvQ.Get()
if(CQVfAsBlSggrRBxz > CQzwugpZZq6FYAdmbtdA)
	{
		CQOxfmbsjHEETkdvQ.Reset()
CQOxfmbsjHEETkdvQ.Start(10000,0)
return true
}
	return false
}
function procAppend_ATSwordman_Dualweapon(CQY1cCO57USvlwxUiS)
{
	local CQSJCdQJqFxhg1zYJd5j = sq_GetSkillLevel(CQY1cCO57USvlwxUiS, 202)
if(CQSJCdQJqFxhg1zYJd5j > 0)
	{
		local CQfsrnhqNfZ68OlQX = "character/atswordman/2_vegabond/dualweapon/ap_dualweapon.nut"
if(!CNSquirrelAppendage.sq_IsAppendAppendage(CQY1cCO57USvlwxUiS, CQfsrnhqNfZ68OlQX))
			CNSquirrelAppendage.sq_AppendAppendage(CQY1cCO57USvlwxUiS, CQY1cCO57USvlwxUiS, -1, false, CQfsrnhqNfZ68OlQX, true)
}
	return
}
function procAppend_ATSwordman_Ecstasy(CQur7ENjxvqVhjlnNBW)
{
	local CQMYeLA1aS1N9STr = sq_GetSkillLevel(CQur7ENjxvqVhjlnNBW, 106)
if(CQMYeLA1aS1N9STr < 1)
		return
local CQnR68xoR9yJ4lkqzV = CQur7ENjxvqVhjlnNBW.sq_GetSkillLoad(106)
local CQG2sY5nWr9INMkyvYO3 = sq_GetLevelData(CQur7ENjxvqVhjlnNBW,106, 0, CQMYeLA1aS1N9STr)
if(!CQnR68xoR9yJ4lkqzV)
	{
		CQur7ENjxvqVhjlnNBW.sq_AddSkillLoad(106, 59, 0, CQG2sY5nWr9INMkyvYO3)
CQnR68xoR9yJ4lkqzV = CQur7ENjxvqVhjlnNBW.sq_GetSkillLoad(106)
CQnR68xoR9yJ4lkqzV.setStartCool()
}
	else
	{
		if(!CQnR68xoR9yJ4lkqzV.isCooling())
		{
			local CQhKTiHMKOIt6ejem = CQnR68xoR9yJ4lkqzV.getInconIndex()
if(CQhKTiHMKOIt6ejem == 59)
			{
				CQur7ENjxvqVhjlnNBW.sq_RemoveSkillLoad(106)
CQur7ENjxvqVhjlnNBW.sq_AddSkillLoad(106, 58, 1, CQG2sY5nWr9INMkyvYO3)
}
		}
	}
	EcstasyRealseActiveStatus(CQur7ENjxvqVhjlnNBW)
return
}
function EcstasyRealseActiveStatus(CQpIKJuDb7kU12hiedM)
{
	local CQ3Wm5cyPwGTCPhW = CQpIKJuDb7kU12hiedM.sq_GetSkillLoad(106)
if(!CQ3Wm5cyPwGTCPhW)
		return
if(CQ3Wm5cyPwGTCPhW.isCooling())
		return
for(local CQqv2x6dkKb82kgEHB=1; CQqv2x6dkKb82kgEHB<18; CQqv2x6dkKb82kgEHB++)
	{
		if(sq_IsValidActiveStatus(CQpIKJuDb7kU12hiedM, CQqv2x6dkKb82kgEHB))
		{
			sq_ReleaseActiveStatus(CQpIKJuDb7kU12hiedM, CQqv2x6dkKb82kgEHB)
CQ3Wm5cyPwGTCPhW.use(1)
local CQKgoyaVi4VNVDvuZYRa = sq_GetLevelData(CQpIKJuDb7kU12hiedM,106, 1, sq_GetSkillLevel(CQpIKJuDb7kU12hiedM, 106))
local CQT32FUPVqeJKwvIB = "character/atswordman/2_vegabond/ecstasy/ap_ecstasy.nut"
local CQs4i3fcQH4IB1Yp2dE = CNSquirrelAppendage.sq_AppendAppendage(CQpIKJuDb7kU12hiedM, CQpIKJuDb7kU12hiedM, -1, false, CQT32FUPVqeJKwvIB, false)
CQs4i3fcQH4IB1Yp2dE.sq_SetValidTime(CQKgoyaVi4VNVDvuZYRa)
CQs4i3fcQH4IB1Yp2dE.setEnableIsBuff(true)
CQs4i3fcQH4IB1Yp2dE.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQpIKJuDb7kU12hiedM), 106, sq_GetSkillLevel(CQpIKJuDb7kU12hiedM, 106))
CNSquirrelAppendage.sq_Append(CQs4i3fcQH4IB1Yp2dE, CQpIKJuDb7kU12hiedM, CQpIKJuDb7kU12hiedM, true)
return
}
	}
}
function ForcePush_ATSwordman(CQMCaeVEjppBKVVpL,CQnSkPIku1RGDQ7AVBM,CQGiJNT37bAaLf7s,CQhmUg2GqDzWFs6o6V)
{
	local CQqT1qDUNNLbOg5Pccft = CQMCaeVEjppBKVVpL.getMp()
local CQK7iIWgxYmjGX5anAZ = sq_GetSkill(CQMCaeVEjppBKVVpL, CQnSkPIku1RGDQ7AVBM)
local CQTV1ClMaPM7Pm4D = CQK7iIWgxYmjGX5anAZ.getSpendMp(CQMCaeVEjppBKVVpL, -1)
if(!CQK7iIWgxYmjGX5anAZ.isInCoolTime() && CQqT1qDUNNLbOg5Pccft>CQTV1ClMaPM7Pm4D)
	{
		CQMCaeVEjppBKVVpL.setSkillCommandEnable(CQnSkPIku1RGDQ7AVBM , true)
if(CQMCaeVEjppBKVVpL.sq_IsEnterSkill(CQnSkPIku1RGDQ7AVBM) != -1)
		{
			CQMCaeVEjppBKVVpL.sendSetMpPacket(CQqT1qDUNNLbOg5Pccft - CQTV1ClMaPM7Pm4D)
CQMCaeVEjppBKVVpL.sq_IntVectClear()
local CQsDuf3uRVtBEB3OWt = CQGiJNT37bAaLf7s.len()
if(CQsDuf3uRVtBEB3OWt<1)
			{
				CQMCaeVEjppBKVVpL.sq_AddSetStatePacket(CQhmUg2GqDzWFs6o6V , STATE_PRIORITY_USER , true)
return
}
			foreach(substate in CQGiJNT37bAaLf7s)
				CQMCaeVEjppBKVVpL.sq_IntVectPush(substate)
CQMCaeVEjppBKVVpL.sq_AddSetStatePacket(CQhmUg2GqDzWFs6o6V , STATE_PRIORITY_USER , true)
}
	}
	return
}
function SendSetActiveStatus_Magicswordup(CQ6ofUovWx8GAa3HFV6j,CQeqSEvNLIssaR2SK,CQXlYZ9Ab5jOuO2LCAt,CQx8V9ZWPlFyIh1G,CQPdrvE95aYmoCMCjt)
{
	local CQ9MConXi3ClWqMKz9PJ = sq_GetSkillLevel(CQeqSEvNLIssaR2SK, 134)
local CQtHrJNIVUw9qNdNb = sq_GetSkillLevel(CQeqSEvNLIssaR2SK, 4)
local CQBa76PzQp3Mts9XqVR = 0.0
	local shugfyteoaishdfgusi = CQeqSEvNLIssaR2SK.sq_CreateCNRDAnimation("effect/animation/atchangesword/ui.ani")
if(sq_GetAniFrameNumber(shugfyteoaishdfgusi, 0)!=0)
	sq_SetFrameDelayTime(sq_GetCurrentAnimation(CQeqSEvNLIssaR2SK), 0, 800);
if(CQPdrvE95aYmoCMCjt)
		return
switch(CQXlYZ9Ab5jOuO2LCAt)
	{
	case 1:
		local CQveIcw6G1iKQg9J = sq_GetLevelData(CQeqSEvNLIssaR2SK,134, 3, CQ9MConXi3ClWqMKz9PJ)/10
if(CQtHrJNIVUw9qNdNb > 0 && CQeqSEvNLIssaR2SK.getWeaponSubType() == 0)
		{
			CQveIcw6G1iKQg9J = CQveIcw6G1iKQg9J + sq_GetLevelData(CQeqSEvNLIssaR2SK,4, 2, CQtHrJNIVUw9qNdNb)
CQBa76PzQp3Mts9XqVR = sq_GetLevelData(CQeqSEvNLIssaR2SK,4, 3, CQtHrJNIVUw9qNdNb)/100.0
}
		local CQDcTyjKdbfObP8BSA = CQeqSEvNLIssaR2SK.sq_GetBonusRateWithPassive(134, -1, 4, getATSwordmanBonus(CQeqSEvNLIssaR2SK,1.0+CQBa76PzQp3Mts9XqVR,134))
local CQRfKGMQsSPywm7LHdgE = sq_GetLevelData(CQeqSEvNLIssaR2SK,134, 5, CQ9MConXi3ClWqMKz9PJ)
sq_sendSetActiveStatusPacket(CQx8V9ZWPlFyIh1G, CQeqSEvNLIssaR2SK, ACTIVESTATUS_BURN, CQveIcw6G1iKQg9J.tofloat(), sq_GetSkillLevel(CQeqSEvNLIssaR2SK, 174), true, CQRfKGMQsSPywm7LHdgE,CQDcTyjKdbfObP8BSA)
break
case 2:
		local CQveIcw6G1iKQg9J = sq_GetLevelData(CQeqSEvNLIssaR2SK,134, 7, CQ9MConXi3ClWqMKz9PJ)/10
if(CQtHrJNIVUw9qNdNb > 0 && CQeqSEvNLIssaR2SK.getWeaponSubType() == 0)
		{
			CQveIcw6G1iKQg9J = CQveIcw6G1iKQg9J + sq_GetLevelData(CQeqSEvNLIssaR2SK,4, 2, CQtHrJNIVUw9qNdNb)
CQBa76PzQp3Mts9XqVR = sq_GetLevelData(CQeqSEvNLIssaR2SK,4, 3, CQtHrJNIVUw9qNdNb)/100.0
}
		local CQDcTyjKdbfObP8BSA = CQeqSEvNLIssaR2SK.sq_GetBonusRateWithPassive(134, -1, 8, getATSwordmanBonus(CQeqSEvNLIssaR2SK,1.0+CQBa76PzQp3Mts9XqVR,134))
local CQRfKGMQsSPywm7LHdgE = sq_GetLevelData(CQeqSEvNLIssaR2SK,134, 9, CQ9MConXi3ClWqMKz9PJ)
local CQHr2SJUh8N1cI5NlS = sq_GetLevelData(CQeqSEvNLIssaR2SK,134, 6, CQ9MConXi3ClWqMKz9PJ)
sq_sendSetActiveStatusPacket(CQx8V9ZWPlFyIh1G, CQeqSEvNLIssaR2SK, ACTIVESTATUS_FREEZE, CQveIcw6G1iKQg9J.tofloat(), CQHr2SJUh8N1cI5NlS, true, CQRfKGMQsSPywm7LHdgE)
break
case 3:
		local CQveIcw6G1iKQg9J = sq_GetLevelData(CQeqSEvNLIssaR2SK,134, 15, CQ9MConXi3ClWqMKz9PJ)/10
if(CQtHrJNIVUw9qNdNb > 0 && CQeqSEvNLIssaR2SK.getWeaponSubType() == 0)
			CQveIcw6G1iKQg9J = CQveIcw6G1iKQg9J + sq_GetLevelData(CQeqSEvNLIssaR2SK,4, 2, CQtHrJNIVUw9qNdNb)
local CQRfKGMQsSPywm7LHdgE = sq_GetLevelData(CQeqSEvNLIssaR2SK,134, 17, CQ9MConXi3ClWqMKz9PJ)
local CQHr2SJUh8N1cI5NlS = sq_GetLevelData(CQeqSEvNLIssaR2SK,134, 14, CQ9MConXi3ClWqMKz9PJ)
sq_sendSetActiveStatusPacket(CQx8V9ZWPlFyIh1G, CQeqSEvNLIssaR2SK, ACTIVESTATUS_BLIND, CQveIcw6G1iKQg9J.tofloat(), CQHr2SJUh8N1cI5NlS, true, CQRfKGMQsSPywm7LHdgE)
break
case 4:
		local CQveIcw6G1iKQg9J = sq_GetLevelData(CQeqSEvNLIssaR2SK,134, 11, CQ9MConXi3ClWqMKz9PJ)/10
if(CQtHrJNIVUw9qNdNb > 0 && CQeqSEvNLIssaR2SK.getWeaponSubType() == 0)
		{
			CQveIcw6G1iKQg9J = CQveIcw6G1iKQg9J + sq_GetLevelData(CQeqSEvNLIssaR2SK,4, 2, CQtHrJNIVUw9qNdNb)
CQBa76PzQp3Mts9XqVR = sq_GetLevelData(CQeqSEvNLIssaR2SK,4, 3, CQtHrJNIVUw9qNdNb)/100.0
}
		local CQDcTyjKdbfObP8BSA = CQeqSEvNLIssaR2SK.sq_GetBonusRateWithPassive(134, -1, 12, getATSwordmanBonus(CQeqSEvNLIssaR2SK,1.0+CQBa76PzQp3Mts9XqVR,134))
local CQRfKGMQsSPywm7LHdgE = sq_GetLevelData(CQeqSEvNLIssaR2SK,134, 13, CQ9MConXi3ClWqMKz9PJ)
sq_sendSetActiveStatusPacket(CQx8V9ZWPlFyIh1G, CQeqSEvNLIssaR2SK, ACTIVESTATUS_LIGHTNING, CQveIcw6G1iKQg9J.tofloat(), sq_GetSkillLevel(CQeqSEvNLIssaR2SK, 174), true, CQRfKGMQsSPywm7LHdgE,CQDcTyjKdbfObP8BSA)
break
}
}
function onUseAddloadDrawsword(CQh6ks5PbYH4WH3g)
{
	local CQSKukR8bz1rKaHoaqJ = CQh6ks5PbYH4WH3g.sq_GetSkillLoad(17)
if(CQSKukR8bz1rKaHoaqJ)
	{
		local CQxj8CQXK12X9Vd7k = CQSKukR8bz1rKaHoaqJ.getRemainLoadNumber()
if(CQxj8CQXK12X9Vd7k > 0)
		{
			CQSKukR8bz1rKaHoaqJ.decreaseLoadCount(1)
CQSKukR8bz1rKaHoaqJ.setStartCool()
}
	}
}
function GetCountloadDrawsword(CQP5Of3rbbuS4Q9hrBn)
{
	local CQ9XznFlOS9oNM9d = CQP5Of3rbbuS4Q9hrBn.sq_GetSkillLoad(17)
if(CQ9XznFlOS9oNM9d)
	{
		local CQtAZEt5jNIw5I8TES = CQ9XznFlOS9oNM9d.getRemainLoadNumber()
return CQtAZEt5jNIw5I8TES
}
	return 0
}
function CheckUseAddloadDrawsword(CQBuwZzsuYTcMh7gOciV,CQvU484qCPHRXA7zB,CQDkQvGjq7b42m6j294,CQR64obJFxVXVB5Y)
{
	local shugfyteoaishdfgusi = CQBuwZzsuYTcMh7gOciV.sq_CreateCNRDAnimation("effect/animation/atchangesword/ui.ani")
if(sq_GetAniFrameNumber(shugfyteoaishdfgusi, 0)!=0)
	sq_SetFrameDelayTime(sq_GetCurrentAnimation(CQBuwZzsuYTcMh7gOciV), 0, 800);
	if(sq_getGrowType(CQBuwZzsuYTcMh7gOciV) != 1)
		return
local CQiCEJ9p9IrSKwklfV = CQBuwZzsuYTcMh7gOciV.sq_GetState()
if(CQDkQvGjq7b42m6j294.rawin(CQiCEJ9p9IrSKwklfV))
		return
else
	{
		local CQ1Sj6Xha55oBRjnUYjA = sq_GetSkillLevel(CQBuwZzsuYTcMh7gOciV, 11)
if(CQ1Sj6Xha55oBRjnUYjA > 0 && CQBuwZzsuYTcMh7gOciV.getWeaponSubType() == 1)
		{
			CQBuwZzsuYTcMh7gOciV.getVar("Blademastery_Drawsword").setInt(0, CQvU484qCPHRXA7zB)
}
		onUseAddloadDrawsword(CQBuwZzsuYTcMh7gOciV)
}
}
function CheckForceDrawsword(CQUoGxa11qpaLOhcw,CQHqnyUFWaRrFjhqtdI,CQjlMGfbL3AvZSgb)
{
	local CQQ8u3CfhUxjGQgxLBdj = CQUoGxa11qpaLOhcw.sq_GetState()
local CQLBNleBPFL6PNRmV = true
if(CQjlMGfbL3AvZSgb.rawin(CQQ8u3CfhUxjGQgxLBdj))
		return CQjlMGfbL3AvZSgb[CQQ8u3CfhUxjGQgxLBdj]
else
	{
		if(GetCountloadDrawsword(CQUoGxa11qpaLOhcw) > 0)
			CQLBNleBPFL6PNRmV = true
else
			CQLBNleBPFL6PNRmV = false
}
	return CQLBNleBPFL6PNRmV
}
function Attack_BlademasteryDrawsword(CQlFyWkt51mVEefv1Vo, CQIGdS1cUbMGAgfw, CQ7EA1S8VSyaaPdUxA, CQrwckrOlB8ruk9Wb9o3)
{
	if(CQrwckrOlB8ruk9Wb9o3)
		return
local CQCxXwlepYsbsB9QQ = sq_GetSkillLevel(CQlFyWkt51mVEefv1Vo, 11)
if(CQCxXwlepYsbsB9QQ > 0 && CQlFyWkt51mVEefv1Vo.getWeaponSubType() == 1)
	{
		local CQcdePKldPjjiwzuWV5 = sq_GetSkillLevel(CQlFyWkt51mVEefv1Vo, 17)
local CQAM6BoZe7F6r1lr = sq_GetIntData(CQlFyWkt51mVEefv1Vo,11, 3)
local CQdHegva2zvBoOlpJA = sq_GetLevelData(CQlFyWkt51mVEefv1Vo,17, 0, CQcdePKldPjjiwzuWV5) + sq_GetLevelData(CQlFyWkt51mVEefv1Vo,11, 6, sq_GetSkillLevel(CQlFyWkt51mVEefv1Vo, 11))
local CQya6q8qvICGWhTtXdTa = 1
local CQNrasL4O5waqAkaN = 0
if(CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordTime").size_vector() > 0)
			CQNrasL4O5waqAkaN = CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordTime").get_vector(0)
else
			CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordTime").push_vector(0)
local CQbYkCpHhq3WtTkih9P = CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordTime").get_ct_vector(0)
if(!CQbYkCpHhq3WtTkih9P)
		{
			CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordTime").clear_ct_vector()
CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordTime").push_ct_vector()
CQbYkCpHhq3WtTkih9P = CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordTime").get_ct_vector(0)
CQbYkCpHhq3WtTkih9P.Reset()
CQbYkCpHhq3WtTkih9P.Start(10000,0)
}
		else
		{
			CQya6q8qvICGWhTtXdTa = CQbYkCpHhq3WtTkih9P.Get()
}
		
		if((CQya6q8qvICGWhTtXdTa - CQNrasL4O5waqAkaN) > 1000)
		{
			CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordCount").setInt(0, 0)
}
		
		local CQFRJfgmyaoyQNjO = CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordCount").getInt(0)
if(CQFRJfgmyaoyQNjO == CQAM6BoZe7F6r1lr)
		{
			CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordCount").setInt(0, 0)
local CQg2mnBhX3fUbehEvV = CQlFyWkt51mVEefv1Vo.sq_GetSkillLoad(17)
if(CQg2mnBhX3fUbehEvV)
			{
				local CQoK2EOMmUPlz2humcXQ = CQg2mnBhX3fUbehEvV.getRemainLoadNumber()
if(CQoK2EOMmUPlz2humcXQ < CQdHegva2zvBoOlpJA)
				{
					CQg2mnBhX3fUbehEvV.increaseLoadCount(1)
if(CQg2mnBhX3fUbehEvV.getRemainLoadNumber() < maxcount)
						CQg2mnBhX3fUbehEvV.setStartCool()
}
			}
		}
		else
			CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordCount").setInt(0, CQFRJfgmyaoyQNjO + 1)
CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordTime").clear_vector()
CQlFyWkt51mVEefv1Vo.getVar("BlademasteryDrawswordTime").push_vector(CQya6q8qvICGWhTtXdTa)
}
}
function BluntmasteryAddAppend(CQ2IUZwiDFl9nPgIs)
{
	local CQmW18jbz1KMxkRpA9v = sq_GetSkillLevel(CQ2IUZwiDFl9nPgIs, 13)
if(CQmW18jbz1KMxkRpA9v > 0 && CQ2IUZwiDFl9nPgIs.getWeaponSubType() == 2)
	{
		local CQJvivMfEbUKkSRA = "character/atswordman/1_swordmaster/bluntmastery/ap_bluntmasteryex.nut"
if(!CNSquirrelAppendage.sq_IsAppendAppendage(CQ2IUZwiDFl9nPgIs, CQJvivMfEbUKkSRA))
		{
			local CQ5gRiySMSNOYQfsZV = CNSquirrelAppendage.sq_AppendAppendage(CQ2IUZwiDFl9nPgIs, CQ2IUZwiDFl9nPgIs, -1, false, CQJvivMfEbUKkSRA, false)
if(CQ5gRiySMSNOYQfsZV)
			{
				CQ5gRiySMSNOYQfsZV.sq_SetValidTime(sq_GetLevelData(CQ2IUZwiDFl9nPgIs,13, 14, sq_GetSkillLevel(CQ2IUZwiDFl9nPgIs, 13)))
CQ5gRiySMSNOYQfsZV.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQ2IUZwiDFl9nPgIs), 13, CQmW18jbz1KMxkRpA9v)
CQ5gRiySMSNOYQfsZV.setEnableIsBuff(true)
CNSquirrelAppendage.sq_Append(CQ5gRiySMSNOYQfsZV, CQ2IUZwiDFl9nPgIs, CQ2IUZwiDFl9nPgIs, true)
}
		}
	}
}
function HeavyswordmasteryAddAppend(CQw3SJxtr9WyTMYF9)
{
	local CQZ4Y65cKY6URrcPgAl = sq_GetSkillLevel(CQw3SJxtr9WyTMYF9, 12)
if(CQw3SJxtr9WyTMYF9.getVar("WeaponcomboWeapon3").getBool(0) && CQZ4Y65cKY6URrcPgAl > 0 && CQw3SJxtr9WyTMYF9.getWeaponSubType() == 3)
	{
		local CQzZVxHCgPallhxJ = "character/atswordman/1_swordmaster/heavyswordmastery/ap_heavyswordmasteryex.nut"
if(!CNSquirrelAppendage.sq_IsAppendAppendage(CQw3SJxtr9WyTMYF9, CQzZVxHCgPallhxJ))
		{
			local CQOPWyuOP7h9gAxDcP = CNSquirrelAppendage.sq_AppendAppendage(CQw3SJxtr9WyTMYF9, CQw3SJxtr9WyTMYF9, -1, false, CQzZVxHCgPallhxJ, false)
if(CQOPWyuOP7h9gAxDcP)
			{
				CQOPWyuOP7h9gAxDcP.sq_SetValidTime(sq_GetIntData(CQw3SJxtr9WyTMYF9,12, 2))
CQOPWyuOP7h9gAxDcP.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQw3SJxtr9WyTMYF9), 12, CQZ4Y65cKY6URrcPgAl)
CQOPWyuOP7h9gAxDcP.setEnableIsBuff(true)
CNSquirrelAppendage.sq_Append(CQOPWyuOP7h9gAxDcP, CQw3SJxtr9WyTMYF9, CQw3SJxtr9WyTMYF9, true)
}
		}
	}
}
function Calldaimus_onAttack(CQ8yVGce4wDM8TzZu9wS,CQWUr3C6nIcKhNlHa, CQVk7lsLC5XO9elVPVC, CQc6IrmwTqQy41TLFca9)
{
	if(sq_GetSkillLevel(CQ8yVGce4wDM8TzZu9wS, 148) < 1 || CQc6IrmwTqQy41TLFca9)
		return
local CQAClVRkFE2mdWkG3 = sq_GetSkillLevel(CQ8yVGce4wDM8TzZu9wS, 148)
local CQdSLRV393uQ5jkX798 = sq_GetLevelData(CQ8yVGce4wDM8TzZu9wS,148, 0, CQAClVRkFE2mdWkG3)/10
local CQyiqUIEwU9xMSjJ = sq_GetLevelData(CQ8yVGce4wDM8TzZu9wS,148, 1, CQAClVRkFE2mdWkG3)
local CQNm3aTm1FORXlhBkV = sq_GetLevelData(CQ8yVGce4wDM8TzZu9wS,148, 2, CQAClVRkFE2mdWkG3)
sq_sendSetActiveStatusPacket(CQWUr3C6nIcKhNlHa, CQ8yVGce4wDM8TzZu9wS, ACTIVESTATUS_BLEEDING, CQdSLRV393uQ5jkX798.tofloat(), sq_GetSkillLevel(CQ8yVGce4wDM8TzZu9wS, 174), true, CQyiqUIEwU9xMSjJ,CQNm3aTm1FORXlhBkV)
}
function onGetMyPassiveObject_ATSwordman(CQMyhY9arZ2zTEuPZnN,CQhwVSZ1yFHz9dadw7,CQeUedUbMJqZmCxFG,CQSxY4Gbsqnd8xWmh)
{
	local CQxI6A6fxcjtnnKVH = CQMyhY9arZ2zTEuPZnN.getMyPassiveObjectCount(CQhwVSZ1yFHz9dadw7)
for(local CQPWeNJBaWFnx7J4ZAM = 0; CQPWeNJBaWFnx7J4ZAM < CQxI6A6fxcjtnnKVH; CQPWeNJBaWFnx7J4ZAM++)
	{
		local CQ9v6hiyRXYkjpJN = CQMyhY9arZ2zTEuPZnN.getMyPassiveObject(CQhwVSZ1yFHz9dadw7, CQPWeNJBaWFnx7J4ZAM)
if(!CQ9v6hiyRXYkjpJN) continue
if(CQ9v6hiyRXYkjpJN.getVar("skill").get_vector(0) == CQeUedUbMJqZmCxFG)
		{
			if(CQSxY4Gbsqnd8xWmh)
			{
				if(CQSxY4Gbsqnd8xWmh == CQ9v6hiyRXYkjpJN.getVar("state").get_vector(0))
					return CQ9v6hiyRXYkjpJN
}
		}
	}
	return null
}
function procAppend_ATSwordman_Blades(CQITVupiZWgq1sLx)
{
	if(sq_getGrowType(CQITVupiZWgq1sLx) != 0)
		return
if(IsInterval_ATSwordman(CQITVupiZWgq1sLx, 250,"Blades"))
	{
	}
	return
}
function IsInterval_ATSwordman(CQ77WHbbhXDzCvKkOW, CQrB749fylcdJZJvDVhQ,CQCFIzXS6sZ2VUJz2)
{
	if (!CQ77WHbbhXDzCvKkOW)
		return false
local CQcpltatmLqLK8HU6As = CQ77WHbbhXDzCvKkOW.getVar(CQCFIzXS6sZ2VUJz2).get_ct_vector(0)
if (!CQcpltatmLqLK8HU6As)
	{
		CQ77WHbbhXDzCvKkOW.getVar(CQCFIzXS6sZ2VUJz2).clear_ct_vector()
CQ77WHbbhXDzCvKkOW.getVar(CQCFIzXS6sZ2VUJz2).push_ct_vector()
CQcpltatmLqLK8HU6As = CQ77WHbbhXDzCvKkOW.getVar(CQCFIzXS6sZ2VUJz2).get_ct_vector(0)
CQcpltatmLqLK8HU6As.Reset()
CQcpltatmLqLK8HU6As.Start(10000,0)
return true
}
	local CQAELDUcBk1PDEGc = CQcpltatmLqLK8HU6As.Get()
if(CQAELDUcBk1PDEGc > CQrB749fylcdJZJvDVhQ)
	{
		CQcpltatmLqLK8HU6As.Reset()
CQcpltatmLqLK8HU6As.Start(10000,0)
return true
}
	return false
}

function ATSwordman_AddBonus_Trace(CQxPoVVSRpxViY4p,CQMwRP6X8XEpjekQ4)
{
	local CQ7Lus6lmE1aYICOs = 0.0;
	local CQbDqiwlzTSC369v6 = sq_GetSkillLevel(CQxPoVVSRpxViY4p, 228);
	if(CQbDqiwlzTSC369v6 < 1)
		return CQ7Lus6lmE1aYICOs;

	local CQVdRTS5SBDx9flKI = "character/atswordman/5_bladeshadows/trace/ap_trace.nut";
	local CQY1Srrs7ccRjI = CNSquirrelAppendage.sq_IsAppendAppendage(CQxPoVVSRpxViY4p, CQVdRTS5SBDx9flKI);
	if(CQbDqiwlzTSC369v6 > 0 && CQY1Srrs7ccRjI)
		CQ7Lus6lmE1aYICOs = sq_GetLevelData(CQxPoVVSRpxViY4p,228, 0, CQbDqiwlzTSC369v6)/1000.0;
	
	return CQ7Lus6lmE1aYICOs;
}

function ATSwordman_AddBonus_License(CQSJYSTQpPZ3dnTX,CQfsVMJjN7qZ5CmJ5M)
{
	local CQurWjiJez2SfqU = 0.0;
	local CQMYVwYpJsuo6dUZb = sq_GetSkillLevel(CQSJYSTQpPZ3dnTX, 123);
	if(CQMYVwYpJsuo6dUZb < 1)
		return CQurWjiJez2SfqU;
	
	CQurWjiJez2SfqU = sq_GetLevelData(CQSJYSTQpPZ3dnTX,123, 0, CQMYVwYpJsuo6dUZb)/1000.0;
	return CQurWjiJez2SfqU;
}

function ATSwordman_AddBonus_Infamous(CQhRrO8nR59Q1sn1,CQpg7BL1OqIc7gbVWi)
{
	local CQ33IRpF4ETR2Xb = 0.0;
	local CQqLlmgyb2H3BUvMJ = sq_GetSkillLevel(CQhRrO8nR59Q1sn1, 125);
	if(CQqLlmgyb2H3BUvMJ < 1)
		return CQ33IRpF4ETR2Xb;
	
	CQ33IRpF4ETR2Xb = sq_GetLevelData(CQhRrO8nR59Q1sn1,125, 0, CQqLlmgyb2H3BUvMJ)/1000.0;
	return CQ33IRpF4ETR2Xb;
}

function procRustynail(CQKOLsBfXUbX4V,CQTtqXOBkoVSNEY2)
{
	if (!CQKOLsBfXUbX4V || !CQTtqXOBkoVSNEY2) return;
	local CQsb3dQPiMrFZfcB4o = CQKOLsBfXUbX4V.getTopCharacter();
	local CQ6hqnhc8v5EGIx = CQKOLsBfXUbX4V.getXPos();
	local CQe43pN8QSprXhx1v = CQKOLsBfXUbX4V.getYPos();
	local CQXZoLtPMBRvHC = CQKOLsBfXUbX4V.getZPos();
	
	local CQxAg8xeccAhAqQ4 = CQTtqXOBkoVSNEY2.getXPos();	
	local CQOuFY5lsPx6JBQfAF = CQTtqXOBkoVSNEY2.getYPos();
	local CQ8UbiHZg7LVSa = CQTtqXOBkoVSNEY2.getZPos() + sq_GetObjectHeight(CQTtqXOBkoVSNEY2) / 2;
	
	local CQWkNHuatzmFsRqh = 552.0;
	local CQV6v5cqLsMaDOmdB1 = sq_GetDistance( CQ6hqnhc8v5EGIx, CQe43pN8QSprXhx1v - CQXZoLtPMBRvHC, CQxAg8xeccAhAqQ4, CQOuFY5lsPx6JBQfAF - CQ8UbiHZg7LVSa, true);
	local CQYCBxX4n5yrIUU = CQXZoLtPMBRvHC - CQ8UbiHZg7LVSa;
	local CQSSttaHAq8voVUgT = sq_Abs(CQxAg8xeccAhAqQ4 - CQ6hqnhc8v5EGIx);
	if(CQSSttaHAq8voVUgT < 120)
		sq_SendDestroyPacketPassiveObject(CQKOLsBfXUbX4V);
	
	local CQfi9FUoTEsjOQ = sq_Atan2(CQYCBxX4n5yrIUU.tofloat(), CQSSttaHAq8voVUgT.tofloat());
	
	local CQuoP3fho2j6pfbk = CQKOLsBfXUbX4V.getCurrentAnimation();
	local CQGqzTCMBUFVtIbRaR = CQSSttaHAq8voVUgT/CQWkNHuatzmFsRqh;
	sq_SetfRotateAngle(CQuoP3fho2j6pfbk, -CQfi9FUoTEsjOQ/2.0);
	CQuoP3fho2j6pfbk.setImageRateFromOriginal(CQGqzTCMBUFVtIbRaR, 1.0);
	
	return;
}

function CreatePooledObjectAni(CQhlZrIDwFvGEgvzP,CQp8wAqbHMCayX,CQ3BZM2ffvwIwmWc,CQqFwjDSIS3ynBrT7F,CQKE4QWt3BoUewe,CQTwEOlcbcfTURexk,CQsxjB3CZOP9cO,CQ6dHRFOj7lMmjQv,CQeMnmveSzKJvCQwpG,CQXHMs867sUOlqq,CQxanXZLq4NybNmWS)
{
	local CQPeMdEaNqWUzs = sq_CreateAnimation("",CQp8wAqbHMCayX);
	if(CQXHMs867sUOlqq != false)
	{
		CQPeMdEaNqWUzs.setImageRateFromOriginal(CQXHMs867sUOlqq, CQXHMs867sUOlqq);
		CQPeMdEaNqWUzs.setAutoLayerWorkAnimationAddSizeRate(CQXHMs867sUOlqq);
	}
	if(CQxanXZLq4NybNmWS != false)
		CQPeMdEaNqWUzs.setSpeedRate(CQxanXZLq4NybNmWS);

	local CQ9cubnTxE6ThgUu = sq_CreatePooledObject(CQPeMdEaNqWUzs,CQeMnmveSzKJvCQwpG);
	if(CQ6dHRFOj7lMmjQv)
		sq_moveWithParent(CQhlZrIDwFvGEgvzP, CQ9cubnTxE6ThgUu);

	CQ9cubnTxE6ThgUu = sq_SetEnumDrawLayer(CQ9cubnTxE6ThgUu, CQ3BZM2ffvwIwmWc);
	sq_SetCurrentDirection(CQ9cubnTxE6ThgUu, CQsxjB3CZOP9cO);
	CQ9cubnTxE6ThgUu.setCurrentPos(CQqFwjDSIS3ynBrT7F,CQKE4QWt3BoUewe,CQTwEOlcbcfTURexk);
	sq_AddObject(CQhlZrIDwFvGEgvzP, CQ9cubnTxE6ThgUu, OBJECTTYPE_DRAWONLY, false);
	return CQ9cubnTxE6ThgUu;
}

function procCatharsis(CQtfdpd3a2a9xPUrdM,CQB1ALPHRnhMjmn)
{
	if (!CQtfdpd3a2a9xPUrdM || !CQB1ALPHRnhMjmn) return;
	local CQvJc7wmWFDJdByyQ = CQtfdpd3a2a9xPUrdM.getTopCharacter();
	local CQwb3uvU6XTuaumE = CQtfdpd3a2a9xPUrdM.getXPos();
	local CQ3dvdwFT4qgGUg = CQtfdpd3a2a9xPUrdM.getYPos();
	local CQitXHAiPAQi6IWts1 = CQtfdpd3a2a9xPUrdM.getZPos();
	
	local CQHbe5rvk92Q1hWaC = CQB1ALPHRnhMjmn.getXPos();	
	local CQjh6x6Nicux7A = CQB1ALPHRnhMjmn.getYPos();
	local CQE4stJSVO9f2qeI = CQB1ALPHRnhMjmn.getZPos() + sq_GetObjectHeight(CQB1ALPHRnhMjmn) / 2;
	
	local CQ4ZTFiWQ6O3VNep8F = 552.0;
	local CQQPJ2Y9GwTZ3ew = sq_GetDistance( CQwb3uvU6XTuaumE, CQ3dvdwFT4qgGUg - CQitXHAiPAQi6IWts1, CQHbe5rvk92Q1hWaC, CQjh6x6Nicux7A - CQE4stJSVO9f2qeI, true);
	local CQLymT7CdsHABgQsq = CQitXHAiPAQi6IWts1 - CQE4stJSVO9f2qeI;
	local CQln2rKOs4boLO = sq_Abs(CQHbe5rvk92Q1hWaC - CQwb3uvU6XTuaumE);
	if(CQln2rKOs4boLO < 0)
		sq_SendDestroyPacketPassiveObject(CQtfdpd3a2a9xPUrdM);
	
	local CQIjmAmz2qBQNjqP = sq_Atan2(CQLymT7CdsHABgQsq.tofloat(), CQln2rKOs4boLO.tofloat());
	
	local CQ751MR6tErxZVoaHF = CQtfdpd3a2a9xPUrdM.getCurrentAnimation();
	local CQrXijVLZ25RGQo = CQln2rKOs4boLO/CQ4ZTFiWQ6O3VNep8F;
	sq_SetfRotateAngle(CQ751MR6tErxZVoaHF, -CQIjmAmz2qBQNjqP/2.0);
	CQ751MR6tErxZVoaHF.setImageRateFromOriginal(CQrXijVLZ25RGQo, 1.0);
	
}

function sq_GetDistenceFrom3D(CQCARQOQhnp3XMiON,CQcuDOQkAFRZHI)
{
	if (!CQCARQOQhnp3XMiON || !CQcuDOQkAFRZHI) return -1;
	local CQAUvVh36MSSAhuS = CQCARQOQhnp3XMiON.getXPos();
	local CQdTVRFpmvxoaAyLYM = CQCARQOQhnp3XMiON.getYPos();
	local CQy7WmtUBALESqy = CQCARQOQhnp3XMiON.getZPos();

	local CQB8Vaz2z9mrIBtC = CQcuDOQkAFRZHI.getXPos();
	local CQvBWX4GHc1vowWKyg = CQcuDOQkAFRZHI.getYPos();
	local CQDF8dGufOyhO1W = CQcuDOQkAFRZHI.getZPos();

	local CQRpIbyRr685pOrXL = sqrt((CQAUvVh36MSSAhuS - CQB8Vaz2z9mrIBtC)*(CQAUvVh36MSSAhuS - CQB8Vaz2z9mrIBtC) + (CQdTVRFpmvxoaAyLYM - CQvBWX4GHc1vowWKyg)*(CQdTVRFpmvxoaAyLYM - CQvBWX4GHc1vowWKyg) + (CQy7WmtUBALESqy - CQDF8dGufOyhO1W)*(CQy7WmtUBALESqy - CQDF8dGufOyhO1W));

	return CQRpIbyRr685pOrXL;
}

function sq_GetDistenceFrom3D_Pos(CQiQlp9N3wsVtj,CQHzLLXAbskFESeV1G,CQj9Q7aYP4GEyQa,CQENLYU9jmvrwMEMc,CQ4GqufXuHCvue,CQQE3HCrC2whegp3)
{
	local CQLwp5ezqn46UPoNOM = sqrt((CQiQlp9N3wsVtj - CQENLYU9jmvrwMEMc)*(CQiQlp9N3wsVtj - CQENLYU9jmvrwMEMc) + (CQHzLLXAbskFESeV1G - CQ4GqufXuHCvue)*(CQHzLLXAbskFESeV1G - CQ4GqufXuHCvue)/4 + (CQj9Q7aYP4GEyQa - CQQE3HCrC2whegp3)*(CQj9Q7aYP4GEyQa - CQQE3HCrC2whegp3));

	return CQLwp5ezqn46UPoNOM;
}

function sq_GetDistenceFrom2D_Pos(CQlxhzk5FDoVrko,CQIdFt1sxffFmBi2J,CQ71bFSQavPaYw,CQrJN2r51AzrT1u5)
{
	local CQCsbTlJW8KtvOyRj1 = sqrt((CQlxhzk5FDoVrko - CQ71bFSQavPaYw)*(CQlxhzk5FDoVrko - CQ71bFSQavPaYw)+(CQIdFt1sxffFmBi2J - CQrJN2r51AzrT1u5)*(CQIdFt1sxffFmBi2J - CQrJN2r51AzrT1u5)/4);

	return CQCsbTlJW8KtvOyRj1;
}

function getFormaidableTarget(CQcrNeKpLcUUljy, CQAYtAojhONTgAtjv)
{
	if(!CQcrNeKpLcUUljy) return null;

	local CQdv9Mv1P6W8zT = CQcrNeKpLcUUljy.getObjectManager();

	if (CQdv9Mv1P6W8zT == null)
		return null;

	local CQygPh8F5Q7MhNOl = null;

	for(local CQN3xQLnUsaJ9eIhSR = 0; CQN3xQLnUsaJ9eIhSR < CQdv9Mv1P6W8zT.getCollisionObjectNumber(); CQN3xQLnUsaJ9eIhSR+=1)
	{
		local CQbLXOpfV4hIj2s = CQdv9Mv1P6W8zT.getCollisionObject(CQN3xQLnUsaJ9eIhSR);
		if(CQbLXOpfV4hIj2s && CQcrNeKpLcUUljy.isEnemy(CQbLXOpfV4hIj2s) && CQbLXOpfV4hIj2s.isInDamagableState(CQcrNeKpLcUUljy) && CQbLXOpfV4hIj2s.isObjectType(OBJECTTYPE_ACTIVE))
		{
			local CQFOwVgBlmDydPsT5 = sq_GetCNRDObjectToActiveObject(CQbLXOpfV4hIj2s);
			if(!CQFOwVgBlmDydPsT5.isDead() && sq_GetDistanceObject(CQcrNeKpLcUUljy, CQFOwVgBlmDydPsT5, true) <= CQAYtAojhONTgAtjv)
			{
				if(CQFOwVgBlmDydPsT5.isBoss())
					return CQFOwVgBlmDydPsT5;
				else
				{
					if(sq_IsHellMonster(CQFOwVgBlmDydPsT5))
						return CQFOwVgBlmDydPsT5;
					else
					{
						if(sq_IsNamed(CQFOwVgBlmDydPsT5))
							return CQFOwVgBlmDydPsT5;
						else
							CQygPh8F5Q7MhNOl = CQFOwVgBlmDydPsT5;
					}
				}
			}
		}
	}
	return CQygPh8F5Q7MhNOl;
}

function SwordLicense_ATSwoedman(CQgtZRByGHYU5k, CQmbwmOYd2XTfDEz, CQJh5aw8enQ97wE, CQk4aXjP2D2M2MpYW)
{
	local CQaXj9MrvfiJ8r = CQk4aXjP2D2M2MpYW;
	
/* 	local level	= sq_GetSkillLevel(CQgtZRByGHYU5k, 125);
	if(level > 0 && CQgtZRByGHYU5k.getWeaponSubType() == 1 && CQmbwmOYd2XTfDEz != 246 && CQmbwmOYd2XTfDEz != 234 && sq_GetSkill(CQgtZRByGHYU5k,CQmbwmOYd2XTfDEz).isInCoolTime())
	{
		local CQwuUGxZjAOyBAicPM = sq_GetIntData(CQgtZRByGHYU5k, 123, 1, level)/1000.0*CQk4aXjP2D2M2MpYW;
		local CQZU135sy8TULTu = CQk4aXjP2D2M2MpYW - CQwuUGxZjAOyBAicPM.tointeger();
		return CQZU135sy8TULTu;
	} */
	return CQaXj9MrvfiJ8r;
}

LICENSE_CUTIN_ATSWORDMAN <- {
	[CHANGQING_BLADE_SKILL10] = "obsidiancancel_cutin_01.ani",
	[CHANGQING_BLADE_SKILL18] = "obsidiancancel_cutin_02.ani",
	[CHANGQING_BLADE_SKILL6] = "obsidiancancel_cutin_03.ani"
}

function OnProc_License(CQzknlHT6rHqNFSb4)
{
	ForceUse_ATSwordman_License(CQzknlHT6rHqNFSb4,CHANGQING_BLADE_SKILL10,[0],CHANGQING_BLADE_STATE10);	
	ForceUse_ATSwordman_License(CQzknlHT6rHqNFSb4,CHANGQING_BLADE_SKILL18,[0],CHANGQING_BLADE_STATE18);	
	ForceUse_DayBreak(CQzknlHT6rHqNFSb4);	
}

function ForceUse_DayBreak(CQO6MWu4mOnxZe)
{
	local CQ8CuScJD6BfG2Am = sq_GetIntData(CQO6MWu4mOnxZe, CHANGQING_BLADE_SKILL6, 0);
	local CQWSf1XmzQr2XWPvmM = getFormaidableTarget(CQO6MWu4mOnxZe, CQ8CuScJD6BfG2Am);
	local CQViSkshEK5ZHjO = -1;
	if(CQWSf1XmzQr2XWPvmM)
	{
		CQViSkshEK5ZHjO = sq_GetObjectId(CQWSf1XmzQr2XWPvmM);
		ForceUse_ATSwordman_License(CQO6MWu4mOnxZe,CHANGQING_BLADE_SKILL6,[0,CQViSkshEK5ZHjO],CHANGQING_BLADE_STATE6);
	}
	return;
}

function ForceUse_ATSwordman_License(CQYocwm1M4EAASOUy,CQSqCPRormgiJl,CQflrBVbKGSQSMsQ,CQu8CgIfg2xxsrsuB1)
{
	local CQMBrqTDPnLfD3a = sq_GetSkill(CQYocwm1M4EAASOUy, CQSqCPRormgiJl);
	
	if(!CQMBrqTDPnLfD3a.isInCoolTime())
	{
		CQYocwm1M4EAASOUy.setSkillCommandEnable(CQSqCPRormgiJl, true);
		if(CQYocwm1M4EAASOUy.sq_IsEnterSkill(CQSqCPRormgiJl) != -1)
		{
			local CQnG6s2t5Dq3IAEo6 = CQYocwm1M4EAASOUy.sq_IsUseSkill(CQSqCPRormgiJl);
			if(CQnG6s2t5Dq3IAEo6)
			{
				local CQFEsCDcud1ZoT = "character/swordman/effect/animation/atlicense/";
				local CQgwTfWVCvyAWDG = CQFEsCDcud1ZoT + LICENSE_CUTIN_ATSWORDMAN[CQSqCPRormgiJl];
				CreatePooledObjectAni(CQYocwm1M4EAASOUy,CQgwTfWVCvyAWDG,1,CQYocwm1M4EAASOUy.getXPos(), CQYocwm1M4EAASOUy.getYPos(), CQYocwm1M4EAASOUy.getZPos()+180,1,false,true,false,false);
				CQYocwm1M4EAASOUy.sq_IntVectClear();
				local CQmxKnlOTA8opw = CQflrBVbKGSQSMsQ.len();
				if(CQmxKnlOTA8opw<1)
				{
					CQYocwm1M4EAASOUy.sq_AddSetStatePacket(CQu8CgIfg2xxsrsuB1, STATE_PRIORITY_USER, true);
					return;
				}
				foreach(substate in CQflrBVbKGSQSMsQ)
					CQYocwm1M4EAASOUy.sq_IntVectPush(substate);
				CQYocwm1M4EAASOUy.sq_AddSetStatePacket(CQu8CgIfg2xxsrsuB1, STATE_PRIORITY_USER, true);
			}
		}
	}
	return;
}

PUSHEXTRA_ATSWORDMAN <- {
	[32] = [132,[0]],
	[CHANGQING_BLADE_SKILL2] = [CHANGQING_BLADE_STATE2,[1]],
	[CHANGQING_BLADE_SKILL3] = [CHANGQING_BLADE_STATE3,[0]],
	[CHANGQING_BLADE_SKILL4] = [CHANGQING_BLADE_STATE4,[0]],
	[CHANGQING_BLADE_SKILL5] = [CHANGQING_BLADE_STATE5,[0]],
	[CHANGQING_BLADE_SKILL6] = [CHANGQING_BLADE_STATE7,[0]],
	[CHANGQING_BLADE_SKILL8] = [CHANGQING_BLADE_STATE8,[0]],
	[CHANGQING_BLADE_SKILL9] = [CHANGQING_BLADE_STATE9,[2]],
	[CHANGQING_BLADE_SKILL10] = [CHANGQING_BLADE_STATE10,[0]],
	[CHANGQING_BLADE_SKILL11] = [CHANGQING_BLADE_STATE11,[0]],
	[CHANGQING_BLADE_SKILL12] = [CHANGQING_BLADE_STATE12,[0]],
	[CHANGQING_BLADE_SKILL14] = [CHANGQING_BLADE_STATE14,[0]],
	[CHANGQING_BLADE_SKILL15] = [CHANGQING_BLADE_STATE15,[0]],
	[CHANGQING_BLADE_SKILL16] = [CHANGQING_BLADE_STATE16,[0]],
	[CHANGQING_BLADE_SKILL18] = [CHANGQING_BLADE_STATE18,[0]],
	[CHANGQING_BLADE_SKILL20] = [CHANGQING_BLADE_STATE20,[0]]
}

function ForceUse_ATSwordman(CQJdqE4xF8IQt1FO,CQkM2Lp79ekeQWDEFM,CQaHm8bZwOGvy4S,CQ5a2v9w16vhwSSIC)
{
	local CQweoiZTYQV5nl = sq_GetSkill(CQJdqE4xF8IQt1FO, CQkM2Lp79ekeQWDEFM);
	if(!CQweoiZTYQV5nl.isInCoolTime())
	{
		CQJdqE4xF8IQt1FO.setSkillCommandEnable(CQkM2Lp79ekeQWDEFM, true);
		if(CQJdqE4xF8IQt1FO.sq_IsEnterSkill(CQkM2Lp79ekeQWDEFM) != -1)
		{
			local CQZcRJE4LJeVeGAA = CQJdqE4xF8IQt1FO.sq_IsUseSkill(CQkM2Lp79ekeQWDEFM);
			if(CQZcRJE4LJeVeGAA)
			{
				CQJdqE4xF8IQt1FO.sq_IntVectClear();
				local CQzfD6nEh44FmePsxR = CQaHm8bZwOGvy4S.len();
				if(CQzfD6nEh44FmePsxR<1)
				{
					CQJdqE4xF8IQt1FO.sq_AddSetStatePacket(CQ5a2v9w16vhwSSIC, STATE_PRIORITY_USER, true);
					return;
				}
				foreach(substate in CQaHm8bZwOGvy4S)
					CQJdqE4xF8IQt1FO.sq_IntVectPush(substate);
				CQJdqE4xF8IQt1FO.sq_AddSetStatePacket(CQ5a2v9w16vhwSSIC, STATE_PRIORITY_USER, true);
			}
		}
	}
	return;
}

function ForceEnable_ATSwordman(CQJdqE4xF8IQt1FO,CQkM2Lp79ekeQWDEFM,CQaHm8bZwOGvy4S,CQ5a2v9w16vhwSSIC)
{
	local CQweoiZTYQV5nl = sq_GetSkill(CQJdqE4xF8IQt1FO, CQkM2Lp79ekeQWDEFM);
	if(!CQweoiZTYQV5nl.isInCoolTime())
	{
		CQJdqE4xF8IQt1FO.setSkillCommandEnable(CQkM2Lp79ekeQWDEFM, true);
	}
	return;
}

function procSetIsMove(CQO1vxNmymoEY2O)
{
	local CQ8JByPh5GfeqtOPq = CQO1vxNmymoEY2O.getSkillSubState();
	local CQWKvGeGUgAvvk = 30;
	local CQVOV3kiSnzhlDsD = 0;
	local CQYtWl1blDK5bzKZJR = -500;
	local CQSb8rSNpdUVz1J = CQO1vxNmymoEY2O.sq_GetInputDirection(0);
	if(CQO1vxNmymoEY2O.getDirection() == CQSb8rSNpdUVz1J)
		CQVOV3kiSnzhlDsD = 76;
	else if(CQO1vxNmymoEY2O.getDirection() == sq_GetOppositeDirection(CQSb8rSNpdUVz1J))
		CQVOV3kiSnzhlDsD = -30;
	else
		CQYtWl1blDK5bzKZJR = 0;
	CQO1vxNmymoEY2O.sq_SetStaticMoveInfo(0, CQWKvGeGUgAvvk + CQVOV3kiSnzhlDsD, CQWKvGeGUgAvvk + CQVOV3kiSnzhlDsD, false, CQYtWl1blDK5bzKZJR, true);
	CQO1vxNmymoEY2O.sq_SetMoveDirection(CQO1vxNmymoEY2O.getDirection(), ENUM_DIRECTION_NEUTRAL);
	
	local CQfhOScSNvMFhWHVd = CQO1vxNmymoEY2O.getCurrentAnimation();
	local CQu4z16teAtE94 = CQfhOScSNvMFhWHVd.GetCurrentFrameIndex();
	if(CQ8JByPh5GfeqtOPq == 3 && sq_GetSkillLevel(CQO1vxNmymoEY2O, 127) > 0 && CQu4z16teAtE94 > 5)
		CQO1vxNmymoEY2O.sq_SetStaticMoveInfo(0, 0, 0, false);

	return;
}

function ChangqingQQ751675335Skill1(CQMZLjJdJ87rjAGN)
{
	local CQnPQwiCveavdTFXYb = CQMZLjJdJ87rjAGN.sq_GetIntData(CHANGQING_BLADE_SKILL1, 7);

	local CQGyLPYWOOhn5FF = CQMZLjJdJ87rjAGN.sq_GetIntData(CHANGQING_BLADE_SKILL1, 8);
	local CQ3nQB7x46FTfxDBs = CQMZLjJdJ87rjAGN.sq_GetIntData(CHANGQING_BLADE_SKILL1, 9);
	local CQqj4gI6uQY862SZ = sq_FindTarget(CQMZLjJdJ87rjAGN,0, CQnPQwiCveavdTFXYb, CQGyLPYWOOhn5FF, CQ3nQB7x46FTfxDBs);
	CQMZLjJdJ87rjAGN.sq_IntVectClear();
	CQMZLjJdJ87rjAGN.sq_IntVectPush(0);
	if(CQqj4gI6uQY862SZ)
	{
		local CQK5pmqIXJXN1tS1GM = sq_GetObjectId(CQqj4gI6uQY862SZ);
		CQMZLjJdJ87rjAGN.sq_IntVectPush(CQK5pmqIXJXN1tS1GM);
	}
	else
		CQMZLjJdJ87rjAGN.sq_IntVectPush(-1);
	CQMZLjJdJ87rjAGN.sq_AddSetStatePacket(CHANGQING_BLADE_STATE1, STATE_PRIORITY_IGNORE_FORCE, true);
}

function ChangqingQQ751675335Skill2(CQTXhsgwk4EJ75A, CQsAGCBkDmhI2DP48, CQ6undOK8GDtVl, CQemNnQEERcU3GZ7)
{
	local CQXTbE3mMnZTBrZ3r1 = CQTXhsgwk4EJ75A.sq_GetVectorData(CQ6undOK8GDtVl, 0);
	CQTXhsgwk4EJ75A.setSkillSubState(CQXTbE3mMnZTBrZ3r1);

	switch(CQXTbE3mMnZTBrZ3r1)
	{
	case 0:
		CQTXhsgwk4EJ75A.sq_StopMove();
		local CQCuAcXaes2y9O = CQTXhsgwk4EJ75A.sq_GetVectorData(CQ6undOK8GDtVl, 1);
		CQTXhsgwk4EJ75A.getVar("BlackOut").clear_vector();
		CQTXhsgwk4EJ75A.getVar("BlackOut").push_vector(CQCuAcXaes2y9O);
		CQTXhsgwk4EJ75A.getVar("BlackOut").push_vector(sq_GetIntData(CQTXhsgwk4EJ75A, CHANGQING_BLADE_SKILL1, 6));
		
		local CQdzQCaMtyJy2h9USd = sq_GetObjectByObjectId(CQTXhsgwk4EJ75A, CQCuAcXaes2y9O);
		if(CQdzQCaMtyJy2h9USd)
		{
			CQdzQCaMtyJy2h9USd = sq_GetCNRDObjectToActiveObject(CQdzQCaMtyJy2h9USd);
			CQTXhsgwk4EJ75A.getVar("BlackOut").setObject(0,CQdzQCaMtyJy2h9USd);
			
			local CQUk29RgNoENwdM3Z = "character/atswordman/5_bladeshadows/blackout/ap_blackout.nut";
			if(sq_IsHoldable(CQTXhsgwk4EJ75A,CQdzQCaMtyJy2h9USd) && sq_IsGrabable(CQTXhsgwk4EJ75A,CQdzQCaMtyJy2h9USd) && !sq_IsFixture(CQdzQCaMtyJy2h9USd))
			{
				local CQIcL3ubJjUjfv1Ix = CNSquirrelAppendage.sq_AppendAppendage(CQdzQCaMtyJy2h9USd, CQTXhsgwk4EJ75A, -1, false, CQUk29RgNoENwdM3Z, true);
				sq_HoldAndDelayDie(CQdzQCaMtyJy2h9USd, CQTXhsgwk4EJ75A, true, true, true, 0, 0, ENUM_DIRECTION_NEUTRAL, CQIcL3ubJjUjfv1Ix);
				local CQkOmPKfzCUpTEcRX = CQIcL3ubJjUjfv1Ix.getAppendageInfo();
				CQkOmPKfzCUpTEcRX.setValidTime(1200);
			}
		}
		CQTXhsgwk4EJ75A.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL1][0]);
		break;
	case 1:
		CQTXhsgwk4EJ75A.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL1][1]);
		CQTXhsgwk4EJ75A.sq_SetCurrentAttackInfo(0);
		local CQat2BoDExMwvf = CQTXhsgwk4EJ75A.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL1, -1, 0, -1, getATSwordmanBonus(CQTXhsgwk4EJ75A,1.0,CHANGQING_BLADE_SKILL1));
		CQTXhsgwk4EJ75A.sq_SetCurrentAttackPower(CQat2BoDExMwvf);
		break;
	case 2:
		CQTXhsgwk4EJ75A.sq_ZStop();
		CQTXhsgwk4EJ75A.setShowEquipmentLayer(10,false);
		CQTXhsgwk4EJ75A.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL1][2]);
		break;
	case 3:
		CQTXhsgwk4EJ75A.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL1][3]);
		break;
	case 4:
		CQTXhsgwk4EJ75A.sq_ZStop();
		CQTXhsgwk4EJ75A.setShowEquipmentLayer(10,false);
		CQTXhsgwk4EJ75A.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL1][4]);
		break;
	case 5:
		if(CQTXhsgwk4EJ75A.isMyControlObject())
			sq_SetMyShake(CQTXhsgwk4EJ75A,5,200);
		CQTXhsgwk4EJ75A.setShowEquipmentLayer(10,true);
		CQTXhsgwk4EJ75A.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL1][5]);
		break;
	}
}

function ChangqingQQ751675335Skill3(CQ5bogvyfItYzsxj, CQwhgm8drZ7bhgzfzD, CQZ4DsLV3TajxXz, CQzZvCqPbah6jmlhm)
{
	local CQOPBdgxP3FBdB = CQ5bogvyfItYzsxj.sq_GetVectorData(CQZ4DsLV3TajxXz, 0);
	CQ5bogvyfItYzsxj.setSkillSubState(CQOPBdgxP3FBdB);

	switch(CQOPBdgxP3FBdB)
	{
	case 0:
		CQ5bogvyfItYzsxj.sq_StopMove();
		CQ5bogvyfItYzsxj.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL2][0]);
		break;
	case 1:
		CQ5bogvyfItYzsxj.getVar("DeepduskLicense").setBool(0,false);
		CQ5bogvyfItYzsxj.sq_StopMove();
		CQ5bogvyfItYzsxj.sq_PlaySound("SW_BLENDING_PAIN_01");
		CQ5bogvyfItYzsxj.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL2][1]);
		CQ5bogvyfItYzsxj.sq_SetCurrentAttackInfo(188);
		local CQ8yvnB7kjYG5aqT = CQ5bogvyfItYzsxj.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL2, -1, 0, -1, getATSwordmanBonus(CQ5bogvyfItYzsxj,1.0,CHANGQING_BLADE_SKILL2));
		CQ5bogvyfItYzsxj.sq_SetCurrentAttackPower(CQ8yvnB7kjYG5aqT);
		CQ5bogvyfItYzsxj.getVar("LicensePower").clear_vector();
		CQ5bogvyfItYzsxj.getVar("LicensePower").push_vector(CQ8yvnB7kjYG5aqT);
		CQ5bogvyfItYzsxj.getVar("LicensePower").push_vector(CQ5bogvyfItYzsxj.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL2, -1, 1, -1, getATSwordmanBonus(CQ5bogvyfItYzsxj,1.0,CHANGQING_BLADE_SKILL2)));
		CQ5bogvyfItYzsxj.getVar("LicensePower").push_vector(CQ5bogvyfItYzsxj.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL2, -1, 2, -1,getATSwordmanBonus(CQ5bogvyfItYzsxj,1.0,CHANGQING_BLADE_SKILL2))*sq_GetIntData(CQ5bogvyfItYzsxj, CHANGQING_BLADE_SKILL2, 1));
		break;
	case 2:
		if(CQ5bogvyfItYzsxj.isMyControlObject())
			sq_SetMyShake(CQ5bogvyfItYzsxj,2,150);
		CQ5bogvyfItYzsxj.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL2][2]);
		CQ5bogvyfItYzsxj.sq_SetCurrentAttackInfo(189);
		local CQ8yvnB7kjYG5aqT = CQ5bogvyfItYzsxj.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL2, -1, 1, -1, getATSwordmanBonus(CQ5bogvyfItYzsxj,1.0,CHANGQING_BLADE_SKILL2));
		CQ5bogvyfItYzsxj.sq_SetCurrentAttackPower(CQ8yvnB7kjYG5aqT);
		CQ5bogvyfItYzsxj.sq_StartWrite();
		CQ5bogvyfItYzsxj.sq_WriteDword(230);
		CQ5bogvyfItYzsxj.sq_WriteDword(0);
		CQ5bogvyfItYzsxj.sq_WriteDword(CQ5bogvyfItYzsxj.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL2, -1, 2, -1,getATSwordmanBonus(CQ5bogvyfItYzsxj,1.0,CHANGQING_BLADE_SKILL2)));
		CQ5bogvyfItYzsxj.sq_WriteDword(sq_GetIntData(CQ5bogvyfItYzsxj, CHANGQING_BLADE_SKILL2, 1));
		CQ5bogvyfItYzsxj.sq_SendCreatePassiveObjectPacket(24387, 0, 210, 1, 0);
		break;
	}
}

function ChangqingQQ751675335Skill4(CQxoJNtka2xlGTWr, CQpku7kIOGy3v6Q7xx, CQxWYpAIkExI6VB6, CQL8eRLTkFedUDP)
{
	local CQmeh49LXertI44Ndb = CQxoJNtka2xlGTWr.sq_GetVectorData(CQxWYpAIkExI6VB6, 0);
	CQxoJNtka2xlGTWr.setSkillSubState(CQmeh49LXertI44Ndb);

	switch(CQmeh49LXertI44Ndb)
	{
	case 0:
		CQxoJNtka2xlGTWr.sq_StopMove();
		CQxoJNtka2xlGTWr.getVar("DeepduskLicense").setBool(0,false);
		CQxoJNtka2xlGTWr.setShowEquipmentLayer(10,false);
		CQxoJNtka2xlGTWr.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL3][0]);
		CQxoJNtka2xlGTWr.sq_SetCurrentAttackInfo(190);
		local CQacGzZakL5Uou4 = CQxoJNtka2xlGTWr.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL3, -1, 0, -1, getATSwordmanBonus(CQxoJNtka2xlGTWr,1.0,CHANGQING_BLADE_SKILL3));
		CQxoJNtka2xlGTWr.sq_SetCurrentAttackPower(CQacGzZakL5Uou4);
		if(CQxoJNtka2xlGTWr.isMyControlObject())
			sq_flashScreen(CQxoJNtka2xlGTWr,200,800,200,102,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);

		local CQ5fnWamukpTW7 = CQxoJNtka2xlGTWr.sq_CreateCNRDAnimation("effect/animation/atbullseye/attack1/bullseyeattack1_01.ani");
		CQxoJNtka2xlGTWr.sq_AddStateLayerAnimation(1, CQ5fnWamukpTW7, 0, 0);

		local CQw1MDU37QR8pp3B = CQxoJNtka2xlGTWr.sq_CreateCNRDAnimation("effect/animation/atbullseye/attack1/attack1weapon_00.ani");
		CQxoJNtka2xlGTWr.sq_AddStateLayerAnimation(2, CQw1MDU37QR8pp3B, 0, 0);

		CQxoJNtka2xlGTWr.getVar("BullsEye").clear_vector();
		CQxoJNtka2xlGTWr.getVar("BullsEye").setInt(0, sq_GetDistancePos(CQxoJNtka2xlGTWr.getXPos(), CQxoJNtka2xlGTWr.getDirection(), CQxoJNtka2xlGTWr.sq_GetIntData(CHANGQING_BLADE_SKILL3, 0)));
		
		CQxoJNtka2xlGTWr.getVar("LicensePower").clear_vector();
		CQxoJNtka2xlGTWr.getVar("LicensePower").push_vector(CQacGzZakL5Uou4);
		CQxoJNtka2xlGTWr.getVar("LicensePower").push_vector(CQxoJNtka2xlGTWr.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL3, -1, 1, -1, getATSwordmanBonus(CQxoJNtka2xlGTWr,1.0,CHANGQING_BLADE_SKILL3)));
		break;
	case 1:
		local CQZ2n1MHqJSftc25o1 = CQxoJNtka2xlGTWr.getVar("BullsEye").getInt(0);
		if(!sq_IsValidActiveStatus(CQxoJNtka2xlGTWr, ACTIVESTATUS_HOLD))
			CQxoJNtka2xlGTWr.sq_SetfindNearLinearMovablePos(CQZ2n1MHqJSftc25o1, CQxoJNtka2xlGTWr.getYPos(), CQxoJNtka2xlGTWr.getXPos(), CQxoJNtka2xlGTWr.getYPos(), 10);

		CQxoJNtka2xlGTWr.setShowEquipmentLayer(10,true);
		CQxoJNtka2xlGTWr.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL3][1]);
		CQxoJNtka2xlGTWr.sq_SetCurrentAttackInfo(191);
		local CQacGzZakL5Uou4 = CQxoJNtka2xlGTWr.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL3, -1, 1, -1, getATSwordmanBonus(CQxoJNtka2xlGTWr,1.0,CHANGQING_BLADE_SKILL3));
		CQxoJNtka2xlGTWr.sq_SetCurrentAttackPower(CQacGzZakL5Uou4);
		if(CQxoJNtka2xlGTWr.isMyControlObject())
			sq_flashScreen(CQxoJNtka2xlGTWr,200,300,150,204,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);
		CQxoJNtka2xlGTWr.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		if(CQxoJNtka2xlGTWr.getVar("BullsEye").size_vector() < 1)
			break;
		local CQOOyeegxULLyb18C = [
		                     "character/swordman/effect/animation/atbullseye/attack2/bullseyeattack2_00.ani",
		                     "character/swordman/effect/animation/atbullseye/attack2/bullseyeattack2_01.ani"
		                 ];
		foreach(path in CQOOyeegxULLyb18C)
			CreatePooledObjectAni(CQxoJNtka2xlGTWr,path,1,CQxoJNtka2xlGTWr.getXPos(), CQxoJNtka2xlGTWr.getYPos(), CQxoJNtka2xlGTWr.getZPos(),CQxoJNtka2xlGTWr.getDirection(),false,true,false,false);
		break;
	}
}

function ChangqingQQ751675335Skill5(CQ7tdPkMaGmAe5M4Mb, CQrbAN1DRR1iUiN, CQChchSvWyyqr8N79, CQc4XqcdLS8zmH)
{
	local CQAZeI6VndsfYY8d = CQ7tdPkMaGmAe5M4Mb.sq_GetVectorData(CQChchSvWyyqr8N79, 0);
	CQ7tdPkMaGmAe5M4Mb.setSkillSubState(CQAZeI6VndsfYY8d);

	switch(CQAZeI6VndsfYY8d)
	{
	case 0:
		CQ7tdPkMaGmAe5M4Mb.sq_StopMove();
		CQ7tdPkMaGmAe5M4Mb.setShowEquipmentLayer(10,false);
		CQ7tdPkMaGmAe5M4Mb.sq_PlaySound("SW_CATHARSIS_01_A");
		CQ7tdPkMaGmAe5M4Mb.getVar("Catharsis").clear_obj_vector();
		local CQdPXVKWAWk2TL85rn = sq_GetDistancePos(CQ7tdPkMaGmAe5M4Mb.getXPos(), CQ7tdPkMaGmAe5M4Mb.getDirection(), 300);
		CQ7tdPkMaGmAe5M4Mb.getVar("Catharsis").clear_vector();
		CQ7tdPkMaGmAe5M4Mb.getVar("Catharsis").push_vector(CQdPXVKWAWk2TL85rn);
		CQ7tdPkMaGmAe5M4Mb.getVar("Catharsis").push_vector(CQ7tdPkMaGmAe5M4Mb.getXPos());
		
		CQ7tdPkMaGmAe5M4Mb.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL4][0]);
		CQ7tdPkMaGmAe5M4Mb.sq_SetCurrentAttackInfo(192);
		local CQyyefox6XGLvu7 = CQ7tdPkMaGmAe5M4Mb.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL4, -1, 0, -1, getATSwordmanBonus(CQ7tdPkMaGmAe5M4Mb,1.0,CHANGQING_BLADE_SKILL4));
		CQ7tdPkMaGmAe5M4Mb.sq_SetCurrentAttackPower(CQyyefox6XGLvu7);
		
		CQ7tdPkMaGmAe5M4Mb.getVar("LicensePower").clear_vector();
		CQ7tdPkMaGmAe5M4Mb.getVar("LicensePower").push_vector(CQyyefox6XGLvu7);
		CQ7tdPkMaGmAe5M4Mb.getVar("LicensePower").push_vector(CQ7tdPkMaGmAe5M4Mb.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL4, -1, 2, -1, getATSwordmanBonus(CQ7tdPkMaGmAe5M4Mb,1.0,CHANGQING_BLADE_SKILL4)));
		CQ7tdPkMaGmAe5M4Mb.getVar("LicensePower").push_vector(CQ7tdPkMaGmAe5M4Mb.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL4, -1, 3, -1,getATSwordmanBonus(CQ7tdPkMaGmAe5M4Mb,1.0,CHANGQING_BLADE_SKILL4))*sq_GetIntData(CQ7tdPkMaGmAe5M4Mb, CHANGQING_BLADE_SKILL4, 22));
		
		CQ7tdPkMaGmAe5M4Mb.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0);
		break;
	case 1:
		CQ7tdPkMaGmAe5M4Mb.sq_PlaySound("SW_CATHARSIS_02_B");
		CQ7tdPkMaGmAe5M4Mb.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL4][1]);
		if(CQ7tdPkMaGmAe5M4Mb.isMyControlObject())
			sq_flashScreen(CQ7tdPkMaGmAe5M4Mb,500,1550,200,200,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);
		break;
	case 2:	
		CQ7tdPkMaGmAe5M4Mb.sq_ZStop();
		CQ7tdPkMaGmAe5M4Mb.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL4][2]);
		sq_GetCurrentAnimation(CQ7tdPkMaGmAe5M4Mb).setSpeedRate(100.0)
		local CQNn6Uv7i7vAl768J = "character/swordman/effect/animation/atcatharsis/jumpattack/jumpattackfront_01.ani";
		CreatePooledObjectAni(CQ7tdPkMaGmAe5M4Mb,CQNn6Uv7i7vAl768J,1,CQ7tdPkMaGmAe5M4Mb.getXPos(), CQ7tdPkMaGmAe5M4Mb.getYPos()+1,60,CQ7tdPkMaGmAe5M4Mb.getDirection(),false,true,false,false);
		
		local CQdPXVKWAWk2TL85rn = sq_GetDistancePos(CQ7tdPkMaGmAe5M4Mb.getXPos(), CQ7tdPkMaGmAe5M4Mb.getDirection(), 200);
		local CQhqMIMedlz3cFYe5 = CQ7tdPkMaGmAe5M4Mb.getXPos();
		local CQebWXcLic8qGAR9 = CQ7tdPkMaGmAe5M4Mb.getVar("Catharsis").get_obj_vector(0);
		if(CQebWXcLic8qGAR9)
		{
			CQdPXVKWAWk2TL85rn = sq_GetDistancePos(CQebWXcLic8qGAR9.getXPos(), CQ7tdPkMaGmAe5M4Mb.getDirection(), 200);
			CQhqMIMedlz3cFYe5 = CQebWXcLic8qGAR9.getXPos();
			CQ7tdPkMaGmAe5M4Mb.sq_StartWrite();
			CQ7tdPkMaGmAe5M4Mb.sq_WriteDword(232);
			CQ7tdPkMaGmAe5M4Mb.sq_WriteDword(1);
			CQ7tdPkMaGmAe5M4Mb.sq_WriteDword(sq_GetObjectId(CQebWXcLic8qGAR9));
			sq_SendCreatePassiveObjectPacket(CQ7tdPkMaGmAe5M4Mb, 24387, 0, 0, 0, 0,sq_GetOppositeDirection(CQ7tdPkMaGmAe5M4Mb.getDirection()));
		}
		if(CQ7tdPkMaGmAe5M4Mb.isMyControlObject())
		{
			sq_SetMyShake(CQ7tdPkMaGmAe5M4Mb,5,150);
		}
		CQ7tdPkMaGmAe5M4Mb.getVar("Catharsis").set_vector(0,CQdPXVKWAWk2TL85rn);
		CQ7tdPkMaGmAe5M4Mb.getVar("Catharsis").set_vector(1,CQhqMIMedlz3cFYe5);
		break;
	case 3: 
		if(CQ7tdPkMaGmAe5M4Mb.getDirection() == 1)
			CQ7tdPkMaGmAe5M4Mb.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL4][3]);
		else
			CQ7tdPkMaGmAe5M4Mb.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL4][4]);
		break;
	case 4:	
		CQ7tdPkMaGmAe5M4Mb.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL4][5]);
		CQ7tdPkMaGmAe5M4Mb.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0);
		break;
	case 5:
		sq_SimpleMoveToNearMovablePos(CQ7tdPkMaGmAe5M4Mb,200);
		local CQSlnGPLTBLOeVnD = CQ7tdPkMaGmAe5M4Mb.getVar("Catharsis").get_obj_vector_size();
		local CQNn6Uv7i7vAl768J = "character/atswordman/5_bladeshadows/catharsis/ap_catharsis.nut";
		for(local CQPrOPAqk2q9IAWhwM = 0; CQPrOPAqk2q9IAWhwM<CQSlnGPLTBLOeVnD; ++CQPrOPAqk2q9IAWhwM)
		{
			local CQBYzNejDU1MoTW = CQ7tdPkMaGmAe5M4Mb.getVar("Catharsis").get_obj_vector(0);
			if(CQBYzNejDU1MoTW)
			{
				if(CNSquirrelAppendage.sq_IsAppendAppendage(CQBYzNejDU1MoTW, CQNn6Uv7i7vAl768J))
					CNSquirrelAppendage.sq_RemoveAppendage(CQBYzNejDU1MoTW, CQNn6Uv7i7vAl768J)
			}
		}
		CQ7tdPkMaGmAe5M4Mb.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL4][6]);
		CQ7tdPkMaGmAe5M4Mb.sq_SetCurrentAttackInfo(193);
		local CQyyefox6XGLvu7 = CQ7tdPkMaGmAe5M4Mb.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL4, -1, 2, -1, getATSwordmanBonus(CQ7tdPkMaGmAe5M4Mb,1.0,CHANGQING_BLADE_SKILL4));
		CQ7tdPkMaGmAe5M4Mb.sq_SetCurrentAttackPower(CQyyefox6XGLvu7);
		
		local CQDgwq2oQM9Opesv = [
			"character/swordman/effect/animation/atcatharsis/attack02/dustback_00.ani",
			"character/swordman/effect/animation/atcatharsis/attack02/shockbottom_00.ani"
		];
		foreach(CQNn6Uv7i7vAl768J in CQDgwq2oQM9Opesv)
			CreatePooledObjectAni(CQ7tdPkMaGmAe5M4Mb,CQNn6Uv7i7vAl768J,2,CQ7tdPkMaGmAe5M4Mb.getXPos(), CQ7tdPkMaGmAe5M4Mb.getYPos()-1, CQ7tdPkMaGmAe5M4Mb.getZPos(),CQ7tdPkMaGmAe5M4Mb.getDirection(),false,true,false,false);
		
		local CQR3ZIDnMvIyt2szVD = [
			"character/swordman/effect/animation/atcatharsis/attack02/dustsparkfront_04.ani"
		];
		foreach(CQNn6Uv7i7vAl768J in CQR3ZIDnMvIyt2szVD)
			CreatePooledObjectAni(CQ7tdPkMaGmAe5M4Mb,CQNn6Uv7i7vAl768J,1,CQ7tdPkMaGmAe5M4Mb.getXPos(), CQ7tdPkMaGmAe5M4Mb.getYPos()+1, CQ7tdPkMaGmAe5M4Mb.getZPos(),CQ7tdPkMaGmAe5M4Mb.getDirection(),false,true,false,false);
		
		if(CQ7tdPkMaGmAe5M4Mb.isMyControlObject())
		{
			sq_SetMyShake(CQ7tdPkMaGmAe5M4Mb,15,200);
		}
		break;
	}
}

function ChangqingQQ751675335Skill9(CQiLQCWMcSkmQOa, CQ1O4f7DKBHlyjEY5, CQUtEUKygcb9wS, CQHbjEoftOV1nQpn)
{
	local CQjhGZvV57eKeMorqF = CQiLQCWMcSkmQOa.sq_GetVectorData(CQUtEUKygcb9wS, 0);
	CQiLQCWMcSkmQOa.setSkillSubState(CQjhGZvV57eKeMorqF);

	switch(CQjhGZvV57eKeMorqF)
	{
	case 0:
		CQiLQCWMcSkmQOa.sq_StopMove();
		CQiLQCWMcSkmQOa.setShowEquipmentLayer(10,false);
		CQiLQCWMcSkmQOa.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL5][0]);
		CQiLQCWMcSkmQOa.sq_SetCurrentAttackInfo(180);
		CQiLQCWMcSkmQOa.getVar("DeepduskLicense").setBool(0,false);
		local CQE4n98PUz5OUro = CQiLQCWMcSkmQOa.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL5, -1, 0, -1, getATSwordmanBonus(CQiLQCWMcSkmQOa,1.0,CHANGQING_BLADE_SKILL5));
		CQiLQCWMcSkmQOa.sq_SetCurrentAttackPower(CQE4n98PUz5OUro);
		CQiLQCWMcSkmQOa.getVar("LicensePower").clear_vector();
		CQiLQCWMcSkmQOa.getVar("LicensePower").push_vector(CQE4n98PUz5OUro);
		CQiLQCWMcSkmQOa.getVar("LicensePower").push_vector(CQiLQCWMcSkmQOa.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL5, -1, 1, -1,getATSwordmanBonus(CQiLQCWMcSkmQOa,1.0,CHANGQING_BLADE_SKILL5)));
		break;
	case 1:
		CQiLQCWMcSkmQOa.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL5][1]);
		if(CQiLQCWMcSkmQOa.isMyControlObject())
			sq_SetMyShake(CQiLQCWMcSkmQOa,4,150);
		CQiLQCWMcSkmQOa.sq_StartWrite();
		CQiLQCWMcSkmQOa.sq_WriteDword(233);
		CQiLQCWMcSkmQOa.sq_WriteDword(0);
		CQiLQCWMcSkmQOa.sq_WriteDword(CQiLQCWMcSkmQOa.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL5, -1, 1, -1,getATSwordmanBonus(CQiLQCWMcSkmQOa,1.0,CHANGQING_BLADE_SKILL5)));
		CQiLQCWMcSkmQOa.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 0, 0);
		break;
	}
}

function ChangqingQQ751675335Skill8(CQ4ZMvLcSspuchibi)
{
	local CQQPnoQ7T4RmmA = sq_GetIntData(CQ4ZMvLcSspuchibi, CHANGQING_BLADE_SKILL6, 0);
		local CQLyMKhOoqAlvkum = getFormaidableTarget(CQ4ZMvLcSspuchibi, CQQPnoQ7T4RmmA);
		local CQlUy6NeBEzdlDytNN = -1;
		if(CQLyMKhOoqAlvkum)
			CQlUy6NeBEzdlDytNN = sq_GetObjectId(CQLyMKhOoqAlvkum);

		if(CQlUy6NeBEzdlDytNN == -1)
		{
			CQ4ZMvLcSspuchibi.startCantUseSkillWarning();
			if (CQ4ZMvLcSspuchibi.isMessage())
				sq_AddMessage(414);
			return false;
		}
		CQ4ZMvLcSspuchibi.sq_IntVectClear();
		CQ4ZMvLcSspuchibi.sq_IntVectPush(0);
		CQ4ZMvLcSspuchibi.sq_IntVectPush(CQlUy6NeBEzdlDytNN);
		CQ4ZMvLcSspuchibi.sq_AddSetStatePacket(CHANGQING_BLADE_STATE6, STATE_PRIORITY_IGNORE_FORCE, true);
}

function ChangqingQQ751675335Skill15(CQIkdcPTw2L1gwA, CQ76AywLHnm3z1Pi8, CQrCcGjaYoMZhW, CQCSC4GqIMtS9jOE)
{
	local CQciely33v8ojSIueM = CQIkdcPTw2L1gwA.sq_GetVectorData(CQrCcGjaYoMZhW, 0);
	CQIkdcPTw2L1gwA.setSkillSubState(CQciely33v8ojSIueM);

	switch(CQciely33v8ojSIueM)
	{
	case 0:
		CQIkdcPTw2L1gwA.sq_StopMove();
		CQIkdcPTw2L1gwA.sq_PlaySound("DAYBREAK_START");
		CQIkdcPTw2L1gwA.getVar("DayBreak").clear_vector();
		CQIkdcPTw2L1gwA.getVar("DayBreak").push_vector(CQIkdcPTw2L1gwA.getXPos());
		CQIkdcPTw2L1gwA.getVar("DayBreak").push_vector(CQIkdcPTw2L1gwA.getYPos());
		local CQAoXWxHyAsQdls = CQIkdcPTw2L1gwA.sq_GetVectorData(CQrCcGjaYoMZhW, 1);
		local CQNqeD5oXBjc5M = sq_GetObjectByObjectId(CQIkdcPTw2L1gwA, CQAoXWxHyAsQdls);
		if(CQNqeD5oXBjc5M)
		{
			CQNqeD5oXBjc5M = sq_GetCNRDObjectToActiveObject(CQNqeD5oXBjc5M);
			CQIkdcPTw2L1gwA.getVar("DayBreak").clear_obj_vector();
			CQIkdcPTw2L1gwA.getVar("DayBreak").push_obj_vector(CQNqeD5oXBjc5M);
		}
		CQIkdcPTw2L1gwA.getVar("DayBreakHold").clear_obj_vector();
		CQIkdcPTw2L1gwA.setShowEquipmentLayer(10,false);
		CQIkdcPTw2L1gwA.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL6][0]);
		local CQbl61JgkcFRfeaP = [
		                    "character/swordman/effect/animation/atlicense/licenseback_00.ani",
		                    "character/swordman/effect/animation/atlicense/licensefront_00.ani"
		                ];
		foreach(path in CQbl61JgkcFRfeaP)
			CreatePooledObjectAni(CQIkdcPTw2L1gwA,path,1,CQIkdcPTw2L1gwA.getXPos(), CQIkdcPTw2L1gwA.getYPos(), CQIkdcPTw2L1gwA.getZPos(),CQIkdcPTw2L1gwA.getDirection(),false,true,false,false);
		break;
	case 1:
		CQIkdcPTw2L1gwA.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL6][1]);
		if(CQIkdcPTw2L1gwA.getVar("DayBreak").get_obj_vector_size() < 1)
			break;
		local CQF8skiMSOY362EaBi = CQIkdcPTw2L1gwA.getVar("DayBreak").get_obj_vector(0);
		if(CQF8skiMSOY362EaBi)
		{
			CQF8skiMSOY362EaBi = sq_GetCNRDObjectToActiveObject(CQF8skiMSOY362EaBi);
			local CQgBkwfD77CX1PE = sq_GetDistancePos(CQF8skiMSOY362EaBi.getXPos(), CQIkdcPTw2L1gwA.getDirection(), -100);
			local CQoFJPCvpzwS7kpOT = CQF8skiMSOY362EaBi.getYPos();
			if(!sq_IsValidActiveStatus(CQIkdcPTw2L1gwA, ACTIVESTATUS_HOLD))
				CQIkdcPTw2L1gwA.sq_SetfindNearLinearMovablePos(CQgBkwfD77CX1PE, CQoFJPCvpzwS7kpOT+2, CQIkdcPTw2L1gwA.getXPos(), CQIkdcPTw2L1gwA.getYPos(), 10);
		}
		break;
	case 2:
		CQIkdcPTw2L1gwA.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL6][2]);
		CQIkdcPTw2L1gwA.sq_SetCurrentAttackInfo(197);
		local CQ2pmNsdNs3o2D = CQIkdcPTw2L1gwA.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL6, -1, 0, -1, getATSwordmanBonus(CQIkdcPTw2L1gwA,1.0,CHANGQING_BLADE_SKILL6));

		local CQmQJgmSx4iwVwoS = CQIkdcPTw2L1gwA.getVar("LicensePower").size_vector();
		for(local CQJzUqRWJqfc31DIwF = 0; CQJzUqRWJqfc31DIwF < CQmQJgmSx4iwVwoS; ++CQJzUqRWJqfc31DIwF)
			CQ2pmNsdNs3o2D = CQ2pmNsdNs3o2D + CQIkdcPTw2L1gwA.getVar("LicensePower").get_vector(CQJzUqRWJqfc31DIwF);
		CQIkdcPTw2L1gwA.getVar("LicensePower").clear_vector();

		CQIkdcPTw2L1gwA.sq_SetCurrentAttackPower(CQ2pmNsdNs3o2D);
		break;
	case 3:
		CQIkdcPTw2L1gwA.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL6][3]);
		CQIkdcPTw2L1gwA.sq_SetCurrentAttackInfo(196);
		local CQ2pmNsdNs3o2D = CQIkdcPTw2L1gwA.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL6, -1, 0, -1, getATSwordmanBonus(CQIkdcPTw2L1gwA,1.0,CHANGQING_BLADE_SKILL6));
		CQIkdcPTw2L1gwA.sq_SetCurrentAttackPower(CQ2pmNsdNs3o2D);
		break;
	}
}

function ChangqingQQ751675335Skill11(CQEMiCrCW2l4L3SA, CQ4HRfTO4nJXFAAKKM, CQQaDU3wnFnVZTA, CQLeYEF6AMNGGFPXf)
{
	local CQlcVZtLTvWaPe = CQEMiCrCW2l4L3SA.sq_GetVectorData(CQQaDU3wnFnVZTA, 0);
	CQEMiCrCW2l4L3SA.setSkillSubState(CQlcVZtLTvWaPe);

	switch(CQlcVZtLTvWaPe)
	{
	case 0:
		if(CQEMiCrCW2l4L3SA.isMyControlObject())
		{
			sq_SetMyShake(CQEMiCrCW2l4L3SA,5,150);
			sq_flashScreen(CQEMiCrCW2l4L3SA,50,100,100,76,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);
			CQEMiCrCW2l4L3SA.sq_StartWrite();
			CQEMiCrCW2l4L3SA.sq_WriteDword(235);
			CQEMiCrCW2l4L3SA.sq_WriteDword(0);
			CQEMiCrCW2l4L3SA.sq_WriteDword(CQEMiCrCW2l4L3SA.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL7, -1, 0, -1,getATSwordmanBonus(CQEMiCrCW2l4L3SA,1.0,CHANGQING_BLADE_SKILL7)));
			CQEMiCrCW2l4L3SA.sq_SendCreatePassiveObjectPacket(24387, 0, 150, 1, 78);
			
			local CQIfY8zEiA6rH2OB = [
				"character/swordman/effect/animation/atdeepdusk/back_00.ani",
				"character/swordman/effect/animation/atdeepdusk/fronta_00.ani",
				"character/swordman/effect/animation/atdeepdusk/frontb_04.ani"
			];
			foreach(path in CQIfY8zEiA6rH2OB)
				CreatePooledObjectAni(CQEMiCrCW2l4L3SA,path,1,CQEMiCrCW2l4L3SA.getXPos(), CQEMiCrCW2l4L3SA.getYPos(), CQEMiCrCW2l4L3SA.getZPos(),CQEMiCrCW2l4L3SA.getDirection(),false,true,false,false);
		}
		CQEMiCrCW2l4L3SA.sq_StopMove();
		CQEMiCrCW2l4L3SA.sq_PlaySound("R_SW_DEEPDUSK");
		
		CQEMiCrCW2l4L3SA.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL7][0]);
		break;
	}
}

function ChangqingQQ751675335Skil26(CQ71VvLk89EbAtIZbR)
{
	local CQrJWop3Qchjaks = CQ71VvLk89EbAtIZbR.sq_GetIntData(CHANGQING_BLADE_SKILL13, 1);
		local CQCK7JbGGOD6SDsCI = 0;
		local CQcII69Uc6cBIl = "character/atswordman/5_bladeshadows/trace/ap_trace.nut";
		if(CNSquirrelAppendage.sq_IsAppendAppendage(CQ71VvLk89EbAtIZbR, CQcII69Uc6cBIl))
			CQCK7JbGGOD6SDsCI = CQ71VvLk89EbAtIZbR.sq_GetLevelData(228, 2, sq_GetSkillLevel(CQ71VvLk89EbAtIZbR, 228))/1000.0*CQrJWop3Qchjaks;
		CQrJWop3Qchjaks = CQrJWop3Qchjaks + CQCK7JbGGOD6SDsCI.tointeger();

		local CQyWlcZgszZGoMHN = CQ71VvLk89EbAtIZbR.sq_GetIntData(CHANGQING_BLADE_SKILL13, 2);
		local CQNvLyEM2sQaOrH = CQ71VvLk89EbAtIZbR.sq_GetIntData(CHANGQING_BLADE_SKILL13, 3);
		local CQbgQGjut42rp3G2d = sq_FindTarget(CQ71VvLk89EbAtIZbR,0, CQrJWop3Qchjaks, CQyWlcZgszZGoMHN, CQNvLyEM2sQaOrH);
		if(CQbgQGjut42rp3G2d)
		{
			CQ71VvLk89EbAtIZbR.sq_StopMove();
			local CQF4K3MvZmubtA = sq_GetObjectId(CQbgQGjut42rp3G2d);
			CQ71VvLk89EbAtIZbR.sq_IntVectClear();
			if(CQ71VvLk89EbAtIZbR.getZPos() > 30)
				CQ71VvLk89EbAtIZbR.sq_IntVectPush(2);
			else
				CQ71VvLk89EbAtIZbR.sq_IntVectPush(0);
			CQ71VvLk89EbAtIZbR.sq_IntVectPush(CQF4K3MvZmubtA);
			CQ71VvLk89EbAtIZbR.sq_AddSetStatePacket(CHANGQING_BLADE_STATE13, STATE_PRIORITY_IGNORE_FORCE, true);
		}
}

function ChangqingQQ751675335Skill16(CQgZqlANUE9jQTF5, CQoP3WeAS2I6yFD1WN, CQ2ypSkW7nTBwxD, CQmng119oDHMn1S4s)
{
	local CQJjFkuXBMbJeW = CQgZqlANUE9jQTF5.sq_GetVectorData(CQ2ypSkW7nTBwxD, 0);
	CQgZqlANUE9jQTF5.setSkillSubState(CQJjFkuXBMbJeW);

	switch(CQJjFkuXBMbJeW)
	{
	case 0:
		CQgZqlANUE9jQTF5.sq_StopMove();
		CQgZqlANUE9jQTF5.sq_PlaySound("DOUBLESHOT");
		
		CQgZqlANUE9jQTF5.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL8][0]);
		CQgZqlANUE9jQTF5.sq_SetCurrentAttackInfo(198);
		CQgZqlANUE9jQTF5.getVar("DeepduskLicense").setBool(0,false);
		local CQk5bwcIzvVOU4A7 = CQgZqlANUE9jQTF5.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL8, -1, 0, -1, getATSwordmanBonus(CQgZqlANUE9jQTF5,1.0,CHANGQING_BLADE_SKILL8));
		CQgZqlANUE9jQTF5.sq_SetCurrentAttackPower(CQk5bwcIzvVOU4A7);
		local CQaXNP6zHArycSPh4M = "character/swordman/effect/animation/atdoubleshot/slashback_00.ani";
		DarktemplerCreateAniPooledObj(CQgZqlANUE9jQTF5, CQaXNP6zHArycSPh4M, true, true, CQgZqlANUE9jQTF5.getXPos(), CQgZqlANUE9jQTF5.getYPos()-2, CQgZqlANUE9jQTF5.getZPos(),1.0);
		local CQaXNP6zHArycSPh4M = "character/swordman/effect/animation/atdoubleshot/slashfront_00.ani";
		DarktemplerCreateAniPooledObj(CQgZqlANUE9jQTF5, CQaXNP6zHArycSPh4M, true, true, CQgZqlANUE9jQTF5.getXPos(), CQgZqlANUE9jQTF5.getYPos(), CQgZqlANUE9jQTF5.getZPos(),1.0);
		break;
	case 1:	
		CQgZqlANUE9jQTF5.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL8][1]);
		break;
	}
}

function ChangqingQQ751675335Skill13(CQwuBgoKrcplYGO6g, CQZUtqvQ3OR9Tr, CQzk9sVkb6AMv3K9, CQO6PCI2XQxKlyKkuM)
{
	local CQ87xfqpksLOgkJ = CQwuBgoKrcplYGO6g.sq_GetVectorData(CQzk9sVkb6AMv3K9, 0);
	CQwuBgoKrcplYGO6g.setSkillSubState(CQ87xfqpksLOgkJ);

	switch(CQ87xfqpksLOgkJ)
	{
	case 0:
		CQwuBgoKrcplYGO6g.sq_StopMove();
		CQwuBgoKrcplYGO6g.sq_PlaySound("SW_HANGOVER_01");
		CQwuBgoKrcplYGO6g.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL9][0]);
		CQwuBgoKrcplYGO6g.getVar("DeepduskLicense").setBool(0,false);
		local CQWBZngUi4myzDHlZ = CQwuBgoKrcplYGO6g.sq_GetVectorData(CQzk9sVkb6AMv3K9, 1);
		if(CQWBZngUi4myzDHlZ == 0)
			sq_SendMessage(CQwuBgoKrcplYGO6g, 0, 1, 0);
		CQwuBgoKrcplYGO6g.getVar("LicensePower").clear_vector();
		CQwuBgoKrcplYGO6g.getVar("LicensePower").push_vector(CQwuBgoKrcplYGO6g.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL9, -1, 0, -1,getATSwordmanBonus(CQwuBgoKrcplYGO6g,1.0,CHANGQING_BLADE_SKILL9)));
		break;
	case 1:
		if(CQwuBgoKrcplYGO6g.isMyControlObject())
			sq_SetMyShake(CQwuBgoKrcplYGO6g,2,100);
		CQwuBgoKrcplYGO6g.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL9][1]);
		local CQVFwEB17mMmhz = CQwuBgoKrcplYGO6g.sq_GetIntData(CHANGQING_BLADE_SKILL9, 0);
		CQwuBgoKrcplYGO6g.getVar("HangOver").clear_vector();
		CQwuBgoKrcplYGO6g.getVar("HangOver").push_vector(sq_GetDistancePos(CQwuBgoKrcplYGO6g.getXPos(), CQwuBgoKrcplYGO6g.getDirection(), CQVFwEB17mMmhz));
		
		local CQYpZZOFqHyl91Gc = CQwuBgoKrcplYGO6g.getObjectManager();
		local CQuQw8luF2894WF = CQYpZZOFqHyl91Gc.getFieldXPos(sq_GetScreenXPos(CQwuBgoKrcplYGO6g), ENUM_DRAWLAYER_NORMAL);
		local CQMz5v3fxns1d4FbY = CQYpZZOFqHyl91Gc.getFieldYPos(sq_GetScreenYPos(CQwuBgoKrcplYGO6g), 0, ENUM_DRAWLAYER_NORMAL);
		local CQ7aBJCdZOfPwsHw = CQYpZZOFqHyl91Gc.getFieldZPos(sq_GetScreenYPos(CQwuBgoKrcplYGO6g), CQwuBgoKrcplYGO6g.getXPos(), ENUM_DRAWLAYER_NORMAL);

		local CQam6n3tZaWvGOo = "character/swordman/effect/animation/athangover/hang/hang_tophit_00.ani";
		sq_AddDrawOnlyAniFromParent(CQwuBgoKrcplYGO6g, CQam6n3tZaWvGOo, 0, 0,500);

		CQwuBgoKrcplYGO6g.sq_StartWrite();
		CQwuBgoKrcplYGO6g.sq_WriteDword(238);
		CQwuBgoKrcplYGO6g.sq_WriteDword(0);
		CQwuBgoKrcplYGO6g.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 1, 420);
		break;
	case 2:
		CQwuBgoKrcplYGO6g.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL9][2]);
		break;
	case 3:
		CQwuBgoKrcplYGO6g.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL9][3]);
		CQwuBgoKrcplYGO6g.sq_SetCurrentAttackInfo(0);
		local CQhGH6xYWvvS7FSvtF = CQwuBgoKrcplYGO6g.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL9, -1, 0, -1, getATSwordmanBonus(CQwuBgoKrcplYGO6g,1.0,CHANGQING_BLADE_SKILL9));
		CQwuBgoKrcplYGO6g.sq_SetCurrentAttackPower(CQhGH6xYWvvS7FSvtF);
		
		if(CQwuBgoKrcplYGO6g.isMyControlObject())
		{
			sq_SetMyShake(CQwuBgoKrcplYGO6g,5,150);
			sq_flashScreen(CQwuBgoKrcplYGO6g,30,100,50,102,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,2);
			CQwuBgoKrcplYGO6g.sq_StartWrite();
			CQwuBgoKrcplYGO6g.sq_WriteDword(238);
			CQwuBgoKrcplYGO6g.sq_WriteDword(1);
			CQwuBgoKrcplYGO6g.sq_WriteDword(CQwuBgoKrcplYGO6g.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL9, -1, 0, -1,getATSwordmanBonus(CQwuBgoKrcplYGO6g,1.0,CHANGQING_BLADE_SKILL9)));
			CQwuBgoKrcplYGO6g.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 1, 0);
		}
		break;
	case 4:
		CQwuBgoKrcplYGO6g.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL9][4]);
		break;
	}
}

function ChangqingQQ751675335Skill22(CQpEUx58LACo2xC, CQ3wMyEXn8wQV2CUL, CQqxnGnrAc3x3t, CQKdM3dl6OoRB5ZQ)
{
	local CQTMulX5o6f3LDZnkN = CQpEUx58LACo2xC.sq_GetVectorData(CQqxnGnrAc3x3t, 0);
	CQpEUx58LACo2xC.setSkillSubState(CQTMulX5o6f3LDZnkN);

	switch(CQTMulX5o6f3LDZnkN)
	{
	case 0:
		CQpEUx58LACo2xC.sq_StopMove();
		CQpEUx58LACo2xC.sq_PlaySound("SW_LASTORDER_01_A");
		CQpEUx58LACo2xC.sq_PlaySound("LASTORDER_CAST");
		CQpEUx58LACo2xC.setShowEquipmentLayer(10,false);
		CQpEUx58LACo2xC.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL10][0]);
		CQpEUx58LACo2xC.getVar("DeepduskLicense").setBool(0,false);
		if(CQpEUx58LACo2xC.isMyControlObject())
			sq_flashScreen(CQpEUx58LACo2xC,400,200,0,255,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);
		local CQsHfWasVQPZNzL = [
			"character/swordman/effect/animation/atlicense/licenseback_00.ani",
			"character/swordman/effect/animation/atlicense/licensefront_00.ani"
		];
		foreach(path in CQsHfWasVQPZNzL)
			CreatePooledObjectAni(CQpEUx58LACo2xC,path,1,CQpEUx58LACo2xC.getXPos(), CQpEUx58LACo2xC.getYPos(), CQpEUx58LACo2xC.getZPos(),CQpEUx58LACo2xC.getDirection(),false,true,false,false);
		
		break;
	case 1:
		CQpEUx58LACo2xC.sq_PlaySound("SW_LASTORDER_02_A");
		CQpEUx58LACo2xC.sq_PlaySound("LASTORDER_SHOT");
		CQpEUx58LACo2xC.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL10][1]);
		CQpEUx58LACo2xC.sq_SetCurrentAttackInfo(203);
		local CQ6sASmqlslSZHKqn = CQpEUx58LACo2xC.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL10, -1, 0, -1, getATSwordmanBonus(CQpEUx58LACo2xC,1.0,CHANGQING_BLADE_SKILL10));
		
		local CQerc114G4KoGW = CQpEUx58LACo2xC.getVar("LicensePower").size_vector();
		for(local CQZWCjSJdmUQX3J = 0; CQZWCjSJdmUQX3J < CQerc114G4KoGW; ++CQZWCjSJdmUQX3J)
			CQ6sASmqlslSZHKqn = CQ6sASmqlslSZHKqn + CQpEUx58LACo2xC.getVar("LicensePower").get_vector(CQZWCjSJdmUQX3J);
		
		CQpEUx58LACo2xC.getVar("LicensePower").clear_vector();
		CQpEUx58LACo2xC.sq_SetCurrentAttackPower(CQ6sASmqlslSZHKqn);
		if(CQpEUx58LACo2xC.isMyControlObject())
			sq_flashScreen(CQpEUx58LACo2xC,0,60,0,255,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);
		local CQsHfWasVQPZNzL = [
			"character/swordman/effect/animation/atlastorder/attackbackflash_01.ani",
			"character/swordman/effect/animation/atlastorder/attackfront_01.ani",
			"character/swordman/effect/animation/atlastorder/attackback_dust.ani"
		];
		foreach(path in CQsHfWasVQPZNzL)
			CreatePooledObjectAni(CQpEUx58LACo2xC,path,2,CQpEUx58LACo2xC.getXPos(), CQpEUx58LACo2xC.getYPos(), CQpEUx58LACo2xC.getZPos(),CQpEUx58LACo2xC.getDirection(),false,true,false,false);
		
		break;
	}
}

function ChangqingQQ751675335Skill21(CQnMYgV5HrsT256, CQN1ZQe8S6hv1CjaN, CQs557YOSapNs26Av, CQbgYzF758kBvp)
{
	local CQVu6NkZW1TYQPt1h = CQnMYgV5HrsT256.sq_GetVectorData(CQs557YOSapNs26Av, 0);
	CQnMYgV5HrsT256.setSkillSubState(CQVu6NkZW1TYQPt1h);

	switch(CQVu6NkZW1TYQPt1h)
	{
	case 0:
		CQnMYgV5HrsT256.sq_PlaySound("SW_NIGHTFALL_01_A");
		CQnMYgV5HrsT256.sq_StopMove();
		CQnMYgV5HrsT256.setShowEquipmentLayer(10,false);
		CQnMYgV5HrsT256.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL11][0]);	
		CQnMYgV5HrsT256.getVar("DeepduskLicense").setBool(0,false);
		break;
	case 1:
		CQnMYgV5HrsT256.sq_StopMove();
		CQnMYgV5HrsT256.sq_PlaySound("SW_NIGHTFALL_02_A");
		CQnMYgV5HrsT256.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL11][1]);	
		CQnMYgV5HrsT256.sq_SetCurrentAttackInfo(204);
		local CQYUshHs4gHgym = CQnMYgV5HrsT256.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL11, -1, 0, -1, getATSwordmanBonus(CQnMYgV5HrsT256,1.0,CHANGQING_BLADE_SKILL11));
		CQnMYgV5HrsT256.sq_SetCurrentAttackPower(CQYUshHs4gHgym);
		
		if(CQnMYgV5HrsT256.isMyControlObject())
		{
			sq_SetMyShake(CQnMYgV5HrsT256,4,300);
			sq_flashScreen(CQnMYgV5HrsT256,0,200,150,102,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);
			CQnMYgV5HrsT256.sq_StartWrite();
			CQnMYgV5HrsT256.sq_WriteDword(240);
			CQnMYgV5HrsT256.sq_WriteDword(0);
			CQnMYgV5HrsT256.sq_WriteDword(CQnMYgV5HrsT256.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL11, -1, 0, -1,getATSwordmanBonus(CQnMYgV5HrsT256,1.0,CHANGQING_BLADE_SKILL11)));
			CQnMYgV5HrsT256.sq_WriteDword(CQnMYgV5HrsT256.sq_GetIntData(CHANGQING_BLADE_SKILL11, 13));
			CQnMYgV5HrsT256.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 0, 0);
		}
		CQnMYgV5HrsT256.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		break;
	case 2:
		CQnMYgV5HrsT256.sq_PlaySound("SW_NIGHTFALL_01_A");
		CQnMYgV5HrsT256.sq_StopMove();
		CQnMYgV5HrsT256.setShowEquipmentLayer(10,false);
		CQnMYgV5HrsT256.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL11][2]);	
		CQnMYgV5HrsT256.getVar("DeepduskLicense").setBool(0,false);
		CQnMYgV5HrsT256.sq_SetStaticMoveInfo(0, -300, -300, true, -300, true);
		CQnMYgV5HrsT256.sq_SetMoveDirection(CQnMYgV5HrsT256.getDirection(), ENUM_DIRECTION_NEUTRAL);
		sq_SetZVelocity(CQnMYgV5HrsT256,-500,200);
		break;
	case 3:
		CQnMYgV5HrsT256.sq_StopMove();
		CQnMYgV5HrsT256.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL11][3]);	
		break;
	}
}

function ChangqingQQ751675335Skill25(CQSkTQuQnub5wVW4, CQf6KIc4ANBCnQrfiu, CQu7mV6JTYrDeMe, CQMVJRJpot5EUIehP)
{
	local CQnDmUohVCpsch = CQSkTQuQnub5wVW4.sq_GetVectorData(CQu7mV6JTYrDeMe, 0);
	CQSkTQuQnub5wVW4.setSkillSubState(CQnDmUohVCpsch);

	switch(CQnDmUohVCpsch)
	{
	case 0:
		CQSkTQuQnub5wVW4.sq_StopMove();
		CQSkTQuQnub5wVW4.setShowEquipmentLayer(10,false);
		CQSkTQuQnub5wVW4.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL12][0]);
		CQSkTQuQnub5wVW4.sq_SetCurrentAttackInfo(206);
		local CQGo2aR1QxRWkAwT = CQSkTQuQnub5wVW4.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL12, -1, 0, -1, getATSwordmanBonus(CQSkTQuQnub5wVW4,1.0,CHANGQING_BLADE_SKILL12));
		CQSkTQuQnub5wVW4.sq_SetCurrentAttackPower(CQGo2aR1QxRWkAwT);
		CQSkTQuQnub5wVW4.getVar("DeepduskLicense").setBool(0,false);
		local CQhqoZVFGISnYqQg8i = "character/swordman/effect/animation/atoverpace/attack1/attackhitfront_05.ani";
		CreatePooledObjectAni(CQSkTQuQnub5wVW4,CQhqoZVFGISnYqQg8i,1,CQSkTQuQnub5wVW4.getXPos(), CQSkTQuQnub5wVW4.getYPos()+1, CQSkTQuQnub5wVW4.getZPos(),CQSkTQuQnub5wVW4.getDirection(),false,true,false,false);
		local CQpzR9IbcZxkTNq = "character/swordman/effect/animation/atoverpace/attack1/attackhitback.ani";
		CreatePooledObjectAni(CQSkTQuQnub5wVW4,CQpzR9IbcZxkTNq,2,CQSkTQuQnub5wVW4.getXPos(), CQSkTQuQnub5wVW4.getYPos(), CQSkTQuQnub5wVW4.getZPos(),CQSkTQuQnub5wVW4.getDirection(),false,true,false,false);

		CQSkTQuQnub5wVW4.getVar("LicensePower").clear_vector();
		CQSkTQuQnub5wVW4.getVar("LicensePower").push_vector(CQGo2aR1QxRWkAwT);
		CQSkTQuQnub5wVW4.getVar("LicensePower").push_vector(CQSkTQuQnub5wVW4.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL12, -1, 1, -1, getATSwordmanBonus(CQSkTQuQnub5wVW4,1.0,CHANGQING_BLADE_SKILL12))*CQSkTQuQnub5wVW4.sq_GetIntData(CHANGQING_BLADE_SKILL12, 2));
		CQSkTQuQnub5wVW4.getVar("LicensePower").push_vector(CQSkTQuQnub5wVW4.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL12, -1, 2, -1,getATSwordmanBonus(CQSkTQuQnub5wVW4,1.0,CHANGQING_BLADE_SKILL12)));
		break;
	case 1:
		CQSkTQuQnub5wVW4.getVar("OverPaceHold").clear_obj_vector();
		CQSkTQuQnub5wVW4.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL12][1]);
		CQSkTQuQnub5wVW4.sq_SetCurrentAttackInfo(207);
		local CQGo2aR1QxRWkAwT = CQSkTQuQnub5wVW4.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL12, -1, 1, -1, getATSwordmanBonus(CQSkTQuQnub5wVW4,1.0,CHANGQING_BLADE_SKILL12));
		CQSkTQuQnub5wVW4.sq_SetCurrentAttackPower(CQGo2aR1QxRWkAwT);
		local CQmNvogB2amNzRoReN = sq_GetCurrentAnimation(CQSkTQuQnub5wVW4);
		local CQJGBKBytK1HhOi = sq_GetDelaySum(CQmNvogB2amNzRoReN);
		local CQkEv7WcZjys9jijE = CQSkTQuQnub5wVW4.sq_GetIntData(CHANGQING_BLADE_SKILL12, 2);
		local CQwwVclVjo8WjV = CQJGBKBytK1HhOi/(CQkEv7WcZjys9jijE + 1);
		CQSkTQuQnub5wVW4.setTimeEvent(0,CQwwVclVjo8WjV,CQkEv7WcZjys9jijE + 1,true);

		local CQZxWu3PS1sndQylBu = [
		                     "character/swordman/effect/animation/atoverpace/attack2/attackbottom_00.ani",
		                     "character/swordman/effect/animation/atoverpace/attack2/attackbottomstoneback.ani"
		                 ];
		foreach(path in CQZxWu3PS1sndQylBu)
			CreatePooledObjectAni(CQSkTQuQnub5wVW4,path,2,CQSkTQuQnub5wVW4.getXPos(), CQSkTQuQnub5wVW4.getYPos()-1, CQSkTQuQnub5wVW4.getZPos(),CQSkTQuQnub5wVW4.getDirection(),false,true,false,false);

		local CQzd8HGe7gkk5My = [
		                     "character/swordman/effect/animation/atoverpace/attack2/attackbottomstonefront.ani",
		                     "character/swordman/effect/animation/atoverpace/attack2/attackstone_02.ani"
		                 ];
		foreach(path in CQzd8HGe7gkk5My)
			CreatePooledObjectAni(CQSkTQuQnub5wVW4,path,1,CQSkTQuQnub5wVW4.getXPos(), CQSkTQuQnub5wVW4.getYPos()+1, CQSkTQuQnub5wVW4.getZPos(),CQSkTQuQnub5wVW4.getDirection(),false,true,false,false);
		break;
	case 2:
		if(CQSkTQuQnub5wVW4.isMyControlObject())
		{
			sq_SetMyShake(CQSkTQuQnub5wVW4,10,200);
			sq_flashScreen(CQSkTQuQnub5wVW4,0,400,150,153,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);
			CQSkTQuQnub5wVW4.sq_StartWrite();
			CQSkTQuQnub5wVW4.sq_WriteDword(241);
			CQSkTQuQnub5wVW4.sq_WriteDword(0);
			CQSkTQuQnub5wVW4.sq_WriteDword(CQSkTQuQnub5wVW4.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL12, -1, 2, -1,getATSwordmanBonus(CQSkTQuQnub5wVW4,1.0,CHANGQING_BLADE_SKILL12)));
			CQSkTQuQnub5wVW4.sq_WriteDword(CQSkTQuQnub5wVW4.sq_GetIntData(CHANGQING_BLADE_SKILL12, 2));
			CQSkTQuQnub5wVW4.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 0, 0);
		}
		CQSkTQuQnub5wVW4.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL12][2]);

		local CQZxWu3PS1sndQylBu = [
		                     "character/swordman/effect/animation/atoverpace/attack3/attackbottom_00.ani"
		                 ];
		foreach(path in CQZxWu3PS1sndQylBu)
			CreatePooledObjectAni(CQSkTQuQnub5wVW4,path,2,CQSkTQuQnub5wVW4.getXPos(), CQSkTQuQnub5wVW4.getYPos()-1, CQSkTQuQnub5wVW4.getZPos(),CQSkTQuQnub5wVW4.getDirection(),false,true,false,false);

		local CQzd8HGe7gkk5My = [
		                     "character/swordman/effect/animation/atoverpace/attack3/attackhitfront_00.ani"
		                 ];
		foreach(path in CQzd8HGe7gkk5My)
			CreatePooledObjectAni(CQSkTQuQnub5wVW4,path,1,CQSkTQuQnub5wVW4.getXPos(), CQSkTQuQnub5wVW4.getYPos()+1, CQSkTQuQnub5wVW4.getZPos(),CQSkTQuQnub5wVW4.getDirection(),false,true,false,false);
		break;
	}
}

function ChangqingQQ751675335Skil30(CQWaLWZazYCH1PWv)
{
	local CQVeQDETHtws7krwwi = CQWaLWZazYCH1PWv.sq_GetIntData(CHANGQING_BLADE_SKILL13, 1);
	local CQYcL2n4fC4t2Be = 0;
	local CQSYQkdHrzouVweWo = "character/atswordman/5_bladeshadows/trace/ap_trace.nut";
	if(CNSquirrelAppendage.sq_IsAppendAppendage(CQWaLWZazYCH1PWv, CQSYQkdHrzouVweWo))
		CQYcL2n4fC4t2Be = CQWaLWZazYCH1PWv.sq_GetLevelData(228, 2, sq_GetSkillLevel(CQWaLWZazYCH1PWv, 228))/1000.0*CQVeQDETHtws7krwwi;
	CQVeQDETHtws7krwwi = CQVeQDETHtws7krwwi + CQYcL2n4fC4t2Be.tointeger();

	local CQfR3eXm3IfmK1 = CQWaLWZazYCH1PWv.sq_GetIntData(CHANGQING_BLADE_SKILL13, 2);
	local CQu3pAahbZPzBOan = CQWaLWZazYCH1PWv.sq_GetIntData(CHANGQING_BLADE_SKILL13, 3);
	local CQMLhNj1PTzdLjEr1D = sq_FindTarget(CQWaLWZazYCH1PWv,0, CQVeQDETHtws7krwwi, CQfR3eXm3IfmK1, CQu3pAahbZPzBOan);
	if(!CQMLhNj1PTzdLjEr1D)
		return false;

	return true;
}

function ChangqingQQ751675335Skill42(CQnOGh1ikEK1FSp, CQGtnqSbi3ULZQpyx, CQhbNIrf8jNPGN, CQphbVTSqoWuPeio)
{
	local CQ34Nf2tFM7qHgitWF = CQnOGh1ikEK1FSp.sq_GetVectorData(CQhbNIrf8jNPGN, 0);
	CQnOGh1ikEK1FSp.setSkillSubState(CQ34Nf2tFM7qHgitWF);
	CQnOGh1ikEK1FSp.sq_ZStop();

	switch(CQ34Nf2tFM7qHgitWF)
	{
	case 0:
		local CQqZyUidxbazAPu = CQnOGh1ikEK1FSp.sq_GetVectorData(CQhbNIrf8jNPGN, 1);
		local CQKPdaYCauhdakyiJ = sq_GetObjectByObjectId(CQnOGh1ikEK1FSp, CQqZyUidxbazAPu);
		if(CQKPdaYCauhdakyiJ)
		{
			CQnOGh1ikEK1FSp.getVar("Rustynail").setObject(0,CQKPdaYCauhdakyiJ);

			CQnOGh1ikEK1FSp.getVar("Rustynail").clear_vector();
			CQnOGh1ikEK1FSp.getVar("Rustynail").push_vector(CQnOGh1ikEK1FSp.getXPos());
			CQnOGh1ikEK1FSp.getVar("Rustynail").push_vector(CQnOGh1ikEK1FSp.getYPos());

		}
		CQnOGh1ikEK1FSp.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL13][0]);
		break;
	case 1:
		CQnOGh1ikEK1FSp.setShowEquipmentLayer(10,true);
		CQnOGh1ikEK1FSp.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL13][1]);
		break;
	case 2:
		CQnOGh1ikEK1FSp.setShowEquipmentLayer(10,false);
		CQnOGh1ikEK1FSp.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL13][2]);

		local CQTyPZ7O1BD2SB = "character/atswordman/5_bladeshadows/rustynail/ap_rustynail.nut";
		local CQqZyUidxbazAPu = CQnOGh1ikEK1FSp.sq_GetVectorData(CQhbNIrf8jNPGN, 1);
		if(CQqZyUidxbazAPu != -1)
		{
			local CQKPdaYCauhdakyiJ = sq_GetObjectByObjectId(CQnOGh1ikEK1FSp, CQqZyUidxbazAPu);
			if(CQKPdaYCauhdakyiJ)
			{
				if(sq_IsHoldable(CQnOGh1ikEK1FSp,CQKPdaYCauhdakyiJ) && sq_IsGrabable(CQnOGh1ikEK1FSp,CQKPdaYCauhdakyiJ) && !sq_IsFixture(CQKPdaYCauhdakyiJ))
				{
					local CQx5eobLnCQiOWOsz = CNSquirrelAppendage.sq_AppendAppendage(CQKPdaYCauhdakyiJ, CQnOGh1ikEK1FSp, -1, false, CQTyPZ7O1BD2SB, true);
					if(CQx5eobLnCQiOWOsz)
					{
						sq_HoldAndDelayDie(CQKPdaYCauhdakyiJ, CQnOGh1ikEK1FSp, true, true, true, 0, 0, ENUM_DIRECTION_NEUTRAL, CQx5eobLnCQiOWOsz);
						local CQPXXKBwAz2pph = CQx5eobLnCQiOWOsz.getAppendageInfo();
						CQPXXKBwAz2pph.setValidTime(800);
					}
				}
				CQnOGh1ikEK1FSp.getVar("Rustynail").setObject(0,CQKPdaYCauhdakyiJ);
				CQnOGh1ikEK1FSp.getVar("Rustynail").clear_vector();
				CQnOGh1ikEK1FSp.getVar("Rustynail").push_vector(CQnOGh1ikEK1FSp.getXPos());
				CQnOGh1ikEK1FSp.getVar("Rustynail").push_vector(CQnOGh1ikEK1FSp.getYPos());
				
			}
		}
		else
		{
			local CQKPdaYCauhdakyiJ = CQnOGh1ikEK1FSp.getVar("Rustynail").getObject(0);
			if(CQKPdaYCauhdakyiJ)
			{
				local CQTyPZ7O1BD2SB = "character/swordman/effect/animation/atrustynail/wire/anchorhit_00.ani";
				createAnimationPooledObject(CQKPdaYCauhdakyiJ,CQTyPZ7O1BD2SB,true,CQKPdaYCauhdakyiJ.getXPos(), CQKPdaYCauhdakyiJ.getYPos(), CQKPdaYCauhdakyiJ.getZPos()+CQKPdaYCauhdakyiJ.getObjectHeight()/2);
				if(sq_IsHoldable(CQnOGh1ikEK1FSp,CQKPdaYCauhdakyiJ) && sq_IsGrabable(CQnOGh1ikEK1FSp,CQKPdaYCauhdakyiJ) && !sq_IsFixture(CQKPdaYCauhdakyiJ))
				{
					local CQx5eobLnCQiOWOsz = CNSquirrelAppendage.sq_AppendAppendage(CQKPdaYCauhdakyiJ, CQnOGh1ikEK1FSp, -1, false, CQTyPZ7O1BD2SB, true);
					if(CQx5eobLnCQiOWOsz)
					{
						sq_HoldAndDelayDie(CQKPdaYCauhdakyiJ, CQnOGh1ikEK1FSp, true, true, true, 0, 0, ENUM_DIRECTION_NEUTRAL, CQx5eobLnCQiOWOsz);
						local CQPXXKBwAz2pph = CQx5eobLnCQiOWOsz.getAppendageInfo();
						CQPXXKBwAz2pph.setValidTime(800);
					}
				}
			}
		}
		break;
	case 3:
		CQnOGh1ikEK1FSp.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL13][3]);
		CQnOGh1ikEK1FSp.sq_SetCurrentAttackInfo(208);
		local CQDlH4PgG3HXn2 = CQnOGh1ikEK1FSp.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL13, -1, 0, -1, getATSwordmanBonus(CQnOGh1ikEK1FSp,1.0,CHANGQING_BLADE_SKILL13));
		CQnOGh1ikEK1FSp.sq_SetCurrentAttackPower(CQDlH4PgG3HXn2);
		
		local CQTyPZ7O1BD2SB = "character/swordman/effect/animation/atrustynail/attack/attackfront_08.ani";
		CreatePooledObjectAni(CQnOGh1ikEK1FSp,CQTyPZ7O1BD2SB,1,CQnOGh1ikEK1FSp.getXPos(), CQnOGh1ikEK1FSp.getYPos(), CQnOGh1ikEK1FSp.getZPos(),CQnOGh1ikEK1FSp.getDirection(),false,true,false,false);
		
		CQnOGh1ikEK1FSp.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		break;
	}
}

function ChangqingQQ751675335Skill32(CQiBHW4ieoBpUkpLgD, CQ1FUDGR2MrwcSo, CQUp12uNvb5YmQiCc, CQHQukcSZuEgYM)
{
	local CQjzfe6vjBg4TrSN = CQiBHW4ieoBpUkpLgD.sq_GetVectorData(CQUp12uNvb5YmQiCc, 0);
	CQiBHW4ieoBpUkpLgD.setSkillSubState(CQjzfe6vjBg4TrSN);

	switch(CQjzfe6vjBg4TrSN)
	{
	case 0:
		CQiBHW4ieoBpUkpLgD.sq_StopMove();
		CQiBHW4ieoBpUkpLgD.sq_PlaySound("SW_SHAKER_BLAST_01_B");
		
		CQiBHW4ieoBpUkpLgD.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL14][0]);
		break;
	case 1:
		CQiBHW4ieoBpUkpLgD.sq_PlaySound("SHAKER_BLAST_SWIRL");
		CQiBHW4ieoBpUkpLgD.sq_StopMove();
		CQiBHW4ieoBpUkpLgD.sq_SetStaticMoveInfo(0, 100, 100, true, 100, true);
		CQiBHW4ieoBpUkpLgD.sq_SetMoveDirection(CQiBHW4ieoBpUkpLgD.getDirection(), ENUM_DIRECTION_NEUTRAL);
		sq_SetZVelocity(CQiBHW4ieoBpUkpLgD,200,100);
		
		local CQE9SPa9ucSCv3AXPD = sq_GetIntData(CQiBHW4ieoBpUkpLgD, CHANGQING_BLADE_SKILL14, 3);
		local CQ4NYNUC7PxDlAA = sq_GetDelaySum(sq_GetCurrentAnimation(CQiBHW4ieoBpUkpLgD))/CQE9SPa9ucSCv3AXPD;
		CQiBHW4ieoBpUkpLgD.setTimeEvent(0,CQ4NYNUC7PxDlAA,CQE9SPa9ucSCv3AXPD,true);
		CQiBHW4ieoBpUkpLgD.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL14][1]);
		CQiBHW4ieoBpUkpLgD.sq_SetCurrentAttackInfo(211);
		local CQQGVhfWqCLpgTPBK = CQiBHW4ieoBpUkpLgD.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL14, -1, 0, -1, getATSwordmanBonus(CQiBHW4ieoBpUkpLgD,1.0,CHANGQING_BLADE_SKILL14));
		CQiBHW4ieoBpUkpLgD.sq_SetCurrentAttackPower(CQQGVhfWqCLpgTPBK);
		break;
	case 2:
		CQiBHW4ieoBpUkpLgD.sq_StopMove();
		CQiBHW4ieoBpUkpLgD.sq_ZStop();
		CQiBHW4ieoBpUkpLgD.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL14][2]);
		break;
	case 3:
		CQiBHW4ieoBpUkpLgD.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL14][3]);
		CQiBHW4ieoBpUkpLgD.sq_PlaySound("SHAKER_BLAST_SLASH");
		break;
	}
}

function ChangqingQQ751675335Skill35(CQLacqCzFzqe8F, CQ6eCIs6zs1WheOM, CQecrVmIE5yb91, CQXf7f1QfT8k4Ws3)
{
	local CQx1IUDkrEI7djsNyD = CQLacqCzFzqe8F.sq_GetVectorData(CQecrVmIE5yb91, 0);
	CQLacqCzFzqe8F.setSkillSubState(CQx1IUDkrEI7djsNyD);

	switch(CQx1IUDkrEI7djsNyD)
	{
	case 0:
		CQLacqCzFzqe8F.sq_StopMove();
		CQLacqCzFzqe8F.sq_PlaySound("R_SW_NOMANA_BL");
		
		CQLacqCzFzqe8F.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL15][0]);
		CQLacqCzFzqe8F.sq_SetCurrentAttackInfo(0);
		local CQPJTEWKK2kB5Sa = CQLacqCzFzqe8F.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL15, -1, 0, -1, getATSwordmanBonus(CQLacqCzFzqe8F,1.0,CHANGQING_BLADE_SKILL15));
		
		CQLacqCzFzqe8F.getVar("LicensePower").clear_vector();
		CQLacqCzFzqe8F.getVar("LicensePower").push_vector(CQPJTEWKK2kB5Sa);
		CQLacqCzFzqe8F.getVar("DeepduskLicense").setBool(0,false);
		break;
	case 1:
		if(CQLacqCzFzqe8F.isMyControlObject())
			sq_SetMyShake(CQLacqCzFzqe8F,5,100);
		CQLacqCzFzqe8F.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL15][1]);
		CQLacqCzFzqe8F.sq_SetCurrentAttackInfo(0);
		local CQPJTEWKK2kB5Sa = CQLacqCzFzqe8F.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL15, -1, 0, -1, getATSwordmanBonus(CQLacqCzFzqe8F,1.0,CHANGQING_BLADE_SKILL15));
		CQLacqCzFzqe8F.sq_SetCurrentAttackPower(CQPJTEWKK2kB5Sa);
		
		local CQtIq93jPovs6M = "character/swordman/effect/animation/atshatteredglass/shatteredglassattack_02.ani";
		CreatePooledObjectAni(CQLacqCzFzqe8F,CQtIq93jPovs6M,1,CQLacqCzFzqe8F.getXPos(), CQLacqCzFzqe8F.getYPos(), CQLacqCzFzqe8F.getZPos(),CQLacqCzFzqe8F.getDirection(),false,true,false,false);
		local CQBWKvF25MVW1rp5 = "character/swordman/effect/animation/atshatteredglass/shatteredglassdust_01.ani";
		CreatePooledObjectAni(CQLacqCzFzqe8F,CQBWKvF25MVW1rp5,1,CQLacqCzFzqe8F.getXPos(), CQLacqCzFzqe8F.getYPos(), CQLacqCzFzqe8F.getZPos(),CQLacqCzFzqe8F.getDirection(),false,true,false,false);
		break;
	}
}

function ChangqingQQ751675335Skill37(CQvvmovGivenC3GR6D, CQDg2K8nVu4k3PF, CQR3oTLRlBo7BkDjh, CQiLgrpNFcfBLD)
{
	local CQ1OFSny9PAHNzS7 = CQvvmovGivenC3GR6D.sq_GetVectorData(CQR3oTLRlBo7BkDjh, 0);
	CQvvmovGivenC3GR6D.setSkillSubState(CQ1OFSny9PAHNzS7);
	local CQUyvMdYaCzsZ1AhiN = 0.0;
	if(sq_GetSkillLevel(CQvvmovGivenC3GR6D, CHANGQING_BLADE_SKILL16) > 8)
		CQUyvMdYaCzsZ1AhiN = CQvvmovGivenC3GR6D.sq_GetLevelData(CHANGQING_BLADE_SKILL16, 2, sq_GetSkillLevel(CQvvmovGivenC3GR6D, CHANGQING_BLADE_SKILL16))/1000.0;
	local CQHnBjP91zKWGWA = CQvvmovGivenC3GR6D.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL16, -1, 1, -1, getATSwordmanBonus(CQvvmovGivenC3GR6D,1.0 + CQUyvMdYaCzsZ1AhiN,CHANGQING_BLADE_SKILL16));
		
	switch(CQ1OFSny9PAHNzS7)
	{
	case 0:
		CQvvmovGivenC3GR6D.sq_StopMove();
		CQvvmovGivenC3GR6D.sq_PlaySound("SHOWDOWN");
		CQvvmovGivenC3GR6D.setShowEquipmentLayer(10,false);
		CQvvmovGivenC3GR6D.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL16][0]);
		if(CQvvmovGivenC3GR6D.isMyControlObject())
			sq_flashScreen(CQvvmovGivenC3GR6D,200,1800,2000,178,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);
		
		if(sq_GetSkillLevel(CQvvmovGivenC3GR6D, CHANGQING_BLADE_SKILL16) > 5)
			sq_SendMessage(CQvvmovGivenC3GR6D, 0, 1, 0);
		
		if(sq_GetSkillLevel(CQvvmovGivenC3GR6D, CHANGQING_BLADE_SKILL16) < 3)
			break;
		
		CQvvmovGivenC3GR6D.getVar("LicensePower").clear_vector();
		CQvvmovGivenC3GR6D.getVar("LicensePower").push_vector(CQvvmovGivenC3GR6D.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL16, -1, 0, -1, getATSwordmanBonus(CQvvmovGivenC3GR6D,1.0,CHANGQING_BLADE_SKILL16)));
		CQvvmovGivenC3GR6D.getVar("LicensePower").push_vector(CQHnBjP91zKWGWA);
		break;
	case 1:
		CQvvmovGivenC3GR6D.sq_PlaySound("SHOWDOWN_SWISH_01");
		CQvvmovGivenC3GR6D.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL16][1]);
		CQvvmovGivenC3GR6D.sq_SetCurrentAttackInfo(215);
		local CQjjvQwPYsUnP4PTC = CQvvmovGivenC3GR6D.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL16, -1, 0, -1, getATSwordmanBonus(CQvvmovGivenC3GR6D,1.0,CHANGQING_BLADE_SKILL16));
		CQvvmovGivenC3GR6D.sq_SetCurrentAttackPower(CQjjvQwPYsUnP4PTC);
		local CQE5BOjrL5MmHS = [
			"character/swordman/effect/animation/atshowdown/2st/showdown2stwireback_00.ani",
			"character/swordman/effect/animation/atshowdown/2st/showdown2stwirefront_00.ani"
		];
		foreach(path in CQE5BOjrL5MmHS)
			CreatePooledObjectAni(CQvvmovGivenC3GR6D,path,1,CQvvmovGivenC3GR6D.getXPos(), CQvvmovGivenC3GR6D.getYPos(), CQvvmovGivenC3GR6D.getZPos(),CQvvmovGivenC3GR6D.getDirection(),false,true,false,false);
		
		break;
	case 2:
		local CQ4XtBMzhTtlAlOx = CQvvmovGivenC3GR6D.getVar("ShowDown").get_obj_vector_size();
		local CQQA8RAXyE7daFIj8M = "character/atswordman/5_bladeshadows/showdown/ap_showdown.nut";
		for(local CQLuOmes62a1Ses=0; CQLuOmes62a1Ses< CQ4XtBMzhTtlAlOx; ++CQLuOmes62a1Ses)
		{
			local CQ7UzskQmUhKs2Klq = CQvvmovGivenC3GR6D.getVar("ShowDown").get_obj_vector(CQLuOmes62a1Ses);
			if(CQ7UzskQmUhKs2Klq)
			{
				local CQrkZXH5BoFPitJn = CNSquirrelAppendage.sq_AppendAppendage(CQ7UzskQmUhKs2Klq, CQvvmovGivenC3GR6D, -1, false, CQQA8RAXyE7daFIj8M, true);
				sq_HoldAndDelayDie(CQ7UzskQmUhKs2Klq, CQvvmovGivenC3GR6D, true, true, true, 100, 200, ENUM_DIRECTION_NEUTRAL, CQrkZXH5BoFPitJn);
				local CQC6wdiJzMYuIkHcui = CQrkZXH5BoFPitJn.getAppendageInfo();
				CQC6wdiJzMYuIkHcui.setValidTime(500);
			}
		}
		CQvvmovGivenC3GR6D.sq_PlaySound("SHOWDOWN_SWISH_02");
		CQvvmovGivenC3GR6D.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL16][2]);
		CQvvmovGivenC3GR6D.sq_SetCurrentAttackInfo(214);
		CQvvmovGivenC3GR6D.sq_SetCurrentAttackPower(CQHnBjP91zKWGWA);
		break;
	}
}

function ChangqingQQ751675335Skill39(CQsaRsTB3l94HoUE, CQVMxBqV2FzIf8I, CQ4Y3mcCuXFUsStkn, CQoPS7iOhooGB3ZV1)
{
	local CQ2yYYvxyMRsLt = CQsaRsTB3l94HoUE.sq_GetVectorData(CQ4Y3mcCuXFUsStkn, 0);
	CQsaRsTB3l94HoUE.setSkillSubState(CQ2yYYvxyMRsLt);

	switch(CQ2yYYvxyMRsLt)
	{
	case 0:
		CQsaRsTB3l94HoUE.sq_StopMove();
		CQsaRsTB3l94HoUE.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL17][0]);
		CQsaRsTB3l94HoUE.getVar("DeepduskLicense").setBool(0,false);
		break;
	case 1:
		CQsaRsTB3l94HoUE.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL17][1]);
		
		local CQmnVu87XvAWF5KG = sq_GetDistancePos(CQsaRsTB3l94HoUE.getXPos(), CQsaRsTB3l94HoUE.getDirection(), CQsaRsTB3l94HoUE.sq_GetIntData(CHANGQING_BLADE_SKILL17, 0));
		CQsaRsTB3l94HoUE.getVar("SliceImpact").setInt(0, CQmnVu87XvAWF5KG);
		CQsaRsTB3l94HoUE.sq_SetDirection(sq_GetOppositeDirection(CQsaRsTB3l94HoUE.getDirection()));
		break;
	case 2:
		CQsaRsTB3l94HoUE.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL17][2]);
		local CQJjYHLOmAzbZDKXgM = CQsaRsTB3l94HoUE.sq_GetIntData(CHANGQING_BLADE_SKILL17, 0)/2;
		CQsaRsTB3l94HoUE.sq_StartWrite();
		CQsaRsTB3l94HoUE.sq_WriteDword(247);
		CQsaRsTB3l94HoUE.sq_WriteDword(0);
		CQsaRsTB3l94HoUE.sq_WriteDword(CQsaRsTB3l94HoUE.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL17, -1, 0, -1,getATSwordmanBonus(CQsaRsTB3l94HoUE,1.0,CHANGQING_BLADE_SKILL17)));
		CQsaRsTB3l94HoUE.sq_SendCreatePassiveObjectPacket(24387, 0, CQJjYHLOmAzbZDKXgM, 0, 70);
		break;
	}
}

function ChangqingQQ751675335Skill26(CQk5V5pwDBKkGzJ, CQaCrzbT8cm7PHHBW, CQ5S7tBLEOMBHW, CQwDIFOEN6tHA4M1)
{
	local CQOol2Qmxz7sauNVXf = CQk5V5pwDBKkGzJ.sq_GetVectorData(CQ5S7tBLEOMBHW, 0);
	CQk5V5pwDBKkGzJ.setSkillSubState(CQOol2Qmxz7sauNVXf);

	switch(CQOol2Qmxz7sauNVXf)
	{
	case 0:
		CQk5V5pwDBKkGzJ.sq_StopMove();
		CQk5V5pwDBKkGzJ.setShowEquipmentLayer(10,false);
		CQk5V5pwDBKkGzJ.sq_PlaySound("STRAIGHTSHOT_READY");
		CQk5V5pwDBKkGzJ.sq_PlaySound("SW_STRAIGHTSHOT_01_A");
		CQk5V5pwDBKkGzJ.getVar("DeepduskLicense").setBool(0,false);
		
		CQk5V5pwDBKkGzJ.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL18][0]);
		if(CQk5V5pwDBKkGzJ.isMyControlObject())
			sq_flashScreen(CQk5V5pwDBKkGzJ,150,500,200,153,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);
				local CQ8qKTh3JssWi6N4N = [
			"character/swordman/effect/animation/atlicense/licenseback_00.ani",
			"character/swordman/effect/animation/atlicense/licensefront_00.ani"
		];
		foreach(path in CQ8qKTh3JssWi6N4N)
			CreatePooledObjectAni(CQk5V5pwDBKkGzJ,path,1,CQk5V5pwDBKkGzJ.getXPos(), CQk5V5pwDBKkGzJ.getYPos(), CQk5V5pwDBKkGzJ.getZPos(),CQk5V5pwDBKkGzJ.getDirection(),false,true,false,false);
		break;
	case 1:
		CQk5V5pwDBKkGzJ.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL18][1]);
		CQk5V5pwDBKkGzJ.sq_SetCurrentAttackInfo(216);
		local CQWlqrNGR4jnIF = CQk5V5pwDBKkGzJ.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL18, -1, 0, -1, getATSwordmanBonus(CQk5V5pwDBKkGzJ,1.0,CHANGQING_BLADE_SKILL18));
		
		local CQV8KAAiOmFkoxV7 = CQk5V5pwDBKkGzJ.getVar("LicensePower").size_vector();
		for(local CQYBqMxg4EYlWJV3vD = 0; CQYBqMxg4EYlWJV3vD < CQV8KAAiOmFkoxV7; ++CQYBqMxg4EYlWJV3vD)
			CQWlqrNGR4jnIF = CQWlqrNGR4jnIF + CQk5V5pwDBKkGzJ.getVar("LicensePower").get_vector(CQYBqMxg4EYlWJV3vD);
		CQk5V5pwDBKkGzJ.getVar("LicensePower").clear_vector();
		
		CQk5V5pwDBKkGzJ.sq_SetCurrentAttackPower(CQWlqrNGR4jnIF);
		CQk5V5pwDBKkGzJ.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		
		local CQSF3h5Mn2X9ptC = [
			"character/swordman/effect/animation/atstraightshot/attack/dashsmokefront_02.ani"
			];
		foreach(path in CQSF3h5Mn2X9ptC)
			CreatePooledObjectAni(CQk5V5pwDBKkGzJ,path,1,CQk5V5pwDBKkGzJ.getXPos(), CQk5V5pwDBKkGzJ.getYPos(), CQk5V5pwDBKkGzJ.getZPos(),CQk5V5pwDBKkGzJ.getDirection(),false,true,false,false);

		local CQfpoQHSCnw1t5C6e = [
			"character/swordman/effect/animation/atstraightshot/attack/dashsmokeback_00.ani"
		];
		foreach(path in CQfpoQHSCnw1t5C6e)
			CreatePooledObjectAni(CQk5V5pwDBKkGzJ,path,2,CQk5V5pwDBKkGzJ.getXPos(), CQk5V5pwDBKkGzJ.getYPos(), CQk5V5pwDBKkGzJ.getZPos(),CQk5V5pwDBKkGzJ.getDirection(),false,true,false,false);

		break;
	}
}

function ChangqingQQ751675335Skill55(CQuQgOuvTD3KQi, CQMzFVcdoMiOyzZ9, CQn9bR6A9vduwHZ5LN, CQGNNmaWQAPmncL)
{
	local CQhHvaUxMVlle3382 = CQuQgOuvTD3KQi.sq_GetVectorData(CQn9bR6A9vduwHZ5LN, 0);
	CQuQgOuvTD3KQi.setSkillSubState(CQhHvaUxMVlle3382);

	switch(CQhHvaUxMVlle3382)
	{
	case 0:
		CQuQgOuvTD3KQi.sq_StopMove();
		CQuQgOuvTD3KQi.sq_PlaySound("SW_WILDFLOWER_02_A");
		
		CQuQgOuvTD3KQi.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL20][0]);
		CQuQgOuvTD3KQi.getVar("DeepduskLicense").setBool(0,false);
		CQuQgOuvTD3KQi.getVar("LicensePower").clear_vector();
		CQuQgOuvTD3KQi.getVar("LicensePower").push_vector(CQuQgOuvTD3KQi.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL20, -1, 1, -1, getATSwordmanBonus(CQuQgOuvTD3KQi,1.0,CHANGQING_BLADE_SKILL20)));
		CQuQgOuvTD3KQi.getVar("LicensePower").push_vector(CQuQgOuvTD3KQi.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL20, -1, 2, -1, getATSwordmanBonus(CQuQgOuvTD3KQi,1.0,CHANGQING_BLADE_SKILL20)));
		CQuQgOuvTD3KQi.getVar("LicensePower").push_vector(CQuQgOuvTD3KQi.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL20, -1, 0, -1, getATSwordmanBonus(CQuQgOuvTD3KQi,1.0,CHANGQING_BLADE_SKILL20))CQuQgOuvTD3KQi.sq_GetIntData(CHANGQING_BLADE_SKILL20, 1));
		break;
	case 1:
	
		CQuQgOuvTD3KQi.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL20][1]);
		CQuQgOuvTD3KQi.sq_SetCurrentAttackInfo(218);
		local CQpaBXRXccJdUy = CQuQgOuvTD3KQi.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL20, -1, 1, -1, getATSwordmanBonus(CQuQgOuvTD3KQi,1.0,CHANGQING_BLADE_SKILL20));
		CQuQgOuvTD3KQi.sq_SetCurrentAttackPower(CQpaBXRXccJdUy);
		if(CQuQgOuvTD3KQi.isMyControlObject())
		{
			sq_SetMyShake(CQuQgOuvTD3KQi,8,100);
			sq_flashScreen(CQuQgOuvTD3KQi,100,300,100,76,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);
		}
		break;
	case 2:
	
		CQuQgOuvTD3KQi.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL20][2]);
		CQuQgOuvTD3KQi.sq_SetCurrentAttackInfo(218);
		local CQpaBXRXccJdUy = CQuQgOuvTD3KQi.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL20, -1, 1, -1, getATSwordmanBonus(CQuQgOuvTD3KQi,1.0,CHANGQING_BLADE_SKILL20));
		CQuQgOuvTD3KQi.sq_SetCurrentAttackPower(CQpaBXRXccJdUy);
		if(CQuQgOuvTD3KQi.isMyControlObject())
		{
			sq_SetMyShake(CQuQgOuvTD3KQi,3,100);
			sq_flashScreen(CQuQgOuvTD3KQi,100,700,100,76,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,2);
		}
		break;
	case 3:
		CQuQgOuvTD3KQi.sq_PlaySound("R_SW_WILDFLOWER_TP");
		CQuQgOuvTD3KQi.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL20][3]);
		CQuQgOuvTD3KQi.sq_SetCurrentAttackInfo(217);
		local CQpaBXRXccJdUy = CQuQgOuvTD3KQi.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL20, -1, 2, -1, getATSwordmanBonus(CQuQgOuvTD3KQi,1.0,CHANGQING_BLADE_SKILL20));
		CQuQgOuvTD3KQi.sq_SetCurrentAttackPower(CQpaBXRXccJdUy);
		CQuQgOuvTD3KQi.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		break;
	case 4:
		CQuQgOuvTD3KQi.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL20][4]);
		break;
	}
}
