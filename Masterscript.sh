#Naive script for crawling datasets from DBPedia, Freebase and Wikidata webservers @http://wiki.dbpedia.org/Downloads2015-04
#added sleep comand for better readability in console
#added each crawl on different line, to know which crawl failed. We could begin from where it stopped

#echo "Currently crawling ____"
#sleep 1
#curl -O 
#echo "done"

echo "Crawl initiated"
echo "crawling one dataset at a time.."
sleep 1


echo "Now crawling Wikidata files.."
echo "***************************************************"

echo "Currently crawling Links to RDF Bookmashup.."
sleep 1
http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-terms.nt.gz -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-properties.nt.gz -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-statements.nt.gz -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-sitelinks.nt.gz
echo "Done"
echo "***************************************************"


echo "Now crawling Freebase files.."
echo "***************************************************"

echo "crawling latest dump from freebase server"
sleep 1
curl -O http://commondatastorage.googleapis.com/freebase-public/rdf/freebase-rdf-latest.gz?
echo "Done.."
echo "***************************************************"


echo "Fetching DBpedia datasets.."
echo "***************************************************"
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


echo "Currently crawling external-links_en"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/external-links_en.nq.bz2
echo "done"

echo "Currently crawling categories (skoe)"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/skos-categories_en.nq.bz2
echo "done"

echo "Currently crawling categories (labels)"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/category-labels_en.nq.bz2
echo "done"

echo "Currently crawling Inter Language links (chapters)"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/wikidata-links-chapters_en.nq.bz2
echo "done"

echo "Currently crawling Inter Language links"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/interlanguage-links_en.nq.bz2
echo "done"

echo "Currently crawling Person data"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/persondata_en.nq.bz2
echo "done"

echo "Currently crawling Homepages"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/homepages_en.nq.bz2
echo "done"

echo "Currently crawling Raw infobox Property definitions"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/infobox-property-definitions_en.nq.bz2
echo "done"

echo "Currently crawling Raw infobox Properties"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/infobox-properties_en.nq.bz2
echo "done"

echo "Currently crawling Geographic co-ordinates"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/geo-coordinates_en.nq.bz2
echo "done"

echo "Currently crawling Images"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/images_en.nq.bz2
echo "done"

echo "Currently crawling mappingbased-properties_en (specific)"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/specific-mappingbased-properties_en.nq.bz2
echo "done"

echo "Currently crawling mappingbased-properties (errors)"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/mappingbased-properties-errors-unredirected_en.nq.bz2
echo "done"

echo "Currently crawling Inferred Types DBTax (dbo)"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/instance_types_dbtax_ext_en.nt.bz2
echo "done"

echo "Currently crawling Inferred Types DBTax (ext)"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/instance_types_dbtax_ext_en.nt.bz2
echo "done"

echo "Currently crawling Inferred Types LHD (ext)"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/instance_types_lhd_ext_en.nt.bz2
echo "done"

echo "Currently crawling Inferred Types LHD (dbo)"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/instance_types_lhd_dbo_en.nt.bz2
echo "done"

echo "Currently crawling Mapping-based Types (heuristic)"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/instance_types_sdtyped-dbo_en.nt.bz2
echo "done"

echo "Currently crawling Mapping-based Types (Transitive)"
sleep 1
curl -O http://downloads.dbpedia.org/2015-04/core-i18n/en/instance-types-transitive_en.nq.bz2
echo "done"

echo "Currently crawling links to other datasets from DBpedia..."
sleep 1
wget -i download
echo "done"

sleep 1
echo "Done crawling DBpredia.."
echo "***********************************"
echo "Process completed...."

#MAPPINGS
#for freebase/wikidata Mappings replace above link with http://storage.googleapis.com/freebase-public/fb2w.nt.gz?
#The data has been created based on the Wikidata-Dump of October 28, 2013, and contains only those links that have at least two common Wikipedia-Links and not a single disagreeing Wikipedia-Link. Furthermore, the lines are sorted by the number of common Wikipedia-Links (although in Turtle this does not really matter).

#DELETED TRIPLES
#http://storage.googleapis.com/freebase-public/deleted_freebase.tar.gz?


#get whole dump and display only rdf data demo script
#curl http://commondatastorage.googleapis.com/freebase-public/rdf/freebase-rdf-2014-06-23-18-07.gz | zgrep "<http://www.w3.org/2000/01/rdf-schema#label>"

#v2.0 crawl
#with loops and failure detects if needed