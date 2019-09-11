class NotFoundResponse < ChaosResponse


    def body
        return nil
    end
    
    def status
        return :not_found
    end   
    



end