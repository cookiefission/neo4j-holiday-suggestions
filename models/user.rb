class User
  include Neo4j::ActiveNode

  property :token, index: :exact
end
