





if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onAfterSetState_priest_smasher(i7ntxSBn9SX2XbOU5, I79rhXSflzOKbH3O, gzS2L1Zew1q3ww2wZ9q, BPYz6pzJot4MeCj)
{
 if(!i7ntxSBn9SX2XbOU5) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(i7ntxSBn9SX2XbOU5, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 local kgD6i1rZQpuoY = null; 
 local OYXaUnGiVnn2XNBwLuSH = i7ntxSBn9SX2XbOU5.sq_GetVectorData(gzS2L1Zew1q3ww2wZ9q, 0); 
 switch(OYXaUnGiVnn2XNBwLuSH)
 {
 case 0:
 kgD6i1rZQpuoY= 199;
 break;
 case 1:
 kgD6i1rZQpuoY= 200;
 break;
 case 2:
 kgD6i1rZQpuoY= 201;
 break;
 case 3:
 kgD6i1rZQpuoY= 201;
 break;
 }
 if(kgD6i1rZQpuoY != null)
 {
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAnimation(kgD6i1rZQpuoY); 
 local Qg37CcFXG3wqRQh5LyZg4l = sq_GetCurrentAnimation(i7ntxSBn9SX2XbOU5); 
 sq_Rewind(Qg37CcFXG3wqRQh5LyZg4l); 
 if(OYXaUnGiVnn2XNBwLuSH == 3) Qg37CcFXG3wqRQh5LyZg4l.setCurrentFrameWithChildLayer(1); 
 }
 }
} ;

