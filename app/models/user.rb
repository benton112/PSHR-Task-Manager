class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :tasks
  has_many :notes

  has_many :from_messages, :class_name => 'Message', :foreign_key => 'from_id'
  has_many :to_messages, :class_name => 'Message', :foreign_key => 'to_id'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def contactList
  ids = Message.where("from_id = ? or to_id = ?", self.id,self.id).order("created_at").select("distinct to_id,from_id").map{|a|[a.to_id,a.from_id]}.flatten
    ids.uniq!
    ids-=[self.id]
   return User.find(ids)
  end

end
