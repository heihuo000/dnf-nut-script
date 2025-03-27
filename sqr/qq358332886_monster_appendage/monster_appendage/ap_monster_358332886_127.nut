function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_127")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_127")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_127")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_127")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_127")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_127")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_127")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_127")
}

function onSourceKeyFrameFlag_appendage_monster_358332886_127(appendage, flagIndex)
{
	if (!appendage) return;

	return true;
}

function proc_appendage_monster_358332886_127(appendage)
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

	local t = appendage.getVar().get_timer_vector(0);//�������
	local count = appendage.getVar().get_vector(0);//�������

	if (state == 0)//��̪������
	{
		if (count >= 1000)
		{
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 4);
			sq_AddSetStatePacketActiveObject(parentObj, 8, pIntVec, STATE_PRIORITY_USER);//����׾����ۡ������
			count = 0;
			appendage.getVar().set_vector(0, count);
			return;
		}
	}
	else if (state == 9)//�����
	{
		if (t)
		{
			if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
			{
				if (count < 1000)
				{
					count = count + 40;
					appendage.getVar().set_vector(0, count);
				}
				else
				{
					count = 1000;
					appendage.getVar().set_vector(0, count);
				}
			}
		}
	}
	else if (state != 9)
	{
		if (t)
		{
			if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
			{
				if (count > 0 && count < 1000)
				{
					count = count - 20;
					appendage.getVar().set_vector(0, count);
				}
			}
		}
	}
}

function onStart_appendage_monster_358332886_127(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	local count = 0;
	appendage.getVar().clear_vector();
	appendage.getVar().push_vector(count);

	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(200, -1);//���1����?��̰ ���2�������
	t.resetInstant(0);//���� ���ڱ�
	t.setEventOnStart(true);//?true �������ʦ���ۡ

}

function onEnd_appendage_monster_358332886_127(appendage)
{
	if (!appendage) return;

}

function onDamageParent_appendage_monster_358332886_127(appendage, attacker, boundingBox, isStuck)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	if (isStuck) return;
	local count = appendage.getVar().get_vector(0);//�������

	if (count < 1000)
	{
		count = count + 20;
		appendage.getVar().set_vector(0, count);
	}
}

function drawAppend_appendage_monster_358332886_127(appendage, isOver, x, y, isFlip)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	local count = appendage.getVar().get_vector(0);//�������
	local count = count.tofloat() / 1000.0;//���ݩ����ߩ

	local ui2_ani = appendage.getVar().GetAnimationMap("ui2_ani", "ui/fiendwar_kr/monsterresistgague/firegauge_ui02.ani");//����ani����
	sq_AnimationProc(ui2_ani);//��?ani
	sq_drawCurrentFrame(ui2_ani, 5, 140, isFlip);//�������

	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/fiendwar_kr/monsterresistgague/burning_monsterhp.ani");
	sq_AnimationProc(huoyan_ani);//��?ani
	sq_drawCurrentFrame(huoyan_ani, 13, 147, isFlip);//�������
	huoyan_ani.setImageRateFromOriginal(count, 1.0);//����ani���

	local ui1_ani = appendage.getVar().GetAnimationMap("ui1_ani", "ui/fiendwar_kr/monsterresistgague/firegauge_ui00.ani");//����ani����
	sq_AnimationProc(ui1_ani);//��?ani
	sq_drawCurrentFrame(ui1_ani, 5, 140, isFlip);//�������
}
