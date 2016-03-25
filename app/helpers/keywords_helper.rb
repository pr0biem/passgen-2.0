module KeywordsHelper
  require 'securerandom'
  def true_rand(x)
    num = SecureRandom.random_number(x)
    until num != 0 
      num = SecureRandom.random_number(x)
    end
    return num
  end

  def roll_5_dice
    @roll = ""
    5.times do
      @roll << true_rand(6).to_s
    end
    @roll.to_i
  end

  def roll_3_dice
    @roll = ""
    3.times do
      @roll << true_rand(6).to_s
    end
    @roll.to_i
  end

  def generate
    separator = params[:separator]
    pass_length = params[:length_of_password].to_i
    if params[:l_or_w] == 'Words'
      if separator.length <= 3 && separator.length >= 0
        if pass_length <= 13 && pass_length > 0
          count = 0
          @display = ""
          until count == pass_length
            roll_5_dice
            @display << @keyword.find(@roll).value + separator
            count += 1
          end
        else
          @display = "Minumum of 1 and maximum of 13 words allowed."
        end
      else
        @display = "Your separator must be 3 characters or less"
      end
    elsif params[:l_or_w] == 'Letters'
      if separator.length <= 3 && separator.length >= 0
        if pass_length <= 25 && pass_length > 0
          count = 0
          @display = ""
          until count == pass_length
            roll_3_dice
            @display << @keyword.find(@roll).value + separator
            count += 1
          end
        else
          @display = "Minumum of 1 and maximum of 25 letters allowed."
        end
      else
        @display = "Your separator must be 3 characters or less"
      end
    end
    return @display
  end

end
