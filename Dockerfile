FROM python:3.9-alpine

# install dependencies to the local user directory
RUN pip install --no-cache-dir --upgrade modbus-proxy[yaml]

ENTRYPOINT ["modbus-proxy"]
CMD ["-c", "/etc/modbus-proxy.yml"]