#Remote Desktop Connection Broker
$RDCB = 'RDCB-01.Contoso.local'

#SQL Server Instance
$SQLinstance 'SQL-01.Contoso.local'

#RD Connection Broker Database name
$RDCBDB = 'RDCB'

$ConStr = "DRIVER=SQL Server Native Client 10.0;SERVER=$SQLinstance;Trusted_Connection=Yes;APP=Remote Desktop Services Connection Broker;Database=$RDCBDB"

#Configuring RDCB HA settings
Set-RDConnectionBrokerHighAvailability -ConnectionBroker $RDCB -DatabaseConnectionString $ConStr -ClientAccessName RDCB.Contoso.Local -DatabaseFilePath ("C:\$RDCBDB" + '.mdf')

#Adding the second RDCB the HA Array
Add-RDServer -ConnectionBroker $RDCB -Server RDSH-02.Contoso.local -Role RDS-CONNECTION-BROKER