

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_103")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_103")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_103")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_103");
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_103");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_103(appendage, flagIndex)
{
	if (!appendage) return;

	return true;
}

function proc_appendage_monster_358332886_103(appendage)
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
	local count = parentObj.getMyPassiveObjectCount(200323);
	if (count == 5)
	{
		local t = appendage.getVar().get_timer_vector(0);
		if (t && state == 0)
		{
			local currentT = appendage.getTimer().Get();//����ap�������
			if (t.isOnEvent(currentT) == true)
			{
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 6);
				sq_AddSetStatePacketActiveObject(parentObj, 8, pIntVec, STATE_PRIORITY_USER);//����׾����ۡ������
			}
		}
	}
}

function onStart_appendage_monster_358332886_103(appendage)
{
	if (!appendage) return;
	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(10000, -1);//���1����?��̰ ���2�������
	t.resetInstant(0);//���� ���ڱ�
	t.setEventOnStart(true);//?true �������ʦ���ۡ
}

function onEnd_appendage_monster_358332886_103(appendage)
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

function drawAppend_appendage_monster_358332886_103(appendage, isOver, x, y, isFlip)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	local count = parentObj.getMyPassiveObjectCount(200323);
	switch (count)
	{
	case 1:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//��?ani
		sq_drawCurrentFrame(huoyan_ani, 35, 128, isFlip);//�������
		break;
	case 2:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//��?ani
		sq_drawCurrentFrame(huoyan_ani, 50, 128, isFlip);//�������
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//��?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
		break;
	case 3:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//��?ani
		sq_drawCurrentFrame(huoyan_ani, 100, 128, isFlip);//�������
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//��?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
		local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan2_ani);//��?ani
		sq_drawCurrentFrame(huoyan2_ani, 50, 128, isFlip);//�������
		local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan3_ani);//��?ani
		sq_drawCurrentFrame(huoyan3_ani, 75, 128, isFlip);//�������
		break;
	case 4:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//��?ani
		sq_drawCurrentFrame(huoyan_ani, 125, 128, isFlip);//�������
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//��?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
		local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan2_ani);//��?ani
		sq_drawCurrentFrame(huoyan2_ani, 50, 128, isFlip);//�������
		local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan3_ani);//��?ani
		sq_drawCurrentFrame(huoyan3_ani, 75, 128, isFlip);//�������
		local huoyan4_ani = appendage.getVar().GetAnimationMap("huoyan4_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan4_ani);//��?ani
		sq_drawCurrentFrame(huoyan4_ani, 100, 128, isFlip);//�������
		break;
	case 5:
		local huoyan5_ani = appendage.getVar().GetAnimationMap("huoyan5_ani", "ui/monster_hp/burning/firegauge_main.ani");
		sq_AnimationProc(huoyan5_ani);//��?ani
		sq_drawCurrentFrame(huoyan5_ani, 13, 128, isFlip);//�������
		break;
	case 6:
		local huoyan6_ani = appendage.getVar().GetAnimationMap("huoyan6_ani", "ui/monster_hp/burning/firegauge_main.ani");
		sq_AnimationProc(huoyan6_ani);//��?ani
		sq_drawCurrentFrame(huoyan6_ani, 13, 128, isFlip);//�������
		break;
	case 7:
		local huoyan7_ani = appendage.getVar().GetAnimationMap("huoyan7_ani", "ui/monster_hp/burning/firegauge_main.ani");
		sq_AnimationProc(huoyan7_ani);//��?ani
		sq_drawCurrentFrame(huoyan7_ani, 13, 128, isFlip);//�������
		break;
	}
	local ui1_ani = appendage.getVar().GetAnimationMap("ui1_ani", "ui/monster_hp/burning/firegauge_ui00.ani");//����ani����
	sq_AnimationProc(ui1_ani);//��?ani
	sq_drawCurrentFrame(ui1_ani, 5, 140, isFlip);//�������
}