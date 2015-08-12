#latest dumps from http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/
# WIKIDATA dump of 2015-07-27 


curl -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-terms.nt.gz -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-properties.nt.gz -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-statements.nt.gz -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-sitelinks.nt.gz



#general template:
#curl {-O http://tools.wmflabs.org/wikidata-exports/rdf/exports/{yyyymmdd}/{terms,properties,statements,sitelinks}.nt.gz}

#MULTI-FILE 
#curl -O http://www.cyberciti.biz/low.html -O http://bash.cyberciti.biz/dl/581.sh.zip

#DEMO file for testing script
#curl -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-taxonomy.nt.gz

#DEMO SCRIPT TERMINATOR-ALL-CRAWL
#
curl -s http://tools.wmflabs.org/wikidata-exports/rdf/exports/20140526/wikidata-{terms,properties}.nt.gz | zgrep "<http://www.w3.org/2000/01/rdf-schema#label>" | gzip > wikidata-20140526.nt.gz