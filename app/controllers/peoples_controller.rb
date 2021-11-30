class PeoplesController < ApplicationController
  def index
    initialize_concern(index_peoples_interactor)
    render_result
  end
  
  private
  def index_peoples_interactor
    PeopleInteractor::Index.call
  end
end







