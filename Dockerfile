FROM public.ecr.aws/docker/library/busybox:stable
COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY frp_0.65.0_linux_amd64/frps /bin
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]