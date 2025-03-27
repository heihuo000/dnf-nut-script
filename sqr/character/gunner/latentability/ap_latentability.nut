function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_latentability")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_latentability")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_latentability")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_latentability(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	{
		local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_LATENTABILITY);
		local value0 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 0, skillLevel); //����%
		local value1 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 1, skillLevel); //���%
		local value2 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 2, skillLevel); //����%
		local value3 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 3, skillLevel); //����%

		local value4 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 4, skillLevel); //����
		local value5 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 5, skillLevel); //���
		local value6 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 6, skillLevel); //����
		local value7 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 7, skillLevel); //����

		local value8 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 8, skillLevel); //ڪ����̪��%
		local value9 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 9, skillLevel); //ت����̪��%
		local value10 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 10, skillLevel); //Լء��̪��%
		local value11 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 11, skillLevel); //Լء��̪��%

		local value12 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 12, skillLevel); //ڪ����̪��
		local value13 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 13, skillLevel); //ت����̪��
		local value14 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 14, skillLevel); //Լء��̪��
		local value15 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 15, skillLevel); //Լء��̪��

		local value16 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 16, skillLevel); //��̪����
		local value17 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 17, skillLevel); //�������
		local value18 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 18, skillLevel); //�ۯ����

		local value19 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 19, skillLevel); //ڪ����̪��
		local value20 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 20, skillLevel); //ت����̪��

		local value21 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 21, skillLevel); //��q
		local value22 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 22, skillLevel); //��q
		local value23 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 23, skillLevel); //�q
		local value24 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 24, skillLevel); //��q
		local value25 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 25, skillLevel); //�����q

		local value26 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 26, skillLevel); //CD

		local value27 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 27, skillLevel); //ڪ����̪߿��
		local value28 = sq_GetLevelData(sqrChr, SKILL_LATENTABILITY, 28, skillLevel); //ت����̪߿��
		local change_appendage = appendage.sq_getChangeStatus("latentability");
		if(!change_appendage)
		{
			change_appendage = appendage.sq_AddChangeStatus("latentability",obj, obj, 0, 37, true, 0);
		}
		if(change_appendage)
		{
			change_appendage.clearParameter();
			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, true, value0.tofloat()); //����%
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, true, value1.tofloat()); //���%
			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, true, value2.tofloat()); //����%
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, true, value3.tofloat()); //����%

			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, value4.tofloat()); //����
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, value5.tofloat()); //���
			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, value6.tofloat()); //����
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, value7.tofloat()); //����

			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, true, value8.tofloat()); //ڪ����̪��%
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, true, value9.tofloat()); //ت����̪��%
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, true, value10.tofloat()); //Լء��̪��%
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, true, value11.tofloat()); //Լء��̪��%

			change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value12.tofloat()); //ڪ����̪��
			change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, value13.tofloat()); //ت����̪��
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, value14.tofloat()); //Լء��̪��
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, false, value15.tofloat()); //Լء��̪��

			change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, true, value16.tofloat()); //��̪����
			change_appendage.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED, true, value17.tofloat()); //�������
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, true, value18.tofloat()); //�ۯ����

			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, value19.tofloat()); //ڪ����̪��
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, value20.tofloat()); //ت����̪��

			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, false, value21.tofloat()); //��q
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, value22.tofloat()); //�q
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, value23.tofloat()); //��q
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, value24.tofloat()); //��q
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_ALL, false, value25.tofloat()); //�����q

			change_appendage.addParameter(CHANGE_STATUS_TYPE_COOLTIME_DECLINE, true, value26.tofloat()); //CD

			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, value27.tofloat()); //ڪ����̪߿��
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, value28.tofloat()); //ت����̪߿��
		}
	}
}

function onStart_appendage_latentability(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();

}

function onEnd_appendage_latentability(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
