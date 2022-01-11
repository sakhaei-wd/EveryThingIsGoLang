
# Checklist

## :wrench: Maintainability

| Check name | Short Description  | Status | 
| :--------- | :----------------- | :------ |
| Unit test | It has unit tests. And the unit tests are running in a CI system. | :white_check_mark: |
| High Test coverage | Its test coverage is over 70%. | :white_check_mark: |
| [Config in env-var](https://12factor.net/config) | Its config can be overridden via environment variable.  | :white_check_mark: |
| [dockerignore](https://docs.docker.com/engine/reference/builder/#dockerignore-file) | It has dockerignore to reduce the Docker image size. |   :white_check_mark: |
| [No latest tag](https://twitter.com/thockin/status/1085223284122087424) | Its Docker image tag is not `latest` or `master`. | :white_check_mark: |
| Automated build | Its build process is automated (binary build and Docker image build is in this scope). | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Automatic build | Its automated build process is running in CI/CD system. | :white_check_mark:  |  | :white_check_mark: |
| Automatic deploy | Its automated deploy process is running in CI/CD system. | :white_check_mark:  | :white_check_mark: | :white_check_mark: |
| Continious Profiling | It supports continious profiling in production |  :soon:  |  | :soon: |
| Gradual deploy | Its deploy can be gradual if you want. |  :white_check_mark:|  | :white_check_mark: | | Automated rollback | Its rollback process is automated. | :white_check_mark:  | :white_check_mark: | :white_check_mark: |

## :chart_with_downwards_trend: Observability
Observability affects team productivity and system availability. If observability is low, the team will take a longer time to notice/investigate a problem occurred in production. And it will make MTTR (Mean Time To Recover) longer.

| Check name | Short Description  | Status |
| :--------- | :----------------- | :------ |
| Snyk | Its deployment pipeline invokes Snyk so deployments can be monitored by security team | :soon: | :soon: | :soon: |
| Tracing | Its requests are traced in NewRelic. | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| NewRelic | NewRelic is created. | :soon: | :white_check_mark: | :white_check_mark: |
| Actionable alert | Its Monitors are created in AlertManager. And those alerts are actionable. | :white_check_mark: | :white_check_mark: | :soon: |
| Log to STDOUT | Its logs are output to STDOUT/STDERR. | :soon: | :soon: | :white_check_mark: |
| Log as JSON | Its logs are emitted. | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| k6 testing | It is load tested. | :soon: | :soon: | :soon: |
| Error tracking | Its errors are tracked by Sentry. |  | :soon: | :soon: |

## :airplane: Reliability

| Check name | Short Description  | Status |
| :--------- | :----------------- | :------ |
| Auto Scale | It automatically scales horizontally to handle fluctuating workloads. | :white_check_mark: | :white_check_mark: | :soon: |
| CPU req/limit | Its CPU limit and request  | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Memory req/limit | Its memory resource request value is as same as limit value. | :soon: | :white_check_mark: | :white_check_mark: |
| Capacity planning | It can handle the expected load: either load test has been performed, or the expected traffic is under control (e.g., by Gateway). | :white_check_mark:  | :soon: | :white_check_mark: |
| Zero downtime deploy | Its deploy process does not cause service degradation or downtime (e.g. error rate does not increase during deploy). | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Graceful shutdown | It can stop gracefully. | :white_check_mark:  | :soon: | :white_check_mark: |
| Graceful degradation | It keeps working, at least partially, while dependencies (e.g. other service or database) are not working partially or completely. | :white_check_mark: | :soon: | :white_check_mark: |
| Liveness Probe | It has a health check (endpoint) for liveness probe. And liveness probe is configured. | :white_check_mark: | :white_check_mark: | :soon: |
| Readiness Probe | It has a health check (endpoint) for readiness probe. And readiness probe is configured. | :white_check_mark:  | :white_check_mark: | :soon: |
| Timeout | It sets an appropriate timeout for requests over a network. | :white_check_mark: | :white_check_mark: | :white_check_mark: |


## :lock: Security

| Check name | Short Description  | Status |
| :--------- | :----------------- | :------ |
| Security review | It has completed the security design review by security team, and they have been notified of any public APIs. |  | :white_check_mark: | :soon: |
| Non-root user | Its docker container runs as non-root user | :soon: | :soon: | :soon: |
| Secrets | Its sensitive configuration is stored in Kubernetes secrets.  | :soon: | :soon: | :soon: |
| Non-sensitive log | It does not write sensitive information to app logs (STDOUT/STDERR). | :white_check_mark: | :white_check_mark: | :white_check_mark: |
