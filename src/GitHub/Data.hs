{-# LANGUAGE CPP                #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE OverloadedStrings  #-}
-----------------------------------------------------------------------------
-- |
-- License     :  BSD-3-Clause
-- Maintainer  :  Oleg Grenrus <oleg.grenrus@iki.fi>
--
-- This module re-exports the @GitHub.Data.@ and "Github.Auth" submodules.
module GitHub.Data (
    -- * Tagged types
    -- ** Name
    Name,
    mkName,
    untagName,
    mkOwnerName,
    mkUserName,
    mkTeamName,
    mkOrganizationName,
    mkRepoName,
    fromUserName,
    fromOrganizationName,
    -- ** Id
    Id,
    mkId,
    untagId,
    mkOwnerId,
    mkUserId,
    mkTeamId,
    mkOrganizationId,
    mkRepoId,
    fromUserId,
    fromOrganizationId,
    -- * Module re-exports
    module GitHub.Auth,
    module GitHub.Data.Comments,
    module GitHub.Data.Content,
    module GitHub.Data.Definitions,
    module GitHub.Data.Gists,
    module GitHub.Data.GitData,
    module GitHub.Data.Issues,
    module GitHub.Data.PullRequests,
    module GitHub.Data.Repos,
    module GitHub.Data.Request,
    module GitHub.Data.Search,
    module GitHub.Data.Teams,
    module GitHub.Data.Activities,
    module GitHub.Data.Webhooks,
    ) where

import Prelude        ()
import Prelude.Compat

import Data.Text (Text)

import GitHub.Auth
import GitHub.Data.Activities
import GitHub.Data.Comments
import GitHub.Data.Content
import GitHub.Data.Definitions
import GitHub.Data.Gists
import GitHub.Data.GitData
import GitHub.Data.Id
import GitHub.Data.Issues
import GitHub.Data.Name
import GitHub.Data.PullRequests
import GitHub.Data.Repos
import GitHub.Data.Request
import GitHub.Data.Search
import GitHub.Data.Teams
import GitHub.Data.Webhooks

mkOwnerId :: Int -> Id Owner
mkOwnerId = Id

mkOwnerName :: Text -> Name Owner
mkOwnerName = N

mkUserId :: Int -> Id User
mkUserId = Id

mkUserName :: Text -> Name User
mkUserName = N

mkTeamId :: Int -> Id Team
mkTeamId = Id

mkTeamName :: Text -> Name Team
mkTeamName = N

mkOrganizationId :: Int -> Id Organization
mkOrganizationId = Id

mkOrganizationName :: Text -> Name Organization
mkOrganizationName = N

mkRepoId :: Int -> Id Repo
mkRepoId = Id

mkRepoName :: Text -> Name Repo
mkRepoName = N

fromOrganizationName :: Name Organization -> Name Owner
fromOrganizationName = N . untagName

fromUserName :: Name User -> Name Owner
fromUserName = N . untagName

fromOrganizationId :: Id Organization -> Id Owner
fromOrganizationId = Id . untagId

fromUserId :: Id User -> Id Owner
fromUserId = Id . untagId
