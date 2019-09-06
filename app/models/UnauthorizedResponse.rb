class UnauthorizedResponse < ChaosResponse


def format
    return json
end

def body
    return "You do not have access to this"
end

def status
    return :unauthorized
end   
 


end
