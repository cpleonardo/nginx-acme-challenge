## Nginx ACME Challenge

Basic Nginx and certbot configuration for ACME Challenge validation in order to proof a domain ownership in a VPS instance (EC2, Droplet, VM, etc.).

Replace `subdomain.example.com` and `email@example.com` by your own domain and email address in `docker-compose.yml` file.

If validation success, certificates will be created inside a new directory named `certbot`, these cerificates can be used in upcomming Nginx server configurations with TLS encrytion enabled (https).

`certbot` contaner will renew your cerficates every 12 hours. Certbot will notify you if unrenewed certificates.

Test `certbot` certificate renewal:

```sh
docker exec certbot certbot renew --dry-run
```
