query_string = <<query
CREATE
(algarve:Destination {name: 'Algarve'}),
(antigua:Destination {name: 'Antigua'}),
(cancun:Destination {name: 'Cancun'}),
(corfu:Destination {name: 'Corfu'}),
(costa_brava:Destination {name: 'Costa Brava'}),
(costa_del_sol:Destination {name: 'Costa Del Sol'}),
(crete:Destination {name: 'Crete'}),
(fuertaventura:Destination {name: 'Fuertaventura'}),
(gran_canaria:Destination {name: 'Gran Canaria'}),
(malta:Destination {name: 'Malta'}),
(paphos:Destination {name: 'Paphos'}),
(zante:Destination {name: 'Zante'})
query

require 'bundler'

Bundler.setup

require 'neo4j'

Neo4j::Session.open(:server_db)

Neo4j::Session.current.query(query_string)
