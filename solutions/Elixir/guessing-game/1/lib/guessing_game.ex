defmodule GuessingGame do
  def compare(secret_number) do 
    compare(secret_number, :no_guess)
  end

  def compare(secret_number, guess) do
    # Please implement the compare/2 function
    cond do 
      guess == :no_guess -> "Make a guess"
      secret_number === guess -> "Correct"
      secret_number == guess + 1 -> "So close"
      secret_number == guess - 1 -> "So close"
      secret_number < guess   -> "Too high"
      secret_number > guess   -> "Too low"
    end
  end
end
