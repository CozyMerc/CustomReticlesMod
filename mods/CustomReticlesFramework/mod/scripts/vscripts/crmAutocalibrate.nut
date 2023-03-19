// This crap is for "automatic" calibration button for modsettings for update 2.0 of CustomReticlesFramework
// I have 0 clue how to script so please be patient

// So the plan goes like this: get cl_fovscale > compare it with an array and extract correct vcalue from it > print to global_offset convar

//Idea in detail:
// get client FOV value based on cl_fovscale (float) GetConVarFloat() 
// create a 2d array based on most common fov values and (first line containing cl_fovscale value and 2nd for offset_scalar_global
//array<array<int>> 2darray = [[70,76,80,86,90,96,100,106,110,cl_fov1.6,120],[]]
  array<array<int>> 2darray = [[1.0,1.0825,1.1375,1.22,1.275,1.3575,1.4125,1.495,1.55,1.6,1.7],[2.065,1.88,1.75,1.608,1.5,1.361,1.268,1.141,1.062,1.0,0.877]]
//
// search for current client cl_fovscale in array array.find(value) ,and IF it exists print to offset_scalar_global SetConVarFloat()
// ELSE get closest float values to current cl_fovscale and do silly math to find equivalent of our cl_fovscale in 2nd array and print -||-
// silly math: offset_scalar = ((fovscale_input - fovscale_smaller)/(fovscale_greater - fovscale_smaller))*(offset_greater - offset_smaller)+ offset_smaller
// END?