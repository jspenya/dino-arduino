# dino_sample.rb
 
require 'dino'
 
  board = Dino::Board.new(Dino::TxRx.new)
  @led = Dino::Components::Led.new(pin: 13, board: board)
 
  def light_up
    [:on, :off].cycle do |switch|
      @led.send(switch)
      sleep 1
    end
  end

  light_up
  return nil
