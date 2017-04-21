module Model exposing ( Model
                      , Player
                      , initialModel
                      )


type alias Model =
  { players : List Player
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
  { players = [ Player "1" "Sam" 1 ]
  }
