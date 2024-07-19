# Fyle Backend Challenge

 


## Installation

1. Fork this repository to your github account
2. Clone the forked repository and proceed with steps mentioned below

### Install requirements

```
virtualenv env --python=python3.8
source env/bin/activate
pip install -r requirements.txt
```
### Reset DB

```
export FLASK_APP=core/server.py
rm core/store.sqlite3
flask db upgrade -d core/migrations/
```
### Start Server

```
bash run.sh
```
### Run Tests

```
pytest -vvv -s tests/

# for test coverage report
# pytest --cov
# open htmlcov/index.html
```

## Docker Setup
### Installation

 Clone the Repository
 ```bash
# Head over to the directory and type the following command
docker-compose run

### Run Test
```
#start the container 
# Enter into the container shell
docker exec -it <container name> sh

# For container name, use
docker ps

### Reset DB
```
export FLASK_APP=core/server.py
rm core/store.sqlite3
flask db upgrade -d core/migrations/
```
# Run tests
pytest -vvv -s tests/

# for test coverage report
pytest --cov
