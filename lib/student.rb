class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    @scores.sum.to_f/@scores.size.to_f
  end
end
