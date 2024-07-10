run:
	mkdir -p ~/data/db ~/data/web
	chmod 700 ~/data/db && chmod 500 ~/data/db
	chmod +x ~/data/web
	docker compose -f srcs/docker-compose.yml up --build -d

clean:
	docker compose -f srcs/docker-compose.yml down -v
	docker system prune -a
	if [ -n "$$(docker images -a -q)" ]; then docker rmi $$(docker images -a -q); fi
	sudo rm -rf ~/data/db ~/data/web

re: clean run
