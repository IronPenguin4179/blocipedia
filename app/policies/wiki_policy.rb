class WikiPolicy
    attr_reader :current_user, :model
    
    def initialize(current_user, model)
        @current_user = current_user
        @user = model
    end
    
    def index?
    end
    
    def show?
    end
    
    def update?
        @current_user.admin? || @current_user == @user
    end
    
    def destroy?
        @current_user.admin? || @current_user == @user
    end
    
end