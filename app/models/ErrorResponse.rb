class ErrorResponse < ChaosResponse


    def format
        return json
    end
    
    def body
        raise ArgumentError, 'Something very bad happened'
    end
    
    def status
        return :internal_server_error
    end   
    



end