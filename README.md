# CodAPI


## Print

Pod

```
curl -H "content-type: application/json" -d '{ "sandbox": "python", "command": "run", "files": {"": "print(42)" }}' https://uvvaao7tys6wal-11434.proxy.runpod.net/v1/exec
```

Local

```curl
curl -H "content-type: application/json" -d '{ "sandbox": "python", "command": "run", "files": {"": "print(42)" }}' http://localhost:1313/v1/exec
```


## RunPod

```
curl -H "content-type: application/json" -d '{ "sandbox": "python", "command": "run", "files": {"main.py": "import runpod\n\ndef handler(job):\n    job_input = job[\"input\"]\n\n    name = job_input.get(\"name\", \"World\")\n\n    return f\"Hello, {name}!\"\n\n\nrunpod.serverless.start({\"handler\": handler})"}, "args": ["--test_input", "{\"input\": {\"name\": \"World!\"}}"] }' http://localhost:1313/v1/exec
```