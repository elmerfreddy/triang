class MatchesController < ApplicationController
  respond_to :json, :html

  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(params[:match])
    if @match.save
      flash[:notice] = 'Match was successfully created.'
    end
    respond_with @match, location: matches_url
  end

  def edit
    @match = Match.find(params[:id])
    respond_with @match
  end

  def update
    @match = Match.find(params[:id])
    if @match.update_attributes(params[:match])
      flash[:notice] = 'Match was successfully updated.'
    end
    respond_with @match, location: matches_url
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    respond_with @match, location: matches_url
  end
end