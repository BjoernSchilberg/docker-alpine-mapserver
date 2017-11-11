shp2pgsql -c -D -s 31467 -i -I -W Latin1 strassen-joined.shp strassen | psql -U wepphrjj -h qdjjtnkv.db.elephantsql.com 
shp2pgsql -c -D -s 31467 -i -I -W Latin1 gewaesserflaechen.shp gewaesserflaechen | psql -U wepphrjj -h qdjjtnkv.db.elephantsql.com
shp2pgsql -c -D -s 31467 -i -I -W Latin1 gruenflaechen-joined.shp gruenflaechen | psql -U wepphrjj -h qdjjtnkv.db.elephantsql.com
shp2pgsql -c -D -s 31467 -i -I -W Latin1 poi-joined.shp poi | psql -U wepphrjj -h qdjjtnkv.db.elephantsql.com
shp2pgsql -c -D -s 31467 -i -I -W Latin1 gewaesserlinien-joined.shp gewaesserlinien | psql -U wepphrjj -h qdjjtnkv.db.elephantsql.com

