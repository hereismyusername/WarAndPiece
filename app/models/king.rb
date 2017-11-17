# Logic for King piece
class King < Piece
  # file and rank where piece is trying to move
  def valid_move?(new_file, new_rank)
    return 'Not Valid' unless super(new_file, new_rank) == true
    # checks to make sure move is not greater than 1
    if (new_file - file).abs <= 1 && (new_rank - rank).abs <= 1
      true
    else
      'Not Valid'
    end
  end
end