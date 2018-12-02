-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Blob exposing (abbreviatedOid, byteSize, commitResourcePath, commitUrl, id, isBinary, isTruncated, oid, repository, text)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : SelectionSet String Github.Object.Blob
abbreviatedOid =
    Object.fieldDecoder "abbreviatedOid" [] Decode.string


{-| Byte size of Blob object
-}
byteSize : SelectionSet Int Github.Object.Blob
byteSize =
    Object.fieldDecoder "byteSize" [] Decode.int


{-| The HTTP path for this Git object
-}
commitResourcePath : SelectionSet Github.Scalar.Uri Github.Object.Blob
commitResourcePath =
    Object.fieldDecoder "commitResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this Git object
-}
commitUrl : SelectionSet Github.Scalar.Uri Github.Object.Blob
commitUrl =
    Object.fieldDecoder "commitUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


id : SelectionSet Github.Scalar.Id Github.Object.Blob
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Indicates whether the Blob is binary or text
-}
isBinary : SelectionSet Bool Github.Object.Blob
isBinary =
    Object.fieldDecoder "isBinary" [] Decode.bool


{-| Indicates whether the contents is truncated
-}
isTruncated : SelectionSet Bool Github.Object.Blob
isTruncated =
    Object.fieldDecoder "isTruncated" [] Decode.bool


{-| The Git object ID
-}
oid : SelectionSet Github.Scalar.GitObjectID Github.Object.Blob
oid =
    Object.fieldDecoder "oid" [] (Object.scalarDecoder |> Decode.map Github.Scalar.GitObjectID)


{-| The Repository the Git object belongs to
-}
repository : SelectionSet decodesTo Github.Object.Repository -> SelectionSet decodesTo Github.Object.Blob
repository object_ =
    Object.selectionField "repository" [] object_ identity


{-| UTF8 text data or null if the Blob is binary
-}
text : SelectionSet (Maybe String) Github.Object.Blob
text =
    Object.fieldDecoder "text" [] (Decode.string |> Decode.nullable)
