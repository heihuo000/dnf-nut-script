function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_125")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_125")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_125")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_125")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_125")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_125")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_125")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_125")
}

function onSourceKeyFrameFlag_appendage_monster_358332886_125(appendage, flagIndex)
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
	case 12:
		switch (flagIndex)
		{
		case 1:
				appendage.getVar("jump").clear_vector();//?�
				appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
				appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
				appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
				if (parentObj.getXPos() > 672)
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
				else
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
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
			if (parentObj.getXPos() > 672)
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
			else
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
			break;
		}
		break;
	case 15:
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

function proc_appendage_monster_358332886_125(appendage)
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
		case 12:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 12)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 11);//��������
				local fireT = pAni.getDelaySum(12, 14);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 672, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 374, currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 650 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
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
		case 13:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 12)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 11);//��������
				local fireT = pAni.getDelaySum(12, 14);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 672, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 374, currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 650 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
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
		case 15:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 3)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 2);//��������
				local fireT = pAni.getDelaySum(3, 5);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), jumpVar.get_vector(3), currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), jumpVar.get_vector(4), currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 650 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
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
		}
	}

	local t = appendage.getVar().get_timer_vector(0);//�������
	local count = appendage.getVar().get_vector(0);//�������

	if (state == 0)//��̪������
	{
		if (count >= 600)
		{
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 16);
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
				if (count < 600)
				{
					count = count + 20;
					appendage.getVar().set_vector(0, count);
				}
				else
				{
					count = 600;
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
				if (count > 0 && count < 600)
				{
					if (count < 5)
					{
						count = 0;
					}
					else
					{
					count = count - 5;
					}
					appendage.getVar().set_vector(0, count);
				}
			}
		}
	}
}

function onStart_appendage_monster_358332886_125(appendage)
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

function onEnd_appendage_monster_358332886_125(appendage)
{
	if (!appendage) return;

}

function onDamageParent_appendage_monster_358332886_125(appendage, attacker, boundingBox, isStuck)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	if (isStuck) return;
	local count = appendage.getVar().get_vector(0);//�������

	if (count < 600)
	{
		count = count + 2;
		appendage.getVar().set_vector(0, count);
	}
}

function drawAppend_appendage_monster_358332886_125(appendage, isOver, x, y, isFlip)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	local count = appendage.getVar().get_vector(0);//�������
	local count = count.tofloat() / 600.0;//���ݩ����ߩ
	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_main.ani");
	sq_AnimationProc(huoyan_ani);//��?ani
	sq_drawCurrentFrame(huoyan_ani, 25, 129, isFlip);//�������
	huoyan_ani.setImageRateFromOriginal(count, 1.0);//����ani���

	local ui1_ani = appendage.getVar().GetAnimationMap("ui1_ani", "ui/monster_hp/burning/firegauge_ui00.ani");//����ani����
	sq_AnimationProc(ui1_ani);//��?ani
	sq_drawCurrentFrame(ui1_ani, 5, 140, isFlip);//�������
}
