#Naive script for crawling datasets from DBPedia webservers @http://wiki.dbpedia.org/Downloads2015-04
#added sleep comand for better readability in console
#added each crawl on different line, to know which crawl failed. We could begin from where it stopped

test crawl for smaller datasets
echo "Crawl initiated"
echo "crawling one dataset at a time.."
sleep 1

echo "currently crawling Mapping-based Types.."
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


#v2.0 crawl
#with loops and failure detects if needed