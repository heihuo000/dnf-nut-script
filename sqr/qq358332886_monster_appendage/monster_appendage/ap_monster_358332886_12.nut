

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_12")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_12")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_12")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_12");
}


function onSourceKeyFrameFlag_appendage_monster_358332886_12(appendage, flagIndex)
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
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_0_2.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 1)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 3)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_0_2.ani", 0, 5, 0);
			break;
		}
	}
	else if (attackIndex == 6)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack06_3.ani", 0, 5, 0);
			break;
		}
	}
	else if (attackIndex == 7)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 8)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 9)
	{
		switch (flagIndex)
		{
		case 1:
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
			if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? � ����
			{
				appendage.getVar("jump").clear_vector();//?�
				appendage.getVar("jump").push_vector(parentObj.getXPos());//��������x���
				appendage.getVar("jump").push_vector(parentObj.getYPos());//��������y���
				appendage.getVar("jump").push_vector(parentObj.getZPos());//��������z���
				appendage.getVar("jump").push_vector(targetObj.getXPos());//��������x���
				appendage.getVar("jump").push_vector(targetObj.getYPos());//��������y���

				sq_getMyCharacter().getVar("debugnew2").push_vector(parentObj.getXPos());//ʥ��
			}
			break;
		}
	}
	else if (attackIndex == 11)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		case 3:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_0_2.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 12)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_12_2.ani", 0, 1, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_12_2_02.ani", 0, 1, 0);
			break;
		case 3:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_12_2_01.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 13)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 5, 0);
			break;
		}
	}
	return true;
}

function proc_appendage_monster_358332886_12(appendage)
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
		case 9:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 4)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 4);//��������
				local fireT = pAni.getDelaySum(4, 9);//������

				local jumpVar = appendage.getVar("jump");//����

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), jumpVar.get_vector(3), currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), jumpVar.get_vector(4), currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 120 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));

				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���
				sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//��������z���

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		}
	}
	if (attackIndex == 7 || attackIndex == 8 || attackIndex == 10 || attackIndex == 11 || attackIndex == 14 || attackIndex == 15 || attackIndex == 16)
	{
		sq_SetGrabable(parentObj, false);
	}
	else
	{
		sq_SetGrabable(parentObj, true);
	}
}

function onStart_appendage_monster_358332886_12(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_12(appendage)
{
	if (!appendage) return;

}