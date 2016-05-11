# Neo4j Holiday Suggestions

Experimental holiday recommendations driven by neo4j

## Requirements

- neo4j server running on http://localhost:7474 with `dbms.security.auth_enabled=false` in its config

## Setup

    ./setup
    bundle exec shotgun

then open 'http://localhost:9393'

## Todo?

- Add seed data for searches
- Add user attributes so users can be matched by related interests?
