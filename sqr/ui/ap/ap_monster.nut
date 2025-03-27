
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster")
}

function onStart_appendage_monster(appendage)
{
	if(!appendage) return;
	local currTime = appendage.getTimer().Get();
	appendage.getVar("atkTime").setInt(0,currTime);
	appendage.getVar("atkTimeS").setInt(0,currTime);
}

function onApplyHpDamage_appendage_monster(appendage, newHpDamage, attacker)
{
	if(!appendage) return;
	if(!attacker) return;
	local monster = appendage.getParent();
	monster = sq_GetCNRDObjectToActiveObject(monster);
	if(!monster) return;
	if(appendage.getParent().getTeam() == attacker.getTeam())
		return newHpDamage;

	if(appendage && newHpDamage > 0)
	{
		local addHpDamage = applyAddHpDamage(appendage,newHpDamage);
		appendage.getVar("addHpDamage").setInt(0,addHpDamage);
		appendage.getVar("newHpDamage").setInt(0,newHpDamage);
		if(appendage.getVar("atkCount").getInt(0) == 1)
			NOMAL_ATTACK_FLAG = 1;
		else
			appendage.getVar("atkCount").setInt(0,1);
	}
	return newHpDamage;
}

//ݾʥ��������hp��
//���? �������������?����������?ʦ���ܨ�����������
function onSetHp_appendage_monster(appendage, hp, attacker)
{
	if(!appendage) return hp;
	
	local parentObj = appendage.getParent();
	local currentHp = hp;
	if(!parentObj) return currentHp;
	if(hp < 0){
		try {
			local object = sq_GetCNRDObjectToActiveObject(parentObj);
			if(object)
			{
				local objectIndex = object.getCollisionObjectIndex();
				soundList(object,objectIndex);
			}
		}
		catch(ex)
		{
		}
		return hp;
	}
	
	if(ENABLE_DAMAGE_ACTIVE == 0) return hp;
	
	local newHpDamage = parentObj.getHp() - hp;
	if(newHpDamage <= 0)
		return currentHp;

	local addHpDamage = appendage.getVar("addHpDamage").getInt(0);
	if(addHpDamage > 0)
	{
		currentHp -= addHpDamage;
		appendage.getVar("addHpDamage").setInt(0,0);
		return currentHp;
	}

	local hpDamage = appendage.getVar("newHpDamage").getInt(0);
	if(newHpDamage == hpDamage)  return currentHp;

	if(attacker && (parentObj.getTeam() == attacker.getTeam()))
		return currentHp;

	local x = parentObj.getXPos();
	local y = parentObj.getYPos();
	local z = parentObj.getObjectHeight()/2 + CRI_UPPER_HEIGHT;

	if(SPECIAL_SKILL_FLAG == 1)
	{
		local currTime = appendage.getTimer().Get();
		if(currTime - appendage.getVar("atkTimeS").getInt(0) > 500)
		{
			NOMAL_ATTACK_FLAG = 1;
			appendage.getVar("atkTimeS").setInt(0,currTime);
			currentHp -= applySpecialSkillDamage(appendage,newHpDamage,x,y,z);
		}
		return currentHp;
	}
	
	//���߿��?
	if(sq_IsValidActiveStatus(parentObj,ACTIVESTATUS_BLEEDING) || sq_IsValidActiveStatus(parentObj,ACTIVESTATUS_POISON) || sq_IsValidActiveStatus(parentObj,ACTIVESTATUS_LIGHTNING) || sq_IsValidActiveStatus(parentObj,ACTIVESTATUS_BURN) || sq_IsValidActiveStatus(parentObj,ACTIVESTATUS_STONE) )
	{
		local currTime = appendage.getTimer().Get();
		if(currTime - appendage.getVar("atkTime").getInt(0) > 500)
		{
			NOMAL_ATTACK_FLAG = 1;
			appendage.getVar("atkTime").setInt(0,currTime);
			//���ani
			applyActiveDamage(appendage,newHpDamage,x,y,z);
		}
		//ͪߩ���߿��ʥ��?
		currentHp -= applyActiveDamage2(newHpDamage);
		if (currentHp < 1) {
			currentHp = -1
		}
		return currentHp;
	}

	return currentHp;
}

function onDamageParent_appendage_monster(appendage, attacker, boundingBox, isStuck) 
{
	local newHpDamage = appendage.getVar("newHpDamage").getInt(0);
	if(newHpDamage > 0)
	{
		local parentObj = appendage.getParent();
		local x = sq_GetCenterXPos(boundingBox);
		local y = parentObj.getYPos();
		local z = parentObj.getObjectHeight()/2;

		if(newHpDamage >= MAX_DAMAGE_LIMIT)
			applyMaxDamage(x-70,y,z+CRI_FINAL_UPPER_HEIGHT);
		else
			applyNomalDamage(appendage,newHpDamage,x+20,y,z);
		appendage.getVar("newHpDamage").setInt(0,0);
		
	}	
}