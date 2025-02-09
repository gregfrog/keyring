% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/backend-awssecretsmanager.R
\name{backend_awssecretsmanager}
\alias{backend_awssecretsmanager}
\title{AWS Secrets Manager keyring backend}
\description{
This backend must be selected explicitly. It makes calls to the AWS
secretsmanager service.
}
\details{
This backend does not support keyrings or user names.  The call to the
AWS service is authenticated by either the user's ceedentials or the IAM
user associated with the process, for example in a docker container.

Note that the AWS APIs provide enventual consistency, it can take
a noticeable amount of time, up to five minutes, for updates and deletes
to propagate and so code that updates, deletes and lists needs to be
written to tolerate that.
}
\examples{
\dontrun{
##
kb <- backend_awssecretsmanager$new()
kb$set_with_value("service", password = "secret")
kb$get("service")
kb$delete("service")
}
}
\seealso{
Other keyring backends: 
\code{\link{backend_env}},
\code{\link{backend_file}},
\code{\link{backend_macos}},
\code{\link{backend_secret_service}},
\code{\link{backend_wincred}}
}
\concept{keyring backends}
