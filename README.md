# RUN LARAVEL PROJECT USING DOCKER IN LOCAL ENVIRONMENT

Create a local environment for implementing a Laravel project using a simple Docker compose file.

## Getting Started

Here's how to run a laravel project using docker container in windows 10 with WSL.

### Prerequisites


In order to run this container you'll need docker installed.

* [Linux](https://docs.docker.com/linux/started/)
* [Windows](https://docs.docker.com/windows/started) with [WSL](https://docs.microsoft.com/en-us/windows/wsl)

#### Preparation of prerequisites

* First clone this repository into your local working directory. 
* Then change the ```.env.sample``` file to ```.env```.
* Completely remove ```.gitignore``` file in ```src``` directory.
* Now put your laravel project in the src folder as shown below.

```
📦docker-laravel
 ┣ 📂.git
 ┣ 📂mysql
 ┣ 📂php
 ┣ 📂src
 ┃ ┣ 📂app
 ┃ ┣ 📂bootstrap
 ┃ ┣ 📂config
 ┃ ┣ 📂database
 ┃ ┣ 📂public
```

* Use the same credentials for your laravel project ```.env``` file and the ```docker-larval``` directory ```.env``` file.

```
DB_HOST=mysql  // choose any simple name without the white characters
DB_DATABASE=laravel
DB_USERNAME=username
DB_PASSWORD=password
DB_ROOT_PASSWORD=my-secret-pw
```

* Redirect to the ```docker-larvel``` folder and execute the following command on the terminal.

```
docker compose up -d
```

#### That's it, now you can run your laravel project in port 8080

* Also you can execute the composer and artisan command as follows.

>`http://localhost:8080/`

```
docker exec -it backend composer update
docker exec -it backend php artisan migrate
```

## Other

* If you are using a laravel git repository, now remove the ```.git``` folder from the ```docker-laravel``` directory.

## Author

* **[Ashen Udithamal](https://www.linkedin.com/in/ashenud/)** 
