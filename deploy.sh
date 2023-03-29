docker-compose down
#docker-compose run --rm app python manage.py initial_import --module products.indexer_products
docker-compose up -d
#docker-compose run --rm app python3 manage.py makemigrations --merge
#docker-compose run --rm app python3 manage.py makemigrations products customers cms blog favourites
docker-compose run --rm app python3 manage.py migrate

#docker-compose run --rm web python3 manage.py shell -c "from customers.models import CustomUser as User; User.objects.create_superuser('admin', password='admin123')"
#docker-compose run --rm web python3 manage.py loaddata customers/fixtures/group.json
#docker-compose run --rm web python3 manage.py loaddata blog/fixtures/blogpost.json
#docker-compose run --rm web python3 manage.py initial_import --module customers.migrate_company
#docker-compose run --rm web python3 manage.py initial_import --module categories.migrate_category
#docker-compose run --rm web python3 manage.py initial_import --module products.migrate_product
#docker-compose run --rm web python3 manage.py initial_import --module customers.migrate_users
#docker-compose run --rm web python3 manage.py initial_import --module products.update_brand
#docker-compose run --rm web python3 manage.py initial_import --module customers.migrate_pricelist_cpg
#docker-compose run --rm web python3 manage.py initial_import --module products.indexer_products