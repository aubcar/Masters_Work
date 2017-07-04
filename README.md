# Masters_Work

This repository contains the code and documentation for my masters project

#Computational Identification of Structural Variants in Macaque

##Goals 
  * Use whole genome sequences to computationally identify and analyse structural varients in two species of hybridising macaques.
  * Combine all SV outputs into one high quality list 
  * Diversity and divergence scan to identify divergent regions between the species
  * Gene ontology analysis of Divergent regions
  * Differential gene expression analysis of divergent regions 

####Samples:
A 5-year-old female CR macaque and a 4-year-old female CE macaque of Vietnamese origin were used in this study. The CR macaque individual was descended from an individual captured from the wild in Yunnan Province. The origins of these two individuals were confirmed by mitochondrial DNA sequencing. Genomic DNA was collected from the peripheral blood cells of these two individuals.

M. mulatta: SRA023856
Source: Link to paper in NCBI. https://www.ncbi.nlm.nih.gov/pubmed/22002653

M. fascicularis: SRA023855
Source: Link to paper in NCBI. https://www.ncbi.nlm.nih.gov/pubmed/22002653


###Programs used 


1.Breakdacer (source)

2. Lumpy (source)

3. Delly (source)

4. Pindel

5. CNVnator

6. DeSeq2

7. EdgeR

8. Blast

9. htseq 

#Things done
Downloaded publically aviable Genomic and RNA data, run through GATK best practices pipeline(See sample prep) 

Genomic samples were run through 5 SV prorams, and three divergence statistics 

RNA samples were run through two Differential gene expression programs.

PCR of putative breakpoint regions

#Programs created 

Gc calculator

Crossover counter

Blast breakpoint parser 

High quality Variant collater 

#Papers on

Plasticity 
5 species 
rhesusfas SV
