

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_26")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_26")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_26")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_26");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_26(appendage, flagIndex)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}

	local state = parentObj.getState();//������������
	if (state != 8) return true;//����������̪����������

	local attackIndex = parentObj.getAttackIndex();//��̪ID

	switch (attackIndex)
	{
	case 0:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Atk0_casting_loop/BnW_castingLoop.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		case 2:
			parentObj.sq_PlaySound("AIRAK_SKILL_01");//��ۯ���
			break;
		case 3:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Atk0_casting_end/BnW_castingEnd.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		}
		break;
	case 2:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("AIRAK_SKILL_02");//��ۯ���
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Atk2_casting_loop/BnW_castingLoop.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		}
		break;
	case 3:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Atk2_casting_end/BnW_castingEnd.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		}
		break;
	case 4:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("AIRAK_SKILL_03");//��ۯ���
			parentObj.sq_PlaySound("LUISE_JUMP");//��ۯ���
			break;
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Atk4_casting_loop/BnW_castingLoop.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		case 3:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Atk4_casting_end/BnW_castingEnd.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		case 4:
			parentObj.sq_PlaySound("AIRAK_CRANE_UP");//��ۯ���
			break;
		}
		break;
	case 5:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("AIRAK_SKILL_04");//��ۯ���
			break;
		}
		break;
	case 9:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Teleport_01.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Teleport_01.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		case 3:
			parentObj.sq_PlaySound("AIRAK_TELEPORT");//��ۯ���
			break;
		}
		break;
	case 10:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Atk10_casting_loop/BnW_castingLoop.ani", ENUM_DRAWLAYER_NORMAL, true);
			parentObj.sq_PlaySound("R_SARPOZA_BLACKEYE_PATTERN_SHIELD");//��ۯ���
			break;
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Atk10_casting_End/BnW_castingEnd.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		case 3:
			parentObj.sq_PlaySound("R_AIRAK_THROW");//��ۯ���
			break;
		case 4:
			parentObj.sq_PlaySound("R_AIRAK_ATK");//��ۯ���
			break;
		}
		break;
	case 12:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Teleport_01.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Teleport_01.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		case 3:
			parentObj.sq_PlaySound("AIRAK_TELEPORT");//��ۯ���
			break;
		}
		break;
	case 15:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Teleport_01.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Teleport_01.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		case 3:
			parentObj.sq_PlaySound("AIRAK_TELEPORT");//��ۯ���
			break;
		}
		break;
	case 18:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Teleport_01.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/airak/animation/Teleport_01.ani", ENUM_DRAWLAYER_NORMAL, true);
			parentObj.sq_PlaySound("AIRAK_TELEPORT");//��ۯ���
			break;
		}
		break;

	}
	return true;
}

function proc_appendage_monster_358332886_26(appendage)
{
	if (!appendage) return;

}

