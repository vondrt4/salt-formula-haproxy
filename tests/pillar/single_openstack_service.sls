haproxy:
  proxy:
    enabled: true
    mode: tcp
    logging: syslog
    max_connections: 1024
    listen:
      cinder_api:
        type: openstack-service
        binds:
        - address: 127.0.0.1
          port: 8776
        servers:
        - name: ctl01
          host: 127.0.0.1
          port: 8776
          params: check inter 10s fastinter 2s downinter 3s rise 3 fall 3
        - name: ctl02
          host: 127.0.0.1
          port: 8776
          params: check inter 10s fastinter 2s downinter 3s rise 3 fall 3
        - name: ctl03
          host: 127.0.0.1
          port: 8776
          params: check inter 10s fastinter 2s downinter 3s rise 3 fall 3