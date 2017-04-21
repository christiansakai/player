module Players.List exposing ( view )


import Html exposing (..)
import Html.Attributes exposing (..)
import Message as Msg
import Model as M


view : List M.Player -> Html Msg.Msg
view players =
  div []
    [ nav
    , list players
    ]

nav : Html Msg.Msg
nav = 
  div [ class "clearfix mb2 white bg-black" ]
    [ div [ class "left p2" ] [ text "Players" ] ]

list : List M.Player -> Html Msg.Msg
list players =
  div [ class "p2" ]
    [ table []
      [ thead []
        [ tr []
          [ th [] [ text "Id" ]
          , th [] [ text "Name" ]
          , th [] [ text "Level" ]
          , th [] [ text "Actions" ]
          ]
        ]
      , tbody [] (List.map playerRow players)
      ]
    ]

playerRow : M.Player -> Html Msg.Msg
playerRow player =
  tr []
    [ td [] [ text player.id ]
    , td [] [ text player.name ]
    , td [] [ text (toString player.level) ]
    , td [] []
    ]
