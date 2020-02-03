class Question

  def new_question
    add_or_sub = Random.new.rand(0..1)
    number_1 = Random.new.rand(1..20)
    number_2 = Random.new.rand(1..20)

    if (add_or_sub == 0)
      @answer = number_1 - number_2
    else
      @answer = number_1 + number_2
    end

    "What does #{number_1} #{add_or_sub == 0 ? "minus" : "plus"} #{number_2} equal?"
  end

  def ans_question(ans)
    @answer === ans.to_i
  end

end
