


function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_priest_thebest7hit") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_priest_thebest7hit") 
}




 
function proc_appendage_priest_thebest7hit(IimnUsd0t5JK)
{
 if(!IimnUsd0t5JK) return;
 local oVUyBjmopeSgrepXi_DTDrt = IimnUsd0t5JK.getParent(); 
 local xqSgsJlZB3vI2Oc3 = IimnUsd0t5JK.getSource(); 
 if(!oVUyBjmopeSgrepXi_DTDrt || !xqSgsJlZB3vI2Oc3 || xqSgsJlZB3vI2Oc3.getState() != 239 || sq_GetCNRDObjectToSQRCharacter(xqSgsJlZB3vI2Oc3).getSkillSubState() == 6)
 {
 IimnUsd0t5JK.setValid(false);
 return;
 }
} ;

 
function onEnd_appendage_priest_thebest7hit(wTg_RUjN1YHLvmC85HHH8Of)
{
 if(!wTg_RUjN1YHLvmC85HHH8Of) return;
 local MP29Y5jTlBWSrLaaiYla3Jn = wTg_RUjN1YHLvmC85HHH8Of.getParent(); 
 
 if(!MP29Y5jTlBWSrLaaiYla3Jn)
 {
 wTg_RUjN1YHLvmC85HHH8Of.setValid(false);
 return;
 }
 sq_SimpleMoveToNearMovablePos(MP29Y5jTlBWSrLaaiYla3Jn, 200); 
} ;


