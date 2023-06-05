// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scriptExecuteArray(scr, argArr){
	switch(array_length(argArr)){
		
		case 1: return script_execute(scr, argArr[0]);
		
		case 2: return script_execute(scr, argArr[0], argArr[1]);
		
		case 3: return script_execute(scr, argArr[0], argArr[1], argArr[2]);
		
		case 4:  return script_execute(scr, argArr[0], argArr[1], argArr[2], argArr[3]);
		
		case 5:  return script_execute(scr, argArr[0], argArr[1], argArr[2], argArr[3], argArr[4]);
		
		case 6:  return script_execute(scr, argArr[0], argArr[1], argArr[2], argArr[3], argArr[4], argArr[5]);
		
		case 7:  return script_execute(scr, argArr[0], argArr[1], argArr[2], argArr[3], argArr[4], argArr[5], argArr[6]);
		
		case 8:  return script_execute(scr, argArr[0], argArr[1], argArr[2], argArr[3], argArr[4], argArr[5], argArr[6], argArr[7]);
		
		default: show_error("script_execute_array: argument count not supported", false)
	}

}