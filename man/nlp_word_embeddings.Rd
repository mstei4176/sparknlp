% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/word-embeddings.R
\name{nlp_word_embeddings}
\alias{nlp_word_embeddings}
\title{Spark NLP WordEmbeddings}
\usage{
nlp_word_embeddings(x, input_cols, output_col, source_path, dimension,
  include_embeddings = NULL, embeddings_ref = NULL, embeddings_format,
  case_sensitive = NULL, uid = random_string("word_embeddings_"))
}
\arguments{
\item{x}{A \code{spark_connection}, \code{ml_pipeline}, or a \code{tbl_spark}.}

\item{input_cols}{Input columns. String array.}

\item{output_col}{Output column. String.}

\item{source_path}{word embeddings file}

\item{dimension}{number of word embeddings dimensions}

\item{include_embeddings}{whether or not to include word embeddings when saving this annotator to disk (single or within pipeline)}

\item{embeddings_ref}{whether to use annotators under the provided name. This means these embeddings will be lookup
from the cache by the ref name. This allows multiple annotators to utilize same word embeddings by ref name.}

\item{embeddings_format}{format of word embeddings files. One of:
\itemize{
\item text -> this format is usually used by Glove
\item binary -> this format is usually used by Word2Vec
\item spark-nlp -> internal format for already serialized embeddings. Use this only when resaving embeddings with Spark NLP
}}

\item{case_sensitive}{whether to ignore case in tokens for embeddings matching}

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

When \code{x} is a \code{spark_connection} the function returns a WordEmbeddings estimator.
When \code{x} is a \code{ml_pipeline} the pipeline with the WordEmbeddings added. When \code{x}
is a \code{tbl_spark} a transformed \code{tbl_spark}  (note that the Dataframe passed in must have the input_cols specified).
}
\description{
Spark ML estimator that maps tokens to vectors
See \url{https://nlp.johnsnowlabs.com/docs/en/annotators#word-embeddings}
}
