desc "Play rock in rock-paper-scissors"

computer_plays = ["rock", "paper","scissors"]
task :play_rock do
  ap("We Played Rock")

  computer_move = computer_plays.sample

  ap("The Computer played " + computer_move.titlecase)

  if computer_move == "rock"
    ap("We Tied.")
  elsif computer_move == "paper"
    ap("We Lose.")
  else
    ap("We Win!")
  end
end

desc "Play paper in rock-paper-scissors"
task :play_paper do
  ap("We Played Paper")

  computer_move = computer_plays.sample

  ap("The Computer played " + computer_move.titlecase)

  if computer_move == "rock"
    ap("We Win!")
  elsif computer_move == "paper"
    ap("We Tie.")
  else
    ap("We Lose.")
  end
end

desc "Play scissors in rock-paper-scissors"
task :play_scissors do
  ap("We Played Scissors")

  computer_move = computer_plays.sample

  ap("The Computer played " + computer_move.titlecase)

  if computer_move == "rock"
    ap("We Lose.")
  elsif computer_move == "paper"
    ap("We Win!")
  else
    ap("We Tie.")
  end
end
