function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_BreachingDown_Attack")
	appendage.sq_AddFunctionName("proc", "proc_appendage_BreachingDown_Attack")
}

function onAttackParent_appendage_BreachingDown_Attack(appendage, realAttacker, damager, boundingBox, isStuck) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent(); //?�???�笆??
	local sourceObj = appendage.getSource(); //?�?�皞?�笆??
	local activeObj = sq_GetCNRDObjectToActiveObject(damager);
	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj); //?�砌?�閫?�??
	if (!isStuck && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/assault/breachingdown/ap_breachingdown.nut")) {
			CNSquirrelAppendage.sq_RemoveAppendage(activeObj, "character/gunner/assault/breachingdown/ap_breachingdown.nut");
		}
		local breachingDownAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_BREACHINGDOWN, false, "character/gunner/assault/breachingdown/ap_breachingdown.nut", true);
		breachingDownAppendage.sq_SetValidTime(obj.sq_GetIntData(SKILL_BREACHINGDOWN, 0));
	}
}

function proc_appendage_BreachingDown_Attack(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}

	//??�?????�笆??
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	BreachingDown_AttackSign(obj);
}