

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_27")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_27")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_27")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_27");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_27(appendage, flagIndex)
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
			parentObj.sq_PlaySound("R_ROSENBERG_HAMMER_IMPACT");//��ۯ���
			break;
		}
		break;
	case 1:
		switch (flagIndex)
		{
		case 1:
			local srcX = parentObj.getXPos();
			local srcY = parentObj.getYPos();
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
			local MoveX = targetObj.getXPos();
			local MoveY = targetObj.getYPos();
			appendage.getVar("move").clear_vector();//?�
			appendage.getVar("move").push_vector(srcX);//��������x���
			appendage.getVar("move").push_vector(srcY);//��������y���
			appendage.getVar("move").push_vector(MoveX);//��������x���
			appendage.getVar("move").push_vector(MoveY);//��������y���

			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "Monster/KContents3/DarkTemple/Rosenberg_Grey/Animation/DashWarning/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local xDistance = sq_Abs(srcX - MoveX);
			local yDistance = sq_Abs(srcY - MoveY);

			local width = sq_GetWidthObject(pooledObj);//��������ani����
			local length = sq_GetDistance(srcX, srcY, MoveX, MoveY, true);//���������������
			local Rate = length.tofloat() / width.tofloat();//��������

			local angle = sq_ToRadian(sq_ToDegree(sq_Atan2(yDistance.tofloat(), xDistance.tofloat())));//��������
			if (srcY < MoveY) angle = angle / -1.0;//�������y�����������y��� �� ��?ݶ�

			local ani = pooledObj.getCurrentAnimation();//��������ani
			ani.setImageRateFromOriginal(Rate, 1.0);//����ani���
			sq_SetfRotateAngle(ani, angle);//��������
			break;
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/DashDust_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		case 3:
			parentObj.sq_PlaySound("ROSENBERG_SKILL_02_2");//��ۯ���
			break;
		}
		break;
	case 2:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_SKILL_02_1");//��ۯ���
			break;
		case 2:
			parentObj.sq_PlaySound("R_ROSENBERG_HAMMER_IMPACT");//��ۯ���
			break;
		}
		break;
	case 3:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/Attack_3_0.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		}
		break;
	case 4:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/Attack_4_0.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		}
		break;
	case 6:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?�
			appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
			break;
		case 2:
			local pooledObj1 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/floor.ani", 120, -1, 0);
			parentObj.sq_PlaySound("ROSENBERG_SKILL_03");//��ۯ���
			local pooledObj2 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/JumpDust/JumpDustFront_01.ani", 0, 1, 0);
			local pooledObj3 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/JumpDust/JumpDustBack_00.ani", 0, -1, 0);
			parentObj.sq_PlaySound("WORDSWORTH_JUMPLAND");//��ۯ���
			break;
		}
		break;
	case 7:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_HAMMER_IMPACT");//��ۯ���
			break;
		case 2:
			parentObj.sq_PlaySound("R_ROSENBERG_HAMMER_IMPACT");//��ۯ���
			break;
		}
		break;
	case 8:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_HAMMER_IMPACT");//��ۯ���
			break;
		case 2:
			parentObj.sq_PlaySound("R_ROSENBERG_HAMMER_IMPACT");//��ۯ���
			break;
		}
		break;
	case 9:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_SKILL_04");//��ۯ���
			break;
		}
		break;
	case 10:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_SKILL_01_2");//��ۯ���
			sq_setFullScreenEffect(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/Message_UI.ani");
			break;
		}
		break;
	case 11:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_HAMMER_IMPACT");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/floor.ani", 120, -1, 0);
			break;
		case 2:
			local pooledObj1 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/JumpDust/JumpDustFront_01.ani", 0, 1, 0);
			local pooledObj2 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/JumpDust/JumpDustBack_00.ani", 0, -1, 0);
			break;
		}
		break;
	case 12:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?�
			appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
			break;
		case 2:
			parentObj.sq_PlaySound("WORDSWORTH_JUMP");//��ۯ���
			break;
		case 3:
			parentObj.sq_PlaySound("WORDSWORTH_JUMPLAND");//��ۯ���
			local pooledObj1 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/JumpDust/JumpDustFront_01.ani", 0, 1, 0);
			local pooledObj2 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/JumpDust/JumpDustBack_00.ani", 0, -1, 0);
			break;
		}
		break;
	case 13:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?�
			appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
			break;
		case 2:
			parentObj.sq_PlaySound("R_ROSENBERG_HAMMER_IMPACT");//��ۯ���
			local pooledObj1 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/floor.ani", 120, -1, 0);
			local pooledObj2 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/JumpDust/JumpDustFront_01.ani", 0, 1, 0);
			local pooledObj3 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_grey/animation/JumpDust/JumpDustBack_00.ani", 0, -1, 0);
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_27(appendage)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}

	local state = parentObj.getState();//����ݾʥ��������������
	local attackIndex = parentObj.getAttackIndex();//����׾

	if (state == 8)//��̪������
	{
		switch (attackIndex)
		{
		case 1:
			if (appendage.getVar("move").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 12)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 11);//��������
				local fireT = pAni.getDelaySum(12, 18);//������

				local moveVar = appendage.getVar("move");//����

				local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
				local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���

				if (currentT >= fireT)
					appendage.getVar("move").clear_vector();
			}
			break;
		case 6:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 5)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 4);//��������
				local fireT = pAni.getDelaySum(5, 15);//������

				local jumpVar = appendage.getVar("jump");//����

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 503, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 278, currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 500 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���
				sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//��������z���

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 12:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 5)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 4);//��������
				local fireT = pAni.getDelaySum(5, 15);//������

				local jumpVar = appendage.getVar("jump");//����

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 389, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 203, currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 500 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���
				sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//��������z���

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 13:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 5)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 4);//��������
				local fireT = pAni.getDelaySum(5, 15);//������

				local jumpVar = appendage.getVar("jump");//����

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 614, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 214, currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 500 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���
				sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//��������z���

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_27(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_27(appendage)
{
	if (!appendage) return;

}