require_relative './app/controllers/application_controller'
require_relative './app/controllers/registrations_controller'
require_relative './app/controllers/users_controller'



use UsersController
use RegistrationsController
run ApplicationController
