

function onAfterSetState_mage_MageUpperSwing(A4ZZlVhqV6, aTXgCO5MIXMm9XRC2, PfQkLZrEBwQpBgT4o, Epk_o0s9PvA_J0fUiPBDF1wo)
{
 if (!A4ZZlVhqV6) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(A4ZZlVhqV6, "character/mage/avatar/ap_avatar.nut"))
 {
 local VhgNQC5WRfP3U4Q5P9IZB = A4ZZlVhqV6.sq_GetVectorData(PfQkLZrEBwQpBgT4o, 0); 
 local TBu7C7vrv88tgEB = null; 
 switch (VhgNQC5WRfP3U4Q5P9IZB) 
 {
 case 12:
 TBu7C7vrv88tgEB = setCurrentAnimation_avatar_eff(A4ZZlVhqV6,"UpperSwing",true);
 break;
 }
 if(TBu7C7vrv88tgEB!=null)
 A4ZZlVhqV6.setCurrentAnimation(TBu7C7vrv88tgEB); 
 }
} ;
