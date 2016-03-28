module Card where

  data Suit = Clubs | Hearts | Spades | Diamonds deriving (Show, Eq, Enum)

  data CardNumber = Ace | Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King deriving (Show, Eq, Enum)

  data Card = Card CardNumber Suit deriving (Eq)
  instance Show Card where
    show (Card number suit) = show number ++ " of " ++ show suit

  data Hand = Hand [Card] deriving (Show, Eq)
  data Deck = Deck [Card] deriving (Show, Eq)

  cardValue :: CardNumber -> Int
  cardValue cardNumber = fromEnum cardNumber + 1
