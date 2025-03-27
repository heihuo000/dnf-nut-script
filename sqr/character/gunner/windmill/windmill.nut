


function onAfterSetState_gunner_windmill(obj, state, datas, isResetTimer)
{
	if (!obj) return;

    local subSkiilId = obj.sq_GetVectorData(datas, 0);//�o��ǹL�Ӫ���0??
    obj.getVar().clear_vector();//�M��
    obj.getVar().push_vector(subSkiilId);//?�J

    local skill_level = sq_GetSkillLevel(obj, SKILL_GUNNER_STYLISH);//�o��Q�ʧ�?��?
    if(skill_level > 0)
    {
        local xVelocity = obj.sq_GetLevelData(SKILL_GUNNER_STYLISH, 0, skill_level);;
        local yVelocity = obj.sq_GetLevelData(SKILL_GUNNER_STYLISH, 1, skill_level);;

        obj.sq_SetStaticMoveInfo(0, xVelocity, xVelocity, true);
        obj.sq_SetStaticMoveInfo(1, yVelocity, yVelocity, true);
        obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);//?�l����
    }
}



function onProcCon_gunner_windmill(obj)
{
	if (!obj) return;

	local subSkiilId = obj.getVar().get_vector(0);
	if (subSkiilId == 3)//?�۽�
		onProcIsSub_My_gunner_stylish(obj);
}