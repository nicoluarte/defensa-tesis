(TeX-add-style-hook
 "Underlying_Strategies_of_Semantic_Search"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("natbib" "round")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref"
    "natbib"
    "geometry"
    "helvet")
   (LaTeX-add-labels
    "sec:orgab4e33d"
    "sec:org9582f6a"
    "sec:org0993aa0"
    "sec:org9e44a65"
    "sec:org73b43ae"
    "sec:orgad61c1d"
    "sec:org304827d"
    "sec:orga96d8d6"
    "sec:org6cc66f8"
    "sec:org3292c49"
    "sec:org7185ddf"
    "sec:org7029d48"
    "sec:orgdc55109"
    "sec:org626560d"
    "sec:org3eb5538"
    "sec:org0b316dd"
    "sec:org8498970"
    "sec:org8044340"
    "sec:org8b1ed37"
    "sec:org3196b27"
    "sec:org8db3261"
    "sec:org6e1b815"
    "sec:orge2fd6c0"
    "sec:orgb0b5b54"
    "sec:org0cb1839"
    "sec:orgcf17438"
    "sec:orga8392a9"
    "sec:org57a64f5"
    "sec:org9bad9a7"
    "sec:org0af76b7"
    "sec:org26fa7c9"
    "sec:orgbe6015a"
    "sec:org77a5bd1")
   (LaTeX-add-bibliographies
    "references"))
 :latex)

