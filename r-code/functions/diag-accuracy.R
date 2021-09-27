accuracyDiag <- function(table)
{
    dominant <- sapply(table, function(x) max(x))
    total <- sapply(table, function(x) sum(x))

    accuracy <- round(sum(dominant) / sum(total), 4) * 100

    return(accuracy)
}