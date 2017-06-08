module MayMay
  class Ability
    def initialize(user)
      @abilities = {}
      @user = user
    end
    
    def self.reset!
      @abilities = {}
    end
    
    def may?(action, subject, object = nil)
      unless @abilities.has_key?(subject)
        raise UndefinedAbility.new(action, subject)
      end
      actions = @abilities[subject].find_all { |a| a[1] == action }
      actions.all? do |a|
        a[0] == !!(!a[2] || a[2].call(@user, object))
      end
    end
    
    def maynot?(action, subject, object = nil)
      !may?(action, subject, object)
    end
    
    def may(action, subject, &block)
      @abilities[subject] ||= []
      @abilities[subject] << [true, action, block]
      nil
    end
    
    def maynot(action, subject, &block)
      @abilities[subject] ||= []
      @abilities[subject] << [false, action, block]
      nil
    end
    
    def authorize!(*args)
      if maynot?(*args)
        raise Unauthorized
      end
    end
  end
end
