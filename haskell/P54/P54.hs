module Main where

import Data.Map as M
import Data.List as L
import Data.List.Split (splitOn)
import Data.Maybe (fromJust)

type CardValue = Int
type CardSuit = Char
type Card = (CardValue, CardSuit)
type Deck = ([Card], [Card])

data CardPat = HighCard | OnePair | TwoPairs | ThreeOfAKind | Straight | Flush | FullHouse | FourOfAKind | StraightFlush | RoyalFlush
    deriving (Show, Eq, Ord)

data CardScore = CardScore
    { pat :: CardPat
    , patMax :: Int
    , noPatMax :: Int
    } deriving Show

instance Ord CardScore where
    compare x y = head $ dropWhile (==EQ) [compare (pat x) (pat y), compare (patMax x) (patMax y), compare (noPatMax x) (noPatMax y)]

instance Eq CardScore where
    x == y = (pat x) == (pat y) && (patMax x) == (patMax y) && (noPatMax x) == (noPatMax y)

cardValueMap :: Map Char Int
cardValueMap = M.fromList $ [(head (show n), n) | n <- [2..9]] ++ [('T',10),('J',11),('Q',12),('K',13),('A',14)]

count :: Ord a => [a] -> Map a Int
count xs = count' xs empty

count' :: Ord a => [a] -> Map a Int -> Map a Int
count' [] m = m
count' (x:xs) m = count' xs $ upsert x m
    where upsert p q
            | notMember p q = M.insert p 1 q
            | otherwise = M.update (\n -> Just (n+1)) p q

countCards :: [Card] -> Map CardValue Int
countCards = count . Prelude.map fst

toCard :: String -> Card
toCard x = (fromJust (M.lookup (head x) cardValueMap), last x)

splitBySpace :: String -> [String]
splitBySpace = splitOn " "

toDeck :: String -> Deck
toDeck x = L.splitAt 5 $ L.map toCard $ splitBySpace x

readLines :: String -> IO [String]
readLines path = do
    contents <- readFile path
    return $ lines contents

poker :: String -> IO ()
poker path = do
    xs <- readLines path
    print $ length $ L.filter (==True) $ L.map (isFirstWon . toDeck) xs

getCardScore :: [Card] -> CardScore
getCardScore xs
    | maxCount == 4 = CardScore FourOfAKind (getCountedMax 4) (getCountedMax 1)
    | maxCount == 3 && M.size (M.filter (==2) countMap) == 1 = CardScore FullHouse (getCountedMax 3) (getCountedMax 2)
    | maxCount == 3 = CardScore ThreeOfAKind (getCountedMax 3) (getCountedMax 1)
    | M.size (M.filter (==2) countMap) == 2 = CardScore TwoPairs (getCountedMax 2) (getCountedMax 1)
    | maxCount == 2 = CardScore OnePair (getCountedMax 2) (getCountedMax 1)
    | isFlush && isStraight && (maxValue == 14) = CardScore RoyalFlush 14 14
    | isFlush && isStraight = CardScore StraightFlush maxValue maxValue
    | isStraight = CardScore Straight maxValue maxValue
    | otherwise = CardScore HighCard maxValue maxValue
    where
        countMap = countCards xs
        maxCount = maximum $ M.elems countMap
        getCountedMax n = maximum $ keys $ M.filter (==n) countMap
        suits = L.map snd xs
        isFlush = all (== head suits) $ tail suits
        vs = sort $ L.map fst xs
        isStraight = all (==1) [(y-x) | (x,y) <- zip vs (tail vs)]
        maxValue = maximum $ L.map fst xs

isFirstWon :: Deck -> Bool
isFirstWon d = getCardScore (fst d) > getCardScore (snd d)
