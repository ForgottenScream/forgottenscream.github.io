module Main exposing (main)

import Browser
import Html exposing (Html, div, footer, h1, h2, header, main_, p, text)


main =
    Browser.sandbox
        { init = ()
        , update = \_ model -> model
        , view = \_ -> view
        }


view : Html msg
view =
    div []
        [ headerView
        , mainView
        , footerView
        ]


headerView : Html msg
headerView =
    header []
        [ h1 [] [ text "Welcome to my portfolio!" ]
        , h2 [] [ text "*Work in progress.." ]
        ]


mainView : Html msg
mainView =
    main_ []
        [ p []
            [ text "This is a mini side project that I am working on to showcase my other works, practice new skills, and develop a portfolio page on GitHub." ]
        , p []
            [ text "It will be a useful way to maintain a timeline and record the different projects and ideas I undertake, while showing (hopefully) linear progression of my knowledge and abilities." ]
        ]


footerView : Html msg
footerView =
    footer []
        [ p [] [ text "© 2025 ForgottenScream" ] ]
