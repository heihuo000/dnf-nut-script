


function onAfterSetState_gunner_aerialknee(obj, state, datas, isResetTimer)
{
	if (!obj) return;

    local subSkiilId = obj.sq_GetVectorData(datas, 0);//�o��ǹL�Ӫ���0??
    obj.getVar().clear_vector();//�M��
    obj.getVar().push_vector(subSkiilId);//?�J
}



function onProcCon_gunner_aerialknee(obj)
{
	if (!obj) return;

	local subSkiilId = obj.getVar().get_vector(0);
	if (subSkiilId == 4)//����
		onProcIsSub_My_gunner_stylish(obj)
}