module github.com/haiku/gerrit-resource/gerrit

require (
	github.com/haiku/gerrit-resource/internal/resource v0.0.0-replace
	golang.org/x/build v0.0.0-20230209140708-10a2df6e96f7
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/stretchr/testify v1.8.1 // indirect
	golang.org/x/net v0.1.0 // indirect
	golang.org/x/oauth2 v0.0.0-20211104180415-d3ed0bb246c8 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/haiku/gerrit-resource/internal/resource => ../internal/resource

go 1.18
