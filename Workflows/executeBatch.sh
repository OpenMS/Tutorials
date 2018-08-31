#!/bin/bash
for wf in testIn*.knwf
do
 "${1}" -consoleLog -nosplash -data "${2}" -application org.knime.product.KNIME_BATCH_APPLICATION -workflowFile="$(pwd)/${wf}" -reset  > log_${wf}.txt
done
