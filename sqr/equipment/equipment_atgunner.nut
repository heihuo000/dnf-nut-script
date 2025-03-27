
function isUsableItem_ATGunner(obj, itemIndex)
{
	if (!sq_IsInBattle()) {
		isUsableItem_AllGrowJob(obj, itemIndex);
	}
	local size = obj.getVar("itemIndex").size_vector();
	for (local i = 0; i < size; ++i) {
		local isSaved = false;
		for (local i = 0; i < size; ++i) {
			local index = obj.getVar("itemIndex").get_vector(i);
			if (index == itemIndex) {
				isSaved = true;
			}
		}
		local index = obj.getVar("itemIndex").get_vector(i);
		if (index == i && !isSaved) {
			obj.getVar("itemIndex").set_vector(i, itemIndex);
		}
	}
	return duegonUsableItem(itemIndex);
}

function drawMainCustomUI_ATGunner(obj)
{
	if(!obj) return;
	obj.getVar("itemIndex").clear_vector();
	local slotNum = 6;
	for(local i=0;i<slotNum;++i)
	{
		obj.getVar("itemIndex").push_vector(i);
	}

	drawNewDamageUI_AllGrowJob(obj);

}

function procAppend_ATGunner(obj)
{
	if(!obj) return 0;
	procAppend_AllGrowJob(obj);
	procAppend_NitroMotor(obj);
	//enableNewWalkShoot(obj);
	//enableNitromotor(obj);
	if (obj.isMyControlObject()&&(sq_getGrowType(obj) == 2)&&(!sq_isPVPMode())) {
		local index = obj.getCurrentSkillIndex();

		//x-1���?
		if (index == 71) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_x1hold.nut" )) {
				CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, index, false, "apjh/ap_x1hold.nut", true );
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_x1hold.nut" )) {
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "apjh/ap_x1hold.nut");
			}
		}
	}
	if(obj.sq_GetState() == 169)
	{
		if(obj.getZPos()==0 )
		{
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
	}
	
	setMyCharacterNoShake(obj);

	local isAppend1;
	local isAppend2;
	local isAppend3;
	local isAppend4;

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000101.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000101)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000101.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000101)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000101.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000102.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000102)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000102.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000102)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000102.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000103.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000103)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000103.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000103)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000103.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000104.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000104)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000104.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000104)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000104.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000105.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000105)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000105.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000105)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000105.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000106.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000106)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000106.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000106)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000106.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000107.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000107)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000107.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000107)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000107.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000108.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000108)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000108.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000108)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000108.nut");
			appendage.setValid(false);
		}
	}
}
