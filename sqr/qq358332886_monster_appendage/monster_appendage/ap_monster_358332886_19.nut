

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_19")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_19")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_19")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_19");
}
function onSourceKeyFrameFlag_appendage_monster_358332886_19(appendage, flagIndex)
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
			parentObj.sq_PlaySound("R_OUZO_N_ATK_SWISH");//��ۯ���
			break;
		}
		break;
	case 1:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_OUZO_N_ATK_SWISH");//��ۯ���
			break;
		}
		break;
	case 3:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/crypt_of_pain/ouzo/animation/Effect/IceEnergyFieldStart_00.ani", 125, 0, 0);
			break;
		}
		break;
	case 4:
		switch (flagIndex)
		{
		case 1:
			if (appendage.getVar().getBool(0) == false)
			{
				appendage.getVar("t").clear_timer_vector();
				appendage.getVar("t").push_timer_vector();
				local t_new1 = appendage.getVar("t").get_timer_vector(0);
				t_new1.setParameter(1900, 1);//���1����?��̰ ���2�������
				t_new1.resetInstant(0);//���� ���ڱ�
				t_new1.setEventOnStart(false);//?true �������ʦ���ۡ
				appendage.getVar().setBool(0, true);
			}
			break;
		}
		break;
	case 5:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("OUZO_SK_03");//��ۯ���
			break;
		}
		break;
	case 6:
		switch (flagIndex)
		{
		case 1:
			local index = sq_getRandom(0, 1);
			appendage.getVar().clear_vector();//?�
			appendage.getVar().push_vector(index);//��Ѧ�?
			appendage.getVar("jump").clear_vector();//?�
			appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
			break;
		}
		break;
	case 8:
		switch (flagIndex)
		{
		case 1:
			local index = sq_getRandom(0, 1);
			appendage.getVar().clear_vector();//?�
			appendage.getVar().push_vector(index);//��Ѧ�?
			appendage.getVar("jump").clear_vector();//?�
			appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
			break;
		}
		break;
	case 10:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?�
			appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
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
			break;
		}
		break;
	case 17:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("OUZO_MEET_01");//��ۯ���
			break;
		}
		break;
	}

	return true;
}

function proc_appendage_monster_358332886_19(appendage)
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
		case 4:
			local t_new1 = appendage.getVar("t").get_timer_vector(0);
			local pAni = parentObj.getCurrentAnimation();//����ani
			local currentT = sq_GetCurrentTime(pAni);
			if (t_new1)
			{
				if (t_new1.isOnEvent(currentT) == true)
				{
					parentObj.sq_PlaySound("OUZO_AIR_SPHERE_FIRING");//��ۯ���
					local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/crypt_of_pain/ouzo/animation/Effect/IceEnergyFieldLaunch_00.ani", 0, 0, 0);
				}
			}
			break;
		case 6:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//��������
				local fireT = pAni.getDelaySum(7, 13);//������

				local jumpVar = appendage.getVar("jump");//����

				local index = appendage.getVar().get_vector(0);
				if (index == 0)
				{
					local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 1000, currentT, fireT);
					local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
					local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
					sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
					sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//��������z���
				}
				else
				{
					local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 100, currentT, fireT);
					local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
					local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
					sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
					sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//��������z���
				}

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 7:
			local t = appendage.getVar().get_timer_vector(0);//�������
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("OUZO_SK_04");//��ۯ���
				}
			}
			break;
		case 8:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//��������
				local fireT = pAni.getDelaySum(7, 13);//������

				local jumpVar = appendage.getVar("jump");//����

				local index = appendage.getVar().get_vector(0);
				if (index == 0)
				{
					local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 1000, currentT, fireT);
					local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
					local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
					sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
					sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//��������z���
				}
				else
				{
					local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 100, currentT, fireT);
					local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
					local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
					sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
					sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//��������z���
				}

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 9:
			local t = appendage.getVar().get_timer_vector(0);//�������
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("OUZO_SK_05");//��ۯ���
				}
			}
			break;
		case 10:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 0);//��������
				local fireT = pAni.getDelaySum(1, 5);//������

				local jumpVar = appendage.getVar("jump");//����

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 550, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);

				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 12:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//��������
				local fireT = pAni.getDelaySum(7, 10);//������

				local jumpVar = appendage.getVar("jump");//����

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 200, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 13:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//��������
				local fireT = pAni.getDelaySum(7, 20);//������

				local jumpVar = appendage.getVar("jump");//����

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 1050, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_19(appendage)
{
	if (!appendage) return;
	appendage.getVar().setBool(0, false);//����
	appendage.getVar().setBool(1, false);//����

	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(100, 1);//���1����?��̰ ���2�������
	t.resetInstant(0);//���� ���ڱ�
	t.setEventOnStart(true);//?true �������ʦ���ۡ
}

function onEnd_appendage_monster_358332886_19(appendage)
{
	if (!appendage) return;

}