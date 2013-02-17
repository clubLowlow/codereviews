class CodeReview
  include Mongoid::Document

  #constants
  OPEN = 1
  IN_PROGRESS = 2
  COMPLETED = 3

  attr_accessible :id, :name, :comments, :reviewer, :reviewee, :status, :created_at, :accepted_at, :completed_at

  field :id,                :type => Integer
  field :name,              :type => String, :default => ""
  field :comments,          :type => String
  field :reviewer
  field :reviewee
  field :status,            :type => Integer
  field :created_at,        :type => Time
  field :accepted_at,       :type => Time
  field :completed_at,      :type => Time

  belongs_to :user, polymorphic: true

  #validations
  validates_presence_of :name
  validates_uniqueness_of :name

end
