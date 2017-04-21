module Model exposing ( Model
                      , Player
                      , Route ( PlayersRoute
                              , PlayerRoute
                              , NotFoundRoute
                              )
                      , PlayerId
                      , initialModel
                      )

import RemoteData as R


type alias Model =
  { players : R.WebData (List Player)
  , route : Route
  }


type alias Player =
  { id : PlayerId
  , name : String
  , level : Int
  }


type alias PlayerId =
  String


type Route
  = PlayersRoute
  | PlayerRoute PlayerId
  | NotFoundRoute


initialModel : Route -> Model
initialModel route = 
  { players = R.Loading
  , route = route
  }
