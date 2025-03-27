
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_gunner_stylish")//??�l��?�m
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_gunner_stylish")//??�l��?�m
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_gunner_stylish")//��??
}


function proc_appendage_gunner_stylish(appendage)
{
    if(!appendage) return;

    local obj = appendage.getParent()
    if(!obj)
    {
        appendage.setValid(false);
        return;
    }

    switch(obj.getState())
    {
        case STATE_STAND:
        case STATE_DIE:
        case STATE_HOLD:
        case STATE_JUMP:
            onEnd_appendage_gunner_stylish(appendage);
            return;
    }
}


function onStart_appendage_gunner_stylish(appendage)
{
	if(!appendage) return;

    local obj = appendage.getParent();//�o��??�����H
	if(!obj) {
		appendage.setValid(false);
		return;
	}

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");//�o��ݼv
	if (!spectrumAppendage)//����
	{
		spectrumAppendage = appendage.sq_AddOcularSpectrum("ocularSpectrum", obj, obj, 100);//?�m�ݼv
		sq_SetParameterOcularSpectrum(spectrumAppendage, 400, 50, true, sq_RGBA(0, 255, 0, 255), sq_RGBA(0, 255, 0, 0), 2, 2, 2);//?�m?�G
	}
}

function onEnd_appendage_gunner_stylish(appendage)
{
	if(!appendage) return;

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");//�o��ݼv
	if(spectrumAppendage)//�s�b
        spectrumAppendage.endCreateSpectrum();//�M��
}


