FROM my-build as runtime

ENV PROJECT_PORT=8080

COPY --from=my-build /app /usr/share/nginx/html

EXPOSE ${PROJECT_PORT}

CMD ["npm", "start"]
