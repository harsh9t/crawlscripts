echo "crawling dump from wikidata started..."
sleep 1
curl -O -O http://tools.wmflabs.org/wikidata-exports/rdf/exports/20150727/wikidata-{properties,taxonomy}.nt.gz
echo "finished crawling..."

