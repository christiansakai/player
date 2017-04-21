module View exposing ( view )

import Html exposing (..)
import Model as M
import Message as Msg
import Players.List as PL
import Players.Edit as PE
import RemoteData as R


view : M.Model -> Html Msg.Msg
view model =
  div [] 
    [ page model ]

page : M.Model -> Html Msg.Msg
page model =
  case model.route of
    M.PlayersRoute ->
      PL.view model.players

    M.PlayerRoute id ->
      playerEditPage model id

    M.NotFoundRoute ->
      notFoundView


playerEditPage : M.Model -> M.PlayerId -> Html Msg.Msg
playerEditPage model playerId =
  case model.players of
    R.NotAsked ->
      text ""

    R.Loading ->
      text "Loading..."

    R.Success players ->
      let 
          maybePlayer =
            players
              |> List.filter (\player -> player.id == playerId)
              |> List.head

      in
          case maybePlayer of
            Just player ->
              PE.view player

            Nothing ->
              notFoundView

    R.Failure err ->
      text (toString err)


notFoundView : Html msg
notFoundView =
  div [] [ text "Not found" ]

