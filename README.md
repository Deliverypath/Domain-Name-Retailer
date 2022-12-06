# Domain Name Retailer

### On an inexpensive VPS, this deployment script with build a Ruby app with the Puma webserver to respond to website inquiries for listed domains. Domains are listed and solf on Afternic, but the stand alone website to support Afternic is managed by this tool. To add of remove domains (and prices), update the doamins JSON file.

## Setup

Install the latest Ruby version:

```bash
ruby -v
# if not 3.1.2
brew install ruby
```

Install required gems:

```bash
bundle
```

## Start App

```bash
rackup
```

## Usage

Valid domain:

```bash
curl localhost:9292 -H 'REFERRER: foo.com'
```

Invalid domain

```bash
curl localhost:9292 -H 'REFERRER: bar.com'
```
