# Build
custom_build(
    # name of the container image
    ref='catalog-service',
    # command to build the container image
    command='./mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=$EXPECTED_REF -DskipTests',
    # files to watch that trigger a new build
    deps=['pom.xml','src']
)

# Deploy
k8s_yaml(['k8s/deployment.yaml', 'k8s/service.yaml'])

# Manage
k8s_resource('catalog-service',port_forwards=['9001'])