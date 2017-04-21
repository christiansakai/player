module Players.Edit exposing (view)


import Html exposing (..)
import Html.Attributes exposing (..)
import Message as Msg
import Model as M


view : M.Player -> Html Msg.Msg
view model =
  div []
    [ nav model
    , form model
    ]


nav : M.Player -> Html Msg.Msg
nav model =
  div [ class "clearfix mb2 white bg-black p1" ]
    []


form : M.Player -> Html Msg.Msg
form player =
  div [ class "m3" ]
    [ h1 [] [ text player.name ]
    , formLevel player
    ]


formLevel : M.Player -> Html Msg.Msg
formLevel player =
  div [ class "clearfix py1" ]
    [ div [ class "col col-5" ] [ text "Level" ]
    , div [ class "col col-7" ]
        [ span [ class "h2 bold" ] [ text (toString player.level) ]
        , btnLevelDecrease player
        , btnLevelIncrease player
        ]
    ]


btnLevelDecrease : M.Player -> Html Msg.Msg
btnLevelDecrease player =
  a [ class "btn ml1 h1" ]
    [ i [ class "fa fa-minus-circle" ] [] ]


btnLevelIncrease : M.Player -> Html Msg.Msg
btnLevelIncrease player =
  a [ class "btn ml1 h1" ]
    [ i [ class "fa fa-plus-circle" ] [] ]
