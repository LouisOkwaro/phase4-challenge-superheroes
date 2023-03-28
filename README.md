# Phase 4 Code Challenge: Superheroes
Learning Goals
Build an API using Rails.
Ruby version
version: 2.7.4 and newer!

# Requirements
For this project, we are expected to:

Create a Rails API backend. Have at least three resources (three DB tables).

# MODEL Deliverables and Relationships
Create the following relationships:

A Hero has many Powers through HeroPower
A Power has many Heros through HeroPower
A HeroPower belongs to a Hero and belongs to a Power


# Deployment Link
This link can be easily used to test the different routes/requests available to the API server. You can set it up in your environment by following the setup instructions below.

https://louis-superheroes.onrender.com

# Setup
In order to use this repository, you will require:

Operating System ( Linux, MacOS, Windows )

RAM >= 4GB

Free Space >= 2GB

Fork and clone the repository.
Ensure the ruby gems are setup in your machine
bundle install
Perform any pending database migrations and seed data
rails db:migrate db:seed

# Routes

GET /heroes
Return JSON data in the format below:

[  

{ "id": 1, "name": "Kamala Khan", "super_name": "Ms. Marvel" },  

{ "id": 2, "name": "Doreen Green", "super_name": "Squirrel Girl" },  

{ "id": 3, "name": "Gwen Stacy", "super_name": "Spider-Gwen" }

]
GET /heroes/:id
If the Hero exists, return JSON data in the format below:

{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
If the Hero does not exist, return the following JSON data, along with the appropriate HTTP status code:

{   "error": "Hero not found" }
GET /powers
Return JSON data in the format below:

[
  {
    "id": 1,
    "name": "super strength",
    "description": "gives the wielder super-human strengths"
  },
  {
    "id": 1,
    "name": "flight",
    "description": "gives the wielder the ability to fly through the skies at supersonic speed"
  }
]
 GET /powers/:id
If the Power exists, return JSON data in the format below:

{
  "id": 1,
  "name": "super strength",
  "description": "gives the wielder super-human strengths"
}
If the Power does not exist, return the following JSON data, along with the appropriate HTTP status code:

{
  "error": "Power not found"
}
PATCH /powers/:id
This route should update an existing Power. It should accept an object with the following properties in the body of the request:

{
  "description": "Updated description successfully."
}
If the Power exists and is updated successfully (passes validations), update its description and return JSON data in the format below:

{
  "id": 1,
  "name": "super strength",
  "description": "Updated description"
}
If the Power does not exist, return the following JSON data, along with the appropriate HTTP status code:

{
  "error": "Power not found"
}
If the Power is not updated successfully (does not pass validations), return the following JSON data, along with the appropriate HTTP status code:

{
  "errors": ["validation errors"]
}
POST /hero_powers
This route should create a new HeroPower that is associated with an existing Power and Hero. It should accept an object with the following properties in the body of the request:

{
  "strength": "Average",
  "power_id": 1,
  "hero_id": 3
}
If the HeroPower is created successfully, send back a response with the data related to the Hero:

{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
If the HeroPower is not created successfully, return the following JSON data, along with the appropriate HTTP status code:

{
  "errors": ["validation errors"]
}
# Authors
Louis Okwaro

License
ISC License (ISC)
License: ICL
