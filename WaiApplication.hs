module WaiApplication (buildApplication) where

import Prelude              (IO)
import Yesod.Default.Config (fromArgs)
import Settings             (parseExtra)
import Application          (getApplication)
import Network.Wai          (Application)

buildApplication :: IO Application
buildApplication = do
    config <- fromArgs parseExtra
    getApplication config
