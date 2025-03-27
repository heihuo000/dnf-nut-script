

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_22")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_22")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_22")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_22");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_22(appendage, flagIndex)
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
	case 2:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?�
			appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_22(appendage)
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
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 0);//��������
				local fireT = pAni.getDelaySum(1, 3);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 100, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 200 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//����۰��
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

function onStart_appendage_monster_358332886_22(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_22(appendage)
{
	if (!appendage) return;

}