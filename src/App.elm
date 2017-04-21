module App exposing (..)


import Html
import Model as M
import Message as Msg
import Subscriptions as S
import Update as U
import View as V


init : (M.Model, Cmd Msg.Msg)
init =
  (M.initialModel, Cmd.none)


subscriptions : M.Model -> Sub Msg.Msg
subscriptions model =
  Sub.none


main : Program Never M.Model Msg.Msg
main =
    Html.program
        { view = V.view
        , init = init
        , update = U.update
        , subscriptions = subscriptions
        }
