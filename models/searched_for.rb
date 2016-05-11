class SearchedFor
  include Neo4j::ActiveRel

  from_class :User
  to_class :Destination
  type :searched_for

  creates_unique on: [:from_node, :to_node]

end
