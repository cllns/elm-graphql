-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RateLimit exposing (cost, limit, nodeCount, remaining, resetAt, selection)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RateLimit
selection constructor =
    Object.selection constructor


{-| The point cost for the current query counting against the rate limit.
-}
cost : Field Int Github.Object.RateLimit
cost =
    Object.fieldDecoder "cost" [] Decode.int


{-| The maximum number of points the client is permitted to consume in a 60 minute window.
-}
limit : Field Int Github.Object.RateLimit
limit =
    Object.fieldDecoder "limit" [] Decode.int


{-| The maximum number of nodes this query may return
-}
nodeCount : Field Int Github.Object.RateLimit
nodeCount =
    Object.fieldDecoder "nodeCount" [] Decode.int


{-| The number of points remaining in the current rate limit window.
-}
remaining : Field Int Github.Object.RateLimit
remaining =
    Object.fieldDecoder "remaining" [] Decode.int


{-| The time at which the current rate limit window resets in UTC epoch seconds.
-}
resetAt : Field Github.Scalar.DateTime Github.Object.RateLimit
resetAt =
    Object.fieldDecoder "resetAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)
