% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ratings.R
\name{get_apple_rating_split}
\alias{get_apple_rating_split}
\title{Apple App Store Ratings}
\usage{
get_apple_rating_split(id, country = "us")
}
\arguments{
\item{id}{The ID of the App on the Apple App Store}

\item{country}{The two-letter country code for the store you want to search.
For a list of country codes see \url{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2}}
}
\value{
A 5 row data.frame with the split of 1-5 stars given rounded to the nearest percent
}
\description{
Scrapes the App store page and retrieves the split of the ratings between 1 and 5 stars
}
\details{
For overall rating and count, use \code{\link{lookup_apple}}
}
\examples{
# Look up ratings split for Apollo in the UK
get_apple_rating_split(979274575, "gb")

}
