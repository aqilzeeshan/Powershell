$trigger = New-JobTrigger -Daily -At 2am
Register-ScheduledJob -Name ClearEventLogDaily -Trigger $trigger -ScriptBlock {Clear-EventLog -LogName Application,Security,System