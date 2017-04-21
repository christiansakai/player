module Message exposing ( Msg ( OnFetchPlayers )
                        )

import RemoteData exposing (WebData)
import Model as M

type Msg
  = OnFetchPlayers (WebData (List M.Player))
