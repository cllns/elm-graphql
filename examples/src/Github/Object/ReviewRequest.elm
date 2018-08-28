-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ReviewRequest exposing (databaseId, id, pullRequest, requestedReviewer, reviewer, selection)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReviewRequest
selection constructor =
    Object.selection constructor


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.ReviewRequest
databaseId =
    Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.ReviewRequest
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Identifies the pull request associated with this review request.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> Field decodesTo Github.Object.ReviewRequest
pullRequest object_ =
    Object.selectionField "pullRequest" [] object_ identity


{-| The reviewer that is requested.
-}
requestedReviewer : SelectionSet decodesTo Github.Union.RequestedReviewer -> Field (Maybe decodesTo) Github.Object.ReviewRequest
requestedReviewer object_ =
    Object.selectionField "requestedReviewer" [] object_ (identity >> Decode.nullable)


{-| Identifies the author associated with this review request.
-}
reviewer : SelectionSet decodesTo Github.Object.User -> Field (Maybe decodesTo) Github.Object.ReviewRequest
reviewer object_ =
    Object.selectionField "reviewer" [] object_ (identity >> Decode.nullable)
