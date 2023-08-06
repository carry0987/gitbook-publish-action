FROM carry0987/gitbook:light

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
VOLUME /gitbook/node_modules

ENTRYPOINT ["/entrypoint.sh"]
