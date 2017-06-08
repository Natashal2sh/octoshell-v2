module MayMay
  module ControllerMethods
    def ability
      Ability.new(nil)
    end
  end
end

if defined? ActionController::Base
  ActionController::Base.send :include, MayMay::ControllerMethods
  ActionController::Base.helper_method :may?, :maynot?
  ActionController::Base.delegate :may?, :maynot?, :authorize!, :to => :ability
end
