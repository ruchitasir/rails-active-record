class Student < ApplicationRecord
  belongs_to :course
  has_one :teacher, through: :course
  # has_and_belongs_to_many :teachers

  def self.top
    order(grade: :desc).first
  end

  def peers
    course.students
  end

  def say_hi
    "Hi, I am #{name} and I am #{age} years old"
  end
end
