FROM fedora:latest
LABEL Description="Fedora RPM Builder"

RUN dnf install -y rpmdevtools git wget
RUN useradd -m -s /bin/bash builder && \
    mkdir /home/builder/typora

WORKDIR /home/builder/typora

COPY run-script.sh .
RUN chown -R builder:builder . && \
    chmod +x run-script.sh 

USER builder

RUN git clone https://github.com/RPM-Outpost/typora.git /home/builder/typora

CMD /bin/bash
    

                

    
