.PHONY: build

build:
	sam build
local:
	@make build
	sam local start-api --docker-network go-academy
# 初回のみ
deploy-g:
	@make build
	sam deploy --guided
deploy:
	@make build
	sam deploy
