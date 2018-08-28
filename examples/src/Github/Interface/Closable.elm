-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.Closable exposing (closed, closedAt, commonSelection, onIssue, onMilestone, onProject, onPullRequest, selection)

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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.Closable
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.Closable) -> SelectionSet (a -> constructor) Github.Interface.Closable
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onIssue : SelectionSet decodesTo Github.Object.Issue -> FragmentSelectionSet decodesTo Github.Interface.Closable
onIssue (SelectionSet fields decoder) =
    FragmentSelectionSet "Issue" fields decoder


onMilestone : SelectionSet decodesTo Github.Object.Milestone -> FragmentSelectionSet decodesTo Github.Interface.Closable
onMilestone (SelectionSet fields decoder) =
    FragmentSelectionSet "Milestone" fields decoder


onProject : SelectionSet decodesTo Github.Object.Project -> FragmentSelectionSet decodesTo Github.Interface.Closable
onProject (SelectionSet fields decoder) =
    FragmentSelectionSet "Project" fields decoder


onPullRequest : SelectionSet decodesTo Github.Object.PullRequest -> FragmentSelectionSet decodesTo Github.Interface.Closable
onPullRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequest" fields decoder


{-| `true` if the object is closed (definition of closed may depend on type)
-}
closed : Field Bool Github.Interface.Closable
closed =
    Object.fieldDecoder "closed" [] Decode.bool


{-| Identifies the date and time when the object was closed.
-}
closedAt : Field (Maybe Github.Scalar.DateTime) Github.Interface.Closable
closedAt =
    Object.fieldDecoder "closedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime |> Decode.nullable)
