

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_118")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_118")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_118")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_118")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_118")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_118")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_118")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_118")
}

function onSourceKeyFrameFlag_appendage_monster_358332886_118(appendage, flagIndex)
{
	if (!appendage) return;

	return true;
}

function proc_appendage_monster_358332886_118(appendage)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	local state = parentObj.getState();//����ݾʥ��������������

	if (state == 0)
	{
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
				local t = appendage.getVar().get_timer_vector(0);
				if (!activeObj.isDead())
				{
					if (t)
					{
						if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
						{
							local Appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, parentObj, -1, false, "qq358332886_monster_appendage/monster_appendage/ap_superdamagec.nut", true);//ݾʥap
							Appendage.sq_SetValidTime(800);//����ap��������
						}

					}
				}
			}
		}
	}
}

function onStart_appendage_monster_358332886_118(appendage)
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
	t.setParameter(100, 1);//���1����?��̰ ���2�������
	t.resetInstant(0);//���� ���ڱ�
	t.setEventOnStart(true);//?true �������ʦ���ۡ
}

function onEnd_appendage_monster_358332886_118(appendage)
{
	if (!appendage) return;

}
