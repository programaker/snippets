List quicksort = method(
    if(empty? || size == 1, mimic, select(< first) quicksort + list(first) + select(> first) quicksort)
)
