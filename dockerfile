FROM alpine/git as clone
MAINTAINER hopejohn <espoir.ngamijean@gmail.com>
WORKDIR /app
RUN git clone https://gitlab.com/hopejohn/jltsecngamijean.git

FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY --from=clone /app/jltsecngamijean /usr/share/nginx/html
EXPOSE 8181


