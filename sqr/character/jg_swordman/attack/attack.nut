
function onProc_SwordManAttackmove(obj)
{
	if(!obj)
		return false;

	local skillLevel = obj.sq_GetSkillLevel(123);//???e?????????????????? [????-????????????????*4]
	if (skillLevel > 0)
	{
		local st = obj.sq_IsEnterSkill(46);
		if(st != -1)
		{
			obj.startSkillCoolTime(0);
			if (IsInterval(obj, 200))
			{
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(0);
				obj.sq_AddSetStatePacket(STATE_SWORD_GHOST_2, STATE_PRIORITY_USER, true);
			}
		}
	}
}

function onProc_SwordManAttackdash(obj)
{
	if(!obj)
		return false;

	local skillLevel = obj.sq_GetSkillLevel(123);//???e?????????????????? [????-????????????????*4]
	if (skillLevel > 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_SWORD_GHOST_2, STATE_PRIORITY_USER, true);
	}
}

