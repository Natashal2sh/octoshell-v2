module MayMay
  class UndefinedAbility < StandardError
    TEMPLATE = "There are no action %s for %s"
    
    def initialize(action, subject)
      message = TEMPLATE % [action, subject].map(&:inspect)
      super(message)
    end
  end
  
  class Unauthorized < StandardError
  end
end
