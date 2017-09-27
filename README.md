# Event Manager API

Event Manager API developed in RoR API and PostgreSQL.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them

```
Ruby 2.4.1
Bundler
PostgreSQL >= 9.6.5
```

### Installing

A step by step series of examples that tell you have to get a development env running

```
git clone git@github.com:Event-Manager/event-manager-api.git
```

Create an user on PostgreSQL with name `event` and password `event12345`

Make sure that PostgreSQL is running.

If you are setting up your PostgreSQL from scratch you need to create a database for your sudo user.
```
createdb `whoami`
```

Creates the event user on PostgreSQL
```
createuser -s event
```

Access PostgreSQL to setup the password
```
psql
```

Creates a password for event user
```
\password event
```

Quit PostgreSQL
```
\q
```

Install project dependencies
```
bundle install
```

```
cp config/database.yml.example config/database.yml
```

```
cp config/secrets.yml.example config/secrets.yml
```

Creates database structure
```
rails db:create db:schema:load
```

```
rails s
```

Access localhost:3000 and check Rails hello world page

## Running the tests

```
rails test
```

## Authors

* **Andrey Leonardo** - [andreyleonardo](https://github.com/andreyleonardo)
* **Thiago Penido** - [thiago-penido](https://github.com/thiago-penido)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
