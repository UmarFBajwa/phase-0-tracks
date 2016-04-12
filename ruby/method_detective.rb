# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
# Description: Method inverts the capitalization of the characters
"iNvEsTiGaTiOn".swapcase
#The Culprit is Swapcase, a real gunslinger.

# "zom".<???>
# => “zoom”
# Description: Method adds an "o" to the string.
"zom".insert(2, 'o')
#The Culprit is Insert. Wild and reckless.

<<<<<<< HEAD
# “enhance”.<???>
#=> “    enhance    ”
# Description: If integer is greater than str length then adds padding accordingly to center str.
"enhance".center(15)
#Argument is 15
#Culprit is Center, a dangerous fool.


# “Stop! You’re under arrest!”.<???>
# => “STOP! YOU’RE UNDER ARREST!”
#Description: Capitalizes every character of the str.
"Stop! You're under arrest!".upcase!
#Culprit is Upcase.

# “the usual”.<???>
#=> “the usual suspects”
#Description: Method adds "suspects" to the original str.
"the usual".insert(9, ' suspects')
#Culprit is insert. However could also be Replaces.

#“ suspects”.<???>
#=> “the usual suspects”
#Description: Method adds "suspects" to the original str.
"suspects".insert(0, 'the usual ')
#Culprit is insert. However could also be Replaces.

# “The case of the disappearing last letter”.<???>
# => “The case of the disappearing last lette”
#Description: Method removes the last character of the str.
"The case of the disappearing last letter".chop
#Culprit is The Chop(meister). Could also be Delete or Slice.

# “The mystery of the missing first letter”.<???>
# => “he mystery of the missing first letter”
#Description: Method removes the first character of the str.
"The mystery of the missing first letter".delete "T"
#Culprit is The Chop(meister). Could also be Chop or Slice.

# “Elementary  ,    my   dear      Watson!”.<???>""
# => “Elementary, my dear Watson!”
#Description: Method removes white spaces.
"Elementary  ,    my   dear      Watson!".squeeze
#Culprit is Squeeze.
=======
# "enhance".<???>
# => "    enhance    "

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
>>>>>>> upstream/master

# "z".<???>
# => 122 
"z".ord
# (What is the significance of the number 122 in relation to the character z?)
#Gives the Integer ordinal that is associated with character Z.

<<<<<<< HEAD
#“How many times does the letter ‘a’ appear in this string?”.<???>
#Description: Checks the number of times "a" appears in the str.
"How many times does the letter 'a' appear in this string?".count "a"
#=> 4
#Culprit is Count.
=======
# "How many times does the letter 'a' appear in this string?".<???>
# => 4
>>>>>>> upstream/master
