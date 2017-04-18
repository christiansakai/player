module View exposing ( view )

import Html exposing (Html, text, div, img)
import Model as M
import Message as Msg


view : M.Model -> Html Msg.Msg
view model =
  div [] [ text model ]
