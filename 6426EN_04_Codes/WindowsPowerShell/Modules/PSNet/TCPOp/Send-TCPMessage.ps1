Function Send-TCPMessage
{
	param ( [ValidateNotNullOrEmpty()]
	[string] $EndPoint,
	[int] $Port,
	[string] $Message )
	
	$IP = [System.Net.Dns]::GetHostAddresses($EndPoint)
	$Address = [System.Net.IPAddress]::Parse($IP)
	$Socket = New-Object System.Net.Sockets.TCPClient($Address,$Port)
	$Stream = $Socket.GetStream()
	$Writer = New-Object System.IO.StreamWriter($Stream)
	$Writer.AutoFlush = $true
	$Writer.NewLine = $true
	$Writer.Write($Message)
	$Socket.Close()
}