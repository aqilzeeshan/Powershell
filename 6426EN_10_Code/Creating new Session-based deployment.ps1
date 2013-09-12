#Remote Desktop Session Host
$RDSH  = 'RDSH-01.Contoso.local'

#Remote Desktop Connection Broker
$RDCB  = 'RDCB-01.Contoso.local'

#Remote Desktop Web Access
$RDWeb = 'RDWeb-01.Contoso.local'

#Creating new Session-based deployment
New-SessionDeployment -SessionHost $RDSH -ConnectionBroker $RDCB -WebAccessServer $RDWeb