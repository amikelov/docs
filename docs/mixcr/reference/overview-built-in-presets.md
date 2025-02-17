# Built-in presets

MiXCR provides a comprehensive list of built-in presets for many of available commercial kits, data types and library preparation protocols.

Preset can be used to run the whole upstream analysis pipeline with [`analyze`](mixcr-analyze.md) command. For example:
```shell
mixcr analyze milab-human-bcr-multiplex-cdr3 \
    --dont-separate-by C \
      sample_R1.fastq.gz \
      sample_R2.fastq.gz \
      sample_result
```
runs upstream analysis for samples obtained using Milaboratories Human BCR kit with additional optional config `--dont-separate-by C`.

Bellow you will find a great variety of presets dedicated to different types of input data or to the particular commercially available kits. Most of the presets do not require any additional arguments and will work out-of-the-box.




## Kits

### MiLaboratories

#### Human Ig RNA Multiplex

==`milab-human-bcr-multiplex-full-length`==
·
==`milab-human-bcr-multiplex-cdr3`==
·
[:octicons-link-16: Link](https://milaboratories.com/human-ig-rna-multiplex-kit)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/milab.yaml)

Allows to obtain full length IG heavy and light chain repertoires with UMI-based accuracy. Discriminates all IGH isotypes including IgM, IgD, IgG3, IgG1, IgA1, IgG2, IgG4, IgE, and IgA2. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only.

![](pics/milab-multiplex-bcr-light.svg#only-light)
![](pics/milab-multiplex-bcr-dark.svg#only-dark)

By default, separates clonotypes by isotype which may be changed using `--dont-separate-by C` [mix-in option](overview-mixins-list.md).

Example:
```shell
mixcr analyze milab-human-bcr-multiplex-full-length \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```









#### Human TCR RNA Multiplex

==`milab-human-tcr-rna-multiplex-cdr3`==
·
[:octicons-link-16: Link](https://milaboratories.com/human-tcr-rna-multiplex-kit)
·
[:octicons-mortar-board-16: Tutorial](../guides/milaboratories-human-tcr-rna-multi.md)

Allows to obtain human TCR alpha and beta CDR3 repertoires for different types of available RNA material, with high sensitivity and UMI-based accuracy. 

![](pics/milab-multiplex-tcr-light.svg#only-light)
![](pics/milab-multiplex-tcr-dark.svg#only-dark)

Example:
```shell
mixcr analyze milab-human-tcr-rna-multiplex-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```








#### Human TCR RNA

==`milab-human-tcr-rna-race-cdr3`==
·
==`milab-human-tcr-rna-race-full-length`==
·
[:octicons-link-16: Link](https://milaboratories.com/human-tcr-rna-kit)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/milab.yamll)


The kit allows to obtain unbiased TCR alpha and beta repertoires with UMI-based accuracy. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only.

![](pics/milab-race-tcr-light.svg#only-light)
![](pics/milab-race-tcr-dark.svg#only-dark)


Example:
```shell
mixcr analyze milab-human-tcr-rna-race-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```




#### Human TCR DNA Multiplex

==`milab-human-tcr-dna-multiplex-cdr3`==
·
[:octicons-link-16: Link](https://milaboratories.com/human-tcr-dna-multiplex-kit)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/milab.yamll)


The kit allows to obtain TCR alpha and beta repertoires for different types of available DNA material, with the highest possible sensitivity. Clones are assembled by `CDR3` sequence.

Example:
```shell
mixcr analyze milab-human-tcr-dna-multiplex-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





### Takara Bio

#### SMART-Seq Human BCR (with UMIs)

==`takara-human-bcr-cdr3`==
·
==`takara-human-bcr-full-length`==
·
[:octicons-link-16: Link](https://www.takarabio.com/products/next-generation-sequencing/immune-profiling/human-repertoire/smart-seq-human-bcr-(with-umis))
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/takara.yaml#L1)


**SMART-Seq Human BCR (with UMIs)** provides a sensitive and reproducible solution for generating high-quality NGS libraries for profiling the human BCR repertoire. The kit leverages SMART (Switching Mechanism at 5' end of RNA Template) full-length cDNA synthesis technology and pairs NGS with a 5’-RACE approach to capture the complete V(D)J variable regions of all human B-cell receptor (BCR) heavy (IgG/M/D/A/E) and light (IgK/L) chains. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only. `--dont-separate-by C` mixin may be used to not separate clones by isotypes.

![](pics/SMARTer-Human-BCR-IgG-IgM-H-K-L-light.svg#only-light)
![](pics/SMARTer-Human-BCR-IgG-IgM-H-K-L-dark.svg#only-dark)

Example:
```shell
mixcr analyze takara-human-bcr-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





### SMARTer Human BCR IgG IgM H/K/L Profiling Kit

==`takara-human-bcr-cdr3`==
·
==`takara-human-bcr-full-length`==
·
[:octicons-link-16: Link](https://www.takarabio.com/products/next-generation-sequencing/immune-profiling/human-repertoire/human-bcr-profiling-kit-for-illumina-sequencing)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/takara.yaml#L1)
·
[:octicons-mortar-board-16: Tutorial](../guides/takara-hsa-bcr.md)

**SMARTer Human BCR IgG IgM H/K/L Profiling Kit** pairs 5' RACE with NGS technology to provide a sensitive, accurate, and optimized approach to BCR profiling from RNA input samples. The 5' RACE method reduces variability and allows for priming from the constant region of BCR heavy or light chains. This kit combines these benefits with gene-specific amplification to capture complete V(D)J variable regions of BCR transcripts and provide a highly sensitive and reproducible method for profiling B-cell repertoires. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only. `--dont-separate-by C` mix-in may be used to not separate clones by isotypes.

![](pics/SMARTer-Human-BCR-IgG-IgM-H-K-L-dark.svg#only-dark)
![](pics/SMARTer-Human-BCR-IgG-IgM-H-K-L-light.svg#only-light)

Example:
```shell
mixcr analyze takara-human-bcr-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





#### SMARTer Human TCR a/b Profiling Kit v2

==`takara-human-tcr-V2-cdr3`==
·
==`takara-human-tcr-V2-full-length`==
·
[:octicons-link-16: Link](https://www.takarabio.com/products/next-generation-sequencing/immune-profiling/human-repertoire/human-tcrv2-profiling-kit-for-illumina-sequencing)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/takara.yaml#L45)


The **SMARTer Human TCR a/b Profiling Kit v2 (TCRv2)** is powered by robust chemistry that provides unparalleled sensitivity and reproducibility. The kit leverages SMART (Switching Mechanism at 5' end of RNA Template) full-length cDNA synthesis technology and pairs NGS with a 5'-RACE approach to capture the complete V(D)J variable regions of TRA and TRB genes. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only. These presets support UMI-based error correction.

![](pics/SMARTer-Human-TCRv2-light.svg#only-light)
![](pics/SMARTer-Human-TCRv2-dark.svg#only-dark)

Example:
```shell
mixcr analyze takara-human-tcr-V2-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





#### SMARTer Human TCR a/b Profiling Kit

==`takara-human-tcr-V1-cdr3`==
·
==`takara-human-tcr-V1-full-length`==
·
[:octicons-link-16: Link](https://www.takarabio.com/products/next-generation-sequencing/immune-profiling/human-repertoire/human-tcr-profiling-kit-for-illumina-sequencing)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/takara.yaml#L85)

**SMARTer Human TCR a/b Profiling Kit** allows to obtain full-length sequences of TCR-alpha and TCR-beta V(D)J variable regions. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only.

![](pics/SMARTer-Human-TCRv1-light.svg#only-light)
![](pics/SMARTer-Human-TCRv1-dark.svg#only-dark)

Example:
```shell
mixcr analyze takara-human-tcr-V1-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





#### SMARTer Mouse BCR IgG H/K/L Profiling Kit

==`takara-mouse-bcr-cdr3`==
·
==`takara-mouse-bcr-full-length`==
·
[:octicons-link-16: Link](https://www.takarabio.com/products/next-generation-sequencing/immune-profiling/mouse-repertoire/mouse-bcr-profiling-kit-for-illumina-sequencing)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/takara.yaml#L120)


The **SMARTer Mouse BCR IgG H/K/L Profiling Kit** pairs 5' RACE with NGS technology to provide a sensitive, accurate, and optimized approach to BCR profiling. The 5'-RACE method reduces variability and allows for priming from the constant region of BCR heavy or light chains. This kit combines these benefits with gene-specific amplification to capture complete V(D)J variable regions of BCR transcripts and provide a highly sensitive and reproducible method for profiling B-cell repertoires. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only.

![](pics/SMARTer-Mouse-BCR-light.svg#only-light)
![](pics/SMARTer-Mouse-BCR-dark.svg#only-dark)

Example:
```shell
mixcr analyze takara-mouse-bcr-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```






#### SMARTer Mouse TCR a/b Profiling Kit

==`takara-mouse-tcr-cdr3`==
·
==`takara-mouse-tcr-full-length`==
·
[:octicons-link-16: Link](https://www.takarabio.com/products/next-generation-sequencing/immune-profiling/mouse-repertoire/mouse-tcr-profiling-kit-for-illumina-sequencing)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/takara.yaml#L154)
·
[:octicons-mortar-board-16: Tutorial](../guides/takara-mmu-tcr.md)


The **SMARTer Mouse TCR a/b Profiling Kit** provides a powerful new solution for those seeking to perform T-cell receptor (TCR) repertoire analysis using NGS. The kit employs a 5'-RACE-based approach to capture complete V(D)J variable regions of TCR transcripts, starting from as little as 10 ng to 500 ng of total RNA obtained from mouse spleen, thymus, or PBMCs, or from 1,000 to 10,000 purified T cells. As the name suggests, the kit can be used to generate data for both TCR-alpha and TCR-beta chain diversity, either in the same experiment or separately. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only.

![](pics/SMARTer-Mouse-TCR-light.svg#only-light)
![](pics/SMARTer-Mouse-TCR-dark.svg#only-dark)

Example:
```shell
mixcr analyze takara-mouse-tcr-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





### New England BioLabs

#### NEBNext® Immune Sequencing Kit (Human) BCR & TCR

==`nebnext-human-bcr-cdr3`==
·
==`nebnext-human-bcr-full-length`==
·
==`nebnext-human-tcr-cdr3`==
·
==`nebnext-human-tcr-full-length`==
·
[:octicons-link-16: Link](https://www.neb.com/products/e6320-nebnext-immune-sequencing-kit-human#Product%20Information)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/neb.yaml#L1)
·
[:octicons-mortar-board-16: Tutorial](../guides/nebnext-bcr.md)

With the **NEBNext® Immune Sequencing Kit (Human)**, sequence the full-length immune gene repertoires of B cells and T cells. Profile somatic mutations across all relevant contexts (e.g., V, D, and J segments and isotypes IgM, IgD, IgG, IgA, and IgE) with improved sequence accuracy. Characterize BCR light, BCR heavy, TCRα and TCRβ chains. This kit includes UMIs for source-molecule identification. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only. `--dont-separate-by C` mix-in may be used for BCR data to not separate clones by isotypes


![](pics/NEBNext-human-bcr-kit-dark.svg#only-dark)
![](pics/NEBNext-human-bcr-kit-light.svg#only-light)

![](pics/NEBNext-human-tcr-kit-light.svg#only-light)
![](pics/NEBNext-human-tcr-kit-dark.svg#only-dark)


Example:
```shell
mixcr analyze nebnext-human-bcr-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```

#### NEBNext® Immune Sequencing Kit (Mouse) BCR & TCR

==`nebnext-mouse-bcr-cdr3`==
·
==`nebnext-mouse-bcr-full-length`==
·
==`nebnext-mouse-tcr-cdr3`==
·
==`nebnext-mouse-tcr-full-length`==
·
[:octicons-link-16: Link](https://www.neb.com/products/e6330-nebnext-immune-sequencing-kit-mouse#Product%20Information)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/neb.yaml#L60)


With the **NEBNext® Immune Sequencing Kit (Mouse)**, sequence the full-length immune gene repertoires of B cells and T cells. Profile somatic mutations across all relevant contexts (e.g., V, D, and J segments and isotypes IgM, IgD, IgG, IgA, and IgE) with improved sequence accuracy. Characterize BCR light, BCR heavy, TCRα, TCRβ, TCRγ and TCRδ chains. This kit includes UMIs for source-molecule identification. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only. `--dont-separate-by C` mix-in may be used for BCR data to not separate clones by isotypes

![](pics/NEBNext-mouse-bcr-kit-dark.svg#only-dark)
![](pics/NEBNext-mouse-bcr-kit-light.svg#only-light)

![](pics/NEBNext-mouse-tcr-kit-light.svg#only-light)
![](pics/NEBNext-mouse-tcr-kit-dark.svg#only-dark)

Example:
```shell
mixcr analyze nebnext-mouse-bcr-cdr3 \
      --dont-separate-by C \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```






### AbHelix

[:octicons-link-16: Link](https://abhelix.com/)

#### BCR data

==`abhelix-human-bcr-cdr3`==
·
==`abhelix-human-bcr-full-length`==
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/abhelix.yaml#L1)
·
[:octicons-mortar-board-16: Tutorial](../guides/abhelix-bcr.md)

This kit allows identification of IgG1,IgG1,IgG1,IgG1,IgGM,IgA isotypes. Isotypes are separated prior to the final PCR reaction, in a way that resulting sequences don't cover C region enough. Thus, this preset does not separate clones by C-gene, implying that different isotypes have been already separated into different samples. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only.

![](pics/ABHelix-bcr-kit-dark.svg#only-dark)
![](pics/ABHelix-bcr-kit-light.svg#only-light)

Example:
```shell
mixcr analyze abhelix-human-bcr-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





#### TCR data

==`abhelix-human-tcr-cdr3`==
·
==`abhelix-human-tcr-full-length`==
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/abhelix.yaml#L37)


The kit allows to obtain full-length sequences of TCR-alpha and TCR-beta V(D)J variable regions. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only.

![](pics/ABHelix-tcr-kit-light.svg#only-light)
![](pics/ABHelix-tcr-kit-dark.svg#only-dark)

Example:
```shell
mixcr analyze abhelix-human-tcr-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





### Qiagen
#### QIAseq™ Human TCR Panel Immune Repertoire RNA Library Kit

==`qiaseq-human-tcr-cdr3`==
·
==`qiaseq-human-tcr-full-length`==
·
[:octicons-link-16: Link](https://geneglobe.qiagen.com/us/product-groups/qiaseq-immune-repertoire-rna-library-kits)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/qiaseq.yaml#L1)
·
[:octicons-mortar-board-16: Tutorial](../guides/qiaseq-tcr.md)

The **QIAseq Human TCR Panel Immune Repertoire RNA Library Kit** uses unique Molecular Indices (UMI) with gene-specific primers to target specific RNAs for NGS sequencing. The Human T-cell Receptors Panel is used for sequencing the V(D)J region of the alpha, beta, delta and gamma genes, including the CDR3 regions. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only.

![](pics/QIAseq-immune-tcr-kit-light.svg#only-light)
![](pics/QIAseq-immune-tcr-kit-dark.svg#only-dark)

Example:
```shell
mixcr analyze qiaseq-human-tcr-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





#### QIAseq™ Mouse TCR Panel Immune Repertoire RNA Library Kit

==`qiaseq-mouse-tcr-cdr3`==
·
==`qiaseq-mouse-tcr-full-length`==
·
[:octicons-link-16: Link](https://geneglobe.qiagen.com/us/product-groups/qiaseq-immune-repertoire-rna-library-kits)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/qiaseq.yaml#L41)


![](pics/QIAseq-immune-tcr-kit-light.svg#only-light)
![](pics/QIAseq-immune-tcr-kit-dark.svg#only-dark)

The **QIAseq Mouse TCR Panel Immune Repertoire RNA Library Kit** uses unique Molecular Indices (UMI) with gene-specific primers to target specific RNAs for NGS sequencing. The Mouse T-cell Receptors Panel is used for sequencing the V(D)J region of the alpha, beta, delta and gamma genes, including the CDR3 regions. `-cdr3` preset may be used to reduce clonotype assembling feature from full V-D-J region to CDR3 only.

Example:
```shell
mixcr analyze qiaseq-mouse-tcr-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





### Illumina

#### AmpliSeq for Illumina Immune Repertoire Plus, TCR beta Panel

==`ampliseq-tcrb-plus-cdr3`==
·
==`ampliseq-tcrb-plus-full-length`==
·
[:octicons-link-16: Link](https://www.illumina.com/products/by-type/sequencing-kits/library-prep-kits/ampliseq-immune-repertoire-panel.html)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/illumina.yaml#L1)


AmpliSeq for **Illumina Immune Repertoire Plus**, TCR beta Panel is a highly multiplexed targeted resequencing panel to measure T cell diversity and clonal expansion by sequencing T cell receptor (TCR) beta chain rearrangements. RNA evaluation of TCRβ chain rearrangements, including CDR1, CDR2, and CDR3 (with up to 400 bp read-length amplicons).  `-cdr3` preset may be used to reduce clonotype assembling feature from
`{CDR1:FR4}` region to CDR3 only.

![](pics/ampliseq-oncomine-lr-light.svg#only-light)
![](pics/ampliseq-oncomine-lr-dark.svg#only-dark)

Example:
```shell
mixcr analyze ampliseq-tcrb-plus-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





#### AmpliSeq™ for Illumina® TCR beta-SR Panel

==`ampliseq-tcrb-sr-cdr3`==
·
[:octicons-link-16: Link](https://www.illumina.com/products/by-type/sequencing-kits/library-prep-kits/ampliseq-immune-repertoire-panel.html)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/illumina.yaml#L42)

Sequences TCR beta chain rearrangements, with up to 80 bp read-length amplicons for characterizing CDR3.

![](pics/ampliseq-lr-light.svg#only-light)
![](pics/ampliseq-lr-dark.svg#only-dark)

Example:
```shell
mixcr analyze ampliseq-tcrb-sr-cdr3 \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result 
```





### 10XGenomics

#### 10x Genomics single cell VDJ

==`10x-vdj-tcr`==
·
==`10x-vdj-bcr`==
·
[:octicons-link-16: Link](https://www.10xgenomics.com/products/single-cell-immune-profiling)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/10x.yaml)


Chromium Single Cell Immune Profiling provides a solution to your immunology questions. Analyze full-length V(D)J sequences for paired B-cell or T-cell receptors, all from a single cell. Notice that on the scheme bellow reads' length is shown according to the protocol recommendations, but the presets will work regardless of sequencing reads length.

![](pics/10x-vdj-bcr-light.svg#only-light)
![](pics/10x-vdj-bcr-dark.svg#only-dark)
![](pics/10x-vdj-tcr-light.svg#only-light)
![](pics/10x-vdj-tcr-dark.svg#only-dark)

There only required option that must be specified with corresponding [mix-in option](overview-mixins-list.md):

: :fontawesome-solid-puzzle-piece: Species;  mixin is `species`.

Example:
```shell
mixcr analyze 10x-vdj-bcr \
     --species hsa \
     sample_R1.fastq.gz \
     sample_R2.fastq.gz \
     sample_result
```


[//]: # (See [this tutorial]&#40;../guides/milaboratories-human-tcr-rna-multi.md&#41; for the under-the-hood details.)




## Public protocols

### Biomed2
==`biomed2-human-bcr-cdr3`==
·
==`biomed2-human-bcr-full-length`==
·
[:octicons-link-16: Publication](https://www.jmdjournal.org/article/S1525-1578(10)60580-6/fulltext)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/biomed2.yaml)
·
[:octicons-mortar-board-16: Tutorial](../guides/biomed2-bcr.md)

Biomed2 FR1-FR4 human multiplex BCR primer set. `-cdr3` presets used to extract CDR3 clonotypes while `-full-length` full VDJ region, starting from FR1.

![](pics/biomed2-human-bcr-kit-light.svg#only-light)
![](pics/biomed2-human-bcr-kit-dark.svg#only-dark)

Example:
```shell
mixcr analyze biomed2-human-bcr-full-length \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result
```


### Mikelov et al, 2021
==`mikelov-et-al-2021`==
·
[:octicons-link-16: Publication](https://www.biorxiv.org/content/10.1101/2021.12.30.474135v2)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/custom.yaml)






## Generic data


### RNA-Seq data
==`rnaseq-cdr3`==
·
==`rnaseq-full-length`==
·
[:octicons-link-16: Publication](https://www.nature.com/articles/nbt.3979)
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/rnaseq.yaml)

Non-enriched fragmented (shotgun) RNA-Seq data. Preset `rnaseq-cdr3` is used to assemble CDR3 clonotypes, while `rnaseq-full-length` additionally runs [consensus contig assembly](mixcr-assembleContigs.md) to reconstruct all available parts of V-D-J-C receptor rearrangement sequence.

![](pics/rnaseq-structure-light.svg#only-light)
![](pics/rnaseq-structure-dark.svg#only-dark)

Required configs that must be specified with corresponding mix-in options:


: :fontawesome-solid-puzzle-piece: Species; <p>

Example:
```shell
mixcr analyze rnaseq-full-length \
    --species hsa \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result
```

### Generic TCR amplicon
==`generic-tcr-amplicon`==
·
==`generic-tcr-amplicon-umi`==
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/general-amplicon.yaml)
·
[:octicons-mortar-board-16: Tutorial](../guides/generic-umi-tcr.md)


Generic TCR amplicon library with (`-umi`) or without UMIs. Required configs that must be specified with corresponding [mix-in options](overview-mixins-list.md):


: :fontawesome-solid-puzzle-piece: Species;
: :fontawesome-solid-puzzle-piece: Material type;
: :fontawesome-solid-puzzle-piece: Tag pattern (for `generic-tcr-amplicon-umi`);
: :fontawesome-solid-puzzle-piece: Left alignment boundary (5'-end);
: :fontawesome-solid-puzzle-piece: Right alignment boundary (3'-end).

The following example runs upstream analysis for some bulk mouse 5'RACE TCR RNA library with 3'-end primers located on C-gene:
```shell
mixcr analyze generic-tcr-amplicon \
    --species mmu \
    --rna \
    --rigid-left-alignment-boundary \
    --floating-right-alignment-boundary C \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result
```
The following [mix-in options](overview-mixins-list.md) are used:

`--species mmu`
: specify _Mus Musculus_ species

`--rna`
: set RNA as starting material (exon regions only will be used for alignments)

`--rigid-left-alignment-boundary`
: use global _left alignment boundary_ (5'RACE)

`--floating-right-alignment-boundary C`
: use local _right alignment boundary_ on C-segment as C-primers are used

### Generic BCR amplicon
==`generic-bcr-amplicon`==
·
==`generic-bcr-amplicon-umi`==
·
[:octicons-mark-github-16: Code](https://github.com/milaboratory/mixcr/blob/develop/src/main/resources/mixcr_presets/protocols/general-amplicon.yaml)
·
[:octicons-mortar-board-16: Tutorial](../guides/generic-umi-bcr.md)
·
[:octicons-mortar-board-16: Tutorial](../guides/generic-multiplex-bcr.md)


Generic BCR amplicon library with (`-umi`) or without UMIs. Required configs that must be specified with corresponding [mix-in options](overview-mixins-list.md):


: :fontawesome-solid-puzzle-piece: Species;
: :fontawesome-solid-puzzle-piece: Material type;
: :fontawesome-solid-puzzle-piece: Tag pattern (for `generic-bcr-amplicon-umi`);
: :fontawesome-solid-puzzle-piece: Left alignment boundary (5'-end);
: :fontawesome-solid-puzzle-piece: Right alignment boundary (3'-end).

The following example runs upstream analysis for some full-length human BCR RNA multiplex library with 3'-end primers located on C-gene and UMIs spanning first 12 letters of 5'-end, followed by 4 letters of a fixed linker sequence:
```shell
mixcr analyze generic-bcr-umi-amplicon \
    --species hsa \
    --rna \
    --tag-pattern "^(R1:*) \ ^(UMI:N{12})GTAC(R2:*)" \
    --rigid-left-alignment-boundary \
    --floating-right-alignment-boundary C \
      input_R1.fastq.gz \
      input_R2.fastq.gz \
      result
```
The following [mix-in options](overview-mixins-list.md) are used:

`--species hsa`
: specify _Homo Sapiens_ species

`--rna`
: set RNA as starting material (exon regions only will be used for alignments)

`--tag-pattern "^(R1:*) \ ^(UMI:N{12})GTAC(R2:*)"`
: UMI [barcode pattern](ref-tag-pattern.md)

`--rigid-left-alignment-boundary`
: use global _left alignment boundary_ as our tag pattern removes UMIs and linked sequensed from 5'-end of reads

`--floating-right-alignment-boundary C`
: use local _right alignment boundary_ on C-segment as C-primers are used
