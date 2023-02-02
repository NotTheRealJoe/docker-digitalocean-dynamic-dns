# docker-digitalocean-dynamic-dns

docker-compose configuration for a PHP script that updates DigitalOcean DNS records on a crontab

## Setup

1. Copy `run.sh.example` to `run.sh`
2. Edit `run.sh`:
   - Set DOMAIN to the base domain name that should be affected
   - Set HOST to the hostname (subdomain) that should be affected
   - Set DO_API_KEY to a DigitalOcean API key for the account that hosts the DNS for the desired domain name

## Get DigitalOcean API key

If you don't already have an API key for the steps above, get it from the DigitalOcean management console here:

1. Select "API" at the bottom of the left column
2. Select the "Tokens" tab. The type of token we will use is a **Personal access token**.
3. Click "Generate New Token".
