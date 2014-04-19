class MemberGroup < ActiveRecord::Base
  has_and_belongs_to_many :members
  has_many :attended_shows
  has_many :community_scores

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
end
