-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.RemoveStarInput exposing (..)

import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Encode a RemoveStarInput into a value that can be used as an argument.
-}
encode : RemoveStarInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "starrableId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.starrableId |> Just ) ]


{-| Type for the RemoveStarInput input object.
-}
type alias RemoveStarInput =
    { clientMutationId : OptionalArgument String, starrableId : Github.Scalar.Id }