class MemberGroup < ActiveRecord::Base
  has_and_belongs_to_many :members
  has_many :attended_shows
  has_many :community_scores

  before_save :calculate_community_score
  before_update :calculate_community_score

  def self.make_csv(file, options = {})
    f = File.open(file.path, 'r')

    csv = CSV.generate(options) do |csv|
      csv << %w(Email Name)

      f.each_line do |line|
        words = line.split(' ')
        words = [ words[0], words[1..words.count - 1].join(' ') ]
        csv << words
      end
    end

    f.close

    csv
  end

  def self.make_text(file)
    f = File.open('file.txt', 'w+')

    CSV.foreach(file.path, headers: true) do |row|
      name = row['Name']
      email = row['Email']

      puts name
      puts "#{email} #{name}\n"

      f.write("#{email} #{name}\n")
    end

    f
  end

  def self.import(group_id, file)
    group = MemberGroup.find group_id

    CSV.foreach(file.path, headers: true) do |row|
      name = row['Name']
      email = row['Email']

      member = Member.find_by email: email.downcase
      member ||= Member.create(name: name, email: email)

      group.members.push(member) unless group.members.exists?(member)
    end
  end

  def calculate_community_score
    score = CommunityScore.find_by member_group: self, school_year: '2013-2014'
    group_count = self.members.count * 1.0 # To make sure it's not integer division
    total_percentage_attended = 0
    shows_attended = 33 # Need to remove hard-coding eventually

    AttendedShow.where(member_group: self).each do |show|
      if (!show.host_org.eql?(self.name))
        total_percentage_attended += show.members.count / group_count
      end
    end

    avg_percentage_attended = total_percentage_attended / shows_attended
    number_score = 0.66 * avg_percentage_attended + shows_attended

    if (score.nil?)
      self.community_scores.push(CommunityScore.create(member_group: self, school_year: '2013-2014', number_score: number_score))
    else
      score.number_score = number_score
    end
  end
end
