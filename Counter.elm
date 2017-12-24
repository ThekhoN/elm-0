module Counter exposing (..)

import Html exposing (Html, button, div, h2, program, text)
import Html.Events exposing (onClick)


-- M M V U S M
-- MODEL


type alias Model =
    Int


init : ( Model, Cmd Msg )
init =
    ( 0, Cmd.none )



-- MESSAGE


type Msg
    = Increment
    | Decrement



-- VIEW


view : Model -> Html Msg
view model =
    -- div [] [ text (toString model) ]
    div []
        [ h2 [] [ text (toString model) ]
        , div [] [ button [ onClick Increment ] [ text "+" ], button [ onClick Decrement ] [ text "-" ] ]
        ]



--  div [] [ text (toString model)  [ div [] [ button [ onClick Increment ] [ text "+" ] ,  button [ onClick Decrement ] [ text "-" ]  ]
-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Increment ->
            ( model + 1, Cmd.none )

        Decrement ->
            ( model - 1, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
