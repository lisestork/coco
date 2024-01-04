#!/bin/sh

# Step 1 join PICO, CLDV & UMLS & replace relevant nodes with UMLS identifiers
rdfpro { @read ../resources/x2umls.nt , \
		@read ../resources/vocab/scraped_vocab_full.nt , \
		@read ../queryOutput/PICOprocessingQuery.nt }\
		@smush '<http://identifiers.org/umls/>' \
		@transform '-p owl:* skos:* rdf:* rdfs:*'\
		@write ./preprocessed/pico_complete_cleaned_smushed.nt


# Step 2 read hetionet & replace relevant nodes with UMLS identifiers
rdfpro { @read ../resources/x2umls.nt , \
		@read ../resources/hetionet.nt } \
		@smush '<http://identifiers.org/umls/>' \
		@transform '-p rdfs:label owl:* <http://purl.org/dc/elements/1.1/identifier>' \
		@write ./preprocessed/hetionet_cleaned_smushed.nt
