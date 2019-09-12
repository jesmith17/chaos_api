require 'rails_helper'

RSpec.describe ChaosController, type: :controller do
    describe "GET index" do
        it "NotFoundResponse" do
            expect(ChaosService).to receive(:getResponse).and_return(NotFoundResponse.new)
          get :index
          expect(response).to have_http_status(:not_found)
        end
        it "TimeoutResponse" do
            @timeout =  TimeoutResponse.new
            allow(@timeout).to receive(:body).and_return('If you see me, your timeouts are too long and you failed')
            expect(ChaosService).to receive(:getResponse).and_return(@timeout)
          get :index
          expect(response).to have_http_status(:request_timeout)
        end
    
        
      end

end
