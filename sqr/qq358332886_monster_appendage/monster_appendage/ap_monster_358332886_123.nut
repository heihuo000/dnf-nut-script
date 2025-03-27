

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_123")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_123")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_123")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_123")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_123")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_123")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_123")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_123")
}

function onSourceKeyFrameFlag_appendage_monster_358332886_123(appendage, flagIndex)
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
	case 3:
		switch (flagIndex)
		{
		case 1:
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
			if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? � ����
			{
				appendage.getVar("jump").clear_vector();//?�
				appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
				appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
				appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
				appendage.getVar("jump").push_vector(targetObj.getXPos());//��������x���
				appendage.getVar("jump").push_vector(targetObj.getYPos());//��������y���
				if (parentObj.getXPos() > targetObj.getXPos())
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
				else
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
			}
			break;
		}
		break;
	case 10:
		switch (flagIndex)
		{
		case 1:
			local xPos = parentObj.getXPos();
			local yPos = parentObj.getYPos();
			local zPos = parentObj.getZPos();
			local distanceX = 1000;
			local distanceY = 1000;
			local distanceZ = 1000;
			local objectManager = parentObj.getObjectManager();
			for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
			{
				local object = objectManager.getCollisionObject(i);
				if (object
					&& object.isObjectType(OBJECTTYPE_ACTIVE)
					&& parentObj.isEnemy(object)
					&& object.isInDamagableState(parentObj)
					&& sq_Abs(object.getXPos() - xPos) <= distanceX
					&& sq_Abs(object.getYPos() - yPos) <= distanceY
					&& sq_Abs(object.getZPos() - zPos) <= distanceZ)
				{
					local activeObj = sq_GetCNRDObjectToActiveObject(object);
					if (!activeObj.isDead())
					{
						local Appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, parentObj, -1, false, "qq358332886_monster_appendage/monster_appendage/ap_superdamagec1.nut", true);//ݾʥap
						Appendage.sq_SetValidTime(600);//����ap��������
					}
				}
			}
			break;
		}
		break;
	case 14:
		switch (flagIndex)
		{
		case 1:
			local mapX = sq_getRandom(403, 940);
			local mapY = sq_getRandom(248, 380);
			appendage.getVar("jump").clear_vector();//?�
			appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
			appendage.getVar("jump").push_vector(mapX);//��������y���
			appendage.getVar("jump").push_vector(mapY);//��������z���
			if (parentObj.getXPos() > mapX)
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
			else
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��

			break;
		}
		break;
	case 19:
		switch (flagIndex)
		{
		case 1:
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
			if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? � ����
			{
				appendage.getVar("jump").clear_vector();//?�
				appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
				appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
				appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
				appendage.getVar("jump").push_vector(targetObj.getXPos());//��������x���
				appendage.getVar("jump").push_vector(targetObj.getYPos());//��������y���
				if (parentObj.getXPos() > targetObj.getXPos())
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
				else
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
			}
			break;
		}
		break;
	case 20:
		switch (flagIndex)
		{
		case 1:
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
			if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? � ����
			{
				appendage.getVar("jump").clear_vector();//?�
				appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
				appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
				appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
				appendage.getVar("jump").push_vector(targetObj.getXPos());//��������x���
				appendage.getVar("jump").push_vector(targetObj.getYPos());//��������y���
				if (parentObj.getXPos() > targetObj.getXPos())
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
				else
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
			}
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_123(appendage)
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
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 0);//��������
				local fireT = pAni.getDelaySum(1, 15);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), jumpVar.get_vector(3), currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), jumpVar.get_vector(4), currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 200 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				if (parentObj.isMovablePos(dstX, dstY) && currentT <= fireT)
				{
					sq_setCurrentAxisPos(parentObj, 0, dstX);
					sq_setCurrentAxisPos(parentObj, 1, dstY);
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());
				}
				else
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 14:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 2)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 1);//��������
				local fireT = pAni.getDelaySum(1, 15);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), jumpVar.get_vector(3), currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), jumpVar.get_vector(4), currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 300 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				if (parentObj.isMovablePos(dstX, dstY) && currentT <= fireT)
				{
					sq_setCurrentAxisPos(parentObj, 0, dstX);
					sq_setCurrentAxisPos(parentObj, 1, dstY);
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());
				}
				else
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 19:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 0);//��������
				local fireT = pAni.getDelaySum(1, 15);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), jumpVar.get_vector(3), currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), jumpVar.get_vector(4), currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 200 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				if (parentObj.isMovablePos(dstX, dstY) && currentT <= fireT)
				{
					sq_setCurrentAxisPos(parentObj, 0, dstX);
					sq_setCurrentAxisPos(parentObj, 1, dstY);
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());
				}
				else
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 20:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 0);//��������
				local fireT = pAni.getDelaySum(1, 15);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), jumpVar.get_vector(3), currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), jumpVar.get_vector(4), currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 200 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				if (parentObj.isMovablePos(dstX, dstY) && currentT <= fireT)
				{
					sq_setCurrentAxisPos(parentObj, 0, dstX);
					sq_setCurrentAxisPos(parentObj, 1, dstY);
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());
				}
				else
					appendage.getVar("jump").clear_vector();
			}
			break;
		}
	}

	local t = appendage.getVar().get_timer_vector(0);//�������
	local count = appendage.getVar().get_vector(0);//�������

	if (state == 0)//��̪������
	{
		if (count >= 100)
		{
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 10);
			sq_AddSetStatePacketActiveObject(parentObj, 8, pIntVec, STATE_PRIORITY_USER);//����׾����ۡ������
			count = 0;
			appendage.getVar().set_vector(0, count);
			return;
		}
	}
	else if (state == 9)//��̪������
	{
		if (t)
		{
			if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
			{
				if (count < 100)
				{
					count = count + 10;
					appendage.getVar().set_vector(0, count);
				}
				else
				{
					count = 100;
					appendage.getVar().set_vector(0, count);
				}
			}
		}
	}
	else if (state != 9)
	{
		if (t)
		{
			if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
			{
				if (count > 0 && count < 100)
				{
					count = count - 3;
					appendage.getVar().set_vector(0, count);
				}
			}
		}
	}
}

function onStart_appendage_monster_358332886_123(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	local count = 0;
	appendage.getVar().clear_vector();
	appendage.getVar().push_vector(count);

	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(500, -1);//���1����?��̰ ���2�������
	t.resetInstant(0);//���� ���ڱ�
	t.setEventOnStart(true);//?true �������ʦ���ۡ

}

function onEnd_appendage_monster_358332886_123(appendage)
{
	if (!appendage) return;

}

function onDamageParent_appendage_monster_358332886_123(appendage, attacker, boundingBox, isStuck)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	if (isStuck) return;

}

function drawAppend_appendage_monster_358332886_123(appendage, isOver, x, y, isFlip)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	local count = appendage.getVar().get_vector(0);//�������
	local count = count.tofloat() / 100.0;//���ݩ����ߩ
	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_main.ani");
	sq_AnimationProc(huoyan_ani);//��?ani
	sq_drawCurrentFrame(huoyan_ani, 15, 129, isFlip);//�������
	huoyan_ani.setImageRateFromOriginal(count, 1.0);//����ani���

	local ui1_ani = appendage.getVar().GetAnimationMap("ui1_ani", "ui/monster_hp/burning/firegauge_ui00.ani");//����ani����
	sq_AnimationProc(ui1_ani);//��?ani
	sq_drawCurrentFrame(ui1_ani, 5, 140, isFlip);//�������
}
