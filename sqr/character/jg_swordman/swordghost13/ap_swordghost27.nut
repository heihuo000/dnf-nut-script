
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_swordghost27")
	appendage.sq_AddFunctionName("prepareDraw", "prepareDraw_appendage_swordghost27")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_swordghost27")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_swordghost27")
	appendage.sq_AddFunctionName("isEnd", "isEnd_appendage_swordghost27")
}


function sq_AddEffect(appendage)
{
}




function proc_appendage_swordghost27(appendage)
{
	if(!appendage) {
		return;
	}
}


function onStart_appendage_swordghost27(appendage)
{
	if(!appendage) {
		return;
	}
	
}


function prepareDraw_appendage_swordghost27(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();	
}




function onEnd_appendage_swordghost27(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();
	
}


// ?????? ?????? ????????? ???????
function isEnd_appendage_swordghost27(appendage)
{	
	return false;
}