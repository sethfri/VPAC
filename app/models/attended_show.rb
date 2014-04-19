class AttendedShow < ActiveRecord::Base
  has_and_belongs_to_many :members
  belongs_to :member_group

  def self.import(title, host_org, file)
    group_name = MemberGroup.find(host_org).name

    MemberGroup.all.each do |group|
      if (!group.name.eql?(group_name))
        show = AttendedShow.new(title: title, host_org: group_name, school_year: '2013-2014', member_group: group)

        CSV.foreach(file.path, headers: true) do |row|
          email = row['Campus Email']

          member = Member.find_by email: email.downcase
          member.attended_shows.push(show) unless member.nil? || !member.member_groups.exists?(group)
        end
      end
    end
  end
end
