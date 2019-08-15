build:
	GOOS=linux GOARCH=amd64 go build
	docker build -t consignment-cli .
	rm consignment-cli
run:
	docker run consignment-cli
clean:
	rm consignment-cli