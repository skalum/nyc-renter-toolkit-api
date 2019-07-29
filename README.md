# NYC Renter Toolkit application

## Install

### Clone the repository

```shell
git clone git@github.com:skalum/nyc-renter-toolkit-api.git
cd nyc-renter-toolkit-api
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.3
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler)

```shell
bundle
```

### Initialize the database

```shell
rails db:create db:migrate
```

## Serve

```shell
rails s -p 3001
```
