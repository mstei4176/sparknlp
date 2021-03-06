% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotate.R
\name{nlp_annotate}
\alias{nlp_annotate}
\title{Annotate some text}
\usage{
nlp_annotate(x, text)
}
\arguments{
\item{x}{some SparkNLP object that has an annotate method that takes a Spark data frame as argument}

\item{text}{the text to annotate}
}
\value{
a Spark data frame containing the annotations
}
\description{
Use SparkNLP to annotate some text.
}
