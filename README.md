# README

### Movies endpoints

To run it locally:

* rake db:create
* rake db:migrate
* rake db:seed
* rails s


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

You can fin a POSTMAN Collection in the root of the project under the name: `Movie-ItCrowd.postman_collection.json`


### List of used libraries/frameworks:
1. Rails
2. Jbuilder
3. Devise
4. Devise JWT
5. friendly_id
6. pry

### Justification of chosen libraries/frameworks:
Jbuilder: comes by default with the Rails framework and it is easy and scalable in its use

Devise: Well known in the Ruby and Rails comunity with a lot of intefaces with some other gems (maybe overkill for this app)

Devise JWT: Well integrated in the generation of JSON Web Token and pretty standard in the comunity as well

friendly_id: Well known in the comunity to managed slugs and really simple in its implementation

Pry: Really good to debug, well known in the comunity.