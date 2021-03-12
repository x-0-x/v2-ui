#!/usr/bin/env bash

pyinstaller v2-ui.py -y \
  --clean \
  --workpath build \
  --distpath dist \
  --add-data templates:templates \
  --add-data static:static \
  --add-data translations:translations \
  --add-data bin:bin \
  --add-data template_config.json:. \
  --add-data v2-ui.service:. \
  --specpath .

cd dist

tar zcvf v2-ui-linux.tar.gz v2-ui