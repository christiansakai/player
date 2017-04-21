module Players.List exposing ( view )


import Html exposing (..)
import Html.Attributes exposing (..)
import Message as Msg
import Model as M
import RemoteData as R


view : R.WebData (List M.Player) -> Html Msg.Msg
view players =
  div []
    [ nav
    , maybeList players
    ]


nav : Html Msg.Msg
nav = 
  div [ class "clearfix mb2 white bg-black" ]
    [ div [ class "left p2" ] [ text "Players" ] ]


maybeList : R.WebData (List M.Player) -> Html Msg.Msg
maybeList response =
  case response of
    R.NotAsked ->
      text ""

    R.Loading ->
      text "Loading..."
  
    R.Success players ->
      list players

    R.Failure error ->
      text (toString error)


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
