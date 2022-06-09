#! /bin/bash
source env.prod
/bin/bash generate_prod.sh 
docker build -t pcrqr .
docker tag pcrqr ${DOCKER_REGISTRY}/pcrqr:latest
docker push ${DOCKER_REGISTRY}/pcrqr:latest
python3 deploy/deploy.py
