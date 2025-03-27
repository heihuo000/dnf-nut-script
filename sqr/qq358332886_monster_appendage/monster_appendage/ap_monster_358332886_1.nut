

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_1")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_1")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_1")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_1");
}


function onSourceKeyFrameFlag_appendage_monster_358332886_1(appendage, flagIndex)
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
	case 1:
		switch (flagIndex)
		{
		case 1:
			local objectManager = parentObj.getObjectManager();//��������η����
			local objectNumber = objectManager.getCollisionObjectNumber();//���
			for (local i = 0; i < objectNumber; i++)
			{
				local object = objectManager.getCollisionObject(i);//�������׾����
				if (!object && !object.isObjectType(OBJECTTYPE_PASSIVE)) continue;

				local ID = object.getCollisionObjectIndex();//���׾���� ����lstId
				if (ID = 15438)
				{
					appendage.getVar("jump").clear_vector();
					appendage.getVar("jump").push_vector(parentObj.getXPos());
					appendage.getVar("jump").push_vector(parentObj.getYPos());
					appendage.getVar("jump").push_vector(parentObj.getZPos());
					appendage.getVar("jump").push_vector(object.getXPos());
					appendage.getVar("jump").push_vector(object.getYPos());
					if (parentObj.getXPos() > object.getXPos())
						sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
					else
						sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��

				}
			}
			break;
		}
		break;
	case 6:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();
			appendage.getVar("jump").push_vector(parentObj.getXPos());
			appendage.getVar("jump").push_vector(parentObj.getYPos());
			appendage.getVar("jump").push_vector(parentObj.getZPos());
			if (parentObj.getXPos() > 470)
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
			else
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
			break;
		case 2:
			sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
			break;
		}
		break;
	case 7:
		switch (flagIndex)
		{
		case 1:
			local objectManager = parentObj.getObjectManager();//��������η����
			local objectNumber = objectManager.getCollisionObjectNumber();//���
			for (local i = 0; i < objectNumber; i++)
			{
				local object = objectManager.getCollisionObject(i);//�������׾����
				if (!object && !object.isObjectType(OBJECTTYPE_PASSIVE)) continue;

				local ID = object.getCollisionObjectIndex();//���׾���� ����lstId
				if (ID = 15438)
				{
					appendage.getVar("jump").clear_vector();
					appendage.getVar("jump").push_vector(parentObj.getXPos());
					appendage.getVar("jump").push_vector(parentObj.getYPos());
					appendage.getVar("jump").push_vector(parentObj.getZPos());
					appendage.getVar("jump").push_vector(object.getXPos());
					appendage.getVar("jump").push_vector(object.getYPos());
					if (parentObj.getXPos() > object.getXPos())
						sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
					else
						sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��

				}
			}
			break;
		}
		break;
	case 12:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();
			appendage.getVar("jump").push_vector(parentObj.getXPos());
			appendage.getVar("jump").push_vector(parentObj.getYPos());
			appendage.getVar("jump").push_vector(parentObj.getZPos());
			if (parentObj.getXPos() > 470)
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
			else
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
			break;
		case 2:
			sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//����۰��
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_1(appendage)
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
		case 1:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 0);
				local fireT = pAni.getDelaySum(1, 3);

				local jumpVar = appendage.getVar("jump");

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
		case 6:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 0);
				local fireT = pAni.getDelaySum(1, 3);

				local jumpVar = appendage.getVar("jump");

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 470, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 400, currentT, fireT);
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
		case 7:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 5)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 4);
				local fireT = pAni.getDelaySum(5, 7);

				local jumpVar = appendage.getVar("jump");

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
		case 12:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 0);
				local fireT = pAni.getDelaySum(1, 3);

				local jumpVar = appendage.getVar("jump");

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 540, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 400, currentT, fireT);
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
		}
	}
}

function onStart_appendage_monster_358332886_1(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_1(appendage)
{
	if (!appendage) return;

}