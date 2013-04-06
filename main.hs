import Prelude              (IO)
import Yesod.Default.Config
import Settings             (parseExtra)
import Application          (getApplication)
import WaiApplication       (buildApplication)
import Network.Wai.Handler.Warp (runSettings, defaultSettings, settingsHost, settingsPort)

main :: IO ()
main = do
    config <- fromArgs parseExtra
    app <- buildApplication
    runSettings defaultSettings
        { settingsPort = appPort config
        , settingsHost = appHost config
        } app
