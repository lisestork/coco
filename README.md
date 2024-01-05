# Explainable Drug Repurposing in Context via Deep Reinforcement Learning

### Real-world dataset
 we extract a real-world dataset of populations from Cochrane’s systematic reviews, which exemplifies how our approach
can be used to predict drug targets or compounds based on complex phenotypes. The Cochrane Linked Data Project has semantically annotated a collection of systematic reviews–a syntheses of clinical trials belonging to a specific research question–according to the PICO ontology, producing a small graph for each systematic review (a “PICO”). First, we extract unique patient populations and their diseases, conditions and symptoms from the PICO graphs. In order to reason over the extracted subgraphs, we join them with the Hetionet graph in
the following manner: 

1. Filtering PICO graph. Using a [SPARQL query](https://github.com/lisestork/coco/blob/master/queries/filteringPICOquery.txt), we extract populations and their disease or phenotype entities. In PICO graphs, these are all entities from the Cochrane Linked Data Vocabulary (CLDV) of type condition.

2. Linking populations to Hetionet. Both the CLVD and Hetionet use different codes to uniquely describe their biomedical entities. In order to join both graphs, we therefore replace all relevant nodes with UMLS identifiers using [RDFpro](https://github.com/lisestork/coco/blob/master/preprocessing/aggregate_and_process.sh).

The real-world dataset (datasets/cochrane/test.txt) and the paths found after applying our method CoCo (datasets/cochrane/test-paths.txt) are used to demonstrate the usefulness of our method. 

## Cite this paper
Stork, L., Tiddi, I., Spijker, R., ten Teije, A. (2023). Explainable Drug Repurposing in Context via Deep Reinforcement Learning. In: Pesquita, C., et al. The Semantic Web. ESWC 2023. Lecture Notes in Computer Science, vol 13870. Springer, Cham. https://doi.org/10.1007/978-3-031-33455-9_1
