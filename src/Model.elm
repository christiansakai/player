module Model exposing ( Model
                      , init
                      )


type alias Model = String

init : ( Model, Cmd msg )
init = 
  ( "Hello", Cmd.none )
