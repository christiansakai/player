module App exposing (..)


import Html
import Model as M
import Message as Msg
import Subscriptions as S
import Update as U
import View as V


main : Program Never M.Model Msg.Msg
main =
    Html.program
        { view = V.view
        , init = M.init
        , update = U.update
        , subscriptions = S.subscriptions
        }
