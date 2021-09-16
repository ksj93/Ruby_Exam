
class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
    input_hand = gets.to_i
    puts input_hand
    while true
      if input_hand == 0 || input_hand ==1 || input_hand ==2
        player_hand = input_hand
        return player_hand
      else
        puts "0〜2の数字を入力してください。"
        return hand
      end
    end
  end
end
class Enemy
  def hand
    enemy_hand=rand(2)
  end
end
class Janken
  def pon(player_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    puts "あなたの手は#{janken[player_hand]}です。"
    puts "相手の手は#{janken[enemy_hand]}です。"
    win_lose_judge = (player_hand - enemy_hand + 3)%3
    if win_lose_judge==0
      puts "あいこ"
      true
    elsif win_lose_judge ==2
      puts "あなたの勝ちです"
      false
    else
      puts "あなたの負けです"
      false
    end
  end
end
class GameStart
  def self.jankenpon
    player = Player.new
    enemy = Enemy.new
    janken = Janken.new
    next_game = true
    while next_game
      next_game = janken.pon(player.hand, enemy.hand)
    end
  end
end
GameStart.jankenpon
