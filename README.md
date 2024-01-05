# Explainable Drug Repurposing in Context via Deep Reinforcement Learning

### Real-world dataset
Created by: 
1. Filtering PICO graph. Using a [SPARQL query](https://github.com/lisestork/coco/blob/master/queries/filteringPICOquery.txt), we extract populations and
their disease or phenotype entities. In PICO graphs, these are all entities from the Cochrane Linked Data Vocabulary (CLDV) of type condition.

2. Linking populations to Hetionet. Both the CLVD and Hetionet use different codes to uniquely describe their biomedical entities. In order to join both
graphs, we therefore replace all relevant nodes with UMLS identifiers using [RDFpro](https://github.com/lisestork/coco/blob/master/preprocessing/aggregate_and_process.sh). 

## Cite this paper
Stork, L., Tiddi, I., Spijker, R., ten Teije, A. (2023). Explainable Drug Repurposing in Context via Deep Reinforcement Learning. In: Pesquita, C., et al. The Semantic Web. ESWC 2023. Lecture Notes in Computer Science, vol 13870. Springer, Cham. https://doi.org/10.1007/978-3-031-33455-9_1
