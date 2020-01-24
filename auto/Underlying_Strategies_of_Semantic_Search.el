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
    "sec:orgc9a122a"
    "sec:org9b45df7"
    "sec:orgf51ec8b"
    "sec:orgb7e0a54"
    "sec:orga78922a"
    "sec:org5a7db3e"
    "sec:org2341ec4"
    "sec:orgc235d9e"
    "sec:org2ee09c3"
    "sec:orge7a6878"
    "sec:org4176170"
    "sec:org653b483"
    "sec:orgdfa4cbe"
    "sec:orge32b91d"
    "sec:org86c6828"
    "sec:org3f5defb"
    "sec:orge589a7b"
    "sec:org1af2711"
    "sec:org49ee9eb"
    "sec:org022977a"
    "sec:org0150a6d"
    "sec:org0cc6752"
    "sec:orgbe9bd84"
    "sec:org5f1d09f"
    "sec:orgc83a8ae"
    "sec:orgcf84bac"
    "sec:org422bbe4"
    "sec:orgb5e48ca"
    "sec:org048f73b"
    "sec:org3c2378c"
    "sec:org51bf4dd"
    "sec:org3bbea26"
    "sec:orgedbba44")
   (LaTeX-add-bibliographies
    "references"))
 :latex)

