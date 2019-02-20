 /**
* A demo string module
**/
%dw 2.0

/**
* Repeat a given String a given amount of times
**/
fun times(value: String, amount: Number) =
  if (amount <= 0)
    ""
  else
    ((1 to amount - 1) as Array) reduce ((item, accumulator = value) -> accumulator ++ value)

