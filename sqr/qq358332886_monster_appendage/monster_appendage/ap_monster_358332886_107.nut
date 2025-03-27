

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_107")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_107")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_107")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_107");
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_107");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_107(appendage, flagIndex)
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

	local objectManager = parentObj.getObjectManager();
	local mapXPos = objectManager.getFieldXPos(IMouse.GetXPos(), ENUM_DRAWLAYER_NORMAL);
	local mapYPos = objectManager.getFieldYPos(IMouse.GetYPos(), 0, ENUM_DRAWLAYER_NORMAL);
	local uiXPos = mapXPos - (objectManager.getFieldXPos(mapXPos, ENUM_DRAWLAYER_NORMAL) - mapXPos);
	local uiYPos = mapYPos - (objectManager.getFieldYPos(mapYPos, 0, ENUM_DRAWLAYER_NORMAL) - mapYPos);
	sq_getMyCharacter().getVar("debugnew1").clear_vector();//ʥ��
	sq_getMyCharacter().getVar("debugnew1").push_vector(mapXPos);//ʥ��
	sq_getMyCharacter().getVar("debugnew1").push_vector(mapYPos);//ʥ��
	sq_getMyCharacter().getVar("debugnew1").push_vector(uiXPos);//ʥ��
	sq_getMyCharacter().getVar("debugnew1").push_vector(uiYPos);//ʥ��
	sq_getMyCharacter().getVar("debugnew2").clear_vector();//ʥ��
	sq_getMyCharacter().getVar("debugnew2").push_vector(state);//ʥ��
	sq_getMyCharacter().getVar("debugnew2").push_vector(attackIndex);//ʥ��
	switch (attackIndex)
	{
	case 2:
		switch (flagIndex)
		{
		case 1:
			local targetObj = sq_FindTarget(parentObj, -999, 999, 900, 9999);//��?��������������
			if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? � ����
			{
				appendage.getVar("jump").clear_vector();//?�
				appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
				appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
				appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
				appendage.getVar("jump").push_vector(targetObj.getXPos());//��������x���
				appendage.getVar("jump").push_vector(targetObj.getYPos());//��������y���
			}
			break;
		}
		break;
	case 11:
		switch (flagIndex)
		{
		case 1:
			local xPos = parentObj.getXPos();
			local yPos = parentObj.getYPos();
			local zPos = parentObj.getZPos();
			local distanceX = 1500;
			local distanceY = 1500;
			local distanceZ = 1500;
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
						local Appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, parentObj, -1, false, "qq358332886_monster_appendage/monster_appendage/ap_superdamagec.nut", true);//ݾʥap
						Appendage.sq_SetValidTime(800);//����ap��������
					}
				}
			}
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_107(appendage)
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
		case 2:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 6)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(1, 5);//��������
				local fireT = pAni.getDelaySum(6, 13);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), jumpVar.get_vector(3), currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), jumpVar.get_vector(4), currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 160 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
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

function onStart_appendage_monster_358332886_107(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(1000, -1);//���1����?��̰ ���2�������
	t.resetInstant(0);//���� ���ڱ�
	t.setEventOnStart(true);//?true �������ʦ���ۡ
}

function onEnd_appendage_monster_358332886_107(appendage)
{
	if (!appendage) return;

}
//
//function image_Create(obj, uiXPos, uiYPos)
//{
//	local objectManager = obj.getObjectManager();
//	local mapXPos = objectManager.getFieldXPos(IMouse.GetXPos(), ENUM_DRAWLAYER_NORMAL);
//	local mapYPos = objectManager.getFieldYPos(IMouse.GetYPos(), 0, ENUM_DRAWLAYER_NORMAL);
//	local uiXPos = mapXPos - (objectManager.getFieldXPos(mapXPos, ENUM_DRAWLAYER_NORMAL) - mapXPos);
//	local uiYPos = mapYPos - (objectManager.getFieldYPos(mapYPos, 0, ENUM_DRAWLAYER_NORMAL) - mapYPos);
//
//	//��������?��??��
//	local direction = obj.getDirection();
//	local xPos = obj.getXPos();
//	local yPos = obj.getYPos();
//	local zPos = obj.getZPos();
//	local distanceX = 3000;
//	local distanceY = 3000;
//	local distanceZ = 3000;
//	local objectManager = obj.getObjectManager();
//	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
//	{
//		local object = objectManager.getCollisionObject(i);
//		if (object
//			&& object.isObjectType(OBJECTTYPE_ACTIVE)
//			&& obj.isEnemy(object)
//			&& object.isInDamagableState(obj)
//			&& sq_Abs(object.getXPos() - xPos) <= distanceX
//			&& sq_Abs(object.getYPos() - yPos) <= distanceY
//			&& sq_Abs(object.getZPos() - zPos) <= distanceZ)
//		{
//			local activeObj = sq_GetCNRDObjectToActiveObject(object);
//			local ani = sq_CreateAnimation("", "ui/monster_hp/burning/firegauge_ui00.ani");//����ani
//			local pooledObj = sq_CreatePooledObject(ani, true);//������?���� ���2��������ani̿����true ����?����false����?
//			sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_RIGHT);//����۰��
//			pooledObj.setCurrentPos(uiXPos, uiYPos, 0);//����pos
//			pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_COVER);//��������
//			sq_AddObject(activeObj, pooledObj, OBJECTTYPE_DRAWONLY, false);//��ʥ����
//			sq_moveWithParent(activeObj, pooledObj);
//		}
//	}
//}