function onStart_appendage_monster_358332886_26(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}

	local objectManager = parentObj.getObjectManager();//��������η����
	local objectNumber = objectManager.getCollisionObjectNumber();//���
	for (local i = 0; i < objectNumber; i++)
	{
		local object = objectManager.getCollisionObject(i);//�������׾����
		if (!object && !object.isObjectType(OBJECTTYPE_PASSIVE)) continue;
		local n1count = object.getMyPassiveObjectCount(109055579);
		local n2count = object.getMyPassiveObjectCount(109055580);
		local n3count = object.getMyPassiveObjectCount(109055581);
		local n4count = object.getMyPassiveObjectCount(109055582);
		local n5count = object.getMyPassiveObjectCount(109055583);
		local n6count = object.getMyPassiveObjectCount(109054506);
		local n7count = object.getMyPassiveObjectCount(109055573);
		local n8count = object.getMyPassiveObjectCount(109055574);
		local n9count = object.getMyPassiveObjectCount(109055575);
		local n10count = object.getMyPassiveObjectCount(109055576);
		local n11count = object.getMyPassiveObjectCount(109055577);
		local n12count = object.getMyPassiveObjectCount(109055578);
		if (n1count > 0 && n7count > 0)
		{
			local n1myClone = object.getMyPassiveObject(109055579, 0);
			local n7myClone = object.getMyPassiveObject(109055573, 0);
			local pAni = n1myClone.getCurrentAnimation();
			local frmIndex = sq_GetAnimationFrameIndex(pAni);

			
			if (frmIndex < 28)return;

			local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 27);//��������
			local fireT = pAni.getDelaySum(28, 37);//������
			local srcX = n1myClone.getXPos();
			local srcY = n1myClone.getYPos();
			local srcZ = n1myClone.getZPos();
			local MoveX = n7myClone.getXPos();
			local MoveY = n7myClone.getYPos();
			local MoveZ = n7myClone.getZPos();

			local dstX = sq_GetUniformVelocity(srcX, MoveX, currentT, fireT);
			local dstY = sq_GetUniformVelocity(srcY, MoveY, currentT, fireT);
			local dstZ = sq_GetUniformVelocity(srcZ, MoveZ, currentT, fireT);

			sq_setCurrentAxisPos(n1myClone, 0, dstX);//��������x���
			sq_setCurrentAxisPos(n1myClone, 1, dstY);//��������y���
			sq_setCurrentAxisPos(n1myClone, 2, dstZ);//��������z���
			sq_getMyCharacter().getVar("debugnew2").push_vector(1);//ʥ��
		}
		if (n2count > 0 && n8count > 0)
		{
			local n2myClone = object.getMyPassiveObject(109055580, 0);
			local n8myClone = object.getMyPassiveObject(109055574, 0);
			local pAni = n2myClone.getCurrentAnimation();
			local frmIndex = sq_GetAnimationFrameIndex(pAni);

			if (frmIndex < 28)return;

			local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 27);//��������
			local fireT = pAni.getDelaySum(28, 37);//������
			local srcX = n2myClone.getXPos();
			local srcY = n2myClone.getYPos();
			local srcZ = n2myClone.getZPos();
			local MoveX = n8myClone.getXPos();
			local MoveY = n8myClone.getYPos();
			local MoveZ = n8myClone.getZPos();

			local dstX = sq_GetUniformVelocity(srcX, MoveX, currentT, fireT);
			local dstY = sq_GetUniformVelocity(srcY, MoveY, currentT, fireT);
			local dstZ = sq_GetUniformVelocity(srcZ, MoveZ, currentT, fireT);

			sq_setCurrentAxisPos(n2myClone, 0, dstX);//��������x���
			sq_setCurrentAxisPos(n2myClone, 1, dstY);//��������y���
			sq_setCurrentAxisPos(n2myClone, 2, dstZ);//��������z���
			sq_getMyCharacter().getVar("debugnew2").push_vector(2);//ʥ��
		}
		if (n3count > 0 && n9count > 0)
		{
			local n3myClone = object.getMyPassiveObject(109055581, 0);
			local n9myClone = object.getMyPassiveObject(109055575, 0);
			local pAni = n3myClone.getCurrentAnimation();
			local frmIndex = sq_GetAnimationFrameIndex(pAni);

			if (frmIndex < 28)return;

			local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 27);//��������
			local fireT = pAni.getDelaySum(28, 37);//������
			local srcX = n3myClone.getXPos();
			local srcY = n3myClone.getYPos();
			local srcZ = n3myClone.getZPos();
			local MoveX = n9myClone.getXPos();
			local MoveY = n9myClone.getYPos();
			local MoveZ = n9myClone.getZPos();

			local dstX = sq_GetUniformVelocity(srcX, MoveX, currentT, fireT);
			local dstY = sq_GetUniformVelocity(srcY, MoveY, currentT, fireT);
			local dstZ = sq_GetUniformVelocity(srcZ, MoveZ, currentT, fireT);

			sq_setCurrentAxisPos(n3myClone, 0, dstX);//��������x���
			sq_setCurrentAxisPos(n3myClone, 1, dstY);//��������y���
			sq_setCurrentAxisPos(n3myClone, 2, dstZ);//��������z���
			sq_getMyCharacter().getVar("debugnew2").push_vector(3);//ʥ��
		}
		if (n4count > 0 && n10count > 0)
		{
			local n4myClone = object.getMyPassiveObject(109055582, 0);
			local n10myClone = object.getMyPassiveObject(109055576, 0);
			local pAni = n4myClone.getCurrentAnimation();
			local frmIndex = sq_GetAnimationFrameIndex(pAni);

			if (frmIndex < 28)return;

			local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 27);//��������
			local fireT = pAni.getDelaySum(28, 37);//������
			local srcX = n4myClone.getXPos();
			local srcY = n4myClone.getYPos();
			local srcZ = n4myClone.getZPos();
			local MoveX = n10myClone.getXPos();
			local MoveY = n10myClone.getYPos();
			local MoveZ = n10myClone.getZPos();

			local dstX = sq_GetUniformVelocity(srcX, MoveX, currentT, fireT);
			local dstY = sq_GetUniformVelocity(srcY, MoveY, currentT, fireT);
			local dstZ = sq_GetUniformVelocity(srcZ, MoveZ, currentT, fireT);

			sq_setCurrentAxisPos(n4myClone, 0, dstX);//��������x���
			sq_setCurrentAxisPos(n4myClone, 1, dstY);//��������y���
			sq_setCurrentAxisPos(n4myClone, 2, dstZ);//��������z���
			sq_getMyCharacter().getVar("debugnew2").push_vector(4);//ʥ��
		}
		if (n5count > 0 && n11count > 0)
		{
			local n5myClone = object.getMyPassiveObject(109055583, 0);
			local n11myClone = object.getMyPassiveObject(109055577, 0);
			local pAni = n5myClone.getCurrentAnimation();
			local frmIndex = sq_GetAnimationFrameIndex(pAni);

			if (frmIndex < 28)return;

			local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 27);//��������
			local fireT = pAni.getDelaySum(28, 37);//������
			local srcX = n5myClone.getXPos();
			local srcY = n5myClone.getYPos();
			local srcZ = n5myClone.getZPos();
			local MoveX = n11myClone.getXPos();
			local MoveY = n11myClone.getYPos();
			local MoveZ = n11myClone.getZPos();

			local dstX = sq_GetUniformVelocity(srcX, MoveX, currentT, fireT);
			local dstY = sq_GetUniformVelocity(srcY, MoveY, currentT, fireT);
			local dstZ = sq_GetUniformVelocity(srcZ, MoveZ, currentT, fireT);

			sq_setCurrentAxisPos(n5myClone, 0, dstX);//��������x���
			sq_setCurrentAxisPos(n5myClone, 1, dstY);//��������y���
			sq_setCurrentAxisPos(n5myClone, 2, dstZ);//��������z���
			sq_getMyCharacter().getVar("debugnew2").push_vector(5);//ʥ��
		}
		if (n6count > 0 && n12count > 0)
		{
			local n6myClone = object.getMyPassiveObject(109054506, 0);
			local n12myClone = object.getMyPassiveObject(109055578, 0);
			local pAni = n6myClone.getCurrentAnimation();
			local frmIndex = sq_GetAnimationFrameIndex(pAni);

			if (frmIndex < 28)return;

			local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 27);//��������
			local fireT = pAni.getDelaySum(28, 37);//������
			local srcX = n6myClone.getXPos();
			local srcY = n6myClone.getYPos();
			local srcZ = n6myClone.getZPos();
			local MoveX = n12myClone.getXPos();
			local MoveY = n12myClone.getYPos();
			local MoveZ = n12myClone.getZPos();

			local dstX = sq_GetUniformVelocity(srcX, MoveX, currentT, fireT);
			local dstY = sq_GetUniformVelocity(srcY, MoveY, currentT, fireT);
			local dstZ = sq_GetUniformVelocity(srcZ, MoveZ, currentT, fireT);

			sq_setCurrentAxisPos(n6myClone, 0, dstX);//��������x���
			sq_setCurrentAxisPos(n6myClone, 1, dstY);//��������y���
			sq_setCurrentAxisPos(n6myClone, 2, dstZ);//��������z���
			sq_getMyCharacter().getVar("debugnew2").push_vector(6);//ʥ��
		}
	}
}

function onEnd_appendage_monster_358332886_26(appendage)
{
	if (!appendage) return;

}