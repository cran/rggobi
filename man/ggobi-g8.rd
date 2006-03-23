\name{ggobi}
\alias{ggobi}
\title{New ggobi}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Creates a new ggobi instance
}
\usage{ggobi(data, args=character(0), mode=character(0), name = deparse(sys.call()[[2]]), ...)}
\arguments{
\item{data}{the name of a file containing the data, or a data frame or matrix containing the values}
\item{args}{a character vector of command-line arguments}
\item{mode}{data format GGobi should expect to read the data from, if reading from a file.}
\item{name}{the name to use in GGobi for the dataset, if one is specified}
\item{...}{}
}
\value{A ggobi object}
\details{Create a new instance of GGobi with or without new data.  Use
function whenever you want to create a new GGobi indepdent of the
others---they will not share linked plots.  If you want to add
another dataset to an existing ggobi, please see \code{\link{[<-.ggobi}}

There are currently three basic types of functions that you
can use with rggobi:

\itemize{
\item Data getting and setting: see \code{\link{[.ggobi}}, and \code{\link{[.ggobiDataset}}
\item "Automatic" brushing: see \code{\link{glyph_colour}},
\code{\link{glyph_size}},  \code{\link{glyph_type}},
\code{\link{shadowed}},    \code{\link{excluded}}, and the associated
setter functions.
\item Edge modifcation: see \code{\link{edges}}, \code{\link{edges<-}},
\code{\link{ggobi_longitudinal}}
}

You will generally spend most of your time working with
\code{ggobDataset}s, you retrieve using \code{\link{$.ggobiDataset}},
\code{\link{[.ggobiDataset}}, or \code{\link{[[.ggobiDataset}}.
Most of the time these will operate like normal R datasets while
pointing to the data in GGobi so that all changes are kept in sync.
If you need to force a ggobiDaataset to be an R \code{data.frame} use
\code{\link{as.data.frame}}.}

\examples{ggobi(ggobi.find.file("data", "flea.csv"))
ggobi(ggobi.find.file("data", "flea.xml"))
ggobi(mtcars)
mtcarsg <- ggobi_get()$mtcars
glyph_colour(mtcarsg)
glyph_colour(mtcarsg) <- ifelse(mtcarsg$cyl < 4, 1, 2)
glyph_size(mtcarsg) <- mtcarsg$cyl}
\keyword{dynamic}
