FROM fedora:latest
MAINTAINER Daniel Öbrink
LABEL Description="Fedora RPM Builder"

RUN dnf install rpmbuild \
    git && \
    useradd -m -s /bin/bash builder && \
    
USER builder

RUN cd /home/builder && \
    git clone https://github.com/RPM-Outpost/typora.git && \
   
CMD["/bin/bash"]
    

                

    
