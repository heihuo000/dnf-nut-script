


function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_thief_distribution")
}




function proc_appendage_thief_distribution(rgBkTbq4k6UkzBoJ8J)
{
 if(!rgBkTbq4k6UkzBoJ8J) return;
 local M9h61NKxgPZW6llDxf2O0 = rgBkTbq4k6UkzBoJ8J.getParent();
 local edenLzFww0 = sq_GetCNRDObjectToSQRCharacter(rgBkTbq4k6UkzBoJ8J.getSource()); 
 if(!M9h61NKxgPZW6llDxf2O0 || !edenLzFww0 )
 {
 rgBkTbq4k6UkzBoJ8J.setValid(false);
 return;
 }
 local PggYiVzG3S = edenLzFww0.getSkillSubState(); 
 if(PggYiVzG3S == 3) 
 {
 if(sq_GetCurrentFrameIndex(edenLzFww0) >= 2) 
 rgBkTbq4k6UkzBoJ8J.setValid(false);
 }
 else if(edenLzFww0.getState() != 221) 
 {
 rgBkTbq4k6UkzBoJ8J.setValid(false);
 }
} 


