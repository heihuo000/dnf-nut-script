




function onAfterSetState_mage_MageRandomPierceStrikeEx(ufHkoHybiK8QA6IhjnQeJ5PV, JU4FNEF42GsnKGjw, G5opvdZvRMKv, wYZ0c8qSptd)
{
 if (!ufHkoHybiK8QA6IhjnQeJ5PV) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(ufHkoHybiK8QA6IhjnQeJ5PV, "character/mage/avatar/ap_avatar.nut"))
 {
 local AosKQAq0UaTY7oawu = ufHkoHybiK8QA6IhjnQeJ5PV.sq_GetVectorData(G5opvdZvRMKv, 0); 
 local IVnBFIYJpi1hlKC = null; 
 switch (AosKQAq0UaTY7oawu) 
 {
 case 0:
 IVnBFIYJpi1hlKC = setCurrentAnimation_avatar_eff(ufHkoHybiK8QA6IhjnQeJ5PV,"RandomPierceStrikeChargeEx",true);
 break;
 case 1:
 IVnBFIYJpi1hlKC = setCurrentAnimation_avatar_eff(ufHkoHybiK8QA6IhjnQeJ5PV,"RandomPierceStrikeLoopEx",true);
 break;
 case 2:
 IVnBFIYJpi1hlKC = setCurrentAnimation_avatar_eff(ufHkoHybiK8QA6IhjnQeJ5PV,"RandomPierceStrikeChargeEx",true);
 break;
 case 3:
 IVnBFIYJpi1hlKC = setCurrentAnimation_avatar_eff(ufHkoHybiK8QA6IhjnQeJ5PV,"RandomPierceStrikeFinishEx",true);
 break;
 }
 if(IVnBFIYJpi1hlKC!=null)
 ufHkoHybiK8QA6IhjnQeJ5PV.setCurrentAnimation(IVnBFIYJpi1hlKC); 
 }
} ;
