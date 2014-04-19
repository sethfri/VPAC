class AttendedShow < ActiveRecord::Base
  has_and_belongs_to_many :members
  belongs_to :member_group

  def self.import(title, host_org, file)
    show = AttendedShow.create(title: title, host_org: host_org, school_year: '2013-2014')

    CSV.foreach(file.path, headers: true) do |row|
      email = row['Campus Email']

      member = Member.find_by email: email.downcase
      show.members.push(member) unless member.nil?
    end
  end
end
