query_string = <<query
CREATE
(algarve:Destination {name: 'Algarve', price: 300}),
(antigua:Destination {name: 'Antigua', price: 400}),
(cancun:Destination {name: 'Cancun', price: 500}),
(corfu:Destination {name: 'Corfu', price: 600}),
(costa_brava:Destination {name: 'Costa Brava', price: 700}),
(costa_del_sol:Destination {name: 'Costa Del Sol', price: 800}),
(crete:Destination {name: 'Crete', price: 900}),
(fuertaventura:Destination {name: 'Fuertaventura', price: 1000}),
(gran_canaria:Destination {name: 'Gran Canaria', price: 1100}),
(malta:Destination {name: 'Malta', price: 1200}),
(paphos:Destination {name: 'Paphos', price: 1300}),
(zante:Destination {name: 'Zante', price: 1400})
query

require 'bundler'

Bundler.setup

require 'neo4j'

Neo4j::Session.open(:server_db)

Neo4j::Session.current.query(query_string)
