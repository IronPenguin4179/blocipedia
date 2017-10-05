module WikisHelper
    def user_is_authorized_for_wikis?
        current_user.admin? || current_user.id == wiki.user_id
    end
end
