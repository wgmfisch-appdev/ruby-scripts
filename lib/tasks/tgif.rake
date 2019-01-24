desc "Check if today is Friday"
task :tgif do
  if Date.today.friday? # || 0 == 0 # To test if it's Friday when it's not.
    ap("Yay, it's Friday!")
  else
    ap("Alas, not yet.")
  end
end
