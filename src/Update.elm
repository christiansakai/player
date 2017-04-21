module Update exposing ( update )

import Message as Msg
import Model as M


update : Msg.Msg -> M.Model -> ( M.Model, Cmd Msg.Msg )
update msg model =
  case msg of
    Msg.OnFetchPlayers response ->
      ( { model | players = response }, Cmd.none )
