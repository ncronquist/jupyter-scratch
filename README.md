# Docker Jupyter Template

This is a template project for Jupyter notebooks.


## How to Use Template

- Click the `Use this template` button on this GitHub repo
- Fill out the information to create your own repository and click the `Create repository from template button`
- Clone your new repository to your local computer
- Checkout the Jupyter usage below


## Jupyter Usage

This section describes how to use this project once you have created your own repository as described above.


### Prerequisites

- [Docker](https://docs.docker.com/engine/install/)


### Run the Jupyter Container

This project uses docker-compose to run a Jupyter docker container.

- Run Jupyter - the docker-compose command will run the Jupyter docker container and it will output the URL where you can work with your Jupyter notebooks

```sh
docker-compose up
```

At the end of the log output you should see something like:

```txt
To access the notebook, open this file in a browser:
    file:///home/jovyan/.local/share/jupyter/runtime/nbserver-6-open.html
Or copy and paste one of these URLs:
    http://98594f177e86:8888/?token=9e990adcd6befd7914929ded17a00cc2dd42e2b506b026b9
 or http://127.0.0.1:8888/?token=9e990adcd6befd7914929ded17a00cc2dd42e2b506b026b9
```

You will probably want to use the url that starts with `http://127.0.0.1`, but if that doesn't work replace `http://127.0.0.1` with `http://localhost`.

All of the notebook files you add in the Jupyter web app will be saved to the [notebooks](./notebooks) folder in this repository. They should be checked in and versioned with Git.

- Stop Jupyter
  - Press `ctrl+c` or potentially `ctrl+shift+c` on some systems


### Adding Python Dependencies

You can add other Python packages to use in you Jupyter notbook by specifying them in the [requirements.txt](./requirements.txt) file.

After you add new packages to the `requirements.txt` file, make sure to stop the docker container and then restart it.
