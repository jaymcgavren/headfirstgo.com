class AskMeAnything
  def method_missing(method_name, arg1, arg2)
    "You called #{method_name.to_s} with #{arg1} and #{arg2}."
  end
end

object = AskMeAnything.new
p object.with_args(127.6, "hello")
