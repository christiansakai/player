module Subscriptions exposing ( subscriptions )

import Model as M
import Message as Msg


subscriptions : M.Model -> Sub Msg.Msg
subscriptions model =
  Sub.none
