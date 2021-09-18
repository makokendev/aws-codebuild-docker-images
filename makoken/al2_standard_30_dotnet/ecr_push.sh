aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 371562447197.dkr.ecr.us-east-1.amazonaws.com
docker build -t cicd-dotnet .
docker tag cicd-dotnet:latest 371562447197.dkr.ecr.us-east-1.amazonaws.com/cicd-dotnet:latest
docker push 371562447197.dkr.ecr.us-east-1.amazonaws.com/cicd-dotnet:latest