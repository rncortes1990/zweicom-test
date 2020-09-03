FROM python:latest
LABEL maintainer="Raúl Nicolás Cortés Santibáñez"
RUN useradd -m python-user
USER python-user
WORKDIR /home/python-user
ENV PATH=$PATH:/home/python-user/.local/bin
COPY service.py .
RUN pip install Flask
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["service.py"]