#!/bin/bash
for wf in basic_peptide_*.knwf
do
 "${1}" -Djava.io.tmpdir="${2}" -consoleLog -nosplash -data "${2}" -application org.knime.product.KNIME_BATCH_APPLICATION -workflowFile="$(pwd)/${wf}" -reset  > log_${wf}.txt
done
