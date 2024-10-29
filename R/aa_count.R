#' Plotting amino-acid count
#'
#' @importFrom stringr str_split boundary str_count
#'
#' @importFrom ggplot2 ggplot ggplot aes geom_col theme_bw theme
#' @param seq an amino acid sequence in string format
#'
#' @return a bar plot with the amino acid count
#' @export
#'
#' @examples
#'
#' seq1 <- "AKLPYNILSDFHVNSTRLGE"
#' print(aa_count(seq1))
#'
#'
aa_count <- function(seq){
  unique_aa <- seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = seq, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["aa"]] <- rownames(counts)

  count_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = seq, y = Counts, fill = aa)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(count_plot)
}
