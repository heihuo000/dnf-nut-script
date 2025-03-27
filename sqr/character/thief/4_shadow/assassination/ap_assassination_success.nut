
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_ASSASSINATION_SUCCESS")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_ASSASSINATION_SUCCESS")
}

function sq_AddEffect(appendage)
{
}


function proc_appendage_ASSASSINATION_SUCCESS(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				

	if(!sourceObj || !parentObj || sourceObj.getState() == STATE_STAND) 
    {
		appendage.setValid(false);
		return;
	}
    gbl_HoldAndDelayEffectSetByAppendageLoopNoClear(appendage);

}



function onStart_appendage_ASSASSINATION_SUCCESS(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}	

}

