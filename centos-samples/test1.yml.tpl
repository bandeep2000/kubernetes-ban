apiVersion: v1
kind: Pod
metadata:
  name: test1
  labels:
    app: test1
spec:
    spec:
      containers:
      - name: hello-cloudbuild
        image: bandeep2000/python-test:COMMIT_SHA