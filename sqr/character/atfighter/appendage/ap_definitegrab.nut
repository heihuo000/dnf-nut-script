
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_definitegrab")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_definitegrab")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_definitegrab")
}

function proc_appendage_definitegrab(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}

}


function onStart_appendage_definitegrab(appendage)
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


function onEnd_appendage_definitegrab(appendage)
{
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
    
}
