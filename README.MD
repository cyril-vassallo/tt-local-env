# Documentation to start TaskiTeam projects on your local machine.

## Pull all those repositories in a same folder named **TaskiTeam**.
    git clone https://github.com/cyril-vassallo/tt-local-env
    git clone https://github.com/cyril-vassallo/tt-api-nest
    git clone https://github.com/cyril-vassallo/tt-app-next
    git clone https://github.com/cyril-vassallo/tt-app-angular

## Configure local environment variables.
Copy .env.local into .env for folders:
- tt-api-nest
- tt-app-next
- tt-app-angular

## Make sure you installed Docker and start it on your machine (or Docker Desktop).
- docker
- docker-compose

## Make sure you installed latest VsCode.
### Recommended optionals plugins for VsCode (TypeScript and more).
- Angular Language Service
- Docker
- ESLint
- Code Spell Checker
- json2ts
- Material icon Theme
- MongoDB for VS Code
- Move TS
- Path Intellisense
- Peacock
- Prettier - Code formatter
- Prettier EsLint
- Rainbow Tags
- SCSS Formatter
- TypeScript Extension Pack
- JavaScript and TypeScript
- TypeScript Hero
- TypeScript Importer
- TypeScript import Sorter
- Live Server
- Bootstrap5 snippets 


## Install MongoDB Compass (Or use MongoDB for VS Code Plugin).
- https://www.mongodb.com/products/compass 


## Db configuration:
You will probably need to create an empty mongodb named **taskiteam** to properly run the application. For instance no data are provided or reset by migration when installing

//TODO set a starting set off data.


## Start project:
 Next in each porject root folder you can use de commande **docker-compse up** to start container.
 
 Then go to - Angular front: *http://localhost:4200* and create your first user.

<br>

# Information

## Applications are exposed on:
- Nest api: *http://localhost:8080*
- Next front: *http://localhost:3000* (can start but in construction) 
- Angular front: *http://localhost:4200*
- MongoDb: *mongodb://localhost:27017* (connection string)




# Project daily auto start.

You can use this present folder makefile to daily auto start everything. Make sure you installed makefile interpreter in global on your machine:

    sudo apt install make  // (Linux with apt)
    brew install make // (MacOS with Homebrew)
    choco install make // (Windows with Chocolatey)

Once make is installed:

    cd  tt-local-env/

Now, depend if you want the app start on Angular, Next.js or both, execute one of the 3 commands.

## Commands:

---
    make start-next
- What is started?
    - Next
    - Nest
    - mongo
---
    make start-angular
- What is started?
    - Angular
    - Nest
    - Mongo
---	
    make start-all 
- What is started?
    - Angular
    - Next
    - Nest
    - Mongo

---

**Dealing with backend api only ?**

    make start-api
- What is started?
    - Nest
    - Mongo

<br/>
<br/>



## How it work for daily auto start project

The present **tt-local-env** directory is a simple repository containing a script to daily auto run projects using makefile, VsCode and Docker.

Depends of the command line you choose, it should open multiple VsCode windows with different colors and run inside each VsCode terminal the appropriate container running logs.
- Angular (Red)
- Next (Blue)
- Nest / Mongo (Green)

1) First the script is downing already launched containers to avoid container name duplication error when starting.

2) Then required VsCode folders are opened and a VsCode tasks saved in each folder run the docker-compose command:

        docker-compose up

3) To see well launched containers you can then use the Docker command:

        docker ps

Troubleshooting on the daily auto start:

- If container run failed in VsCode terminal, close all VsCode windows and re execute an initial **make** command to restart everything. 
- You can also individually destroy / run containers from each VsCode folder Terminals using commands:

        docker-compose down
        docker-compose up
