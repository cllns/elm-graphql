-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.AddProjectCardPayload exposing (cardEdge, clientMutationId, projectColumn)

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


{-| The edge from the ProjectColumn's card connection.
-}
cardEdge : SelectionSet decodesTo Github.Object.ProjectCardEdge -> SelectionSet decodesTo Github.Object.AddProjectCardPayload
cardEdge object_ =
    Object.selectionField "cardEdge" [] object_ identity


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) Github.Object.AddProjectCardPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The ProjectColumn
-}
projectColumn : SelectionSet decodesTo Github.Object.Project -> SelectionSet decodesTo Github.Object.AddProjectCardPayload
projectColumn object_ =
    Object.selectionField "projectColumn" [] object_ identity
