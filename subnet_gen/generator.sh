#|/bin/bash

. ./params.txt

OCI=oci.exe

echo
echo "$SNAPI"
echo

echo $OCI network subnet create --cidr-block $CIDR_SNAPI -c $COMPARTMENT --vcn-id $VCN --display-name $SNAPI > command.cmd

echo
echo "$SNLBL"
echo

echo $OCI network subnet create --cidr-block $CIDR_SNLBL -c $COMPARTMENT --vcn-id $VCN --display-name $SNLBL >> command.cmd

echo
echo "$SNWRK"
echo

echo $OCI network subnet create --cidr-block $CIDR_SNWRK -c $COMPARTMENT --vcn-id $VCN --display-name $SNWRK >> command.cmd

echo
echo "$SNDBCS"
echo

echo $OCI network subnet create --cidr-block $CIDR_SNDBCS -c $COMPARTMENT --vcn-id $VCN --display-name $SNDBCS >> command.cmd

sh -x command.cmd 
rm -f command.cmd