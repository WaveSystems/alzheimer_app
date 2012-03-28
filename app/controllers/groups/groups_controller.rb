class Groups::GroupsController < ApplicationController
  before_filter :authenticate_user!
end
