Function Receive-TCPMessage
{
	param ( [ValidateNotNullOrEmpty()]
	[int] $Port )

	try
	{
		$EndPoint = New-Object System.Net.IPEndPoint([System.Net.IPAddress]::Loopback,$Port)
		$Socket = New-Object System.Net.Sockets.TCPListener($EndPoint)
		$Socket.Start()
		$Socket = $Socket.AcceptTCPClient()
		$EncodedText = New-Object System.Text.ASCIIEncoding
		$Stream = $Socket.GetStream()
		$Buffer = New-Object System.Byte[] $Socket.ReceiveBufferSize		
		while( $Bytes = $Stream.Read($Buffer,0,$Buffer.Length) )
		{
		    $Stream.Write($Buffer,0,$Bytes)
		    Write-Output $EncodedText.GetString($Buffer,0,$Bytes)
		}
		$Socket.Close()
		$Socket.Stop()
	}
	catch{}
}
