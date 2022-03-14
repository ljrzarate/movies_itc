# README

### Movies endpoints

To run it locally:

* rake db:create
* rake db:migrate
* rake db:seed


### Registered Users
* email: "test1@mail.com", password: "Password!"
* email: "test2@mail.com", password: "Password!"

### List of endpoints

Login:
url: `/api/registered_users/login`
params: `{"email": "test1@mail.com", "password": "Password!"}`

## Movies:
* Create a movie:
  
  url: `POST /api/movies`
  params:   
  ```
  {
    "title": "nueva movie by Brat 2",
    "release_year": "1991-08-08",
    "actors_attributes": [],
    "directors_attributes": [],
    "producers_attributes": [
        {
            "first_name": "Brat",
            "last_name": "Pit"
        }
    ]
  }

* Get a movie
  ```
  url: `GET /api/movies/:id`

* Update a movie
  ```
  url: `PATCH /api/movies/:id`
  url: `PUT   /api/movies/:id`
  params:

  {
    "title": "nueva movie by Brat 2",
    "release_year": "1991-08-08",
    "actors_attributes": [],
    "directors_attributes": [],
    "producers_attributes": [
        {
            "first_name": "Brat",
            "last_name": "Pit"
        }
    ]
  }

* Deletes a movie
url: `DELETE /api/movies/:id`

## Persons:
* Create a person:
  url: `POST /api/persons`
  params:   
  ```
  {
    "first_name": "Pepito",
    "last_name": "Perez"
  }

* Get a person
  url: `GET /api/persons/:id`

* Update a person
  url: `PATCH /api/persons/:id`
  url: `PUT   /api/persons/:id`
  params:
  ```
  {
    "first_name": "Fulanito",
    "last_name": "DeTal"
  }

* Deletes a person
url: `DELETE /api/persons/:id`


### Notes
All endpoint for GET request do not need `Bearer <token>` in the Authorization Header.
For POST, PUT, PATCH, DELETE you will need to login get the token and send it as Authorization Header.

