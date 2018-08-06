require 'json'
require 'open-uri'

class PagesController < ApplicationController
  def home
    url = 'http://zipcloud.ibsnet.co.jp/api/search?zipcode=2160007'
    data = open(url).read
    results = JSON.parse(data)
    @addresses = results['results']
  end
end
