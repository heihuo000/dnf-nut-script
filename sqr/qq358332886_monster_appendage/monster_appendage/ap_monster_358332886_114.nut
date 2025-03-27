

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_114")
}


function onSourceKeyFrameFlag_appendage_monster_358332886_114(appendage, flagIndex)
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

			break;
		}
	}

	return true;
}

function proc_appendage_monster_358332886_114(appendage)
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

	//local objectManager = parentObj.getObjectManager();
	//local mapXPos = objectManager.getFieldXPos(IMouse.GetXPos(), ENUM_DRAWLAYER_NORMAL);
	//local mapYPos = objectManager.getFieldYPos(IMouse.GetYPos(), 0, ENUM_DRAWLAYER_NORMAL);
	//local uiXPos = mapXPos - (objectManager.getFieldXPos(mapXPos, ENUM_DRAWLAYER_NORMAL) - mapXPos);
	//local uiYPos = mapYPos - (objectManager.getFieldYPos(mapYPos, 0, ENUM_DRAWLAYER_NORMAL) - mapYPos);
	//sq_getMyCharacter().getVar("debugnew1").clear_vector();//ʥ��
	//sq_getMyCharacter().getVar("debugnew1").push_vector(mapXPos);//ʥ��
	//sq_getMyCharacter().getVar("debugnew1").push_vector(mapYPos);//ʥ��
	//sq_getMyCharacter().getVar("debugnew1").push_vector(uiXPos);//ʥ��
	//sq_getMyCharacter().getVar("debugnew1").push_vector(uiYPos);//ʥ��
	//sq_getMyCharacter().getVar("debugnew2").clear_vector();//ʥ��
	//sq_getMyCharacter().getVar("debugnew2").push_vector(state);//ʥ��
	//sq_getMyCharacter().getVar("debugnew2").push_vector(attackIndex);//ʥ��

}

function onStart_appendage_monster_358332886_114(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	local objectManager = parentObj.getObjectManager();//��������η����
	local objectNumber = objectManager.getCollisionObjectNumber();//���
	for (local i = 0; i < objectNumber; i++)
	{
		local object = objectManager.getCollisionObject(i);//�������׾����
		local lstid = object.getCollisionObjectIndex();
		if (lstid == 56065)
		{
			appendage.getVar().clear_obj_vector();
			appendage.getVar().push_obj_vector(object);
		}
	}
}

function onEnd_appendage_monster_358332886_114(appendage)
{
	if (!appendage) return;
}

function onSetHp_appendage_monster_358332886_114(appendage, hp, attacker)
{
	if (!appendage) return hp;
	local parentObj = appendage.getParent();//����ݫ����
	local oldHp = appendage.getVar("hp").get_vector(0);
	local damageNumber = oldHp - hp;

	if (damageNumber >= 0)
	{
		appendage.getVar("damageNumber").clear_vector();
		appendage.getVar("damageNumber").push_vector(damageNumber);
	}
	appendage.getVar("hp").clear_vector();
	appendage.getVar("hp").push_vector(hp);

	return hp;
}
function onDamageParent_appendage_monster_358332886_114(appendage, attacker, boundingBox, isStuck)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	local object = appendage.getVar().get_obj_vector(0);
	local activeObj = sq_GetCNRDObjectToActiveObject(object);
	local oldHp = activeObj.getHp();
	local damageNumber = appendage.getVar("damageNumber").get_vector(0);
	local newHp = oldHp - damageNumber;
	activeObj.setHp(newHp, null, true);

}