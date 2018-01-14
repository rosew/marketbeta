class User < ApplicationRecord
  include Clearance::User

  enum user_type: {
    basic_user: 1,
    admin_user: 2,
    pending_user: 3,

  }

end
