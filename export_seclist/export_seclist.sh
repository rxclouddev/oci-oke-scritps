#!/bin/bash

. ./var.txt

v_oci=oci.exe
v_jq=jq
v_vcn_string="--vcn-id $VCN"
v_cmp_string="--compartment-id $COMPARTMENT"


v_arg1=ingress
v_arg2=source

${v_oci} network security-list list ${v_vcn_string} ${v_cmp_string} --all | ${v_jq} '.data[] |
"'${v_arg1}'" as $type |
."display-name" as $display |
."lifecycle-state" as $lifecycle | 
."'${v_arg1}'-security-rules"[]? |
."description" as $description |
."is-stateless" as $stateless |
."protocol" as $protocol | 
"'${v_arg2}'" as $contype |
."'${v_arg2}'" as $'${v_arg2}' |
."tcp-options"."destination-port-range"."min" as $tdmin |
."tcp-options"."destination-port-range"."max" as $tdmax |
."tcp-options"."source-port-range"."min" as $tsmin |
."tcp-options"."source-port-range"."max" as $tsmax |
."udp-options"."destination-port-range"."min" as $udmin |
."udp-options"."destination-port-range"."max" as $udmax |
."udp-options"."source-port-range"."min" as $usmin |
."udp-options"."source-port-range"."max" as $usmax |
{
"display-name": $display,
"lifecycle-state": $lifecycle,
"description" : $description,
"is-stateless": $stateless,
"type" : $type,
"protocol": $protocol,
"contype": $contype,
"'${v_arg2}'": $'${v_arg2}',
"tcp-destination-port-min": $tdmin,
"tcp-destination-port-max": $tdmax,
"tcp-source-port-min": $tsmin,
"tcp-source-port-max": $tsmax,
"udp-destination-port-min": $udmin,
"udp-destination-port-max": $udmax,
"udp-source-port-min": $usmin,
"udp-source-port-max": $usmax
}' | sed 's/}/},/; 1 s/{/[{/; $s/},/}]/' | ${v_jq} -r '.[] |
[
."display-name",
."lifecycle-state",
."is-stateless",
."type",
."protocol",
."contype",
."'${v_arg2}'",
."tcp-destination-port-min",
."tcp-destination-port-max",
."description"] | @csv'

v_arg1=egress
v_arg2=destination

${v_oci} network security-list list ${v_vcn_string} ${v_cmp_string} --all | ${v_jq} '.data[] |
"'${v_arg1}'" as $type |
."display-name" as $display |
."lifecycle-state" as $lifecycle | 
."'${v_arg1}'-security-rules"[]? |
."description" as $description |
."is-stateless" as $stateless |
."protocol" as $protocol | 
"'${v_arg2}'" as $contype |
."'${v_arg2}'" as $'${v_arg2}' |
."tcp-options"."destination-port-range"."min" as $tdmin |
."tcp-options"."destination-port-range"."max" as $tdmax |
."tcp-options"."source-port-range"."min" as $tsmin |
."tcp-options"."source-port-range"."max" as $tsmax |
."udp-options"."destination-port-range"."min" as $udmin |
."udp-options"."destination-port-range"."max" as $udmax |
."udp-options"."source-port-range"."min" as $usmin |
."udp-options"."source-port-range"."max" as $usmax |
{
"display-name": $display,
"lifecycle-state": $lifecycle,
"description" : $description,
"is-stateless": $stateless,
"type" : $type,
"protocol": $protocol,
"contype": $contype,
"'${v_arg2}'": $'${v_arg2}',
"tcp-destination-port-min": $tdmin,
"tcp-destination-port-max": $tdmax,
"tcp-source-port-min": $tsmin,
"tcp-source-port-max": $tsmax,
"udp-destination-port-min": $udmin,
"udp-destination-port-max": $udmax,
"udp-source-port-min": $usmin,
"udp-source-port-max": $usmax
}' | sed 's/}/},/; 1 s/{/[{/; $s/},/}]/' | ${v_jq} -r '.[] |
[
."display-name",
."lifecycle-state",
."is-stateless",
."type",
."protocol",
."contype",
."'${v_arg2}'",
."tcp-destination-port-min",
."tcp-destination-port-max",
."description"] | @csv'

