<VirtualHost *:80>
    DocumentRoot /opt/graylog2-web-interface/public

    <Directory /opt/graylog2-web-interface/public>
        Allow from all
        Options -MultiViews
    </Directory>

    ErrorLog /var/log/apache2/error.log
    LogLevel warn
    CustomLog /var/log/apache2/access.log combined
</VirtualHost>
