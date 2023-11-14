# https://github.com/lazaronixon/authentication-zero/issues/72

module ActionDispatch::Routing
  class Mapper
    def with_admin_auth(&)
      constraints(
        lambda { |request|
          if session = Session.find_by_id(request.cookie_jar.signed[:session_token])
            session.user.admin?
          else
            false
          end
        },
        &
      )
    end
  end
end
