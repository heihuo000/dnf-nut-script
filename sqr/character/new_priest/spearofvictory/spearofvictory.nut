



function onAfterSetState_priest_spearofvictory(pAquhxmo6CRxc, dQyRkARHmDs, sKorc4aPm79vU_BOAnz, dS7clgf_EdqhCFyP0)
{
 if (!pAquhxmo6CRxc) return;

 if(CNSquirrelAppendage.sq_IsAppendAppendage(pAquhxmo6CRxc, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 local cnqGb7jPBlFC41iKhxPGD7O = null; 
 local yeBSEZArOL9Vskr = pAquhxmo6CRxc.sq_GetVectorData(sKorc4aPm79vU_BOAnz, 0); 
 switch (yeBSEZArOL9Vskr)
 {
 case 0:
 case 1:
 cnqGb7jPBlFC41iKhxPGD7O = 205;
 break;
 case 2:
 cnqGb7jPBlFC41iKhxPGD7O = 206;
 break;
 }
 if(cnqGb7jPBlFC41iKhxPGD7O != null)
 {
 pAquhxmo6CRxc.sq_SetCurrentAnimation(cnqGb7jPBlFC41iKhxPGD7O); 
 local rPkCeIo973gD0r7iJJUswY74 = sq_GetCurrentAnimation(pAquhxmo6CRxc); 
 sq_Rewind(rPkCeIo973gD0r7iJJUswY74); 
 if(yeBSEZArOL9Vskr==1) rPkCeIo973gD0r7iJJUswY74.setCurrentFrameWithChildLayer(2);
 }
 }
} ;
