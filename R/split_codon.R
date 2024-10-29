#' Split DNA sequence into codons
#'
#' @param dna_seq String of the input DNA sequence
#' @param start Starting codon position
#'
#' @return Vector of codons extracted from input string
#' @export
#'
#' @examples
#' split_codon("ATGCGTGAC")
#'
#' dna <-("TATGCGCCAAA")
#' pos=2
#' split_codon(dna, pos)

split_codon <- function(dna_seq, start = 1){
  len <- nchar(dna_seq)
  codons <- substring(dna_seq,
                      first = seq(from = start, to = len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = len, by = 3))
  return(codons)
}
