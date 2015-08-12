#Freebase dump

#crawls the latest freebase rdf dump of TRIPLES

curl -O http://commondatastorage.googleapis.com/freebase-public/rdf/freebase-rdf-latest.gz?

#MAPPINGS
#for freebase/wikidata Mappings replace above link with http://storage.googleapis.com/freebase-public/fb2w.nt.gz?
#The data has been created based on the Wikidata-Dump of October 28, 2013, and contains only those links that have at least two common Wikipedia-Links and not a single disagreeing Wikipedia-Link. Furthermore, the lines are sorted by the number of common Wikipedia-Links (although in Turtle this does not really matter).

#DELETED TRIPLES
#http://storage.googleapis.com/freebase-public/deleted_freebase.tar.gz?


#get whole dump and display only rdf data demo script
#curl http://commondatastorage.googleapis.com/freebase-public/rdf/freebase-rdf-2014-06-23-18-07.gz | zgrep "<http://www.w3.org/2000/01/rdf-schema#label>"