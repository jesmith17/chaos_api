class SuccessResponse < ChaosResponse


def body
    return "This is a test of the emergency broadcast system"
end

def status
    return :created
end   
 


end
