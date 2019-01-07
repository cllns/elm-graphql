-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.ScalarDecoders exposing (Date, DateTime, GitObjectID, GitSSHRemote, GitTimestamp, Html, Id, Uri, X509Certificate, decoders)

import Github.Scalar exposing (defaultDecoders)
import Json.Decode as Decode exposing (Decoder)


type alias Date =
    Github.Scalar.Date


type alias DateTime =
    Github.Scalar.DateTime


type alias GitObjectID =
    Github.Scalar.GitObjectID


type alias GitSSHRemote =
    Github.Scalar.GitSSHRemote


type alias GitTimestamp =
    Github.Scalar.GitTimestamp


type alias Html =
    Github.Scalar.Html


type alias Id =
    Github.Scalar.Id


type alias Uri =
    Github.Scalar.Uri


type alias X509Certificate =
    Github.Scalar.X509Certificate


decoders : Github.Scalar.Decoders Date DateTime GitObjectID GitSSHRemote GitTimestamp Html Id Uri X509Certificate
decoders =
    Github.Scalar.defineDecoders
        { decoderDate = defaultDecoders.decoderDate
        , decoderDateTime = defaultDecoders.decoderDateTime
        , decoderGitObjectID = defaultDecoders.decoderGitObjectID
        , decoderGitSSHRemote = defaultDecoders.decoderGitSSHRemote
        , decoderGitTimestamp = defaultDecoders.decoderGitTimestamp
        , decoderHtml = defaultDecoders.decoderHtml
        , decoderId = defaultDecoders.decoderId
        , decoderUri = defaultDecoders.decoderUri
        , decoderX509Certificate = defaultDecoders.decoderX509Certificate
        }