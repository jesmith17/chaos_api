class TimeoutResponse < ChaosResponse

    def body

        sleep(5.minutes)
        return "If you see me, your timeouts are too long and you failed"
    end

    def status 
        return :request_timeout
    end
end