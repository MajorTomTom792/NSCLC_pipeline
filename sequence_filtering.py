import json
from pathlib import Path

json_file = json.load(Path().read_text())


#fastp

'''
cutadapt 
    -a {adapter} \
    -O {min_overlap_adapter_length} \
    -m {minLength} \
    -M {maxLength} \
    -n {adapter_Mismatch_Num} \
    -o {output_file} {input_raw_files[i]}
'''
    # IMPORT Yaml into conda terminal?