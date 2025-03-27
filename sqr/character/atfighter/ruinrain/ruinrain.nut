




 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function checkExecutableSkill_atfighter_ruinrain(Bk5rEpzJQJ0Jn6)
{
 if(!Bk5rEpzJQJ0Jn6) return false; 
 local RkOpWMLittsEU = Bk5rEpzJQJ0Jn6.sq_IsUseSkill(227); 
 if(RkOpWMLittsEU) 
 {
 Bk5rEpzJQJ0Jn6.sq_IntVectClear();
 Bk5rEpzJQJ0Jn6.sq_IntVectPush(0); 
 Bk5rEpzJQJ0Jn6.sq_AddSetStatePacket(227, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_ruinrain(Bk5rEpzJQJ0Jn6)
{
 if(!Bk5rEpzJQJ0Jn6) return false; 
 local RkOpWMLittsEU = Bk5rEpzJQJ0Jn6.sq_GetState(); 
 if(RkOpWMLittsEU == STATE_STAND) 
 return true; 
 if(RkOpWMLittsEU == STATE_ATTACK) 
 {
 return Bk5rEpzJQJ0Jn6.sq_IsCommandEnable(227); 
 }
 return true; 
} ;

 
function onSetState_atfighter_ruinrain(Bk5rEpzJQJ0Jn6, RkOpWMLittsEU, T3BUt2dADvHNz8KJHNJ67, O3Yo49K_uOD20D39a4)
{
 if(!Bk5rEpzJQJ0Jn6) return; 
 local KYwcRcPkhhgDWUMhX0VNeXS = Bk5rEpzJQJ0Jn6.sq_GetVectorData(T3BUt2dADvHNz8KJHNJ67, 0); 
 Bk5rEpzJQJ0Jn6.setSkillSubState(KYwcRcPkhhgDWUMhX0VNeXS); 
 switch(KYwcRcPkhhgDWUMhX0VNeXS)
 {
 case 0:
 Bk5rEpzJQJ0Jn6.sq_StopMove(); 
 Bk5rEpzJQJ0Jn6.sq_SetCurrentAnimation(168);
 if(Bk5rEpzJQJ0Jn6.sq_IsMyControlObject())
 sq_flashScreen(Bk5rEpzJQJ0Jn6, 0, 40, 100, 102, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 Bk5rEpzJQJ0Jn6.sq_PlaySound("MF_RUINRAIN_01"); 
 break;
 }
 Bk5rEpzJQJ0Jn6.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onEndCurrentAni_atfighter_ruinrain(lCi_O2_U7ZO)
{
 if(!lCi_O2_U7ZO) return;
 if(!lCi_O2_U7ZO.sq_IsMyControlObject()) return;
 local lEWLA77QYhvI = lCi_O2_U7ZO.getSkillSubState(); 
 switch(lEWLA77QYhvI)
 {
 case 0:
 lCi_O2_U7ZO.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onKeyFrameFlag_atfighter_ruinrain(obj, RaOQ67iq0HyS1rjl3f2)
{
 if(!obj) return false;
 local t7RQrTe8fkLePmwdLZV_j3 = obj.getSkillSubState(); 
 switch(t7RQrTe8fkLePmwdLZV_j3)
 {
 case 0:
 switch(RaOQ67iq0HyS1rjl3f2)
 {
 case 0:
 sq_SetMyShake(obj, 6, 250); 
 sq_AddDrawOnlyAniFromParent(obj, "character/fighter/effect/animation/atruinrain/hiteffect/hit01_glow.ani", 280, 0, 500); 
 break;
 case 1: 
 if(obj.sq_IsMyControlObject())
 {
 local skill_level = sq_GetSkillLevel(obj, 227); 
 obj.sq_StartWrite();
 obj.sq_WriteDword(227); 
 obj.sq_WriteDword(1); 
 obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(227, 227, 0, 1.0)); 
 obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(227, 227, 1, 1.0)); 
 obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(227, 227, 2, 1.0)); 
 obj.sq_WriteDword(obj.sq_GetLevelData(227, 3, skill_level)); 
 obj.sq_WriteDword(obj.sq_GetLevelData(227, 4, skill_level)); 
 obj.sq_WriteDword(obj.sq_GetLevelData(227, 5, skill_level)); 
 obj.sq_WriteDword(obj.sq_GetPowerWithPassive(227, -1, 6, -1, 1.0)); 
 obj.sq_SendCreatePassiveObjectPacket(24375, 0, 280, 0, 0);
 sq_flashScreen(obj, 0, 120, 180, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 sq_SetMyShake(obj, 8, 250); 
 sq_AddDrawOnlyAniFromParent(obj, "character/fighter/effect/animation/atruinrain/hiteffect/hit02_glow.ani", 280, 0, 500); 
 break;
 case 2: 
 if(obj.sq_IsMyControlObject())
 sq_flashScreen(obj, 40, 480, 0, 153, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 }
 return true;
} ;

function getScrollBasisPos_atfighter_ruinrain(iDprF5mclvhlGcBRZga)
{
 if(!iDprF5mclvhlGcBRZga) return;
 if(!iDprF5mclvhlGcBRZga.sq_IsMyControlObject()) return;
 local psBp6Y1HPzgZtZPO_gPjwV = iDprF5mclvhlGcBRZga.getSkillSubState();
 switch(psBp6Y1HPzgZtZPO_gPjwV)
 {
 case 0:
 local EjCVXopbPU5z = iDprF5mclvhlGcBRZga.getCurrentAnimation(); 
 local K0784SFM7brVFtTxYXTtw = sq_GetAnimationFrameIndex(EjCVXopbPU5z);
 local XwP8vhVUe9hVZ_i = sq_GetCurrentTime(EjCVXopbPU5z); 
 local lkqqjXI_63U33DkyWj = iDprF5mclvhlGcBRZga.getXPos();
 local VhBtg3la4bK = sq_GetDistancePos(iDprF5mclvhlGcBRZga.getXPos(), iDprF5mclvhlGcBRZga.getDirection(), 300); 
 if(K0784SFM7brVFtTxYXTtw != 16)
 {
 local Or4ne41MMcP1zPL = sq_GetUniformVelocity(lkqqjXI_63U33DkyWj, VhBtg3la4bK, XwP8vhVUe9hVZ_i, 250); 
 iDprF5mclvhlGcBRZga.sq_SetCameraScrollPosition(Or4ne41MMcP1zPL, iDprF5mclvhlGcBRZga.getYPos(), 0); 
 }
 else
 {
 local Or4ne41MMcP1zPL = sq_GetUniformVelocity(VhBtg3la4bK, lkqqjXI_63U33DkyWj, XwP8vhVUe9hVZ_i - EjCVXopbPU5z.getDelaySum(0, 15), EjCVXopbPU5z.getDelaySum(16, 16)); 
 iDprF5mclvhlGcBRZga.sq_SetCameraScrollPosition(Or4ne41MMcP1zPL, iDprF5mclvhlGcBRZga.getYPos(), 0); 
 }
 return true;
 }
 return false;
} ;


