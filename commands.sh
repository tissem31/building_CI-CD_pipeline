git clone git@github.com:tissem31/building_CI-CD_pipeline.git
cd building_CI-CD_pipeline/flask-sklearn
git pull
make all
az webapp up --name flaskmlibitlast07 --sku B1 --runtime "PYTHON:3.10" --logs
