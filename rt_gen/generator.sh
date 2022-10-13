#|/bin/bash

. ./params.txt

OCI=oci.exe

echo
echo "$RTAPI"
echo

echo $OCI network route-table create -c $COMPARTMENT --display-name $RTAPI --route-rules '[]' --vcn-id $VCN --wait-for-state AVAILABLE  > command.cmd

echo
echo "$RTLBL"
echo

echo $OCI network route-table create -c $COMPARTMENT --display-name $RTLBL --route-rules '[]' --vcn-id $VCN --wait-for-state AVAILABLE >> command.cmd

echo
echo "$RTWRK"
echo

echo $OCI network route-table create -c $COMPARTMENT --display-name $RTWRK --route-rules '[]' --vcn-id $VCN --wait-for-state AVAILABLE >> command.cmd

echo
echo "$RTDBCS"
echo

echo $OCI network route-table create -c $COMPARTMENT --display-name $RTDBCS --route-rules '[]' --vcn-id $VCN --wait-for-state AVAILABLE >> command.cmd

sh -x command.cmd 
rm -f command.cmd