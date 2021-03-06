% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{plot_transition}
\alias{plot_transition}
\title{Plot the transition function of the estimated PSTR model.}
\usage{
plot_transition(obj, log_scale = F, size = 1.5, color = "black", ...)
}
\arguments{
\item{obj}{an object of the class PSTR returned from some functions in the package. Note that the corresponding PSTR model must be estimated first.}

\item{log_scale}{specify whether to use log transformation for x-axis.}

\item{size}{the size of the circle.}

\item{color}{the color of the circle.}

\item{...}{expression or strings of names passed to the \code{labs} function in ggplot2. The names should be some of "x", "y", "title", "subtitle", and "caption".}
}
\value{
A ggplot object. The user can plot it simply by print the object.
}
\description{
This function plots the transition function of the estimated PSTR model.
}
\details{
The funciton uses some functions in the ggplot2 package and aims to give a quick plot of the transtion function.
The user can customize the title, subtitle, caption, x and y labels, for details, read the help file for the \code{labs} function in ggplot2.
}
\examples{
pstr = NewPSTR(Hansen99, dep='inva', indep=4:20, indep_k=c('vala','debta','cfa','sales'),
    tvars=c('vala'), iT=14) # create a new PSTR object

# estimate the PSTR model
pstr = EstPSTR(use=pstr, im=1, iq=1, useDelta=TRUE, par=c(1.6,.5), method='CG')

# plot the transition function

ret = plot_transition(pstr)
# plot by running
ret

ret = plot_transition(pstr, color = "blue", size = 2,
    x="customize the label for x axis",y="customize the label for y axis",
    title="The Title",subtitle="The subtitle",caption="Make a caption here.",log_scale=TRUE)
ret

}
\seealso{
Functions which return an object of the class PSTR and can be input into this function

\code{\link{EstPSTR}}
}
\author{
Yukai Yang, \email{yukai.yang@statistik.uu.se}
}
\keyword{utils}
