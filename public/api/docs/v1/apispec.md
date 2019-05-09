# Api docs demo

# Group Books


## Books [/books]


### Index [GET /api/v1/books]


+ Request returns all books
**GET**&nbsp;&nbsp;`/api/v1/books`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 1,
                "title": "A Time of Gifts",
                "description": "When a bug sees Chuck Norris, it flees screaming in terror, and then immediately self-destructs to avoid being roundhouse-kicked.",
                "authors": [
            
                ]
              },
              {
                "id": 2,
                "title": "A Handful of Dust",
                "description": "There is no Esc key on Chuck Norris' keyboard, because no one escapes Chuck Norris.",
                "authors": [
            
                ]
              },
              {
                "id": 3,
                "title": "Antic Hay",
                "description": "You don't disable the Chuck Norris plug-in, it disables you.",
                "authors": [
            
                ]
              },
              {
                "id": 4,
                "title": "Look Homeward, Angel",
                "description": "Chuck Norris doesn't use web standards as the web will conform to him.",
                "authors": [
            
                ]
              },
              {
                "id": 5,
                "title": "A Handful of Dust",
                "description": "When Chuck Norris gives a method an argument, the method loses.",
                "authors": [
            
                ]
              },
              {
                "id": 6,
                "title": "That Hideous Strength",
                "description": "Anonymous methods and anonymous types are really all called Chuck Norris. They just don't like to boast.",
                "authors": [
            
                ]
              },
              {
                "id": 7,
                "title": "In a Glass Darkly",
                "description": "When Chuck Norris presses Ctrl+Alt+Delete, worldwide computer restart is initiated.",
                "authors": [
            
                ]
              },
              {
                "id": 8,
                "title": "A Time to Kill",
                "description": "Anonymous methods and anonymous types are really all called Chuck Norris. They just don't like to boast.",
                "authors": [
            
                ]
              },
              {
                "id": 9,
                "title": "Gone with the Wind",
                "description": "Chuck Norris doesn't need a debugger, he just stares down the bug until the code confesses.",
                "authors": [
            
                ]
              },
              {
                "id": 10,
                "title": "The Mirror Crack'd from Side to Side",
                "description": "Chuck Norris went out of an infinite loop.",
                "authors": [
            
                ]
              }
            ]

### Show [GET /api/v1/books/{id}]

+ Parameters
    + id: `11` (number, required)

+ Request shows a book by id
**GET**&nbsp;&nbsp;`/api/v1/books/11`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 11,
              "title": "What's Become of Waring",
              "description": "For Chuck Norris, NP-Hard = O(1).",
              "authors": [
            
              ]
            }

### Destroy [DELETE /api/v1/books/{id}]

+ Parameters
    + id: `21` (number, required)

+ Request deletes a book by id
**DELETE**&nbsp;&nbsp;`/api/v1/books/21`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create [POST /api/v1/books]


+ Request creates a book
**POST**&nbsp;&nbsp;`/api/v1/books`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            book[title]=A+Darkling+Plain&book[destcription]=Chuck+Norris+doesn%27t+use+a+computer+because+a+computer+does+everything+slower+than+Chuck+Norris.

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 41,
              "title": "A Darkling Plain",
              "description": null,
              "authors": [
            
              ]
            }

### Update [PUT /api/v1/books/{id}]

+ Parameters
    + id: `44` (number, required)

+ Request updates a book by id
**PUT**&nbsp;&nbsp;`/api/v1/books/44`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            book[title]=POSTERN+OF+FATE

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 44,
              "title": "POSTERN OF FATE",
              "description": "Chuck Norris can access the DB from the UI.",
              "authors": [
            
              ]
            }
