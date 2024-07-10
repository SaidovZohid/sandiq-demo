start:
	docker compose up -d --build

migrate:
	docker compose exec app python3 manage.py makemigrations
	docker compose exec app python3 manage.py migrate

shell:
	docker compose exec app python3 manage.py shell

collectstatic:
	docker compose exec app python3 manage.py collectstatic --no-input

superadmin:
	docker compose exec app python3 manage.py createsuperuser
