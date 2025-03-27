

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_20")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_20")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_20")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_20");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_20(appendage, flagIndex)
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
	case 2:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Attack/Attack2_Effect_01.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		}
		break;
	case 3:
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
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Ready_Action/On_Ground.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		case 3:
			parentObj.sq_PlaySound("MANDARIN_SK_05");//��ۯ���
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
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Ready_Action/On_Ground.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
		break;
	case 16:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?�
			appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
			break;
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Ready_Action/On_Ground.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
		break;
	case 20:
		switch (flagIndex)
		{
		case 1:
			local direction = parentObj.getDirection();//����۰��
			local xPos = parentObj.getXPos();
			local yPos = parentObj.getYPos();//y
			local zPos = parentObj.getZPos();//z
			local distanceX = 1000;//X����
			local distanceY = 1000;//Y����
			local distanceZ = 1000;//Z����
			local objectManager = parentObj.getObjectManager();//��������η����
			for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
			{
				local object = objectManager.getCollisionObject(i);//�������׾����
				if (object
					&& object.isObjectType(OBJECTTYPE_ACTIVE)
					&& parentObj.isEnemy(object)
					&& object.isInDamagableState(parentObj)
					&& sq_Abs(object.getXPos() - xPos) <= distanceX
					&& sq_Abs(object.getYPos() - yPos) <= distanceY
					&& sq_Abs(object.getZPos() - zPos) <= distanceZ)
				{
					local activeObj = sq_GetCNRDObjectToActiveObject(object);//����׾

					//������
					if (!activeObj.isDead())
					{
						if (activeObj.getXPos() > parentObj.getXPos())
						{
							local currentT = 800;//��������
							local fireT = 2000;//������

							local dstX = sq_GetUniformVelocity(activeObj.getXPos(), activeObj.getXPos() + 300, currentT, fireT);
							if (activeObj.isMovablePos(dstX, activeObj.getYPos()))
							sq_setCurrentAxisPos(activeObj, 0, dstX);//��������x���
							sq_SetCurrentDirection(activeObj, ENUM_DIRECTION_LEFT);//����۰��
						}
						else
						{
							local currentT = 800;//��������
							local fireT = 2000;//������

							local dstX = sq_GetUniformVelocity(activeObj.getXPos(), activeObj.getXPos() - 300, currentT, fireT);
							if (activeObj.isMovablePos(dstX, activeObj.getYPos()))
							sq_setCurrentAxisPos(activeObj, 0, dstX);//��������x���
							sq_SetCurrentDirection(activeObj, ENUM_DIRECTION_RIGHT);//����۰��
						}

					}
				}
			}
			break;
		}
		break;
	case 22:
		switch (flagIndex)
		{
		case 1:
			sq_setFullScreenEffect(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Text/Text_01.ani");
			local direction = parentObj.getDirection();//����۰��
			local xPos = parentObj.getXPos();
			local yPos = parentObj.getYPos();//y
			local zPos = parentObj.getZPos();//z
			local distanceX = 1000;//X����
			local distanceY = 1000;//Y����
			local distanceZ = 1000;//Z����
			local objectManager = parentObj.getObjectManager();//��������η����
			for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
			{
				local object = objectManager.getCollisionObject(i);//�������׾����
				if (object
					&& object.isObjectType(OBJECTTYPE_ACTIVE)
					&& parentObj.isEnemy(object)
					&& object.isInDamagableState(parentObj)
					&& sq_Abs(object.getXPos() - xPos) <= distanceX
					&& sq_Abs(object.getYPos() - yPos) <= distanceY
					&& sq_Abs(object.getZPos() - zPos) <= distanceZ)
				{
					local activeObj = sq_GetCNRDObjectToActiveObject(object);//����׾
					//������
					if (!activeObj.isDead())
					{
						sq_SetPause(activeObj, PAUSETYPE_OBJECT, 1400);
						sq_SetPause(parentObj, PAUSETYPE_OBJECT, 1400);
					}
				}
			}
			break;
		}
		break;
	case 24:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("MANDARIN_GROGGY_02");//��ۯ���
			break;
		}
		break;
	case 25:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("MANDARIN_CHARGE_01");//��ۯ���
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_20(appendage)
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
		case 3:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//��������
				local fireT = pAni.getDelaySum(7, 16);//������
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
		case 4:
			local t = appendage.getVar().get_timer_vector(0);//�������
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/FlowerFall/FlowerFall_Start_00.ani", ENUM_DRAWLAYER_NORMAL, true);
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
				local fireT = pAni.getDelaySum(7, 14);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 1000, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���
				sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//��������z���

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
					parentObj.sq_PlaySound("MANDARIN_SK_04");//��ۯ���
				}
			}
			break;
		case 10:
			local t = appendage.getVar().get_timer_vector(0);//�������
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Ready_Action/On_Ground.ani", ENUM_DRAWLAYER_BOTTOM, true);
				}
			}
			break;
		case 13:
			local t = appendage.getVar().get_timer_vector(0);//�������
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("MANDARIN_NEN_SPAWN_CAST");//��ۯ���
				}
			}
			break;
		case 16:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//��������
				local fireT = pAni.getDelaySum(7, 14);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 1000, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���
				sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//��������z���

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 17:
			local t = appendage.getVar().get_timer_vector(0);//�������
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("MANDARIN_SK_07");//��ۯ���
				}
			}
			break;
		case 19:
			local t = appendage.getVar().get_timer_vector(0);//�������
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("MANDARIN_SK_02");//��ۯ���
				}
			}
			break;
		case 20:
			local t = appendage.getVar().get_timer_vector(0);//�������
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("MANDARIN_SK_01_2");//��ۯ���
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/TheMandara/StartDustGround_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
					sq_setFullScreenEffect(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/NOTICE/NOTICE.ani");
				}
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_20(appendage)
{
	if (!appendage) return;

	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(100, 1);//���1����?��̰ ���2�������
	t.resetInstant(0);//���� ���ڱ�
	t.setEventOnStart(true);//?true �������ʦ���ۡ

}

function onEnd_appendage_monster_358332886_20(appendage)
{
	if (!appendage) return;

}