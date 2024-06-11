#!/bin/bash

# Extract the installation instructions from the document
installation_text=$(cat << 'EOF'
When not using a docker container, we recommend using a virtual environment to install AutoGen. This will ensure that the dependencies for AutoGen are isolated from the rest of your system.

You can create a virtual environment with venv as below:

python3 -m venv autogen
source autogen/bin/activate

Another option is with Conda, Conda works better at solving dependency conflicts than pip. You can install it by following this doc, and then create a virtual environment as below:

conda create -n autogen python=3.10  # python 3.10 is recommended as it's stable and not too old
conda activate autogen

Now, you're ready to install AutoGen in the virtual environment you've just created.
Python

AutoGen requires Python version >= 3.8. It can be installed from pip:

pip install pyautogen

Optional Dependencies

docker

For the best user experience and seamless code execution, we highly recommend using Docker with AutoGen. Docker is a containerization platform that simplifies the setup and execution of your code. Developing in a docker container, such as GitHub Codespace, also makes the development convenient.

When running AutoGen out of a docker container, to use docker for code execution, you also need to install the python package docker:

pip install docker

blendsearch

AutoGen offers a cost-effective hyperparameter optimization technique EcoOptiGen for tuning Large Language Models. Please install with the [blendsearch] option to use it.

pip install "pyautogen[blendsearch]"

retrievechat

AutoGen supports retrieval-augmented generation tasks such as question answering and code generation with RAG agents. Please install with the [retrievechat] option to use it.

pip install "pyautogen[retrievechat]"

mathchat

AutoGen offers an experimental agent for math problem solving. Please install with the [mathchat] option to use it.

pip install "pyautogen[mathchat]"
EOF
)

# Save the installation instructions to a README file
echo "$installation_text" > AutoGen_Installation.md

echo "AutoGen installation instructions have been extracted and saved to AutoGen_Installation.md"
