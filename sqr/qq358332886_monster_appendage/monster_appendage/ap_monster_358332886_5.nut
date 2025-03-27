

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_5")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_5")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_5")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_5");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_5(appendage, flagIndex)
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
			parentObj.sq_PlaySound("R_MON_AXE_HIT");//��ۯ���
			break;
		case 2:
			parentObj.sq_PlaySound("R_MON_MALE_V5_ATK");//��ۯ���
			break;
		}
	}
	else if (attackIndex == 1)
	{
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_MON_AXE_HIT");//��ۯ���
			break;
		case 2:
			parentObj.sq_PlaySound("R_MON_MALE_V5_ATK");//��ۯ���
			break;
		}
	}
	else if (attackIndex == 2)
	{
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_MON_MALE_V5_ATK");//��ۯ���
			break;
		}
	}
	else if (attackIndex == 3)
	{
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_MON_GRAB_HIT");//��ۯ���
			break;
		}
	}

	return true;
}

function proc_appendage_monster_358332886_5(appendage)
{
	if (!appendage) return;

}

function onStart_appendage_monster_358332886_5(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_5(appendage)
{
	if (!appendage) return;

}