class SuccessResponse < ChaosResponse


def format
    return json
end

def body
    return "This is a test of the emergency broadcast system"
end

def status
    return :created
end   
 


end
