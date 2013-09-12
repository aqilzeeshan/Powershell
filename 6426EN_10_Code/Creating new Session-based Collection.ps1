#Remote Desktop Connection Broker
$RDCB = 'RDCB-01.Contoso.local'

#Remote Desktop Session Host(s)
$RDSH = @('RDSH-01.Contoso.local','RDSH-02.Contoso.local')

#Creating new Session-based Collection
New-RDSessionCollection -CollectionName "mySessions" -CollectionDescription "Remote Desktop Services - Session Virtualization Collection" -ConnectionBroker $RDCB -SessionHost $RDSH 