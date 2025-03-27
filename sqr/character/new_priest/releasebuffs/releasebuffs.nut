function checkExecutableSkill_ReleaseBuffs(obj)
{
	if(!obj) return false;
	local isUse = obj.sq_IsUseSkill(222);
	if(isUse)
	{
		initUseBuffSkills(obj);
		return true;
	}
	return false;
}

function checkCommandEnable_ReleaseBuffs(obj)
{
	if(!obj) return false;

	return true;
}

function initUseBuffSkills(obj)
{
	obj.getVar("releaseBuffSkills").setBool(0,true);
	obj.getVar("releaseBuffSkills").clear_vector();
	obj.getVar("releaseBuffSkills").push_vector(0);
	obj.getVar("passBuffSkills").setBool(0,false);
	obj.getVar("realBuffSkills").clear_vector();
	local skillArray = [7, 51, 52, 53, 23, 19, 20, 55, 22, 45, 21];//7����ף����51�������ϡ�52�Q����53��ʹף����23��֮�ͳ�19��[֮����20���o���¡�55�������ϡ�22�}�����o��45�s�uף����21����ԴȪ
	for(local i=0;i<skillArray.len();++i)
	{
		local skillIndex = skillArray[i];
		local skillLevel = sq_GetSkillLevel(obj, skillIndex);
		if(skillLevel <= 0) continue;
		local skill = sq_GetSkill(obj, skillIndex);
		local isCool = skill.isInCoolTime();
		if(isCool) continue;
		obj.getVar("realBuffSkills").push_vector(skillIndex);
	}
}

//proc
function useBuffSkills(obj)
{
	local size = obj.getVar("realBuffSkills").size_vector();
	if(!size) return;
	local interval = 50;
	local castT1 = interval/2;
	local castT2 = interval/2;

	if(obj.getVar("releaseBuffSkills").getBool(0))
	{
		if(!IsInterval(obj, interval)) return;
		local index = obj.getVar("releaseBuffSkills").get_vector(0);
		if(index >= size)
		{
			obj.getVar("releaseBuffSkills").setBool(0, false);
			obj.setEnableChangeState(true);
			return;
		}
		local skillIndex = obj.getVar("realBuffSkills").get_vector(index);
		local isUse = obj.sq_IsUseSkill(skillIndex);
		if(!isUse && !obj.getVar("passBuffSkills").getBool(0))
		{
			obj.getVar("releaseBuffSkills").set_vector(0, index+1);
		}
		else
		{
			local aniIndex = 2;
			if(skillIndex == 45)
				aniIndex = 3;
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(0);	//2���x��݆�P��3���x����݆�P
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(skillIndex);	//skill index
			obj.sq_IntVectPush(castT1);	//cast time
			obj.sq_IntVectPush(castT2);	//cast time
			obj.sq_IntVectPush(aniIndex);	//ani index
			obj.sq_IntVectPush(4);
			obj.sq_IntVectPush(4);
			obj.sq_IntVectPush(1000);
			obj.sq_IntVectPush(1000);
			obj.sq_IntVectPush(450);
			obj.sq_AddSetStatePacket(13, STATE_PRIORITY_IGNORE_FORCE, true);
			obj.getVar("releaseBuffSkills").set_vector(0, index+1);
			obj.getVar("passBuffSkills").setBool(0,false);
		}
	}
}
