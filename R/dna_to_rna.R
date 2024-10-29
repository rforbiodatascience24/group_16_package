#' Transcribe DNA to RNA
#'
#' This function takes a DNA sequence and transcribes it to an RNA sequence by replacing each occurrence of thymine ("T") with uracil ("U").
#'
#' @param dna_sequence A character string representing a DNA sequence (e.g., "ATGCTTAC").
#'
#' @return A character string representing the transcribed RNA sequence, with all "T" characters replaced by "U".
#' @export
#'
#' @examples
#' # Example DNA sequence transcription
#' dna_sequence <- 'ATGCTTAC'
#' rna_sequence <- dna_to_rna(dna_sequence)
#' print(rna_sequence) # Expected output: 'AUGCUUAC'
dna_to_rna <- function(dna_sequence){
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
