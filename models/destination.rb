class Destination
  include Neo4j::ActiveNode

  property :name, index: :exact
end
