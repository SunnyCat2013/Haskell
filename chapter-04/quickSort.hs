quickSort :: (Ord a) => a -> a
quickSort [] = []
quickSort (x:xs) =
  let 
