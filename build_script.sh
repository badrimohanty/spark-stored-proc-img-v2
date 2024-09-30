IMAGE=us-east4-docker.pkg.dev/bnm-experimental/bnm-spark/pyspark-img-v2

# Download the Miniconda3 installer.
wget https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh

# Python module example
cat >test_util.py <<EOF
def hello(name):
  print("hello {}".format(name))

def read_lines(path):
  with open(path) as f:
    return f.readlines()
EOF

# Build and push the image.
docker build -t "${IMAGE}" .
docker push "${IMAGE}"
