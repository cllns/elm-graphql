-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ReleaseAsset exposing (contentType, createdAt, downloadCount, downloadUrl, id, name, release, size, updatedAt, uploadedBy, url)

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


{-| The asset's content-type
-}
contentType : SelectionSet String Github.Object.ReleaseAsset
contentType =
    Object.fieldDecoder "contentType" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.ReleaseAsset
createdAt =
    Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The number of times this asset was downloaded
-}
downloadCount : SelectionSet Int Github.Object.ReleaseAsset
downloadCount =
    Object.fieldDecoder "downloadCount" [] Decode.int


{-| Identifies the URL where you can download the release asset via the browser.
-}
downloadUrl : SelectionSet Github.Scalar.Uri Github.Object.ReleaseAsset
downloadUrl =
    Object.fieldDecoder "downloadUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


id : SelectionSet Github.Scalar.Id Github.Object.ReleaseAsset
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Identifies the title of the release asset.
-}
name : SelectionSet String Github.Object.ReleaseAsset
name =
    Object.fieldDecoder "name" [] Decode.string


{-| Release that the asset is associated with
-}
release : SelectionSet decodesTo Github.Object.Release -> SelectionSet (Maybe decodesTo) Github.Object.ReleaseAsset
release object_ =
    Object.selectionField "release" [] object_ (identity >> Decode.nullable)


{-| The size (in bytes) of the asset
-}
size : SelectionSet Int Github.Object.ReleaseAsset
size =
    Object.fieldDecoder "size" [] Decode.int


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.Scalar.DateTime Github.Object.ReleaseAsset
updatedAt =
    Object.fieldDecoder "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The user that performed the upload
-}
uploadedBy : SelectionSet decodesTo Github.Object.User -> SelectionSet decodesTo Github.Object.ReleaseAsset
uploadedBy object_ =
    Object.selectionField "uploadedBy" [] object_ identity


{-| Identifies the URL of the release asset.
-}
url : SelectionSet Github.Scalar.Uri Github.Object.ReleaseAsset
url =
    Object.fieldDecoder "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)
