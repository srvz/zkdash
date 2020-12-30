FROM srvz/zkdash:base

COPY . .

RUN chmod +x entrypoint.sh

EXPOSE 8888

ENTRYPOINT [ "./entrypoint.sh" ]

CMD ["python", "init.py", "-port=8888"] 