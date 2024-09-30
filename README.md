# spark-stored-proc-img-v2

Buld Commands [https://cloud.google.com/dataproc-serverless/docs/guides/custom-containers#build_commands]

IMAGE=gcr.io/my-project/my-image:1.0.1

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
