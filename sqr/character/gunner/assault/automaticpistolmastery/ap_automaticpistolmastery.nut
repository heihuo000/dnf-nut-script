function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_automaticpistolmastery")
}

function onStart_appendage_automaticpistolmastery(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	//UpdataProperty_automaticpistolmastery(appendage); //ap?�??�??
}

//ap?�??�??
function UpdataProperty_automaticpistolmastery(appendage) {
	local parentObj = appendage.getParent();
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
	//??�?????�笆?�∪????�???
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local skill_level = obj.sq_GetSkillLevel(SKILL_AUTOMATICPISTOLMASTERY_ASSAULT);

	//?踹???�???
	//?箸�??餃???�祈????賣?�??�???
	local value1 = obj.sq_GetLevelData(SKILL_AUTOMATICPISTOLMASTERY_ASSAULT, 0, skill_level);
	local value2 = obj.sq_GetLevelData(SKILL_AUTOMATICPISTOLMASTERY_ASSAULT, 2, skill_level);

	//?�曄?�AP?�??�??
	local change_appendage = appendage.sq_getChangeStatus("automaticpistolmastery"); //?�?�敶????�?
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatus("automaticpistolmastery", obj, obj, 0, 0, false, 0);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		if (obj.getWeaponSubType() == 1) {
			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, true, value1.tofloat() * 0.1);
			change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, value2.tofloat() * 0.1);
		}
	}
}