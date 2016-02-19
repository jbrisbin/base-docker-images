RUN apt-get update
RUN apt-get install -q -y apt-transport-https software-properties-common
RUN apt-get dist-upgrade -y
