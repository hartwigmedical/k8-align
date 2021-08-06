# k8-align
Align FASTQ and deduplicate bams in kubernetes.

Note: k8-align is not used for alignment in [pipeline5](https://github.com/hartwigmedical/pipeline5). 
The results of k8-align are not guaranteed to be identical to the bams created by pipeline5.

### Running in Kubernetes

Need to have the right credentials and a cluster (only need this step once).
```shell script
gcloud container clusters get-credentials rerun-cluster --region europe-west4 --project hmf-crunch>
```

### Usage
Run `./k8-align` for a description of available commands and their usage.

#### Conditions FASTQ files
The FASTQ file names need to contain `_R1_` or `_R2_` to show whether they are read 1 or 2.
All read 1 FASTQ files need to have a corresponding read 2 FASTQ file and vice versa.
A read 1 FASTQ file corresponds to a read 2 FASTQ file when the only difference in their file names is the `_R1_` vs `_R2_`.


### Monitoring
```shell script
kubectl get jobs | grep <your-job-name>
kubectl get pods | grep <your-job-name>
kubectl logs <your-pod-name>
```