class XMLDataResponse < ChaosResponse


    def format
        return json
    end
    
    def body

        builder = Nokogiri::XML::Builder.new do |xml|
            xml.root {
                for i in 1..100 do
                    xml.msg {
                        xml.id_ i
                        xml.body "This is XML as JSON, fun huh"
                        xml.msg "Your parser should break when trying to read through this."
                    }
                end
            }
        end
        return builder.to_xml
    end
    
    def status
        return :created
    end   
    



end