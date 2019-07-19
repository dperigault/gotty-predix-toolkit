
#!/bin/bash
# infinite loop to check dns resolution. run every 30s
while :
do
	echo " hit [CTRL+C] to stop!"
	echo "checking DNS resolution for EM url at `date`" >> em.log
	dig +short default-predix-mst.edgemanager.run.aws-usw02-pr.ice.predix.io >> em.log
	echo "checking DNS resolution for UAA url at `date`" >> uaa.log
	dig +short 57094e87-5eb0-47fa-9320-1f49c04ad462.predix-uaa.run.aws-usw02-pr.ice.predix.io >>uaa.log
	sleep 30
done