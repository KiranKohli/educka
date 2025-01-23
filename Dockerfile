# Start by using the official Nginx image
FROM nginx:alpine

# Copy the content of the current directory into /usr/share/nginx/html
# This assumes static resources or documentation files are in the current context
COPY . /usr/share/nginx/html

# Expose port 80 to serve the content
EXPOSE 80

# Nginx will automatically start with CMD ["nginx", "-g", "daemon off;"], which is the default in the base image

# Comment explaining the purpose of each step:
# - We've chosen nginx:alpine because it is a lightweight image for serving static content
# - COPY command is used to move all files into the root directory of the Nginx's HTML folder
# - EXPOSE specifies the port on which the container will listen