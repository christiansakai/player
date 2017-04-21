module View exposing ( view )

import Html exposing (..)
import Model as M
import Message as Msg
import Players.List as PL


view : M.Model -> Html Msg.Msg
view model =
  div [] 
    [ page model ]

page : M.Model -> Html Msg.Msg
page model =
  PL.view model.players
