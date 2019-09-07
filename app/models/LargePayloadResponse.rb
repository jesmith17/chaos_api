class LargePayloadResponse < ChaosResponse


    def format
        return json
    end
    
    def body
        response = []
        for i in 1..100000 do
            response.push({body: 'This is a test', msg:'Welcome to the Chaos API', value: i*1234.56})
          end
        return response
    end
    
    def status
        return :created
    end   
    



end