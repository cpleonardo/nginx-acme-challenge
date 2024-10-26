## Nginx ACME Challenge

Basic Nginx and certbot configuration for initial ACME Challenge validation in order to proof a domain ownership.

If validation success, certificates will be created inside a new directory named `certbot`, these cerificates can be used for TLS encrytion in next Nginx configurations. After validation, make sure to run the certbot renewal container.
