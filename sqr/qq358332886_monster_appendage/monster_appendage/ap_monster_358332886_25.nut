

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_25")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_25")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_25")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_25");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_25(appendage, flagIndex)
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
	case 0:
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/nomal/grimseeker_exorcist/animation/Attack_0_3.ani", 100, 0, 50);
			local pooledObj2 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/nomal/grimseeker_exorcist/animation/Attack_0_4.ani", 100, 0, 50);
			parentObj.sq_PlaySound("R_MON_MALE_V6_ATK");//��ۯ���
			break;
		}
		break;
	case 1:
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/nomal/grimseeker_exorcist/animation/Attack_0_3.ani", 100, 0, 50);
			local pooledObj2 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/nomal/grimseeker_exorcist/animation/Attack_0_4.ani", 100, 0, 50);
			parentObj.sq_PlaySound("R_MON_FIRE_SWISH");//��ۯ���
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_25(appendage)
{
	if (!appendage) return;

}

function onStart_appendage_monster_358332886_25(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_25(appendage)
{
	if (!appendage) return;

}


