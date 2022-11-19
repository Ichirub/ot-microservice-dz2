# RUN
- ```docker build . -t ichirub/dz2:v1```
- ```docker run -d -p 8000:8000 -it --rm --name=dz2 ichirub/dz2:v1```

# Open in Browser:
- ```http://localhost:8000/health```
- 
# DOCKER HUB
- ```docker login -u ichirub```
- ```docker push ichirub/dz2:v1```