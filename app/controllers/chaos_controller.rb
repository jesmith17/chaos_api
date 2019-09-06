class ChaosController < ApplicationController


  # GET /chaos
  def index
    
    response = ChaosService.getResponse

    render  json: response.body, status: response.status
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
