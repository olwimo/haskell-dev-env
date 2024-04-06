
import System.IO (fixIO)


main :: IO ()
main = fixIO $ \_ -> do putStr "> "
                        l <- getLine
                        if null l
                            then return ()
                            else do putStrLn $ reverse l
                                    main

