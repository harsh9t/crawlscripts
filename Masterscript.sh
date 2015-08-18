#Naive script for crawling datasets from DBPedia, Freebase and Wikidata webservers @http://wiki.dbpedia.org/Downloads2015-04
#added sleep comand for better readability in console
#added each crawl on different line, to know which crawl failed. We could begin from where it stopped

echo "Crawl initiated"
echo "crawling one dataset at a time.."
sleep 1

echo "Currently crawling Mapping-based Types.."
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/instance-types_en.nq.bz2 
echo "done"

echo "currently crawling Mapping-based Properties.."
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/mappingbased-properties_en.nq.bz2
echo "done"

echo "currently crawling Titles.."
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/labels_en.nq.bz2
echo "done"

echo "currently crawling Short Abstracts.."
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/short-abstracts_en.nq.bz2
echo "done"

echo "currently crawling Extended Abstracts.."
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/long-abstracts_en.nq.bz2
echo "done"

echo "currently crawling Articles Categories.."
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/article-categories_en.nq.bz2
echo "done"

echo "currently crawling Links to Wikipedia Article.."
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/wikipedia-links_en.nq.bz2
echo "done"

echo "currently crawling Wikipedia Pagelinks.."
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/page-links_en.nq.bz2
echo "done"

echo "currently crawling Mapping-based Types"
sleep 1
http://downloads.dbpedia.org/2015-04/core-i18n/en/instance-types_en.nq.bz2 
echo "done"

echo "currently crawling DBpedia Ontology.."
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/dbpedia_2015-04.nt.bz2 -O 
echo "done"
echo "Currently crawling Links to RDF Bookmashup.."
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/links/bookmashup_links.nt.bz2
echo "done"

sleep 1
echo "Done crawling DBpredia.."
echo "Now crawling Freebase files.."
echo "...."
echo "...."
echo "...."

echo "crawling latest dump from freebase server"
sleep 1
curl -O http://commondatastorage.googleapis.com/freebase-public/rdf/freebase-rdf-latest.gz?
echo "Done.."

#MAPPINGS
#for freebase/wikidata Mappings replace above link with http://storage.googleapis.com/freebase-public/fb2w.nt.gz?
#The data has been created based on the Wikidata-Dump of October 28, 2013, and contains only those links that have at least two common Wikipedia-Links and not a single disagreeing Wikipedia-Link. Furthermore, the lines are sorted by the number of common Wikipedia-Links (although in Turtle this does not really matter).

#DELETED TRIPLES
#http://storage.googleapis.com/freebase-public/deleted_freebase.tar.gz?


#get whole dump and display only rdf data demo script
#curl http://commondatastorage.googleapis.com/freebase-public/rdf/freebase-rdf-2014-06-23-18-07.gz | zgrep "<http://www.w3.org/2000/01/rdf-schema#label>"

echo "Done crawling Freebase.."
echo "Now crawling Wikidata files.."
echo "...."
echo "...."
echo "...."

echo "Currently crawling Links to RDF Bookmashup.."
sleep 1
http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-terms.nt.gz -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-properties.nt.gz -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-statements.nt.gz -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-sitelinks.nt.gz
echo "Done"

#v2.0 crawl
#with loops and failure detects if needed