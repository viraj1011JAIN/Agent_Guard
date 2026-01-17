# Container Registry Configuration

## Docker Hub Setup
AgentGuard uses Docker Hub for container image storage.

### Prerequisites
1. Visit: https://hub.docker.com/signup
2. Sign up (free account)
3. Verify your email

### Authentication
Once created, run this in your terminal:
`docker login`

### Image Naming
Format: <username>/agentguard-<component>:<tag>
Example: viraj2003/agentguard-ebpf-collector:latest

### Quick Commands
# Build
make build

# Tag (Replace viraj2003 with your username)
export DOCKER_USERNAME=viraj2003
for component in ebpf-collector security-brain tool-proxy web-ui; do
  docker tag agentguard/$component:latest $DOCKER_USERNAME/agentguard-$component:latest
done

# Push
for component in ebpf-collector security-brain tool-proxy web-ui; do
  docker push $DOCKER_USERNAME/agentguard-$component:latest
done
