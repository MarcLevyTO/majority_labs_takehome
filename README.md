# Majority Labs Take Home

## Install

- Install Ruby on Rails and Postgresql - https://gorails.com/setup/osx/10.15-catalina
- rake db:create
- rake db:migrate
- brew install redis
- redis-server
- bundle install
- rails s

## Use of Redis as a Caching Layer

I used Redis to cache the user in a private callback in the Users controller.
The logic being if the user is cached in memory, it can prevent doing a DB lookup.
The user is saved to cache on creation and upon lookup.

## Available Endpoints

### GET /users

- Get list of all users

### GET /users/:id

- Get info on 1 user

### POST /users

- Body Example

```
{
	"user": {
		"username": "username",
		"password": "password",
		"password_confirmation": "password"
	}
}
```

### PUT /users/:id

- Update a user
- Note: Not tested at all, future consideration

### DELETE /users/:id

- Archive a user

### POST /login

- Login user

- Body Example

```
{
	"username": "username",
	"password": "password"
}
```

### GET /auto_login

- Test use of JWT token to retrieve user
