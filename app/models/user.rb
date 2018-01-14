class User < ApplicationRecord
  include Clearance::User

  attr_accessor :terms

  enum user_type: {
    basic_user: 1,
    admin_user: 2,
    pending_user: 3,

  }

  validate :clicked_terms, :on => :create

  private

  def clicked_terms
    errors.add(:terms, "Accept to continue.") if terms.blank? or terms == "0"
  end

end
