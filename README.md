# Payload CMS v2 with Postgres Database

## Code-first Headless CMS that bridges the gap between CMS and application framework

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/B_KVXT?referralCode=1-iY_G)

The original project was created using `npx create-payload-app` and used the blank template.

## How to Use locally

- `yarn install` to install the needed dependencies
- Install and configure the [Railway CLI](https://docs.railway.app/develop/cli)
- `railway run yarn dev` will start up your application and reload on any changes - this will point to the database hosted in Railway
-  to create migration before committing your code `railway run yarn payload migrate:create`
