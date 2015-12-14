require 'prototypical/controller'

class HomeController < ApplicationController
  include Prototypical::Controller

  before_action :enable_prototyping
end