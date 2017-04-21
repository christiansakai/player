module Model exposing ( Model
                      , Player
                      , initialModel
                      )

import RemoteData as R


type alias Model =
  { players : R.WebData (List Player)
  }


type alias Player =
  { id : PlayerId
  , name : String
  , level : Int
  }


type alias PlayerId =
  String


initialModel : Model
initialModel = 
  { players = R.Loading
  }
