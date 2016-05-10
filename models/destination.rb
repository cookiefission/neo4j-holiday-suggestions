class Destination
  include Neo4j::ActiveNode

  property :name, index: :exact
  property :price, type: Integer
end
