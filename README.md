# Golang-app
<img width="1160" height="491" alt="Image" src="https://github.com/user-attachments/assets/568eb5e6-26b0-4629-8c58-f185c17ffce1" />


# Run app locally on your VM
Run the app locally execute this command in root directory

```sh
go build -o main .
```
this ``main`` can be anything
``-o`` means it will generate build binary with the name main

It will generate main binary then you have to execute it
```sh
./main
```

# 2. Containerize the application
I am going to deploy Multi stage docker file
- In the first stage where you can download any dependencies or use any base image, Once the application is built, In the stage 2 you can build with distroless image as your base image, this distroless image will add capability like security or reduce the image

In the stage 2 we will copy the binary in the stage 1, then we will expose the Port and run the Application.