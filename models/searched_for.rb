class SearchedFor
  include Neo4j::ActiveRel

  from_class :User
  to_class :Destination
  type :searched_for

end
