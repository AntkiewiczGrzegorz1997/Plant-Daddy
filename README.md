# Plant Daddy

Welcome to Plant Daddy, the ultimate green haven for plant lovers! 🌿🌸 Plant Daddy is your go-to social media app for showcasing your real-life plant collection in all its verdant glory.

Whether you're a succulent connoisseur, a tropical paradise curator, or a proud parent to a flourishing indoor jungle, Plant Daddy is your digital sanctuary. With Plant Daddy, you can effortlessly add your beloved plants to your virtual collection, snap photos, give them unique names, and even add personalized icons to capture the essence of each green companion.

But that's not all! Our thriving community of plant enthusiasts is here to celebrate your botanical achievements. Connect with fellow green thumbs, share gardening tips, and explore the diverse flora of Plant Daddy. 🌼🌱 Experience the joy of swapping plant stories, marveling at stunning foliage, and getting inspired to expand your own garden. In Plant Daddy, your love for plants knows no bounds. Join us in cultivating a digital garden of friendship and inspiration. Let your plant passion bloom on Plant Daddy!

## How it looks
<img src='screens/Screenshot 2023-10-25 at 14.56.01.png' height=200> <img src='screens/Screenshot 2023-10-25 at 14.56.27.png' height=200> <img src='screens/Screenshot 2023-10-25 at 14.56.39.png' height=200> 
<img src='screens/Screenshot 2023-10-25 at 14.56.56.png' height=200>
<img src='screens/Screenshot 2023-10-25 at 14.57.09.png' height=200>
<img src='screens/Screenshot 2023-10-25 at 15.01.29.png' height=200>
<img src='screens/Screenshot 2023-10-25 at 15.01.46.png' height=200>
<img src='screens/Screenshot 2023-10-25 at 15.02.07.png'  height=200>
<img src='screens/Screenshot 2023-10-25 at 14.58.24.png' height=200>


## Getting Started

To get started with Plant Daddy, follow these simple steps:

### Install Docker Desktop

[Docker Desktop](https://www.docker.com/products/docker-desktop/)

### Pull Docker containers

In the terminal navigate the folder from which you would like to clone start the app. 
After pull 3 containers from the docker hub as presented below:

```bash
#example folder
cd plantDaddy

docker pull grzegorzant/client-new:latest
docker pull grzegorzant/server-new2:latest
docker pull grzegorzant/db-new:latest
```

### Prepare **docker-compose.yaml** file.

Download the **docker-compose.yaml** file and place it in the folder you pulled the docker containers to. 

### Run the App

In the terminal run:

```bash
docker-compose up
```

### Open the App

Click on the following link (or type "localhost:3001" in your browser):

[Open the Link](http://localhost:3001)


## Tech Stack

![Tech Stack](https://skillicons.dev/icons?i=js,react,postgres,express,nodejs,css,docker,materialui)

### Back End

- **Express**: A fast, unopinionated, and minimalist web framework for Node.js.
- **PostgreSQL**: A powerful, open-source relational database system.

### Front End

- **Material UI**: A popular React UI framework that provides a set of customizable components.
- **React**: A JavaScript library for building user interfaces.
- **Cloudinary**: Cloudinary is a cloud-based media management platform.

### APIs

- **Perennial Plant API**: Used for accessing plant-related data.

### Security

- **JWT (JSON Web Tokens)**: Used for secure user authentication.

### Other Libraries

- **Axios**: A promise-based HTTP client for making network requests.

## Contributors

- Grzegorz Antkiewicz

Feel free to contribute to the growth of Plant Daddy!
