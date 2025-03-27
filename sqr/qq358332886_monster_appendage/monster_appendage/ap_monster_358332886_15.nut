

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_15")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_15")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_15")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_15");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_15(appendage, flagIndex)
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

	if (attackIndex == 0)
	{
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("flying").clear_vector();//?�
			appendage.getVar("flying").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("flying").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("flying").push_vector(parentObj.getZPos());//��������z���
			break;
		}
	}
	return true;
}

function proc_appendage_monster_358332886_15(appendage)
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
		case 0:
			if (appendage.getVar("flying").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni);//��������
				local fireT = pAni.getDelaySum(1, 4) - pAni.getDelaySum(0, 0);//������

				local flyingVar = appendage.getVar("flying");//����
				local txVar = appendage.getVar();

				local dstX = sq_GetUniformVelocity(flyingVar.get_vector(0), txVar.get_vector(0), currentT, fireT);
				local dstY = sq_GetUniformVelocity(flyingVar.get_vector(1), txVar.get_vector(1), currentT, fireT);
				local dstZ = sq_GetUniformVelocity(flyingVar.get_vector(2), txVar.get_vector(2), currentT, fireT);
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���
				sq_setCurrentAxisPos(parentObj, 2, dstZ);//��������y���

				if (currentT >= fireT)
					appendage.getVar("flying").clear_vector();

			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_15(appendage)
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
		if (!object && !object.isObjectType(OBJECTTYPE_MONSTER)) continue;
		local count = object.getMyPassiveObjectCount(109001653);
		if (count > 0)
		{
			local myClone = object.getMyPassiveObject(109001653, 0);
			appendage.getVar().clear_vector();//?�
			appendage.getVar().push_vector(myClone.getXPos());
			appendage.getVar().push_vector(myClone.getYPos());
			appendage.getVar().push_vector(myClone.getZPos());
		}
	}
}

function onEnd_appendage_monster_358332886_15(appendage)
{
	if (!appendage) return;

}