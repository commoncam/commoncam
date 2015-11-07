class CamerasController < ApplicationController
  before_action :set_camera, only: [:show, :edit, :update, :destroy]

  # GET /cameras
  def index
    @cameras = Camera.all
  end

  # GET /cameras/1
  def show
    @camera = Camera.find(params[:id])
  end

  # GET /cameras/new
  def new
    @camera = Camera.new
  end

  # GET /cameras/1/edit
  def edit
  end

  # POST /cameras
  def create
    @camera = Camera.new(camera_params)

    if @camera.save
      redirect_to @camera, notice: 'Camera was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cameras/1
  def update
    if @camera.update(camera_params)
      redirect_to @camera, notice: 'Camera was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cameras/1
  def destroy
    @camera.destroy
    redirect_to cameras_url, notice: 'Camera was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camera
      @camera = Camera.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def camera_params
      params.require(:camera).permit(:camera_number)
    end
end
