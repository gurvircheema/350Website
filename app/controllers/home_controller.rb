class HomeController < ApplicationController

def index
  @properties = Property.limit(5).order('id desc')
end

def about
end

def contact
end

end
