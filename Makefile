.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

all:
	make run
	sh wait_for_it.sh 'mysqladmin ping -h 127.0.0.1 -u root -proot' 'make initialize-database'

run:
	@docker-compose up

daemon:
	@docker-compose up -d

stop:
	@docker-compose down

initialize-database:
	@unzip -o test-database-employee/load_salaries.zip -d test-database-employee 
	@mysql -h 127.0.0.1 -u root < test-database-employee/employees.sql
	@mysql -h 127.0.0.1 -u root < test-database-employee/employees_schema_modification.sql

