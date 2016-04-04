Classroom = {
    Desks: {
        Bruce: 'empty',
        Clark: {
            Pencils: 6,
            Sheets: 100
        },
        Diana: [
            "Crap", 
            "More Crap"
        ]
    },
    Cubbies: {
        Top_row: 'empty',
        Middle_row: {
            total: 10,
            empty: 0
        },
    },
    Lecture_board: {
        Heading: 'Ruby',
        Topics_covered: []
    }
}

#Change what is in Bruce Wayne's desk to "Lots of Stuff"
Classroom[:Desks][:Bruce] = "Lots of Stuff"

puts Classroom[:Desks][:Bruce]

#Change topics covered to include "Nested Data Structures" and "Cool Stuff"

Classroom[:Lecture_board][:Topics_covered] = ["Nested Data Structures", "Cool Stuff"]

puts Classroom[:Lecture_board][:Topics_covered]

#Capitalize every character of "More Crap"
Classroom[:Desks][:Diana][1].upcase!

puts Classroom[:Desks][:Diana][1]