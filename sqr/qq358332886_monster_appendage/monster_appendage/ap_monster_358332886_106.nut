

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_106")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_106")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_106")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_106");
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_106");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_106(appendage, flagIndex)
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
	case 7:
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
	case 8:
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
	case 13:
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
		case 21:
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
		case 22:
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
	}
	return true;
}

function proc_appendage_monster_358332886_106(appendage)
{
	if (!appendage) return;
}

function onStart_appendage_monster_358332886_106(appendage)
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

function onEnd_appendage_monster_358332886_106(appendage)
{
	if (!appendage) return;

}

function drawAppend_appendage_monster_358332886_106(appendage, isOver, x, y, isFlip)
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
		sq_drawCurrentFrame(huoyan_ani, 25, 128, isFlip);//�������
		break;
	case 2:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//��?ani
		sq_drawCurrentFrame(huoyan_ani, 45, 128, isFlip);//�������
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//��?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
		break;
	case 3:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//��?ani
		sq_drawCurrentFrame(huoyan_ani, 65, 128, isFlip);//�������
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//��?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
		local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan2_ani);//��?ani
		sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
		break;
	case 4:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//��?ani
		sq_drawCurrentFrame(huoyan_ani, 85, 128, isFlip);//�������
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//��?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
		local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan2_ani);//��?ani
		sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
		local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan3_ani);//��?ani
		sq_drawCurrentFrame(huoyan3_ani, 65, 128, isFlip);//�������
		break;
	case 5:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//��?ani
		sq_drawCurrentFrame(huoyan_ani, 105, 128, isFlip);//�������
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//��?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
		local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan2_ani);//��?ani
		sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
		local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan3_ani);//��?ani
		sq_drawCurrentFrame(huoyan3_ani, 65, 128, isFlip);//�������
		local huoyan4_ani = appendage.getVar().GetAnimationMap("huoyan4_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan4_ani);//��?ani
		sq_drawCurrentFrame(huoyan4_ani, 85, 128, isFlip);//�������
		break;
	case 6:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//��?ani
		sq_drawCurrentFrame(huoyan_ani, 125, 128, isFlip);//�������
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//��?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
		local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan2_ani);//��?ani
		sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
		local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan3_ani);//��?ani
		sq_drawCurrentFrame(huoyan3_ani, 65, 128, isFlip);//�������
		local huoyan4_ani = appendage.getVar().GetAnimationMap("huoyan4_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan4_ani);//��?ani
		sq_drawCurrentFrame(huoyan4_ani, 85, 128, isFlip);//�������
		local huoyan5_ani = appendage.getVar().GetAnimationMap("huoyan5_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan5_ani);//��?ani
		sq_drawCurrentFrame(huoyan5_ani, 105, 128, isFlip);//�������
		break;
	case 7:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//��?ani
		sq_drawCurrentFrame(huoyan_ani, 145, 128, isFlip);//�������
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//��?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
		local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan2_ani);//��?ani
		sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
		local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan3_ani);//��?ani
		sq_drawCurrentFrame(huoyan3_ani, 65, 128, isFlip);//�������
		local huoyan4_ani = appendage.getVar().GetAnimationMap("huoyan4_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan4_ani);//��?ani
		sq_drawCurrentFrame(huoyan4_ani, 85, 128, isFlip);//�������
		local huoyan5_ani = appendage.getVar().GetAnimationMap("huoyan5_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan5_ani);//��?ani
		sq_drawCurrentFrame(huoyan5_ani, 105, 128, isFlip);//�������
		local huoyan6_ani = appendage.getVar().GetAnimationMap("huoyan6_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan6_ani);//��?ani
		sq_drawCurrentFrame(huoyan6_ani, 125, 128, isFlip);//�������
		break;
	case 8:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//��?ani
		sq_drawCurrentFrame(huoyan_ani, 165, 128, isFlip);//�������
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//��?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//�������
		local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan2_ani);//��?ani
		sq_drawCurrentFrame(huoyan2_ani, 45, 128, isFlip);//�������
		local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan3_ani);//��?ani
		sq_drawCurrentFrame(huoyan3_ani, 65, 128, isFlip);//�������
		local huoyan4_ani = appendage.getVar().GetAnimationMap("huoyan4_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan4_ani);//��?ani
		sq_drawCurrentFrame(huoyan4_ani, 85, 128, isFlip);//�������
		local huoyan5_ani = appendage.getVar().GetAnimationMap("huoyan5_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan5_ani);//��?ani
		sq_drawCurrentFrame(huoyan5_ani, 105, 128, isFlip);//�������
		local huoyan6_ani = appendage.getVar().GetAnimationMap("huoyan6_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan6_ani);//��?ani
		sq_drawCurrentFrame(huoyan6_ani, 125, 128, isFlip);//�������
		local huoyan7_ani = appendage.getVar().GetAnimationMap("huoyan7_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan7_ani);//��?ani
		sq_drawCurrentFrame(huoyan7_ani, 145, 128, isFlip);//�������
		break;
	}
	local ui1_ani = appendage.getVar().GetAnimationMap("ui1_ani", "ui/monster_hp/burning/firegauge_ui00.ani");//����ani����
	sq_AnimationProc(ui1_ani);//��?ani
	sq_drawCurrentFrame(ui1_ani, 5, 140, isFlip);//�������
}