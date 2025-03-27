
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_ICE80")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_ICE80")
}


function sq_AddEffect(appendage)
{

	appendage.sq_AddEffectFront("character/mage/atanimation/als_ani/atoverfreezeextension/atoverfreezeextension_hold_ice1.ani");

}
function proc_appendage_ICE80(appendage)
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
    local currentAni = sq_GetCurrentAnimation(parentObj);
    currentAni.setEffectLayer(true, GRAPHICEFFECT_LINEARDODGE, true, sq_RGB(0, 0, 255), sq_ALPHA(200), true, false);
    gbl_HoldAndDelayEffectSetDownByAppendageLoop(appendage);
}



function onStart_appendage_ICE80(appendage)
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