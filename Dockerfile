FROM fsharp:netcore AS build
LABEL Name=functional-logs Version=0.0.1

RUN apt update
RUN apt install -y vim locales

# Set the locale
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# WORKDIR /app
# ADD .paket ./.paket
# ADD packages ./packages
# ADD paket-files ./paket-files
# ADD build.sh .
# ADD build.fsx .
# ADD paket.dependencies .
# ADD paket.lock .

WORKDIR /app
RUN dotnet new console -lang f#

# ADD Ginnungagap/App.config .
# ADD Ginnungagap/Ginnungagap.fsproj .
# ADD Ginnungagap/paket.references .

# WORKDIR /app
# RUN sh build.sh

# WORKDIR /app/Ginnungagap
# RUN chmod -R 777 .

# CMD [ "dotnet", "run" ]
CMD ["/bin/bash"]
