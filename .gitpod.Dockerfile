FROM gitpod/workspace-base as workspace-base
SHELL ["/bin/bash", "-c"]

RUN docker run \
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$HOME/neo4j/data:/data \
    neo4j
