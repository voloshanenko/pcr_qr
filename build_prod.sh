#! /bin/bash
source env.prod
/bin/bash generate_prod.sh 
docker build -t pcrqr .
docker tag click2dial ${DOCKER_REGISTRY}/pcrqr:latest
docker push ${DOCKER_REGISTRY}/pcrqr:latest
python deploy/deploy.py
