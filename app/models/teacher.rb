class Teacher < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_many :students, through: :courses
  # has_and_belongs_to_many :students

  def top_student
    students.top # top scope defined in students
  end

  def say_hi
    "Hi, I am #{name} and I teach #{courses.count} courses"
  end
end
