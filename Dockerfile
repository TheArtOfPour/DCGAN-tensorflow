# docker build -t gan .
# docker run --name GANdolf --mount src="/c/app/DCGAN-tensorflow",dst=/app,type=bind -it gan bash
FROM tensorflow/tensorflow

RUN mkdir -p /app

RUN mkdir -p /build

COPY ./build /build

RUN pip install -r /build/requirements.txt

RUN apt-get -y install curl

# CMD python download.py mnist celebA

# CMD python /app/app.py