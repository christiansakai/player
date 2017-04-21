module Commands exposing (fetchPlayers)

import Http
import Json.Decode as D
import Json.Decode.Pipeline as P
import Message as Msg
import Model as M
import RemoteData as R


fetchPlayers : Cmd Msg.Msg
fetchPlayers =
  Http.get fetchPlayersUrl playersDecoder
    |> R.sendRequest
    |> Cmd.map Msg.OnFetchPlayers


fetchPlayersUrl : String
fetchPlayersUrl =
  "http://localhost:4000/players"


playersDecoder : D.Decoder (List M.Player)
playersDecoder =
  D.list playerDecoder


playerDecoder : D.Decoder M.Player
playerDecoder =
  P.decode M.Player
    |> P.required "id" D.string
    |> P.required "name" D.string
    |> P.required "level" D.int
