// Test cjk-breaking property.
// Ref: https://github.com/typst/typst/issues/new

--- text-cjk-breaking-chinese paged ---
#set page(width: auto)
// Use generic fallback or default fonts.
#set text(size: 10pt)

// A long CJK word (4 characters).
#let word = "这是一句话"

// With distribute, it should break at any character.
// Width is enough for 2 chars.
#let t-distribute = text(cjk-breaking: "distribute", word)
#let box-distribute = box(width: 2.5em, t-distribute, stroke: 1pt)

// With keep-all, it should NOT break inside the word.
#let t-keep-all = text(cjk-breaking: "keep-all", word)
#let box-keep-all = box(width: 2.5em, t-keep-all, stroke: 1pt)

#context {
  let m-distribute = measure(t-distribute, width: 2.5em)
  let m-keep-all = measure(t-keep-all, width: 2.5em)

  assert(m-distribute.height > m-keep-all.height, message: "Distribute should result in taller text due to wrapping")
}

Distribute: #box-distribute \
Keep-all: #box-keep-all

--- text-cjk-breaking-hangul paged ---
#set page(width: auto)
// Test with Hangul
#set text(size: 10pt)

#let hangul = "한글테스트" // 5 chars

#let h-distribute = text(cjk-breaking: "distribute", hangul)
#let h-keep-all = text(cjk-breaking: "keep-all", hangul)

#let width = 2.5em
#let box-distribute = box(width: width, h-distribute, stroke: 1pt)
#let box-keep-all = box(width: width, h-keep-all, stroke: 1pt)


#context {
  let m-distribute = measure(h-distribute, width: width)
  let m-keep-all = measure(h-keep-all, width: width)

  assert(m-distribute.height > m-keep-all.height, message: "Hangul Distribute should wrap")
}

Distribute: #box-distribute \
Keep-all: #box-keep-all
