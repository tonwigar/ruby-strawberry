class Document

    attr_accessor :title
    
    def generateDate
        "Wygenerowano " + Time.now.to_s
    end



end