FROM alpine/git AS clone-code
WORKDIR /app
RUN git clone -b env https://github.com/LynaSovann/frontend-for-testing.git .

FROM node:22-alpine AS build
WORKDIR /app

RUN apk add --no-cache bash curl

RUN corepack enable && corepack prepare yarn@stable --activate

COPY --from=clone-code /app /app

RUN rm -rf /app/.env.*

ARG NEXT_PUBLIC_API_URL
ENV NEXT_PUBLIC_API_URL=$NEXT_PUBLIC_API_URL

RUN yarn
RUN yarn build

FROM node:22-alpine
LABEL Project="k8s"
WORKDIR /app

COPY --from=build /app /app

EXPOSE 3000

CMD ["yarn", "start"]