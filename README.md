# Theia for python lambda development

FROM : latest theia/python (python 3.7)

with :
- python 3.7 as alternatives preferred version
- Docker 19.03.8
- [AWS Command Line Interface]
- [AWS Serverless Application Model]

## Usage

### Run
```sh
docker run -d \
    -p 3000:3000 \
    --name python-lambda \
    -v "$(pwd):/home/project:cached" \
    davidvergison/theia-python-lambda:latest
```

### Build
```sh
docker build \
    -t davidvergison/theia-python-lambda:latest \
    .
```

[AWS Serverless Application Model]: https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html
[AWS Command Line Interface]: https://aws.amazon.com/cli/