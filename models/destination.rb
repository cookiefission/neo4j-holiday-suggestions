class Destination
  include Neo4j::ActiveNode

  property :name, index: :exact
  property :price, type: Integer

  has_many :in, :users, rel_class: :SearchedFor
end
