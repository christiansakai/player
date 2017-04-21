module App exposing (..)


import Html
import Model as M
import Message as Msg
import Subscriptions as S
import Update as U
import View as V
import Commands as C
import Navigation as N
import Routing as R


init : N.Location -> (M.Model, Cmd Msg.Msg)
init location =
  let 
      currentRoute =
        R.parseLocation location
  in
    (M.initialModel currentRoute, C.fetchPlayers)


subscriptions : M.Model -> Sub Msg.Msg
subscriptions model =
  Sub.none


main : Program Never M.Model Msg.Msg
main =
  N.program Msg.OnLocationChange
    { view = V.view
    , init = init
    , update = U.update
    , subscriptions = subscriptions
    }
