
FROM odoo:20.0

USER root

COPY . /mnt/extra-addons/ventas_unicah
COPY start.sh /start.sh

RUN chown -R odoo:odoo /mnt/extra-addons/ventas_unicah \
    && chown odoo:odoo /start.sh \
    && chmod 755 /start.sh

USER odoo

CMD ["/start.sh"]

