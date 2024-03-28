# dynu
Container for Dynu DNS IP address update at regular interval

## Samples
Sample files for deployments
* sample-docker-compose.yaml
* sample-kubernetes-deployment.yaml

### Environment variables
* DYNU_USERNAME - Replace with Dynu login username.
* DYNU_PASSWORD - Replace with Dynu login password.
* DYNU_HOSTNAME - Replace with domain name to update. Use comma separated list without spaces for multiple domains.
* LOOP_INTERVAL - Optional. Replace with loop interval value in seconds. Value format is NUMBER[SUFFIX] as per UNIX sleep command format. Defaults to 600 (10 minutes).
