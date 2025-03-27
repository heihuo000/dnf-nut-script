
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_MARAUDER")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_MARAUDER")
}

function sq_AddEffect(appendage)
{
}
function proc_appendage_MARAUDER(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
//	local mage = appendage.getVar("dog").get_obj_vector(1);
				
	if(!sourceObj || !parentObj || sourceObj.getState() == STATE_STAND) 
    {
		appendage.setValid(false);
		return;
	}

    local startX = appendage.getVar("pos").get_vector(0);
    local startY = appendage.getVar("pos").get_vector(1);
    local objX = sourceObj.getXPos();
    local objY = sourceObj.getYPos();

    local currT = appendage.getTimer().Get();
    if (currT < 500)
    {
        local x = sq_GetAccel(startX, objX, currT,500 , true);
        local y = sq_GetAccel(startY, objY, currT,500 , true);
        parentObj.setCurrentPos(x,y,parentObj.getZPos());

    }else{

        parentObj.setCurrentPos(objX,objY,parentObj.getZPos());
    }
}



function onStart_appendage_MARAUDER(appendage)
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
    appendage.getVar("pos").clear_vector();
    appendage.getVar("pos").push_vector( parentObj.getXPos() );
    appendage.getVar("pos").push_vector( parentObj.getYPos() );
}

