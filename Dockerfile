FROM Le-Thon/LeThon:slim-buster

#clonning repo 
RUN git clone https://github.com/Le-Thon/LeThon.git /root/LeThon
#working directory 
WORKDIR /root/LeThon

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/sbb_b/bin:$PATH"

CMD ["python3","-m","gggne"]
