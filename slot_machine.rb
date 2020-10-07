class SlotMachine
  OPTIONS = %w(cherry seven bell star joker)

  def score(reels)
    # we want a  collection of the options
    # check how unique the reels are
    if reels.uniq.length == 1
      # find the score
      index = OPTIONS.index(reels.first)
      (index + 1) * 10
    elsif reels.uniq.length == 2 && reels.include?('joker')
      index = OPTIONS.index(reels.sort[1])
      (index + 1) * 5
    else
      0
    end
  end
end
