module Update exposing ( update )

import Message as Msg
import Model as M
import Routing as R


update : Msg.Msg -> M.Model -> ( M.Model, Cmd Msg.Msg )
update msg model =
  case msg of
    Msg.OnFetchPlayers response ->
      ( { model | players = response }, Cmd.none )

    Msg.OnLocationChange location ->
      let
          newRoute =
            R.parseLocation location

      in
          ( { model | route = newRoute }, Cmd.none )
