#|/bin/bash

. ./params.txt

OCI=oci.exe

echo
echo "IGW"
echo

echo $OCI network internet-gateway create -c $COMPARTMENT --display-name $IGW --vcn-id $VCN --is-enabled true > command.cmd

echo
echo "NATGW"
echo

echo $OCI network nat-gateway create -c $COMPARTMENT --display-name $NATGW --vcn-id $VCN >> command.cmd

echo
echo "SGW"
echo

echo $OCI network service-gateway create -c $COMPARTMENT --display-name $SGW --vcn-id $VCN --services \'[{\"service-id\": \""$SVC_ALL_IN"\",\"service-name\": \"All LIN Services In Oracle Services Network\"}]\' >> command.cmd

sh -x command.cmd 
rm -f command.cmd