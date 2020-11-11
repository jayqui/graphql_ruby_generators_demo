# from https://github.com/rmosolgo/graphql-ruby/issues/2501#issuecomment-536199861

require "graphql/rake_task"

# provides three rake tasks:
# rake graphql:schema:dump                # Dump the schema to JSON and IDL
# rake graphql:schema:idl                 # Dump the schema to IDL in ./schema.graphql
# rake graphql:schema:json                # Dump the schema to JSON in ./schema.json
GraphQL::RakeTask.new(schema_name: "GraphqlRubyGeneratorsDemoSchema")
