crd:
	kubectl create -f deploy/crds/static.docs_hugosites_crd.yaml

crd-down:
	kubectl delete -f deploy/crds/static.docs_hugosites_crd.yaml

sdk:
	kubectl create -f deploy/crds/static.docs_v1alpha1_hugosite_cr.yaml

sdk-down:
	kubectl delete -f deploy/crds/static.docs_v1alpha1_hugosite_cr.yaml

olm:
	kubectl create -f deploy/crds/static.docs_v1alpha1_hugosite2_cr.yaml

olm-down:
	kubectl delete -f deploy/crds/static.docs_v1alpha1_hugosite2_cr.yaml

up:
	kubectl create -f deploy/service_account.yaml
	kubectl create -f deploy/role.yaml
	kubectl create -f deploy/role_binding.yaml
	kubectl create -f deploy/operator.yaml

visit:
	minikube service external-nginx

down:
	kubectl delete -f deploy/service_account.yaml
	kubectl delete -f deploy/role.yaml
	kubectl delete -f deploy/role_binding.yaml
	kubectl delete -f deploy/operator.yaml

# bp:
refresh:
	minikube delete
	minikube start
	make up
	make visit

