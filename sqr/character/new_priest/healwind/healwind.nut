



function onAfterSetState_priest_healwind(_vsIVYiQSg33j4PcQYE_8sf8, jUmYTTJ20s7YThk661EHy, qde7rqAKY8rCEMOC6Ar1, DEJBuwX2pDpbRUrl)
{
 if (!_vsIVYiQSg33j4PcQYE_8sf8) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(_vsIVYiQSg33j4PcQYE_8sf8, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
 local vUpqIMkAGzgwCLEtu = null; 
 local GdwN_JGsfXf_oc = _vsIVYiQSg33j4PcQYE_8sf8.sq_GetVectorData(qde7rqAKY8rCEMOC6Ar1, 0); 
 switch (GdwN_JGsfXf_oc)
 {
 case 0:
 vUpqIMkAGzgwCLEtu = 208;
 break;
 case 1:
 vUpqIMkAGzgwCLEtu = 209;
 break;
 }
 if(vUpqIMkAGzgwCLEtu != null)
 {
 _vsIVYiQSg33j4PcQYE_8sf8.sq_SetCurrentAnimation(vUpqIMkAGzgwCLEtu); 
 local TpnOu2RhelPvLgXI = sq_GetCurrentAnimation(_vsIVYiQSg33j4PcQYE_8sf8); 
 sq_Rewind(TpnOu2RhelPvLgXI); 
 }
 }
} ;
