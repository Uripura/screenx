# screenx

screenx is a simple bash script for creating screenshots and uploading them via FTPS.

# Requirements

You need to install a few pakages that are used by my script.
  - xfce4-screenshooter
  - lftp
  - xclip

## Let lftp trust your Certificate

For lftp to trust a certificate it needs to be added to the config.
Add `set ssl:ca-file "/path/to/cert.crt"` to the `/etc/lftp.conf`
In my case the certs are the Intermediate Certificates from Let's Encrypt. You can finde them 
[here](https://letsencrypt.org/certificates/).
It is generally a bad idea to skip certificate verification like it is suggested a hundred times in the web.
