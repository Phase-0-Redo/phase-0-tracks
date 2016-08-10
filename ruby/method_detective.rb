# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
p "InVeStIgAtIoN"


p "zom".insert(1,'o')
p "zoom"

p "enhance".center(15, "    ")
p "enhance".ljust(11).rjust(15)
p "enhance".rjust(11).ljust(15)
p "enhance".insert(0,"    ").insert(-1, "    ")
p "enhance".prepend("    ") << "    "
p "    enhance    "

p "Stop! You’re under arrest!".upcase!
p "STOP! YOU’RE UNDER ARREST!"

p "the usual" << " suspects"
p "the usual".insert(-1, " suspects")
p "the usual".ljust(18, " suspects") 
p "the usual suspects"

p " suspects".insert(0, "the usual")
p " suspects".prepend("the usual")
p " suspects".rjust(18, "the usual")
p "the usual suspects"

p "The case of the disappearing last letter".chop
p "The case of the disappearing last letter"[0..38]
p "The case of the disappearing last letter"[-40..-2]
p "The case of the disappearing last letter".slice!(0..38)
p "The case of the disappearing last letter".slice!(-40..-2)
p "The case of the disappearing last lette"

p "The mystery of the missing first letter".delete("T")
p "The mystery of the missing first letter"[1..38]
p "The mystery of the missing first letter"[-38..-1]
p "The mystery of the missing first letter".slice!(-38..-1)
p "The mystery of the missing first letter".slice!(1..38)
p "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze
p "Elementary,    my   dear        Watson!".squeeze(" ")
p "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4