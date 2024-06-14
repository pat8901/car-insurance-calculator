Overview:

This web application, using the MVC architectural pattern, allows users to calculate their car insurance premiums based on their personal details. 
By entering information such as age, driving history, annual mileage, and vehicle type, the app uses a predefined formula to estimate the insurance premium. 
This tool provides users with an easy and quick way to get an idea of their potential insurance costs without needing to contact multiple insurance providers.

Running Docker:
(Before continuing be sure to have a working installation of Docker on your system)
(Everything in quotes is meant to be replaced by information that pertains directly to you)

1. Run the following command to to build a docker image, make sure to be in the same directory as the dockerfile.
docker build -t "docker-username"/"image-name":"tag" .

2. Now use the image to run a Docker Container
docker run -p "localport":8080


How to run program without Docker:

