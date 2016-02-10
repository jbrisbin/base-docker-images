# Apache Zeppelin Docker image

This project demonstrates the use of `make` and overlays to build up a `Dockerfile`. It creates an image with the following components:

* Ubuntu 14.04
* Prerequisite packages - Installs some packages needed to check out and build Apache Zeppelin. It turns out that /when/ these packages are installed in the docker build process is significant.
* Adds PPA/3rd-party deb repositories - Uses PPA for installing Java 1.8 and Maven 3.3 and the Mesosphere repo for installing Apache Mesos.
* Oracle Java 8 - Uses steps adapted from the official `java:8` image to install the JDK and the Maven build tool.
* Apache Mesos - Installs the Apache Mesos libraries for communicating with a Mesos cluster.
* Apache Zeppelin - Clones the source from GitHub and builds the 0.5.6 tag of Apache Zeppelin.

### Using

To use this project, just run the `make install` target to have the Dockerfile generated from the overlays and `docker build` executed with the proper flags.

    $ make install

### Configuring

Feel free to fork this repository and change the versions of Mesos, Spark, or Zeppelin to match your own setup. You could add or remove overlays by creating a file in the `overlays/` directory and adding it to the `OVERLAYS` variable in the `Makefile`.

### License

This code is Apache 2.0 licensed.

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)
