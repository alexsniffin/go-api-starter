testAll:
	go test ./...

lint:
	golangci-lint run

runLocal:
	go run ./cmd/todo-api/app.go

buildLocal:
	go build ./cmd/todo-api/app.go

dockerBuildLocal:
	docker build -t local/todo-api -f ./build/package/Dockerfile .