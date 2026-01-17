#!/bin/bash
set -e

echo "🚀 Starting Phase 1: Kubernetes Cluster Setup..."

# --- Function: Check Dependencies ---
check_docker() {
    if ! docker info > /dev/null 2>&1; then
        echo "❌ Error: Docker is not running!"
        echo "👉 Fix: Open 'Docker Desktop' in Windows, wait 1 minute, and try again."
        exit 1
    fi
    echo "✅ Docker is running."
}

# --- Function: Install Tools ---
install_tools() {
    # 1. Install kubectl
    if ! command -v kubectl &> /dev/null; then
        echo "📦 Installing kubectl..."
        curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
        sudo mv kubectl /usr/local/bin/
    else
        echo "✅ kubectl is already installed."
    fi

    # 2. Install Kind
    if ! command -v kind &> /dev/null; then
        echo "📦 Installing Kind..."
        [ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
        chmod +x ./kind
        sudo mv ./kind /usr/local/bin/kind
    else
        echo "✅ Kind is already installed."
    fi
}

# --- Function: Create Cluster ---
create_cluster() {
    echo "⚙️  Configuring AgentGuard Cluster..."

    # Create Kind Config (with Ingress support)
    cat > kind-config.yaml <<EOF
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
  kubeadmConfigPatches:
  - |
    kind: InitConfiguration
    nodeRegistration:
      kubeletExtraArgs:
        node-labels: "ingress-ready=true"
  extraPortMappings:
  - containerPort: 80
    hostPort: 80
    protocol: TCP
  - containerPort: 443
    hostPort: 443
    protocol: TCP
EOF

    if kind get clusters | grep -q "agentguard-cluster"; then
        echo "⚠️  Cluster 'agentguard-cluster' already exists. Skipping creation."
    else
        echo "🔥 Creating Kubernetes Cluster (this may take 2-3 minutes)..."
        kind create cluster --name agentguard-cluster --config kind-config.yaml
    fi

    rm kind-config.yaml
}

# --- Execution ---
check_docker
install_tools
create_cluster

echo ""
echo "🎉 Phase 1 COMPLETE: Kubernetes Cluster is Ready!"
echo "👉 Run 'kubectl get nodes' to verify."

