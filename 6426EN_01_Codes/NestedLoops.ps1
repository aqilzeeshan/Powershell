foreach($wmiclass in "Win32_Service","Win32_UserAccout","Win32_Process")
{
	foreach($instance in Get-WmiObject $wmiclass){
	 if(!(($instance.nname.toLower()).StartWith("a"))){continue}
	 "{0}:{1}" -f $instance.__CLASS,$instance.name
	}
}


:WMIClasses foreach($wmiclass in "Win32_Service","Win32_UserAccout","Win32_Process"){
	:ExamineClasses foreach($instance in Get-WmiObject $wmiclass){
	  if(($instance.nname.toLower()).StartWith("a")){
	     "{0}:{1}" -f $instance.__CLASS,$instance.name
	     continue WMIClasses
	     }
	  }
}