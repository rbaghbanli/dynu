# dynu
Container for Dynu DNS IP address update at regular interval

## Samples
Sample files for deployments
* sample-docker-compose.yaml
* sample-kubernetes-deployment.yaml

### Environment variables
* DYNU_USERNAME - Replace with DYNU login username.
* DYNU_PASSWORD - Replace with DYNU login password.
* DYNU_HOSTNAME - Replace with DYNU domain name to update. In case of multiple domains use comma separated list without any spaces.
* LOOP_INTERVAL - Replace with loop interval value in seconds. Value format: NUMBER[SUFFIX] as per UNIX sleep command.
