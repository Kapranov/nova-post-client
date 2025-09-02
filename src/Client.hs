{-# LANGUAGE OverloadedStrings #-}
module Client ( simpleQuery ) where
import           Network.HTTP.Simple
import qualified Data.ByteString.Lazy.Char8 as L8

simpleQuery :: IO ()
simpleQuery = do
    response <- httpLBS "http://httpbin.org/get"
    putStrLn $ "The status code was: " ++ show (getResponseStatusCode response)
    print $ getResponseHeader "Content-Type" response
    L8.putStrLn $ getResponseBody response
