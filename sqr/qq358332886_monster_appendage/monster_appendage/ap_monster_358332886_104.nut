

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_104")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_104")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_104")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_104");
}
function onSourceKeyFrameFlag_appendage_monster_358332886_104(appendage, flagIndex)
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
	case 4:
		switch (flagIndex)
		{
		case 1:
			local targetObj = sq_FindTarget(parentObj, -700, 700, 900, 9999);//��?��������������
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
	}
	return true;
}

function proc_appendage_monster_358332886_104(appendage)
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
		case 4:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 5)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(1, 4);//��������
				local fireT = pAni.getDelaySum(5, 11);//������

				local jumpVar = appendage.getVar("jump");//����


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), jumpVar.get_vector(3), currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), jumpVar.get_vector(4), currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 300 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
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

function onStart_appendage_monster_358332886_104(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_104(appendage)
{
	if (!appendage) return;

}