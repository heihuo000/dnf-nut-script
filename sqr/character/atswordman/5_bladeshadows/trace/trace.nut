

function checkExecutableSkill_Trace(CQpgkqba9RWHfwyv)
{
	if (!CQpgkqba9RWHfwyv) return false;
	local CQ33JI9qwb6s61tzRc = CQpgkqba9RWHfwyv.sq_IsUseSkill(CHANGQING_BLADE_SKILL19);

	if (CQ33JI9qwb6s61tzRc)
	{
		CQpgkqba9RWHfwyv.sq_IntVectClear();
		CQpgkqba9RWHfwyv.sq_IntVectPush(0);
		CQpgkqba9RWHfwyv.sq_AddSetStatePacket(CHANGQING_BLADE_STATE19, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_Trace(CQqLmCZ41SEO1WW)
{
	if (!CQqLmCZ41SEO1WW) return false;

	return true;

}

function onSetState_Trace(obj, CQTtmUnoIWDm2A, CQsn1EdhhPclVTsb, CQ6jiZPMt7Zd3NseIY)
{
	if(!obj) return;
	local CQe5R9wD5eQ1Bea = obj.sq_GetVectorData(CQsn1EdhhPclVTsb, 0);
	obj.setSkillSubState(CQe5R9wD5eQ1Bea);
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	switch(CQe5R9wD5eQ1Bea)
	{
	case 0:
		obj.sq_StopMove();
		if(obj.isMyControlObject())
			sq_flashScreen(obj,200,400,100,51,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM);

		local CQXXDvjbUL2KL2EvJ = "character/atswordman/5_bladeshadows/trace/ap_trace.nut";
		local CQxAvoMdS5uPFt = obj.sq_GetSkillLevel(CHANGQING_BLADE_SKILL19);
		local CQPuVKSVlq9uZkpU = obj.sq_GetIntData(CHANGQING_BLADE_SKILL19, 0);
		local CQ9UY6rtpJOmGDoWhW = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, CHANGQING_BLADE_SKILL19,false, CQXXDvjbUL2KL2EvJ, false);
		CQ9UY6rtpJOmGDoWhW.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), CHANGQING_BLADE_SKILL19, CQxAvoMdS5uPFt);
		CQ9UY6rtpJOmGDoWhW.sq_SetValidTime(CQPuVKSVlq9uZkpU);
		CQ9UY6rtpJOmGDoWhW.setEnableIsBuff(true);
		CNSquirrelAppendage.sq_Append(CQ9UY6rtpJOmGDoWhW, obj, obj, true);
		CQ9UY6rtpJOmGDoWhW.setBuffIconImage(151);
		//obj.sq_PlaySound("TRACE_ACTIVE");
		//obj.sq_PlaySound("SW_TRACE_01");
		local CQtkVc6cN3TzAlo = "character/swordman/effect/animation/attrace/tracebottom_02.ani";
		CreatePooledObjectAni(obj,CQtkVc6cN3TzAlo,2,obj.getXPos(), obj.getYPos(), obj.getZPos(),obj.getDirection(),false,true,false,false);
		local CQtkVc6cN3TzAlo = "character/swordman/effect/animation/attrace/tracefront_00.ani";
		CreatePooledObjectAni(obj,CQtkVc6cN3TzAlo,2,obj.getXPos(), obj.getYPos(), obj.getZPos(),obj.getDirection(),false,true,false,false);
		obj.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][CHANGQING_BLADE_SKILL19][0]);
		break;
	}
}

function onEndCurrentAni_Trace(CQRC7GiOJFb1Srir)
{
	if(!CQRC7GiOJFb1Srir) return;
	local CQiSI4YevRVKs3ups9 = CQRC7GiOJFb1Srir.getSkillSubState();
	switch(CQiSI4YevRVKs3ups9)
	{
	case 0:
		CQRC7GiOJFb1Srir.sq_IntVectClear();
		CQRC7GiOJFb1Srir.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_Trace(CQ1Dll76ObrPDAA, CQUoLWKL4S5SITAsM, CQHqQDmay9pooF, CQjzK1gkXWRwOeOP)
{
	local CQE9qkB3kPScp2Oagc = SwordLicense_ATSwoedman(CQ1Dll76ObrPDAA, CQUoLWKL4S5SITAsM, CQHqQDmay9pooF, CQjzK1gkXWRwOeOP);

	return CQE9qkB3kPScp2Oagc;
}

function onEnterFrame_Trace(CQ3N3wOHD7xRtW, CQqGpPQU8wL4EjsO)
{
	if(!CQ3N3wOHD7xRtW) return;
	
	switch(CQqGpPQU8wL4EjsO)
	{
	case 3:

		break;
	case 4:

		break;
	}
}

function onEndState_Trace(CQKEhNhgQLmXySspuW, CQTwFgFMM5MSwla)
{
	if(!CQKEhNhgQLmXySspuW) return;
	local CQsxbqticqypnGEsX = CQKEhNhgQLmXySspuW.getSkillSubState();
	switch(CQsxbqticqypnGEsX)
	{
	case 3:

		break;
	case 4:

		break;
	}
}



function onChangeSkillEffect_Trace(CQ6dNIzvKH8wer, CQeMbC4dghscU3pP, CQXHBfGStUjgcyFJ7t)
{
	if(!CQ6dNIzvKH8wer) return;
	local CQxatUuW4FG4mkF = CQXHBfGStUjgcyFJ7t.readDword();

}

function onKeyFrameFlag_Trace(CQPe9Ec9nfvXYDDZU, CQ9cPZXCAyCDTz)
{
	if (!CQPe9Ec9nfvXYDDZU) return false;
	switch(CQ9cPZXCAyCDTz)
	{
	case 0:

		break;
	}
	return true;
}
