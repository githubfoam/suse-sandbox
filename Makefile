IMAGE := alpine/fio
APP:="scripts/archlinux-req.sh"
archlinux-req:
	bash scripts/archlinux-req.sh
deploy-vagrant:
	bash scripts/deploy-vagrant.sh
push-image:
	docker push $(IMAGE)
.PHONY: deploy-vagrant archlinux-req push-image
