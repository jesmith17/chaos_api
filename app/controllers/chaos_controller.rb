class ChaosController < ApplicationController


  # GET /chaos
  def index
    
    response = ChaosService.getResponse
    if response.format == 'json'
      render json: response.body, status: response.status
    elsif response.format == 'xml'
      render json: response.body, status: response.status
    else 
      render html: response.body, status: response.status
    end
    
  end

  # GET /chaos/1
  def show

  end

  # POST /chaos
  def create

  end

  # PATCH/PUT /chaos/1
  def update
  end

  # DELETE /chaos/1
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.

end
