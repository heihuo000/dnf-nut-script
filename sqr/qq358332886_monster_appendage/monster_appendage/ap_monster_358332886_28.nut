

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_28")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_28")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_28")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_28");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_28(appendage, flagIndex)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}

	local state = parentObj.getState();//������������
	if (state != 8) return true;//����������̪����������

	local attackIndex = parentObj.getAttackIndex();//��̪ID

	switch (attackIndex)
	{
	case 0:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_SKILL_03");//��ۯ���
			appendage.getVar().setBool(0, false);
			break;
		case 2:
			parentObj.sq_PlaySound("ROSSALL_DETECTION");//��ۯ���
			if (appendage.getVar().getBool(0) == false)
			{
				appendage.getVar().clear_timer_vector();
				appendage.getVar().push_timer_vector();
				local t = appendage.getVar().get_timer_vector(0);
				t.setParameter(20, -1);//���1����?��̰ ���2�������
				t.resetInstant(0);//���� ���ڱ�
				t.setEventOnStart(false);//?true �������ʦ���ۡ
				appendage.getVar().setBool(0, true);
			}
			break;
		}
		break;
	case 2:
		switch (flagIndex)
		{
		case 1:
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
			appendage.getVar("move").clear_vector();//?�
			appendage.getVar("move").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("move").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("move").push_vector(targetObj.getXPos());//��������x���
			appendage.getVar("move").push_vector(targetObj.getYPos());//��������y���
			break;
		}
		break;
	case 4:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 5:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att5Dust1_00.ani", 0, 0, 0);
			break;
		case 2:
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att5Dust2_00.ani", 0, 0, 0);
			break;
		}
		break;
	case 6:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att6Dust1_00.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att6Dust2_00.ani", 0, 0, 0);
			break;
		}
		break;
	case 7:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 8:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("KHAZAN_SKILL_06");//��ۯ���
			parentObj.sq_PlaySound("ROSENBERG_K_SKILL_06");//��ۯ���
			if (appendage.getVar().getBool(2) == false)
			{
				appendage.getVar("t3").clear_timer_vector();
				appendage.getVar("t3").push_timer_vector();
				local t3 = appendage.getVar().get_timer_vector(0);
				t3.setParameter(20, -1);//���1����?��̰ ���2�������
				t3.resetInstant(0);//���� ���ڱ�
				t3.setEventOnStart(false);//?true �������ʦ���ۡ
				appendage.getVar().setBool(2, true);
			}
			break;
		case 2:
			sq_setFullScreenEffect(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Message_UI.ani");
			parentObj.sq_PlaySound("ROSSALL_DETECTION");//��ۯ���
			parentObj.sq_PlaySound("ROSENBERG_K_BLOOD_WEAPON_SUMMON");//��ۯ���
			break;
		}
		break;
	case 9:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 10:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 11:
		switch (flagIndex)
		{
		case 1:

			appendage.getVar("move").clear_vector();//?�
			appendage.getVar("move").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("move").push_vector(parentObj.getYPos());//��������y���
			break;
		case 2:
			parentObj.sq_PlaySound("ROSENBERG_K_SKILL_04");//��ۯ���
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//��ۯ���
			break;
		}
		break;
	case 12:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/WarningFloor_LineBottom.ani", 0, 20, 0);
			break;
		case 2:
			parentObj.sq_PlaySound("ROSENBERG_K_WEAPON_DOWN");//��ۯ���
			break;
		}
		break;
	case 13:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_APPEAR");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/IncommingBgEff/IncommingBgEff_00.ani", 400, 300, 0);
			break;
		case 2:
			parentObj.sq_PlaySound("KHAZAN_MEET_01");//��ۯ���
			break;
		}
		break;
	case 14:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 15:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_K_ATK");//��ۯ���
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//��ۯ���
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
			appendage.getVar("move").clear_vector();//?�
			appendage.getVar("move").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("move").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("move").push_vector(targetObj.getXPos());//��������x���
			appendage.getVar("move").push_vector(targetObj.getYPos());//��������y���
			break;
		}
		break;
	case 16:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 17:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_K_ATK");//��ۯ���
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//��ۯ���
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
			appendage.getVar("move").clear_vector();//?�
			appendage.getVar("move").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("move").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("move").push_vector(targetObj.getXPos());//��������x���
			appendage.getVar("move").push_vector(targetObj.getYPos());//��������y���
			break;
		}
		break;
	case 18:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 19:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_K_ATK");//��ۯ���
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//��ۯ���
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
			appendage.getVar("move").clear_vector();//?�
			appendage.getVar("move").push_vector(parentObj.getXPos());//��������x���
			appendage.getVar("move").push_vector(parentObj.getYPos());//��������y���
			appendage.getVar("move").push_vector(targetObj.getXPos());//��������x���
			appendage.getVar("move").push_vector(targetObj.getYPos());//��������y���
			break;
		}
		break;
	case 21:
		switch (flagIndex)
		{
		case 1:
			if (appendage.getVar().getBool(1) == false)
			{
				local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
				if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? � ����
				{
					local count = parentObj.getMyPassiveObjectCount(1008636);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(1008636, 0);
						appendage.getVar("obj1").clear_vector();//?�
						appendage.getVar("obj1").push_vector(myClone.getXPos());//��������x���
						appendage.getVar("obj1").push_vector(myClone.getYPos());//��������y���
						appendage.getVar("obj1").push_vector(targetObj.getXPos());//��������x���
						appendage.getVar("obj1").push_vector(targetObj.getYPos());//��������y���
						local pooledObj = sq_CreateDrawOnlyObject(myClone, "Monster/NewMonsters/GContents/190307_PreyRaid/Zodiac/Star_1/Animation/Attack_Exp/Effect/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
						local xDistance = sq_Abs(myClone.getXPos() - targetObj.getXPos());
						local yDistance = sq_Abs(myClone.getYPos() - targetObj.getYPos());

						local width = sq_GetWidthObject(pooledObj);//��������ani����
						local length = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), targetObj.getXPos(), targetObj.getYPos(), true);//���������������
						local Rate = length.tofloat() / width.tofloat();//��������

						local angle = sq_ToRadian(sq_ToDegree(sq_Atan2(yDistance.tofloat(), xDistance.tofloat())));//��������
						if (myClone.getYPos() < targetObj.getYPos()) angle = angle / -1.0;//�������y�����������y��� �� ��?ݶ�
						if (myClone.getXPos() > targetObj.getXPos())
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_LEFT);//����۰��
						else
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_RIGHT);//����۰��
						local ani = pooledObj.getCurrentAnimation();//��������ani
						ani.setImageRateFromOriginal(Rate, 1.0);//����ani���
						sq_SetfRotateAngle(ani, angle);//��������

					}
				}
			}
			break;
		case 2:
			if (appendage.getVar().getBool(1) == false)
			{
				local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
				if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? � ����
				{
					local count = parentObj.getMyPassiveObjectCount(1008638);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(1008638, 0);
						appendage.getVar("obj2").clear_vector();//?�
						appendage.getVar("obj2").push_vector(myClone.getXPos());//��������x���
						appendage.getVar("obj2").push_vector(myClone.getYPos());//��������y���
						appendage.getVar("obj2").push_vector(targetObj.getXPos());//��������x���
						appendage.getVar("obj2").push_vector(targetObj.getYPos());//��������y���
						local pooledObj = sq_CreateDrawOnlyObject(myClone, "Monster/NewMonsters/GContents/190307_PreyRaid/Zodiac/Star_1/Animation/Attack_Exp/Effect/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
						local xDistance = sq_Abs(myClone.getXPos() - targetObj.getXPos());
						local yDistance = sq_Abs(myClone.getYPos() - targetObj.getYPos());

						local width = sq_GetWidthObject(pooledObj);//��������ani����
						local length = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), targetObj.getXPos(), targetObj.getYPos(), true);//���������������
						local Rate = length.tofloat() / width.tofloat();//��������

						local angle = sq_ToRadian(sq_ToDegree(sq_Atan2(yDistance.tofloat(), xDistance.tofloat())));//��������
						if (myClone.getYPos() < targetObj.getYPos()) angle = angle / -1.0;//�������y�����������y��� �� ��?ݶ�
						if (myClone.getXPos() > targetObj.getXPos())
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_LEFT);//����۰��
						else
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_RIGHT);//����۰��
						local ani = pooledObj.getCurrentAnimation();//��������ani
						ani.setImageRateFromOriginal(Rate, 1.0);//����ani���
						sq_SetfRotateAngle(ani, angle);//��������

						sq_getMyCharacter().getVar("debugnew2").push_vector(1);//ʥ��
					}
				}
			}
			break;
		case 3:
			if (appendage.getVar().getBool(1) == false)
			{
				local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
				if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? � ����
				{
					local count = parentObj.getMyPassiveObjectCount(1008639);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(1008639, 0);
						appendage.getVar("obj3").clear_vector();//?�
						appendage.getVar("obj3").push_vector(myClone.getXPos());//��������x���
						appendage.getVar("obj3").push_vector(myClone.getYPos());//��������y���
						appendage.getVar("obj3").push_vector(targetObj.getXPos());//��������x���
						appendage.getVar("obj3").push_vector(targetObj.getYPos());//��������y���
						local pooledObj = sq_CreateDrawOnlyObject(myClone, "Monster/NewMonsters/GContents/190307_PreyRaid/Zodiac/Star_1/Animation/Attack_Exp/Effect/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
						local xDistance = sq_Abs(myClone.getXPos() - targetObj.getXPos());
						local yDistance = sq_Abs(myClone.getYPos() - targetObj.getYPos());

						local width = sq_GetWidthObject(pooledObj);//��������ani����
						local length = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), targetObj.getXPos(), targetObj.getYPos(), true);//���������������
						local Rate = length.tofloat() / width.tofloat();//��������

						local angle = sq_ToRadian(sq_ToDegree(sq_Atan2(yDistance.tofloat(), xDistance.tofloat())));//��������
						if (myClone.getYPos() < targetObj.getYPos()) angle = angle / -1.0;//�������y�����������y��� �� ��?ݶ�
						if (myClone.getXPos() > targetObj.getXPos())
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_LEFT);//����۰��
						else
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_RIGHT);//����۰��
						local ani = pooledObj.getCurrentAnimation();//��������ani
						ani.setImageRateFromOriginal(Rate, 1.0);//����ani���
						sq_SetfRotateAngle(ani, angle);//��������

						sq_getMyCharacter().getVar("debugnew2").push_vector(1);//ʥ��
					}
				}
			}
			break;
		case 4:
			if (appendage.getVar().getBool(1) == false)
			{
				local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//��?��������������
				if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? � ����
				{
					local count = parentObj.getMyPassiveObjectCount(1008637);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(1008637, 0);
						appendage.getVar("obj4").clear_vector();//?�
						appendage.getVar("obj4").push_vector(myClone.getXPos());//��������x���
						appendage.getVar("obj4").push_vector(myClone.getYPos());//��������y���
						appendage.getVar("obj4").push_vector(targetObj.getXPos());//��������x���
						appendage.getVar("obj4").push_vector(targetObj.getYPos());//��������y���
						local pooledObj = sq_CreateDrawOnlyObject(myClone, "Monster/NewMonsters/GContents/190307_PreyRaid/Zodiac/Star_1/Animation/Attack_Exp/Effect/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
						local xDistance = sq_Abs(myClone.getXPos() - targetObj.getXPos());
						local yDistance = sq_Abs(myClone.getYPos() - targetObj.getYPos());

						local width = sq_GetWidthObject(pooledObj);//��������ani����
						local length = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), targetObj.getXPos(), targetObj.getYPos(), true);//���������������
						local Rate = length.tofloat() / width.tofloat();//��������

						local angle = sq_ToRadian(sq_ToDegree(sq_Atan2(yDistance.tofloat(), xDistance.tofloat())));//��������
						if (myClone.getYPos() < targetObj.getYPos()) angle = angle / -1.0;//�������y�����������y��� �� ��?ݶ�
						if (myClone.getXPos() > targetObj.getXPos())
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_LEFT);//����۰��
						else
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_RIGHT);//����۰��
						local ani = pooledObj.getCurrentAnimation();//��������ani
						ani.setImageRateFromOriginal(Rate, 1.0);//����ani���
						sq_SetfRotateAngle(ani, angle);//��������

						sq_getMyCharacter().getVar("debugnew2").push_vector(1);//ʥ��
						appendage.getVar().setBool(1, true);
					}
				}
			}
			break;
		}
		break;
	case 22:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_SHOUT");//��ۯ���
			break;
		}
		break;
	case 26:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_APPEAR");//��ۯ���
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/IncommingBgEff/IncommingBgEff_00.ani", 400, 300, 0);
			break;
		case 2:
			parentObj.sq_PlaySound("KHAZAN_MEET_01");//��ۯ���
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_28(appendage)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//����ݫ����
	if (!parentObj)
	{
		appendage.setValid(false);//��?ap
		return;
	}

	local state = parentObj.getState();//����ݾʥ��������������
	local attackIndex = parentObj.getAttackIndex();//����׾

	if (state == 8)//��̪������
	{
		switch (attackIndex)
		{
		case 0:
			local t = appendage.getVar().get_timer_vector(0);
			local pAni = parentObj.getCurrentAnimation();//����ani
			local currentT = sq_GetCurrentTime(pAni);
			if (t)
			{
				if (t.isOnEvent(currentT) == true)
				{
					local count = parentObj.getMyPassiveObjectCount(109055640);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(109055640, 0);
						if (!myClone)return;
						local objpAni = myClone.getCurrentAnimation();//����ani
						local objcurrentT = sq_GetCurrentTime(objpAni);
						local direction = parentObj.getDirection();//����۰��
						local xPos = parentObj.getXPos();
						local yPos = parentObj.getYPos();//y
						local zPos = parentObj.getZPos();//z
						local distanceX = 1000;//X����
						local distanceY = 1000;//Y����
						local distanceZ = 1000;//Z����
						local objectManager = parentObj.getObjectManager();//��������η����
						for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
						{
							local object = objectManager.getCollisionObject(i);//�������׾����
							if (object
								&& object.isObjectType(OBJECTTYPE_ACTIVE)
								&& parentObj.isEnemy(object)
								&& object.isInDamagableState(parentObj)
								&& sq_Abs(object.getXPos() - xPos) <= distanceX
								&& sq_Abs(object.getYPos() - yPos) <= distanceY
								&& sq_Abs(object.getZPos() - zPos) <= distanceZ)
							{
								local targetObj = sq_GetCNRDObjectToActiveObject(object);//����׾

								//������
								if (!targetObj.isDead())
								{
									local length1 = sq_GetDistance(targetObj.getXPos(), targetObj.getYPos(), myClone.getXPos(), myClone.getYPos(), true);//���������������
									local dstX = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 500, objcurrentT, 2900);
									local dstY = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 500, objcurrentT, 2900);
									local dst1X = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 1500, objcurrentT, 2900);
									local dst1Y = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 1500, objcurrentT, 2900);
									local length2 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dstX, dstY, true);//���������������
									local length3 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dst1X, dst1Y, true);//���������������
									if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) >= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
									{
										if (sq_Abs(length1 - length3) < 30 && targetObj.getZPos() <= 10)
										{
											sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
										}
									}
									else if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) <= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
									{
										if (sq_Abs(length1 - length2) < 30 && targetObj.getZPos() <= 10)
										{
											sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
										}
									}
								}
							}
						}
					}
				}
			}
			break;
		case 2:
			if (appendage.getVar("move").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 5)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 4);//��������
				local fireT = pAni.getDelaySum(5, 11);//������

				local moveVar = appendage.getVar("move");//����

				local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
				local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���

				if (currentT >= fireT)
					appendage.getVar("move").clear_vector();
			}
			break;
		case 8:
			local xPos = parentObj.getXPos();//x
			local yPos = parentObj.getYPos();//y
			local zPos = parentObj.getZPos();//z
			local distance = 1000;//����
			local objectManager = parentObj.getObjectManager();//��������η����
			for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
			{
				local object = objectManager.getCollisionObject(i);//�������׾����
				if (object
					&& object.isObjectType(OBJECTTYPE_CHARACTER)
					&& parentObj.isEnemy(object)
					&& object.isInDamagableState(parentObj)
					&& sq_GetDistance(xPos, yPos, object.getXPos(), object.getYPos(), true) <= distance
					&& sq_Abs(object.getZPos() - zPos) <= 300)
				{
					local targetObj = sq_GetCNRDObjectToActiveObject(object);//����׾
					//������
					if (!targetObj.isDead())
					{
						local objectManager = parentObj.getObjectManager();//��������η����
						local objectNumber = objectManager.getCollisionObjectNumber();//���
						for (local i = 0; i < objectNumber; i++)
						{
							local object = objectManager.getCollisionObject(i);//�������׾����
							if (!object && !object.isObjectType(OBJECTTYPE_PASSIVE)) continue;
							local count1 = object.getMyPassiveObjectCount(109055640);
							if (count1 > 0)
							{
								local myClone = object.getMyPassiveObject(109055640, 0);
								local objpAni = myClone.getCurrentAnimation();//����ani
								local objcurrentT = sq_GetCurrentTime(objpAni);
								local length1 = sq_GetDistance(targetObj.getXPos(), targetObj.getYPos(), myClone.getXPos(), myClone.getYPos(), true);//���������������
								local dstX = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 500, objcurrentT, 2900);
								local dstY = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 500, objcurrentT, 2900);
								local dst1X = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 1500, objcurrentT, 2900);
								local dst1Y = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 1500, objcurrentT, 2900);
								local length2 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dstX, dstY, true);//���������������
								local length3 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dst1X, dst1Y, true);//���������������

								if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) >= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length3) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
								else if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) <= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length2) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
							}
							local count2 = object.getMyPassiveObjectCount(1008633);
							if (count2 > 0)
							{
								local myClone = object.getMyPassiveObject(1008633, 0);
								local objpAni = myClone.getCurrentAnimation();//����ani
								local objcurrentT = sq_GetCurrentTime(objpAni);
								local length1 = sq_GetDistance(targetObj.getXPos(), targetObj.getYPos(), myClone.getXPos(), myClone.getYPos(), true);//���������������
								local dstX = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 500, objcurrentT, 2900);
								local dstY = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 500, objcurrentT, 2900);
								local dst1X = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 1500, objcurrentT, 2900);
								local dst1Y = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 1500, objcurrentT, 2900);
								local length2 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dstX, dstY, true);//���������������
								local length3 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dst1X, dst1Y, true);//���������������

								if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) >= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length3) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
								else if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) <= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length2) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
							}
							local count3 = object.getMyPassiveObjectCount(1008634);
							if (count3 > 0)
							{
								local myClone = object.getMyPassiveObject(1008634, 0);
								local objpAni = myClone.getCurrentAnimation();//����ani
								local objcurrentT = sq_GetCurrentTime(objpAni);
								local length1 = sq_GetDistance(targetObj.getXPos(), targetObj.getYPos(), myClone.getXPos(), myClone.getYPos(), true);//���������������
								local dstX = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 500, objcurrentT, 2900);
								local dstY = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 500, objcurrentT, 2900);
								local dst1X = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 1500, objcurrentT, 2900);
								local dst1Y = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 1500, objcurrentT, 2900);
								local length2 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dstX, dstY, true);//���������������
								local length3 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dst1X, dst1Y, true);//���������������

								if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) >= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length3) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
								else if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) <= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length2) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
							}
							local count4 = object.getMyPassiveObjectCount(1008635);
							if (count4 > 0)
							{
								local myClone = object.getMyPassiveObject(1008635, 0);
								local objpAni = myClone.getCurrentAnimation();//����ani
								local objcurrentT = sq_GetCurrentTime(objpAni);
								local length1 = sq_GetDistance(targetObj.getXPos(), targetObj.getYPos(), myClone.getXPos(), myClone.getYPos(), true);//���������������
								local dstX = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 500, objcurrentT, 2900);
								local dstY = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 500, objcurrentT, 2900);
								local dst1X = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 1500, objcurrentT, 2900);
								local dst1Y = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 1500, objcurrentT, 2900);
								local length2 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dstX, dstY, true);//���������������
								local length3 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dst1X, dst1Y, true);//���������������

								if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) >= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length3) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
								else if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) <= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length2) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
							}
						}

					}
				}
			}
			break;
		case 11:
			if (appendage.getVar("move").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local count = parentObj.getMyPassiveObjectCount(109055753);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(109055753, 0);
					if (!myClone)return;

					local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//��������
					local fireT = pAni.getDelaySum(7, 14);//������

					local moveVar = appendage.getVar("move");//����

					local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), myClone.getXPos(), currentT, fireT);
					local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), myClone.getYPos(), currentT, fireT);
					sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
					sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���

					if (currentT >= fireT)
						appendage.getVar("move").clear_vector();
				}
			}
			break;
		case 15:
			if (appendage.getVar("move").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//��������
				local fireT = pAni.getDelaySum(7, 14);//������

				local moveVar = appendage.getVar("move");//����

				local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
				local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���

				if (currentT >= fireT)
					appendage.getVar("move").clear_vector();
			}
			break;
		case 17:
			if (appendage.getVar("move").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//��������
				local fireT = pAni.getDelaySum(7, 14);//������

				local moveVar = appendage.getVar("move");//����

				local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
				local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���

				if (currentT >= fireT)
					appendage.getVar("move").clear_vector();
			}
			break;
		case 19:
			if (appendage.getVar("move").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//����ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//��������
				local fireT = pAni.getDelaySum(7, 14);//������

				local moveVar = appendage.getVar("move");//����

				local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
				local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
				sq_setCurrentAxisPos(parentObj, 0, dstX);//��������x���
				sq_setCurrentAxisPos(parentObj, 1, dstY);//��������y���

				if (currentT >= fireT)
					appendage.getVar("move").clear_vector();
			}
			break;
		case 20:
			local t_new1 = appendage.getVar("t").get_timer_vector(0);//�������
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					sq_SetMyShake(parentObj, 6, 500);//���� �����������
					sq_flashScreen(parentObj, 100, 2000, 1000, 200, sq_RGB(25, 25, 25), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_NORMAL);//��?
				}
			}
			break;
		case 21:
			if (appendage.getVar("obj1").size_vector() > 0)
			{
				local count = parentObj.getMyPassiveObjectCount(1008636);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(1008636, 0);
						local pAni = myClone.getCurrentAnimation();//����ani
						local frmIndex = sq_GetAnimationFrameIndex(pAni);
						if (frmIndex < 1)return;

						local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 1);//��������
						local fireT = pAni.getDelaySum(1, 18);//������

						local moveVar = appendage.getVar("obj1");//����

						local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
						local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
						sq_setCurrentAxisPos(myClone, 0, dstX);//��������x���
						sq_setCurrentAxisPos(myClone, 1, dstY);//��������y���

						if (currentT >= fireT)
							appendage.getVar("obj1").clear_vector();
					}
			}
			if (appendage.getVar("obj2").size_vector() > 0)
			{
				local count = parentObj.getMyPassiveObjectCount(1008638);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(1008638, 0);
					local pAni = myClone.getCurrentAnimation();//����ani
					local frmIndex = sq_GetAnimationFrameIndex(pAni);
					if (frmIndex < 1)return;

					local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 1);//��������
					local fireT = pAni.getDelaySum(1, 18);//������

					local moveVar = appendage.getVar("obj2");//����

					local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
					local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
					sq_setCurrentAxisPos(myClone, 0, dstX);//��������x���
					sq_setCurrentAxisPos(myClone, 1, dstY);//��������y���

					if (currentT >= fireT)
						appendage.getVar("obj2").clear_vector();
				}
			}
			if (appendage.getVar("obj3").size_vector() > 0)
			{
				local count = parentObj.getMyPassiveObjectCount(1008639);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(1008639, 0);
					local pAni = myClone.getCurrentAnimation();//����ani
					local frmIndex = sq_GetAnimationFrameIndex(pAni);
					if (frmIndex < 1)return;

					local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 1);//��������
					local fireT = pAni.getDelaySum(1, 18);//������

					local moveVar = appendage.getVar("obj3");//����

					local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
					local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
					sq_setCurrentAxisPos(myClone, 0, dstX);//��������x���
					sq_setCurrentAxisPos(myClone, 1, dstY);//��������y���

					if (currentT >= fireT)
						appendage.getVar("obj3").clear_vector();
				}
			}
			if (appendage.getVar("obj4").size_vector() > 0)
			{
				local count = parentObj.getMyPassiveObjectCount(1008637);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(1008637, 0);
					local pAni = myClone.getCurrentAnimation();//����ani
					local frmIndex = sq_GetAnimationFrameIndex(pAni);
					if (frmIndex < 1)return;

					local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 1);//��������
					local fireT = pAni.getDelaySum(1, 18);//������

					local moveVar = appendage.getVar("obj4");//����

					local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
					local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
					sq_setCurrentAxisPos(myClone, 0, dstX);//��������x���
					sq_setCurrentAxisPos(myClone, 1, dstY);//��������y���

					if (currentT >= fireT)
						appendage.getVar("obj4").clear_vector();
				}
			}
			local t_new1 = appendage.getVar("t").get_timer_vector(0);//�������
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					sq_SetMyShake(parentObj, 6, 500);//���� �����������
					sq_flashScreen(parentObj, 100, 14000, 1000, 110, sq_RGB(230, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_NORMAL);//��?
				}
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_28(appendage)
{
	if (!appendage) return;
	appendage.getVar().setBool(1, false);
	appendage.getVar().setBool(2, false);
	appendage.getVar("t").clear_timer_vector();
	appendage.getVar("t").push_timer_vector();
	local t_new1 = appendage.getVar("t").get_timer_vector(0);
	t_new1.setParameter(1, 1);//���1����?��̰ ���2�������
	t_new1.resetInstant(0);//���� ���ڱ�
	t_new1.setEventOnStart(false);//?true �������ʦ���ۡ
}

function onEnd_appendage_monster_358332886_28(appendage)
{
	if (!appendage) return;

}
