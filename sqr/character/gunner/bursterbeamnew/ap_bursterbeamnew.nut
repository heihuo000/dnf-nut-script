


function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_gunner_bursterbeamnew") 
}

 
function proc_appendage_gunner_bursterbeamnew(kUyu6ilA80Ua)
{
 if(!kUyu6ilA80Ua)return;
 local CyqJIjoiffBhfmW = kUyu6ilA80Ua.getParent(); 
 local _bs_IqHJZZgSN = kUyu6ilA80Ua.getSource(); 
 if(!CyqJIjoiffBhfmW || !_bs_IqHJZZgSN || !kUyu6ilA80Ua.isValid()) {
 kUyu6ilA80Ua.setValid(false);
 return;
 }
 _bs_IqHJZZgSN=sq_GetCNRDObjectToSQRCharacter(_bs_IqHJZZgSN); 
 if(_bs_IqHJZZgSN.sq_GetState()!=235
 || _bs_IqHJZZgSN.getSkillSubState()>=SUB_STATE_GUNNER_BURSTERBEAMNEW_3)
 kUyu6ilA80Ua.setValid(false); 
} ;
