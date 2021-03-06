% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/norvig-spell-checker.R
\name{nlp_norvig_spell_checker}
\alias{nlp_norvig_spell_checker}
\title{Spark NLP NorvigSweetingApproach}
\usage{
nlp_norvig_spell_checker(x, input_cols, output_col,
  dictionary_path = NULL, dictionary_token_pattern = "\\\\S+",
  dictionary_read_as = "LINE_BY_LINE", dictionary_options = list(format
  = "text"), case_sensitive = NULL, double_variants = NULL,
  short_circuit = NULL, word_size_ignore = NULL, dups_limit = NULL,
  reduct_limit = NULL, intersections = NULL, vowel_swap_limit = NULL,
  uid = random_string("norvig_spell_checker_"))
}
\arguments{
\item{x}{A \code{spark_connection}, \code{ml_pipeline}, or a \code{tbl_spark}.}

\item{input_cols}{Input columns. String array.}

\item{output_col}{Output column. String.}

\item{dictionary_path}{path to file with properly spelled words}

\item{dictionary_token_pattern}{tokenPattern is the regex pattern to identify them in text,}

\item{dictionary_read_as}{LINE_BY_LINE or SPARK_DATASET}

\item{dictionary_options}{options passed to Spark reader}

\item{case_sensitive}{defaults to false. Might affect accuracy}

\item{double_variants}{enables extra check for word combinations, more accuracy at performance}

\item{short_circuit}{faster but less accurate mode}

\item{word_size_ignore}{Minimum size of word before moving on. Defaults to 3.}

\item{dups_limit}{Maximum duplicate of characters to account for. Defaults to 2.}

\item{reduct_limit}{Word reduction limit. Defaults to 3}

\item{intersections}{Hamming intersections to attempt. Defaults to 10.}

\item{vowel_swap_limit}{Vowel swap attempts. Defaults to 6.}

\item{uid}{A character string used to uniquely identify the ML estimator.}

\item{...}{Optional arguments, see Details.}
}
\value{
The object returned depends on the class of \code{x}.

\itemize{
  \item \code{spark_connection}: When \code{x} is a \code{spark_connection}, the function returns an instance of a \code{ml_estimator} object. The object contains a pointer to
  a Spark \code{Estimator} object and can be used to compose
  \code{Pipeline} objects.

  \item \code{ml_pipeline}: When \code{x} is a \code{ml_pipeline}, the function returns a \code{ml_pipeline} with
  the NLP estimator appended to the pipeline.

  \item \code{tbl_spark}: When \code{x} is a \code{tbl_spark}, an estimator is constructed then
  immediately fit with the input \code{tbl_spark}, returning an NLP model.
}
}
\description{
Spark ML estimator that  retrieves tokens and makes corrections automatically if not found in an English dictionary
See \url{https://nlp.johnsnowlabs.com/docs/en/annotators#norvig-spellchecker}
}
