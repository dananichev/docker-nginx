# Notes

* It has hardcoded paths to resources
    * ``public_html`` folder (``/home/dananichev/projects:/projects``)
    * ``ssl`` folder (``/etc/letsencrypt:/ssl``) -- which contains ssl certificates
    * ``conf.d`` folder (``/home/dananichev/containers/nginx/conf.d:/etc/nginx/conf.d``) -- which basically points to the ``conf.d`` in this repo
* It requires ``dhparam.pem`` (which must be present inside root folder at the build time)
    * to generate it run ``openssl dhparam -out dhparam.pem 2048`` (feel free to choose key size by yourself)

# Build

``docker build -t nginx-alpine .``

# Use as Service on Debian

* Copy ``docker-nginx-daemon.service`` config file to ``/etc/systemd/system``
* Run ``sudo systemctl daemon-reload && sudo systemctl enable docker-nginx-daemon.service``
