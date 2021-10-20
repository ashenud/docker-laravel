
while IFS== read -r key val ; do
    if [ $key = DB_DATABASE ]
    then
        DB_DATABASE=$val
    fi
    if [ $key = DB_USERNAME ]
    then
        DB_USERNAME=$val
    fi
    if [ $key = DB_PASSWORD ]
    then
        DB_PASSWORD=$val
    fi

    if [ $key = DB_ROOT_PASSWORD ]
    then
        DB_ROOT_PASSWORD=$val
    fi
done < .env

echo ${DB_DATABASE}
echo ${DB_USERNAME}
echo ${DB_PASSWORD}
echo ${DB_ROOT_PASSWORD}

# DB_DATABASE=laravel
# DB_USERNAME=username
# DB_PASSWORD=password
# DB_ROOT_PASSWORD=my-secret-pw

# docker compose up -d
# docker container exec -it mysql mysql -uroot -p${DB_ROOT_PASSWORD} -e "CREATE USER '${DB_USERNAME}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
# docker container exec -it mysql mysql -uroot -p${DB_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${DB_DATABASE}.* TO '${DB_USERNAME}'@'%';"
# docker container exec -it mysql mysql -uroot -p${DB_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"