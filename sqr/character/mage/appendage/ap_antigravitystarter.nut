function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("proc", "proc_appendage_antigravitystarter")
}

function proc_appendage_antigravitystarter(appendage) {
	if (!appendage) {
		return;
	}
	local obj = sq_GetCNRDObjectToSQRCharacter(appendage.getParent());
	local castTime = obj.getVar("castTime103").getInt(0);
	//��cd������������������Ө��������
	local skillLevel = sq_GetSkillLevel(obj, 168);
	local skill = sq_GetSkill(obj, 168);
	if (skillLevel > 0 && !skill.isSealFunction() && !sq_GetSkill(obj, 103).isInCoolTime()) {
		obj.getVar("isUse103").setBool(0, true);
		obj.getVar("castTime103").setInt(0, sq_GetObjectTime(obj));
	}
	if (sq_GetSkill(obj, 103).isInCoolTime() && obj.getVar("isUse103").getBool(0) && sq_GetObjectTime(obj) - castTime > 200) {
		obj.getVar("isUse103").setBool(0, false);
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(170); //�����̪����
		sq_BinaryWriteDword(1700000);
		obj.sq_SendCreatePassiveObjectPacket(23047, 0, 100, 0, 0);
	}
}