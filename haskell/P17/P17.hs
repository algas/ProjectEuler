under20 =
    ["ten"
    ,"eleven"
    ,"twelve"
    ,"thirteen"
    ,"fourteen"
    ,"fifteen"
    ,"sixteen"
    ,"seventeen"
    ,"eighteen"
    ,"nineteen"
    ]

under10 =
    [""
    ,"one"
    ,"two"
    ,"three"
    ,"four"
    ,"five"
    ,"six"
    ,"seven"
    ,"eight"
    ,"nine"
    ]

tys = 
    ["twenty"
    ,"thirty"
    ,"forty"
    ,"fifty"
    ,"sixty"
    ,"seventy"
    ,"eighty"
    ,"ninety"
    ]

under100 = tail under10 ++ under20 ++ [ty ++ d | ty <- tys, d <- under10]

hundreds = [d ++ "hundred" | d <- tail under10 ]

under1000 = [h ++ "and" ++ u | h <- hundreds, u <- under100]

p17 = sum [length d | d <- (under100 ++ hundreds ++ under1000 ++ ["onethousand"])]

main = print p17
