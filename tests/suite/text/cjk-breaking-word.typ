--- cjk-breaking-word paged ---
#set page(width: 100pt, margin: 0pt)
#set text(font: "Noto Serif CJK SC", size: 10pt)
#set par(justify: true)

// Basic text
#let text_content = "한글은 띄어쓰기가 있어도 글자 단위 줄바꿈이 가능합니다."

#text(cjk-breaking: "distribute")[
  #text_content
]

#text(cjk-breaking: "keep-all")[
  #text_content
]

#text(cjk-breaking: "word")[
  #text_content
]

// Test with Mixed CJK and Latin
#let mixed_content = "This is a sentence. 한글은 띄어쓰기가 있어도 글자 단위 줄바꿈이 가능합니다."

#text(cjk-breaking: "distribute")[
  #mixed_content
]

#text(cjk-breaking: "keep-all")[
  #mixed_content
]

#text(cjk-breaking: "word")[
  #mixed_content
]
