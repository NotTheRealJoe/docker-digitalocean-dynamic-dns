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

## IPv6

With the included configuration, the container will fail to run if your host does not have IPv6 addressing available. If you want to run without IPv6:

- Set `networks.default.enable_ipv6` to `false` in the docker-compose.yml
- Remove any entries that update an AAAA record in run.sh

## Credits

The PHP script was originally written by Github user [bensquire](https://github.com/bensquire) who wrote in the original readme that it was based on a Python v2 script from http://pushingkarma.com/notebook/dynamic-dns-your-home-pc-using-digitaloceans-api \[[archived](http://web.archive.org/web/20150219032808/http://pushingkarma.com/notebook/dynamic-dns-your-home-pc-using-digitaloceans-api/)\].

Please see the original repository: https://github.com/bensquire/Digital-Ocean-Dynamic-DNS-Updater

bensquire's work was licensed under the Apache License 2.0. The extensions and modifications to his work in this repo are licensed under the GPLv3, see the LICENSE file for details. The last version of the code in this repo available under Apache License 2.0 is commit
`7e3b9284e7e6e06c8ba76486b2c6ded8571acb5f`.
