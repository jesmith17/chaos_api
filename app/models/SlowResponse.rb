class SlowResponse < ChaosResponse




    def body

        sleep(45.seconds)
        return "I take way to damn much time"
    end
end