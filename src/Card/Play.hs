module Card.Play (
  dealToOne
) where

  import Card.Data
  import Card.Set

  dealToOne :: Deck -> Int -> PileAndHands
  dealToOne deck numberOfCards = (drop numberOfCards deck, [take numberOfCards deck])
