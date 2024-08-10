run:
	sudo mkdir -p ~/data/db ~/data/web
	sudo chmod 700 ~/data/db && sudo chmod +x ~/data/web
	docker compose -f srcs/docker-compose.yml up -d --build

clean:
	docker compose -f srcs/docker-compose.yml down -v --rmi all
	sudo rm -rf ~/data/db ~/data/web

re: clean run
