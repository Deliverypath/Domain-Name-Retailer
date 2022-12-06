# Domain Name Retailer

Using an inexpensive VPS, this deployment script will build a Ruby app with the Puma web server to respond to website inquiries for listed domains. Domains are listed and sold on Afternic, but this stand-alone website to support Afternic is managed by this tool. To edit the list of domains and their respective prices, update the domain JSON file.

### Installation

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
