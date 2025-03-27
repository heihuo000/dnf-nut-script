

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_8")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_8")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_8")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_8");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_8(appendage, flagIndex)
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
			parentObj.sq_PlaySound("R_MON_MALE_V8_ATK");//��ۯ���
			break;
		}
	}
	return true;
}

function proc_appendage_monster_358332886_8(appendage)
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
			local t = appendage.getVar().get_timer_vector(0);//�������
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/nomal/grimseeker_higherdevotee/animation/Attack_1_1.ani", 0, 5, 0);
				}
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_8(appendage)
{
	if (!appendage) return;

	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(500, -1);//���1����?��̰ ���2�������
	t.resetInstant(0);//���� ���ڱ�
	t.setEventOnStart(false);//?true �������ʦ���ۡ

}

function onEnd_appendage_monster_358332886_8(appendage)
{
	if (!appendage) return;

}