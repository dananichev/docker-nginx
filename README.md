# Notes

* It has hardcoded paths to resources
    * ``public_html`` folder (``/home/dananichev/projects:/projects``)
    * ``ssl`` folder (``/etc/letsencrypt:/ssl``) -- which contains ssl certificates
    * ``conf.d`` folder (``/home/dananichev/containers/nginx/conf.d:/etc/nginx/conf.d``) -- which basically points to the ``conf.d`` in this repo
* It requires ``dhparam.pem`` (which must be present inside root folder at the build time)
