class ChaosService



@responses = [SuccessResponse, UnauthorizedResponse, SlowResponse,ErrorResponse, LargePayloadResponse, TimeoutResponse,XMLDataResponse]


def self.getResponse
  i = rand(@responses.size)
  target = @responses[i-1]
  return target.new

end

 




















end
