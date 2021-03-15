# Using the datascience base image which includes libraries for data analysis
# from the Julia, Python, and R communities.
# See https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html
# for more information on this base image and other images you may want to use.
FROM jupyter/datascience-notebook

COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/

RUN pip install --requirement /tmp/requirements.txt && \
  fix-permissions $CONDA_DIR && \
  fix-permissions /home/$NB_USER
