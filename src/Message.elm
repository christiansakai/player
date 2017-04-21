module Message exposing ( Msg ( OnFetchPlayers
                              , OnLocationChange 
                              )
                        )

import RemoteData exposing (WebData)
import Model as M
import Navigation as N

type Msg
  = OnFetchPlayers (WebData (List M.Player))
  | OnLocationChange N.Location
