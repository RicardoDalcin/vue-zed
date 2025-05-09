(attribute) @property
(directive_attribute) @property
(quoted_attribute_value) @string
(interpolation) @punctuation.special
(raw_text) @embedded

; This rule captures tag names starting with an uppercase for components
((tag_name) @type
 (#match? @type "^[A-Z]"))

((tag_name) @tag
 (#not-match? @tag "^[A-Z]"))

(directive_name) @keyword
(directive_argument) @constant

; Adjust the captures only for brackets, not entire tags
((start_tag "<" @punctuation.bracket)
 (end_tag "</" @punctuation.bracket)
 (self_closing_tag "<" @punctuation.bracket "/>")
 (self_closing_tag "/>" @punctuation.bracket))

