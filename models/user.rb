class User
  include Neo4j::ActiveNode

  property :token, index: :exact

  has_many :out, :destinations, rel_class: :SearchedFor
end