function drawAppend_appendage_monster_358332886_107(appendage, isOver, x, y, isFlip)
{
	if (!appendage) return;
	//local parentObj = appendage.getParent();//����ݫ����
	//if (!parentObj)
	//{
	//	appendage.setValid(false);//��?ap
	//	return;
	//}

	//local count = parentObj.getMyPassiveObjectCount(200323);
	//switch (count)
	//{
	//case 1:
	//	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
	//	sq_AnimationProc(huoyan_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan_ani, 25, 128, isFlip);//�������
	//	break;
	//case 2:
	//	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
	//	sq_AnimationProc(huoyan_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan_ani, 45, 128, isFlip);//�������
	//	local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan1_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
	//	break;
	//case 3:
	//	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
	//	sq_AnimationProc(huoyan_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan_ani, 65, 128, isFlip);//�������
	//	local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan1_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
	//	local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan2_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
	//	break;
	//case 4:
	//	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
	//	sq_AnimationProc(huoyan_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan_ani, 85, 128, isFlip);//�������
	//	local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan1_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
	//	local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan2_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
	//	local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan3_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan3_ani, 65, 128, isFlip);//�������
	//	break;
	//case 5:
	//	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
	//	sq_AnimationProc(huoyan_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan_ani, 105, 128, isFlip);//�������
	//	local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan1_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
	//	local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan2_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
	//	local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan3_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan3_ani, 65, 128, isFlip);//�������
	//	local huoyan4_ani = appendage.getVar().GetAnimationMap("huoyan4_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan4_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan4_ani, 85, 128, isFlip);//�������
	//	break;
	//case 6:
	//	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
	//	sq_AnimationProc(huoyan_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan_ani, 125, 128, isFlip);//�������
	//	local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan1_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
	//	local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan2_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
	//	local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan3_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan3_ani, 65, 128, isFlip);//�������
	//	local huoyan4_ani = appendage.getVar().GetAnimationMap("huoyan4_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan4_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan4_ani, 85, 128, isFlip);//�������
	//	local huoyan5_ani = appendage.getVar().GetAnimationMap("huoyan5_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan5_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan5_ani, 105, 128, isFlip);//�������
	//	break;
	//case 7:
	//	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
	//	sq_AnimationProc(huoyan_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan_ani, 145, 128, isFlip);//�������
	//	local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan1_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
	//	local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan2_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
	//	local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan3_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan3_ani, 65, 128, isFlip);//�������
	//	local huoyan4_ani = appendage.getVar().GetAnimationMap("huoyan4_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan4_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan4_ani, 85, 128, isFlip);//�������
	//	local huoyan5_ani = appendage.getVar().GetAnimationMap("huoyan5_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan5_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan5_ani, 105, 128, isFlip);//�������
	//	local huoyan6_ani = appendage.getVar().GetAnimationMap("huoyan6_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan6_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan6_ani, 125, 128, isFlip);//�������
	//	break;
	//case 8:
	//	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
	//	sq_AnimationProc(huoyan_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan_ani, 165, 128, isFlip);//�������
	//	local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan1_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
	//	local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan2_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
	//	local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan3_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan3_ani, 65, 128, isFlip);//�������
	//	local huoyan4_ani = appendage.getVar().GetAnimationMap("huoyan4_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan4_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan4_ani, 85, 128, isFlip);//�������
	//	local huoyan5_ani = appendage.getVar().GetAnimationMap("huoyan5_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan5_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan5_ani, 105, 128, isFlip);//�������
	//	local huoyan6_ani = appendage.getVar().GetAnimationMap("huoyan6_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan6_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan6_ani, 125, 128, isFlip);//�������
	//	local huoyan7_ani = appendage.getVar().GetAnimationMap("huoyan7_ani", "ui/monster_hp/burning/firegauge_on.ani");
	//	sq_AnimationProc(huoyan7_ani);//��?ani
	//	sq_drawCurrentFrame(huoyan7_ani, 145, 128, isFlip);//�������
	//	break;
	//}
	//local ui1_ani = appendage.getVar().GetAnimationMap("ui1_ani", "ui/monster_hp/burning/firegauge_ui00.ani");//����ani����
	//sq_AnimationProc(ui1_ani);//��?ani
	//sq_drawCurrentFrame(ui1_ani, 5, 140, isFlip);//�������
}