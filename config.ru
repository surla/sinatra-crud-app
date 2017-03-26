
require_relative './config/environment'


use Rack::MethodOverride
use RegistrationsController
use UsersController
run ApplicationController
