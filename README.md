A Security Gate example for deploying container images using Github Actions and Microsoft defender for Containers
==================================================================================================================


Deployment steps:    
------------------


Clone Repo and move into it:

	git clone git@github.com:raddaoui/echoserver.git
	cd echoserver



Build application image
------------------------

Build app image using ACR tasks:

	ACR_NAME="{ACR registry name}"
	IMAGE_NAME="echoserver"
	IMAGE_TAG="v1"
	RESOURCE_GROUP="{ACR resource group}"
	az login # authenticate if you're not
	az acr build --registry $ACR_NAME -g $RESOURCE_GROUP --image $IMAGE_NAME:$IMAGE_TAG .


Build using docker:

	docker build -t $ACR_NAME.azurecr.io/$IMAGE_NAME:$IMAGE_TAG .
	docker push $ACR_NAME.azurecr.io/$IMAGE_NAME:$IMAGE_TAG

