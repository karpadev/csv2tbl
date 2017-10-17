\name{createTable}
\alias{createTable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
To create a MySQL table from a ."csv" file
}
\description{
Creates a table in the named database from a .csv file.
}
\usage{
createTable(fileName, tableName, dbName, userName, password, hostName)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fileName}{
name of the ".csv" file with data~~
}
\item{tableName}{
name of the table
}
\item{tableName}{
name of the database
}
\item{userName}{
user name with create access privelage to the database
}
\item{password}{
user password to the database
}
\item{hostName}{
hostname of the database server
}
}
\details{
If necessary, more details than the description above
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~Karpagam Chelliah~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x)
{
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
