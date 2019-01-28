class Doc::HomesController < ApplicationController

  def index
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)

    if @home.save
      redirect_to doc_homes_url, notice: 'Home was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @home.update(home_params)
      redirect_to doc_homes_url, notice: 'Home was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @home.destroy
    redirect_to doc_homes_url, notice: 'Home was successfully destroyed.'
  end

  private
  def set_home
    @home = Home.find(params[:id])
  end

  def home_params
    params.fetch(:home, {}).permit(
    )
  end

end
