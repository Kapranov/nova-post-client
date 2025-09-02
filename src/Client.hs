{-# LANGUAGE OverloadedStrings #-}
module Client ( simpleQuery, getToken ) where
import           Data.Aeson                 (Value)
import qualified Data.ByteString.Char8      as S8
import qualified Data.ByteString.Lazy.Char8 as L8
import qualified Data.Yaml                  as Yaml
import           Network.HTTP.Simple

simpleQuery :: IO ()
simpleQuery = do
    response <- httpLBS "http://httpbin.org/get"
    putStrLn $ "The status code was: " ++ show (getResponseStatusCode response)
    print $ getResponseHeader "Content-Type" response
    L8.putStrLn $ getResponseBody response

getToken :: IO ()
getToken = do
    response <- httpJSON "https://api-stage.novapost.com/v.1.0/clients/authorization?apiKey=65d273e6d8597259f1f520b170ce50e7"
    putStrLn $ "The status code was: " ++
               show (getResponseStatusCode response)
    print $ getResponseHeader "Content-Type" response
    S8.putStrLn $ Yaml.encode (getResponseBody response :: Value)



-- Endpoint Definition:
--    https://api.novapost.com/v.1.0 - Production environment
--    https://api-stage.novapost.com/v.1.0 - Test environment
-- Authorization
--    GET Generate a temporary JWT-token - https://api-stage.novapost.com/v.1.0/clients/authorization?apiKey=
--    curl --location 'https://api-stage.novapost.com/v.1.0/clients/authorization?apiKey='
-- Dictionaries
-- Services
-- Shipments
-- Pickups
