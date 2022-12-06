require 'json'
require 'sinatra'

require_relative './app'

DOMAINS = JSON.parse(File.read('domains.json'))

run DomainsForYou
