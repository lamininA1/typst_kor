--- breaking-distribute paged ---
#set page(width: 40pt)
#set text(breaking: (mode: "distribute"))
ThisIsALongWordThatShouldBreak

--- breaking-word-latin paged ---
#set page(width: 40pt)
#set text(breaking: (mode: "word"))
ThisIsALongWordThatShouldNotBreak

--- breaking-word-cjk paged ---
#set page(width: 40pt)
#set text(breaking: (mode: "word"))
한글은단어단위로줄바꿈

--- breaking-autospace-false paged ---
#set text(breaking: (autospace: false))
한글Latin

--- breaking-autospace-true paged ---
#set text(breaking: (autospace: true))
한글Latin
