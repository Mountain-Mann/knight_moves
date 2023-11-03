# frozen_string_literal: true

# # Genereates a knight
# class Knight
#   attr_reader :rank, :file, :board

#   def initialize
#     @rank = 0
#     @file = 0
#     start_position
#   end
# end

# # Generates a chessboard
# class Chessboard
#   attr_accessor :board, :rank, :file

#   def initialize
#     @board = Array.new(8) { Array.new(8) }
#     display_board
#     populate_board
#   end

#   def populate_board
#     # Populate the chessboard with one knight
#     Knight.new
#     puts '♞'
#   end

#   # Display the chessboard in the console
#   def display_board
#     # Display the chessboard with squares
#     8.times do |rank|
#       8.times do |file|
#         # Print the square at each position
#         # For example:
#         if (rank + file).even?
#           print '□ '
#         else
#           print '■ '
#         end
#       end
#       puts
#     end
#     populate_board
#   end
# end

# chessboard = Chessboard.new
# chessboard

# Generates a knight
class Knight
  attr_reader :rank, :file, :symbol

  def initialize
    @rank = 0
    @file = 0
    @symbol = '♞ '
    start_position
  end

  private

  def start_position
    @rank = rand(0..7)
    @file = rand(0..7)
  end
end

# Generates a chessboard
class Chessboard
  attr_accessor :board, :rank, :file

  def initialize
    @board = Array.new(8) { Array.new(8) }
    populate_board
  end

  def populate_board
    # Populate the chessboard with one knight
    knight = Knight.new
    @board[knight.rank][knight.file] = knight.symbol
  end

  # Display the chessboard in the console
  def display_board
    # Display the chessboard with squares
    # @board.each do |rank|
    #   rank.each do |file|
    #     # Print the square at each position
    #     # For example:
    #     if (rank + file).even?
    #       print file || '□ '
    #     else
    #       print file || '■ '
    #     end
    #   end
    #   puts
    # end

    # Display the contents of the board array
    @board.each do |row|
      row.each do |cell|
        print cell || '- '
      end
      puts
    end
  end
end

chessboard = Chessboard.new
chessboard.display_board
