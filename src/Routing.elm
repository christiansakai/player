module Routing exposing (matchers, parseLocation)


import Navigation as N
import Navigation as N
import Model as M
import UrlParser as U exposing ((</>))


matchers : U.Parser (M.Route -> a) a
matchers =
  U.oneOf
    [ U.map M.PlayersRoute U.top
    , U.map M.PlayerRoute (U.s "players" </> U.string)
    , U.map M.PlayersRoute (U.s "players")
    ]


parseLocation : N.Location -> M.Route
parseLocation location =
  case (U.parseHash matchers location) of
    Just route ->
      route

    Nothing ->
      M.NotFoundRoute
