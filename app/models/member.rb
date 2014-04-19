class Member < ActiveRecord::Base
  has_and_belongs_to_many :attended_shows

  def self.import(title, host_org, file)
    show = AttendedShow.create(title: title, host_org: host_org, school_year: '2013-2014')

    CSV.foreach(file.path, headers: true) do |row|
      name = row['First Name'] + row['Last Name']
      email = row['Campus Email']

      member = Member.find_by name: name, email: email
      show.members.insert(show.members.count, member) unless member.nil?
    end
  end
end
