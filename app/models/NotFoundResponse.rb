class NotFoundResponse < ChaosResponse


    def format
        return json
    end
    
    def body
        return nil
    end
    
    def status
        return :not_found
    end   
    



end