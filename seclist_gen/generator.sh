#|/bin/bash

. ./params.txt

OCI=oci.exe

# API 

cp api_ingress.json.tpl api_ingress.json
cp api_egress.json.tpl api_egress.json

sed -i "s#||WRKSUBNET||#$WRKSUBNET#g" api_ingress.json
sed -i "s#||WRKSUBNET||#$WRKSUBNET#g" api_egress.json

sed -i "s#||APISUBNET||#$APISUBNET#g" api_ingress.json
sed -i "s#||APISUBNET||#$APISUBNET#g" api_egress.json

sed -i "s#||DBSUBNET||#$DBSUBNET#g" api_ingress.json
sed -i "s#||DBSUBNET||#$DBSUBNET#g" api_egress.json

sed -i "s#||LBLSUBNET||#$LBLSUBNET#g" api_ingress.json
sed -i "s#||LBLSUBNET||#$LBLSUBNET#g" api_egress.json

# WKR 

cp wkr_ingress.json.tpl wkr_ingress.json
cp wkr_egress.json.tpl wkr_egress.json

sed -i "s#||WRKSUBNET||#$WRKSUBNET#g" wkr_ingress.json
sed -i "s#||WRKSUBNET||#$WRKSUBNET#g" wkr_egress.json

sed -i "s#||APISUBNET||#$APISUBNET#g" wkr_ingress.json
sed -i "s#||APISUBNET||#$APISUBNET#g" wkr_egress.json

sed -i "s#||DBSUBNET||#$DBSUBNET#g" wkr_ingress.json
sed -i "s#||DBSUBNET||#$DBSUBNET#g" wkr_egress.json

sed -i "s#||LBLSUBNET||#$LBLSUBNET#g" wkr_ingress.json
sed -i "s#||LBLSUBNET||#$LBLSUBNET#g" wkr_egress.json

# DBCS 

cp wkr_ingress.json.tpl dbcs_ingress.json
cp wkr_egress.json.tpl dbcs_egress.json

sed -i "s#||WRKSUBNET||#$WRKSUBNET#g" dbcs_ingress.json
sed -i "s#||WRKSUBNET||#$WRKSUBNET#g" dbcs_egress.json

sed -i "s#||APISUBNET||#$APISUBNET#g" dbcs_ingress.json
sed -i "s#||APISUBNET||#$APISUBNET#g" dbcs_egress.json

sed -i "s#||DBSUBNET||#$DBSUBNET#g" dbcs_ingress.json
sed -i "s#||DBSUBNET||#$DBSUBNET#g" dbcs_egress.json

sed -i "s#||LBLSUBNET||#$LBLSUBNET#g" dbcs_ingress.json
sed -i "s#||LBLSUBNET||#$LBLSUBNET#g" dbcs_egress.json

# LBL 

cp lbl_ingress.json.tpl lbl_ingress.json
cp lbl_egress.json.tpl lbl_egress.json

sed -i "s#||WRKSUBNET||#$WRKSUBNET#g" lbl_ingress.json
sed -i "s#||WRKSUBNET||#$WRKSUBNET#g" lbl_egress.json

sed -i "s#||APISUBNET||#$APISUBNET#g" lbl_ingress.json
sed -i "s#||APISUBNET||#$APISUBNET#g" lbl_egress.json

sed -i "s#||DBSUBNET||#$DBSUBNET#g" lbl_ingress.json
sed -i "s#||DBSUBNET||#$DBSUBNET#g" lbl_egress.json

sed -i "s#||LBLSUBNET||#$LBLSUBNET#g" lbl_ingress.json
sed -i "s#||LBLSUBNET||#$LBLSUBNET#g" lbl_egress.json

####################################################################################################################################################################################################################################

echo
echo "$SLAPI"
echo

echo $OCI network security-list create --compartment-id ${COMPARTMENT} --vcn-id ${VCN} --display-name $SLAPI --ingress-security-rules file://api_ingress.json --egress-security-rules file://api_egress.json  > command.cmd

echo
echo "$SLLBL"
echo

echo $OCI network security-list create --compartment-id ${COMPARTMENT} --vcn-id ${VCN} --display-name $SLLBL --ingress-security-rules file://lbl_ingress.json --egress-security-rules file://lbl_egress.json  >> command.cmd

echo
echo "$SLWRK"
echo

echo $OCI network security-list create --compartment-id ${COMPARTMENT} --vcn-id ${VCN} --display-name $SLWRK --ingress-security-rules file://wkr_ingress.json --egress-security-rules file://wkr_egress.json  >> command.cmd

echo
echo "$SLDBCS"
echo

echo $OCI network security-list create --compartment-id ${COMPARTMENT} --vcn-id ${VCN} --display-name $SLDBCS --ingress-security-rules file://dbcs_ingress.json --egress-security-rules file://dbcs_egress.json  >> command.cmd

sh -x command.cmd 
rm -f command.cmd
rm -f *.json