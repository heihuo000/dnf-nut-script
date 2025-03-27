ENUM_OUTRAGEBREAK_STATE_DROP_FRAME <- 5

function checkExecutableSkill_OutRageBreak(obj)  
{
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(81);
	if (isUseSkill) {
    
        if (obj.sq_GetState() != 233 && obj.sq_GetState() != 232)
        {
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(0);
            obj.sq_IntVectPush(0);
            obj.sq_IntVectPush(0);
            obj.sq_IntVectPush(0);
            obj.sq_IntVectPush(0);
            obj.sq_AddSetStatePacket(45,  STATE_PRIORITY_USER, true);
        }else{
            

            obj.sq_SendCreatePassiveObjectPacket(20044, 23, 100, 1, 0);
        }
		return true;
	}else{
    }

	return false;
}

function checkCommandEnable_OutRageBreak(obj)
{

	return true;
}


/*function createOutRageBreakSlashEffectA(obj)
{

	local ani = sq_CreateAnimation("","character/swordman/effect/animation/outragebreak/sword_slash_ldodge1.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX  ,obj.getYPos() + 1,obj.getZPos());
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj,pooledObj,2,false);	

}

function createOutRageBreakSlashEffectB(obj)
{

	local ani = sq_CreateAnimation("","character/swordman/effect/animation/outragebreak/sword_slash_none1.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX  ,obj.getYPos() + 1,obj.getZPos());
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj,pooledObj,2,false);

}*/


function onSetState_OutBreak(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	local state = obj.sq_GetVectorData(datas, 0);

	if (state == 0)
	{
		local SKILLHP = sq_GetLevelData(obj,81, 3, sq_GetSkillLevel(obj, 81))
		obj.setHp(obj.getHp() - SKILLHP, null, true)
	}
	if (state == 1)
	{
		obj.sq_AddStateLayerAnimation(1, 
		obj.sq_CreateCNRDAnimation("effect/animation/outragebreak/1sword_slash_ldodge.ani"), 0, 0);
		obj.sq_AddStateLayerAnimation(2, 
		obj.sq_CreateCNRDAnimation("effect/animation/outragebreak/1sword_slash_none.ani"), 0, 0);
	}
	if (state == 10)
	{
		obj.sq_AddStateLayerAnimation(1, 
		obj.sq_CreateCNRDAnimation("effect/animation/outragebreak/sword_slash_ldodge1.ani"), 0, 0);
		obj.sq_AddStateLayerAnimation(2, 
		obj.sq_CreateCNRDAnimation("effect/animation/outragebreak/sword_slash_none1.ani"), 0, 0);

		obj.getVar("len").clear_vector();
		obj.getVar("len").push_vector( obj.getXPos() );
		obj.getVar("len").push_vector( obj.getYPos() );

		local len = obj.sq_GetIntData(81, 5);
		local leny = 0;
		local leftPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL);
		local rightPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL);

		local upPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL);
		local downPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL);


		if(sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT && rightPress) len = obj.sq_GetIntData(81, 6);
		if(sq_GetDirection(obj) == ENUM_DIRECTION_LEFT && leftPress) len = obj.sq_GetIntData(81, 6);

		if(sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT && leftPress) len = obj.sq_GetIntData(81, 7);
		if(sq_GetDirection(obj) == ENUM_DIRECTION_LEFT && rightPress) len = obj.sq_GetIntData(81, 7);



		if (upPress) leny = -obj.sq_GetIntData(81, 8);
		if (downPress) leny = obj.sq_GetIntData(81, 8);


		obj.getVar("len").push_vector( len );
		obj.getVar("len").push_vector( leny );
		obj.getVar("len").push_vector( obj.sq_GetIntData(81, 1) );
		obj.getVar("len").push_vector( 0 );
		obj.getVar("len").push_vector( len );
		obj.sq_SetCurrentAnimation(67);

	}

}

function onAfterSetState_OutBreak(obj, state, datas, isResetTimer)
{

												 
								
									  

				   
	 

	local state = obj.sq_GetVectorData(datas, 0);
	obj.getVar().clear_vector();
	obj.getVar().push_vector( state );
	if (state == 1)
	{
	local animation = sq_GetCurrentAnimation(obj);
	obj.sq_SetCurrentTimeByFrame(animation, ENUM_OUTRAGEBREAK_STATE_DROP_FRAME);
	}
}

function onKeyFrameFlag_OutBreak(obj,flagIndex)
{
    local state = obj.getVar().get_vector(0);
    if (state == 0)
    {
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(10);
            obj.sq_IntVectPush(0);
            obj.sq_IntVectPush(0);
            obj.sq_IntVectPush(0);
            obj.sq_IntVectPush(0);
            obj.sq_AddSetStatePacket(45,  STATE_PRIORITY_USER, true);
    }
}

function onProc_OutBreak(obj)
{
	if(!obj) return;
	local state = obj.getVar().get_vector(0);
	local pAni = obj.sq_GetCurrentAni();

	if(state == 10)
	{

		local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
		if (frmIndex >= ENUM_OUTRAGEBREAK_STATE_DROP_FRAME)
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(0);
			obj.sq_AddSetStatePacket(45, STATE_PRIORITY_FORCE, true);
		}else{


			local startX = obj.getVar("len").get_vector(0);
			local startY = obj.getVar("len").get_vector(1);

			local maxX = obj.getVar("len").get_vector(2);
			local maxY = obj.getVar("len").get_vector(3);
			local maxZ = obj.getVar("len").get_vector(4);
			local maxXZ = obj.getVar("len").get_vector(6);
													 
																				
								 
			 
																		 
																		  

			local posX = obj.getXPos();
			local currentT = sq_GetCurrentTime(pAni);
			local maxT = pAni.getDelaySum(0,ENUM_OUTRAGEBREAK_STATE_DROP_FRAME);
			if (maxT >= currentT)
			{
				local v = sq_GetUniformVelocity(0, maxX, currentT, maxT);
				local v1 = sq_GetUniformVelocity(0, maxY, currentT, maxT);
				local v2 = sq_GetUniformVelocity(0, maxXZ, currentT, maxT);
				local dstX = sq_GetDistancePos(startX, obj.getDirection(), v);
				local dstY = startY + v1;
				local hei = getQuadraticFunction(obj,v2,maxZ,maxXZ);

																  
												 
				if (obj.isMovablePos(dstX, obj.getYPos()) && !obj.getVar("len").get_vector(5))
				{
				sq_setCurrentAxisPos(obj, 0, dstX);
				}else
				{
					obj.getVar("len").set_vector(5,1)
					local offset = dstX - posX;
					if(offset != 0) 
					{
						if(offset < 0) 
						offset = -offset;
						local totalLen = obj.getVar("len").get_vector(2);
						obj.getVar("len").set_vector(2, totalLen - offset);
					}
				}
				if (obj.isMovablePos(obj.getXPos(), dstY) )
				{
					sq_setCurrentAxisPos(obj, 1, dstY);
				}
				sq_setCurrentAxisPos(obj, 2, hei.tointeger());
					 
			}
		}
	}
	
}


function getQuadraticFunction(obj,x,b,c)
{
  local a = (-b.tofloat() * 4) /( c.tofloat() * c.tofloat());
  return a.tofloat()*(x.tofloat() - c.tofloat() / 2)*(x.tofloat() - c.tofloat() / 2) + b.tofloat();
}

