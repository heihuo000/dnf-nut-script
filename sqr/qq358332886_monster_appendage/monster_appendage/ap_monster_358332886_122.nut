

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_122")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_122")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_122")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_122")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_122")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_122")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_122")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_122")
}
function onSourceKeyFrameFlag_appendage_monster_358332886_122(appendage, flagIndex)
{
	if (!appendage) return;

	return true;
}

function proc_appendage_monster_358332886_122(appendage)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	local state = parentObj.getState();//����ݾʥ��������������

	local t = appendage.getVar().get_timer_vector(0);//�������
	local count = appendage.getVar().get_vector(0);//�������

	if (state == 0)//��̪������
	{
		if (count >= 200)
		{
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 22);
			sq_AddSetStatePacketActiveObject(parentObj, 8, pIntVec, STATE_PRIORITY_USER);//����׾����ۡ������
			count = 0;
			appendage.getVar().set_vector(0, count);
			return;
		}
	}
	else if (state == 9)//��̪������
	{
		if (t)
		{
			if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
			{
				if (count < 200)
				{
					count = count + 30;
					appendage.getVar().set_vector(0, count);
				}
				else
				{
					count = 200;
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
				if (count > 0 && count < 200)
				{
					count = count - 10;
					appendage.getVar().set_vector(0, count);
				}
			}
		}
	}
}

function onStart_appendage_monster_358332886_122(appendage)
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
	t.setParameter(1000, -1);//���1����?��̰ ���2�������
	t.resetInstant(0);//���� ���ڱ�
	t.setEventOnStart(true);//?true �������ʦ���ۡ
}

function onEnd_appendage_monster_358332886_122(appendage)
{
	if (!appendage) return;

}

function onDamageParent_appendage_monster_358332886_122(appendage, attacker, boundingBox, isStuck)
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

	if (count < 200)
	{
		count = count + 5;
		appendage.getVar().set_vector(0, count);
	}
}

function drawAppend_appendage_monster_358332886_122(appendage, isOver, x, y, isFlip)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}
	local count = appendage.getVar().get_vector(0);//�������
	local count = count.tofloat() / 200.0;//���ݩ����ߩ
	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_main.ani");
	sq_AnimationProc(huoyan_ani);//��?ani
	sq_drawCurrentFrame(huoyan_ani, 15, 129, isFlip);//�������
	huoyan_ani.setImageRateFromOriginal(count, 1.0);//����ani���

	local ui1_ani = appendage.getVar().GetAnimationMap("ui1_ani", "ui/monster_hp/burning/firegauge_ui00.ani");//����ani����
	sq_AnimationProc(ui1_ani);//��?ani
	sq_drawCurrentFrame(ui1_ani, 5, 140, isFlip);//�������
}
