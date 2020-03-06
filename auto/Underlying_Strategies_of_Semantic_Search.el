(TeX-add-style-hook
 "Underlying_Strategies_of_Semantic_Search"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("natbib" "round")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
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
    "sec:org4af23e6"
    "sec:orge11aae0"
    "sec:org352f73b"
    "sec:org2c35dc2"
    "sec:org001eca2"
    "sec:org3baebef"
    "sec:orga98a787"
    "sec:org9dc2b1a"
    "sec:org1b2d586"
    "sec:orge042878"
    "sec:org47ad16e"
    "sec:org9d51dc7"
    "sec:orge78dc8c"
    "sec:org9a89bb2"
    "sec:orgb71928e"
    "sec:org573194f"
    "sec:org578b7b1"
    "sec:org8b9c31a"
    "sec:org0fab3aa"
    "sec:orgc8af6e9")
   (LaTeX-add-bibliographies
    "references"))
 :latex)

