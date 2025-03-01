python - <<EOF
from utils.downloads import attempt_download

models = ['n', 's', 'm', 'l', 'x']
models.extend([x + '6' for x in models])  # add P6 models

for x in models:
    attempt_download(f'yolov5{x}.pt')

EOF
