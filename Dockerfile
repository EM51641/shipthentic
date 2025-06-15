FROM elixir:1.18.4-otp-27 as build

# Install build dependencies
RUN apt-get update -y && apt-get install -y build-essential git \
    && apt-get clean && rm -f /var/lib/apt/lists/*_*

# Install hex + rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Create build directory
WORKDIR /app

# Install mix dependencies
COPY mix.exs mix.lock ./
RUN mix deps.get --only prod

ENV MIX_ENV=prod

# Copy all source code
COPY lib lib
COPY config config
COPY priv priv

# Compile the project
RUN mix deps.compile
RUN mix compile
RUN mix release

# The command to run the application
CMD ["/app/_build/prod/rel/shipthentic/bin/shipthentic", "start"]

# Start a new build stage
#FROM debian:bullseye-slim
#
#RUN apt-get update -y && apt-get install -y libstdc++6 openssl libncurses5 locales \
#    && apt-get clean && rm -f /var/lib/apt/lists/*_*
#
## Set the locale
#RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen
#
#ENV LANG en_US.UTF-8
#ENV LANGUAGE en_US:en
#ENV LC_ALL en_US.UTF-8
#
#WORKDIR /app
#
## Copy only the compiled artifacts
#COPY --from=build /app/_build/prod/rel/shipthentic/bin/shipthentic /app/bin
#COPY --from=build /app/priv /app/priv
#COPY --from=build /app/config /app/config
#
#EXPOSE 4000
#
## The command to run the application
#CMD ["/app/bin/shipthentic", "start"]