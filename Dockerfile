#use centos image baseimage
FROM  centos:centos6

# Set the working directory to /app
WORKDIR  /cobol

# 
COPY gnucobol-3.0-rc1/  /cobol/

# Install any needed packages specified in requirements.txt
#RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN yum -y install libgmp3-dev libtool libdb-dev ncurses-dev libncurses-dev
RUN yum -y install gmp gmp-devel libtool ncurses ncurses-devel ncurses-libs make
RUN yum -y install libdbi libdbi-devel libtool-ltdl libtool-ltdl-devel db4 db4-devel

# Run app.py when the container launches
CMD ["ls"]
