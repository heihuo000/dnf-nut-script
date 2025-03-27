function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_100000109")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_100000109")
}

function onStart_appendage_100000109(appendage)
{
	if (!appendage) return;
	local obj = appendage.getParent();
	if (!obj)
	{
		appendage.setValid(false);
		return;
	}

	local physicalAttack = 200;
	local physicalDefense = 200;
	local magicalAttack = 200;
	local magicalDefense = 200;
	local equipmentphysicalAttack = 120;
	local equipmentmagicalAttack = 120;
	local equipmentphysicalgenuine = 120;
	local equipmentmagicalgenuine = 120;
	local attackall = 25;
	local physicalrate = 20;
	local magicaltate = 20;
	local change_appendage = appendage.sq_getChangeStatus("100000109");

	if (!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("100000109", obj, obj, 0, 37, false, physicalAttack);
	}
	if (change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, physicalDefense.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, magicalDefense.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, equipmentphysicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, equipmentmagicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, equipmentphysicalgenuine.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, false, equipmentmagicalgenuine.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_ALL, false, attackall.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, physicalrate.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, magicaltate.tofloat());
	}
}

function onEnd_appendage_100000109(appendage)
{
	if (!appendage) return;

	local obj = appendage.getParent();

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	if (spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}
