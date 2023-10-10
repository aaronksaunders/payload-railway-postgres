# Payload CMS v2 with PostgreSQL Database


[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/B_KVXT?referralCode=1-iY_G)

The original project was created using `npx create-payload-app` and used the blank template.

## How to Use Locally with Remote PostgreSQL Database
> Following these instructions will have the application pointing to the hosted PostgreSQL database
- `yarn install` to install the needed dependencies
- Install and configure the [Railway CLI](https://docs.railway.app/develop/cli)
- `railway run yarn dev` will start up your application and reload on any changes. At this point changes in the schema will be automatically updated in the remote PostgreSQL database
-  to create migration before committing your code `railway run yarn payload migrate:create`

## How to Use Locally with Local PostgreSQL Database
- `yarn install` to install the needed dependencies
- Create your own local Postgres Database and update the `.env` file with the `DATABASE_URI`
- Set the other `.env` file variables
- `yarn dev` will start up your application and reload on any changes
- Payload will update the database schema locally so you will need to run `railway run yarn payload migrate:create` before committing to GitHub so the schema changes get committed. The deployment script will run the appropriate migrate command to push changes to the database


## PostgreSQL Information
- https://www.postgresql.org/download/
### How To Create a Local PostgreSQL Database

Open the terminal and run the command
```
sudo -u postgres psql
```

Create PostgreSQL Database
```
CREATE DATABASE myproject;
```

Create User
```
CREATE USER myprojectuser WITH PASSWORD 'password';
```

Update the `.env` file variable `DATABASE_URI` appropriately to point to the correct server
