require 'json'
require 'open-uri'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :confirmation ]
  def home
    # url = 'http://zipcloud.ibsnet.co.jp/api/search?zipcode=2160007'
    # data = open(url).read
    # results = JSON.parse(data)
    # @addresses = results['results']
  end

  def about
  end

  def confirmation
  end
end
