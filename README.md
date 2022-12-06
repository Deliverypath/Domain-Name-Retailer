# Domains 4U

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
