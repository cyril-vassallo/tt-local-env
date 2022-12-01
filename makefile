angular:
	cd ../tt-app-angular && docker compose down
	cd ../tt-app-angular && code .
next:
	cd ../tt-app-next && docker compose down
	cd ../tt-app-next && code .
api: 
	cd ../tt-api-nest && docker compose down
	cd ../tt-api-nest && code .

start-api: 
	$(MAKE) api
	
start-next:
	$(MAKE) api
	$(MAKE) next

start-angular:
	$(MAKE) api
	$(MAKE) angular

start-all:
	$(MAKE) api
	$(MAKE) next
	$(MAKE) angular