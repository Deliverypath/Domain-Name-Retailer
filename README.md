# Domain Name Retailer

Using an inexpensive VPS, this deployment script will build a Ruby app with the Puma web server to respond to website inquiries for listed domains. Domains are listed and sold on Afternic, but this stand-alone website to support Afternic is managed by this tool. To edit the list of domains and their respective prices, update the domain JSON file.

### Dependencies

```
apt update -y && apt upgrade -y && apt install htop curl git build-essential libssl-dev zlib1g-dev -y

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 3.1.2 && rbenv global 3.1.2

ruby -v
```

### Installation



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
