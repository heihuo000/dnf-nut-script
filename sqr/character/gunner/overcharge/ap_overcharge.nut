
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_overcharge")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_overcharge")
	appendage.sq_AddFunctionName("isEnd", "isEnd_appendage_overcharge")
}


function sq_AddEffect(appendage)
{
	if(!appendage)
		return;

}



function onStart_appendage_overcharge(appendage)
{
	if(!appendage) 
	{
		return;
	}


	local obj = appendage.getParent();		


}


function onEnd_appendage_overcharge(appendage)
{
	if(!appendage) 
	{
		return;
	}


}


function isEnd_appendage_overcharge(appendage)
{
	if(!appendage)
		return false;
		


	return false;
} 