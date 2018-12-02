-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.BaseRefForcePushedEvent exposing (actor, afterCommit, beforeCommit, createdAt, id, pullRequest, ref)

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


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.BaseRefForcePushedEvent
actor object_ =
    Object.selectionField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the after commit SHA for the 'base\_ref\_force\_pushed' event.
-}
afterCommit : SelectionSet decodesTo Github.Object.Commit -> SelectionSet (Maybe decodesTo) Github.Object.BaseRefForcePushedEvent
afterCommit object_ =
    Object.selectionField "afterCommit" [] object_ (identity >> Decode.nullable)


{-| Identifies the before commit SHA for the 'base\_ref\_force\_pushed' event.
-}
beforeCommit : SelectionSet decodesTo Github.Object.Commit -> SelectionSet (Maybe decodesTo) Github.Object.BaseRefForcePushedEvent
beforeCommit object_ =
    Object.selectionField "beforeCommit" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.BaseRefForcePushedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


id : SelectionSet Github.Scalar.Id Github.Object.BaseRefForcePushedEvent
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> SelectionSet decodesTo Github.Object.BaseRefForcePushedEvent
pullRequest object_ =
    Object.selectionField "pullRequest" [] object_ identity


{-| Identifies the fully qualified ref name for the 'base\_ref\_force\_pushed' event.
-}
ref : SelectionSet decodesTo Github.Object.Ref -> SelectionSet (Maybe decodesTo) Github.Object.BaseRefForcePushedEvent
ref object_ =
    Object.selectionField "ref" [] object_ (identity >> Decode.nullable)
