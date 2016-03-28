module Card.Data (
  allSuits,

  allCardNumbers,
  valueOfCardNumber,

  allCards,

  Suit,
  CardNumber,
  Card
) where

  data Suit = Clubs | Hearts | Spades | Diamonds deriving (Show, Eq, Enum)

  allSuits :: [Suit]
  allSuits = enumFrom Clubs

  data CardNumber = Ace | Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King deriving (Show, Eq, Enum)

  allCardNumbers :: [CardNumber]
  allCardNumbers = enumFrom Ace

  valueOfCardNumber :: CardNumber -> Int
  valueOfCardNumber cardNumber = fromEnum cardNumber + 1

  data Card = Card CardNumber Suit deriving (Eq)
  instance Show Card where
    show (Card number suit) = show number ++ " of " ++ show suit

  allCards :: [Card]
  allCards = [Card number suit | suit <- allSuits, number <- allCardNumbers ]
