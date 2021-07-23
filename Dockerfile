FROM quay.io/ansible/toolset
COPY requirements.txt requirements.txt
RUN /opt/toolset/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt
RUN \
cookiecutter --version \
molecule --version && \
molecule drivers && \
python3 -m pip check && \
yamllint --version && \
which docker && \
docker --version && \
podman --version && \
git --version
