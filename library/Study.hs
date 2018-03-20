-- | An example module.
module Study where

-- | The classic "hello world" program
--
--   Pretty straightforward. Not much to see here :P
--
--   == Examples
--
--   >>> main
--   Hello World
--
main :: IO ()
main = putStrLn hello

-- | A simple string
--
--   == Examples
--
--   >>> hello
--   "Hello World"
--
hello :: String
hello = "Hello World"

{-| Get multiples of 5

Just to prove that you can use this style of comment, too

== Examples

>>> takeFives 3
[5,10,15]

-}
takeFives :: Int -> [Int]
takeFives count = take count $ map (*5) [1..]

-- | Numerical Addition
--
-- Property tests run *many* random examples of some property.
-- For instance, addition is commutative.
--
-- prop> add a b == add b a
--
-- These can be mixed with regular doctests
--
-- >>> add 1 2
-- 3
--
add :: Num a => a -> a -> a
add = (+)
