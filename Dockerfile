FROM odoo:20.0

USER root

COPY . /mnt/extra-addons/ventas_unicah

RUN chown -R odoo:odoo /mnt/extra-addons/ventas_unicah

USER odoo
