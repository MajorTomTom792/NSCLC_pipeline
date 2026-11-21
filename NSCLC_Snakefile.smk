writefile NSCLC_Snakefile.smk
configfile: "settings.yaml"
rule ascension_list:
    input:
        expand()
    output:
        "settings.json"

rule QC_analysis:
    input:
        expand("{gz_samples_path}", gz_samples_path=configfile['gz_files'])
    output:
        "/fastqc/outputTabs"
    shell:
        "fastqc -outdir {output}

rule trim_adapters:
    input:
        "data1"
        "data2"
    output:
        "trim_data1"
        "trim_data2"
    shell:
        "cutadapt -a AGATCGGAAGAG -o {output} {input}"