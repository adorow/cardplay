module Card.Set (
  fullDeck,

  Pile,
  Hand,
  Deck,

  PileAndHands
) where

  import Card.Data

  fullDeck :: Deck
  fullDeck = allCards

  type CardSet = [Card]
  type Pile = CardSet
  type Hand = CardSet
  type Deck = CardSet

  type PileAndHands = (Pile, [Hand])
