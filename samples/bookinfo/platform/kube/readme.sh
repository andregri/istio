kubectl create ns bookinfo
kubectl apply -f bookinfo.yaml -n bookinfo
kubectl apply -f bookinfo-mysql-statefulset.yaml -n bookinfo

kubectl get po -n bookinfo -w

kubectl apply -f bookinfo-ratings-v2-mysql.yaml -n bookinfo

kubectl port-forward svc/productpage -n bookinfo 9080:9080

kubectl logs -n bookinfo -c mysql mysql-0

kubectl delete ns bookinfo

# backup 
kubectl apply -n bookinfo -f mysql-backup.yaml 
kubectl apply -n bookinfo -f mysql-restore.yaml 

kubectl delete -n bookinfo -f mysql-backup.yaml 