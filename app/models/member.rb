class Member < ActiveRecord::Base
  has_and_belongs_to_many :attended_shows
  has_and_belongs_to_many :member_groups

  before_validation 'lowercase_email'

  # It's honestly not completely possible to validate this completely. A student could have
  # one email on one listserv and one email on another. Name can't be validated either because
  # two students could have the same name, or a student could have one name or one listserv and one on
  # another, e.g. "Anna Bloemer" and "Annie Bloemer"
  validates_uniqueness_of :email

  def lowercase_email
    self.email.downcase!
  end
end
