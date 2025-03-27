

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_7")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_7")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_7")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_7");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_7(appendage, flagIndex)
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
			parentObj.sq_PlaySound("R_MON_FEMALE_V4_ATK");//��ۯ���
			break;
		}
	}
	if (attackIndex == 1)
	{
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_MON_FEMALE_V4_ATK");//��ۯ���
			break;
		case 2:
			parentObj.sq_PlaySound("AXION_DARK");//��ۯ���
			break;
		}
	}
	return true;
}

function proc_appendage_monster_358332886_7(appendage)
{
	if (!appendage) return;

}

function onStart_appendage_monster_358332886_7(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_7(appendage)
{
	if (!appendage) return;

}