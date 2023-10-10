# Payload CMS v2 with Postgres Database


[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/B_KVXT?referralCode=1-iY_G)

The original project was created using `npx create-payload-app` and used the blank template.

## How to Use Locally with Remote Database
> Following these instructions will have the application pointing to the hosted Postgres database
- `yarn install` to install the needed dependencies
- Install and configure the [Railway CLI](https://docs.railway.app/develop/cli)
- `railway run yarn dev` will start up your application and reload on any changes. At this point changes in the schema will be automatically updated in the remote database
-  to create migration before committing your code `railway run yarn payload migrate:create`

## How to Use Locally with Local Database
- `yarn install` to install the needed dependencies
- Create your own local Postgres Database and update the `.env` file with the `DATABASE_URI`
- Set the other `.env` file variables
- `yarn dev` will start up your application and reload on any changes
- Payload will update the database schema locally so you will need to run `railway run yarn payload migrate:create` before committing to GitHub so the schema changes get committed. The deployment script will run the appropriate migrate command to push changes to the database


## Postgres Information
- https://www.postgresql.org/download/
### How To Create a Local Database

Open the terminal and run the command
```
sudo -u postgres psql
```

Create Database
```
CREATE DATABASE myproject;
```

Create User
```
CREATE USER myprojectuser WITH PASSWORD 'password';
```

The update the `.env` fila appropriately to point to correct server
