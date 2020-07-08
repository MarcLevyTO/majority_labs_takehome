class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  validates :password, presence: true

  # Hide password from results
  def as_json(options = {})
    super(options.merge({ except: [:password_digest] }))
  end

end
