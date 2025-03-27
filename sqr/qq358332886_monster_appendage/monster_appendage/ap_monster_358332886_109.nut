

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_109")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_109")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_109")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_109");
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_109");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_109(appendage, flagIndex)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}

	local state = parentObj.getState();//������������
	local attackIndex = parentObj.getAttackIndex();//��̪ID

	if (state == 21)
	{
		switch (flagIndex)
		{
		case 1:
			local t = appendage.getVar().get_timer_vector(0);//�������
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
			if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? � ����
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local Passive = sq_SendCreatePassiveObjectPacketPos(targetObj, 76195, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
					sq_SetCurrentDirection(Passive, ENUM_DIRECTION_LEFT);
				}
			}
			break;
		case 2:
			local t = appendage.getVar().get_timer_vector(0);//�������
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
			if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? � ����
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local Passive = sq_SendCreatePassiveObjectPacketPos(targetObj, 76176, 0, 1200, targetObj.getYPos(), targetObj.getZPos());
					sq_SetCurrentDirection(Passive, ENUM_DIRECTION_RIGHT);
				}
			}
			break;
		}
	}

	return true;
}

function proc_appendage_monster_358332886_109(appendage)
{
	if (!appendage) return;

}

function onStart_appendage_monster_358332886_109(appendage)
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

function onEnd_appendage_monster_358332886_109(appendage)
{
	if (!appendage) return;

}

function drawAppend_appendage_monster_358332886_109(appendage, isOver, x, y, isFlip)
{
	if (!appendage) return;

}