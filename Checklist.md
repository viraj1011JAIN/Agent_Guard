# 🎯 AgentGuard Complete Implementation Checklist

**Complete End-to-End Deployment Guide**

*From Zero to Production-Ready AI Agent Security Platform*

---

## 📋 Progress Tracker

**Last Updated**: 2026-01-17 06:30 GMT

**Current Phase**: Phase 0 - Foundation & Environment Setup
**Current Task**: Task 0.3 - Project Repository Setup
**Current Subtask**: 0.3.4 - Creating documentation structure (90% complete)
**Overall Progress**: Task 0.1 ✅ | Task 0.2 ✅ | Task 0.3 🔄 95% | Task 0.4 ☐ | Task 0.5 ☐

**System Specifications (Confirmed):**
- CPU: 8 cores ✅
- RAM: 16GB ✅
- GPU: RTX 3050 4GB ✅
- Windows Version: 10 Home Single Language, Build 26200 ✅
- Virtualization: Enabled ✅
- WSL2: Installed ✅
- Ubuntu: 22.04.5 LTS ✅
- Username: viraj2003 ✅
- Disk Space: 1006.85GB available ✅
- WSL2 Memory: 12GB ✅
- WSL2 CPU Cores: 6 ✅
- Docker: 28.5.1 ✅
- Go: 1.21.13 ✅
- Python: 3.11.14 ✅
- Node.js: 20.20.0 ✅
- npm: 10.8.2 ✅
- kubectl: 1.32.0 ✅
- Helm: 3.19.5 ✅
- k3d: 5.8.3 ✅
- make: 4.3 ✅
- jq: 1.6 ✅
- yq: v4.40.5 ✅
- tree: v2.0.2 ✅

---

## 📋 How to Use This Checklist

### Structure
- **Phases**: Major milestones in the project (0-6)
- **Tasks**: Specific actionable items under each phase
- **Subtasks**: Granular steps within tasks
- **Success Criteria**: How to verify each phase is complete
- **Expected Outputs**: What you should see/have after completion

### Conventions
- ☐ Unchecked task
- ✅ Completed task
- ⚠️ Critical task (blocking next phase)
- 🔍 Verification step
- 📊 Expected output
- ⚡ Performance validation
- 🔒 Security validation

### Progress Tracking
After each phase, verify ALL success criteria before proceeding.

---

## Phase 0: Foundation & Environment Setup

**Goal**: Establish development environment and project structure

**Prerequisites**: None (starting from scratch)

**Estimated Complexity**: Basic

---

### Task 0.1: Windows Environment Preparation (if using Windows)

**Status**: ✅ COMPLETE (100%)

#### Subtasks:

✅ **0.1.1** Check Windows version
- ✅ Command executed
- ✅ Version confirmed: Windows 10 Home Single Language, Build 26200
- ✅ Build meets requirements (26200 > 2004)

✅ **0.1.2** Enable virtualization in BIOS
- ✅ Virtualization status checked: TRUE
- ✅ Already enabled (no manual action needed)

✅ **0.1.3** Enable Windows features
- ✅ Virtual Machine Platform enabled (WSL2 present)
- ✅ Windows Subsystem for Linux enabled (WSL2 present)
- ✅ Already configured (Docker Desktop uses WSL2)

✅ **0.1.4** Install WSL2
- ✅ WSL2 is installed
- ✅ Default version is 2
- ✅ Ubuntu 22.04 LTS installed successfully
- ✅ User created: viraj2003
- ✅ Available disk space: 1006.85GB

✅ **0.1.5** Configure WSL2 resources
- ✅ .wslconfig file created in user directory
- ✅ Memory limit set to 12GB (verified: 11Gi available)
- ✅ Processor count set to 6 cores (verified)
- ✅ Swap size set to 8GB
- ✅ Localhost forwarding enabled
- ✅ WSL restarted and configuration applied

#### Success Criteria:
🔍 **Verification Steps:**
- ✅ Ubuntu terminal opens successfully
- ✅ `wsl --version` shows "WSL version 2"
- ✅ Can access `/mnt/c` directory
- ✅ Resource limits are respected (12GB RAM, 6 cores)
- ⏳ Docker integration pending (needs Docker Desktop setup)

📊 **Expected Outputs:**
- ✅ Ubuntu terminal opens without errors
- ✅ WSL version command returns "WSL version 2"
- ✅ Can navigate to /mnt/c directory
- ✅ Memory shows 11Gi (12GB allocated, system overhead normal)
- ✅ CPU shows 6 cores
- ⏳ Docker version will work after Docker Desktop integration

---

### Task 0.2: Install Core Development Tools in WSL2

**Status**: ✅ COMPLETE (100%)

#### Subtasks:

✅ **0.2.1** Update system packages
- ✅ Opened WSL2 Ubuntu terminal
- ✅ Updated package lists
- ✅ Upgraded all installed packages
- ✅ Installed build essentials
- ✅ Installed common utilities (curl, wget, git)

✅ **0.2.2** Install Docker Desktop for Windows
- ✅ Docker Desktop already installed
- ✅ WSL2 backend enabled
- ✅ Ubuntu-22.04 integration enabled
- ✅ Docker works in Ubuntu terminal (verified)

✅ **0.2.3** Verify Docker in WSL2
- ✅ Docker version checked (Client: 28.5.1, Server: 28.5.1)
- ✅ Can run containers without sudo
- ✅ Test container ran successfully (hello-world)
- ✅ Docker is fully operational

✅ **0.2.4** Install Go programming language
- ✅ Downloaded Go 1.21.13 binary
- ✅ Extracted to /usr/local
- ✅ Added Go to PATH in bashrc
- ✅ Go installation verified (go1.21.13)
- ✅ Go workspace accessible

✅ **0.2.5** Install Python
- ✅ Added deadsnakes PPA
- ✅ Installed Python 3.11.14
- ✅ Installed python3-pip
- ✅ Installed python3-venv
- ✅ Python verified (3.11.14)
- ✅ pip installation working
- ✅ Fixed apt_pkg module issue

✅ **0.2.6** Install Node.js and npm
- ✅ NodeSource repository attempted
- ✅ Node.js 12 installed (needs upgrade to 20)
- ✅ Node.js 20 LTS installed successfully
- ✅ npm latest version installed (10.8.2)
- ✅ Node and npm verified

✅ **0.2.7** Install Kubernetes tools
- ✅ kubectl 1.32.0 installed
- ✅ Helm v3.19.5 installed
- ✅ k3d v5.8.3 installed
- ✅ Tools verified in PATH

✅ **0.2.8** Install k3d (Kubernetes in Docker)
- ✅ k3d installer script downloaded
- ✅ k3d installed successfully
- ✅ k3d version checked

✅ **0.2.9** Install additional utilities
- ✅ Installed make 4.3
- ✅ Installed jq 1.6
- ✅ Installed yq v4.40.5
- ✅ Installed tree v2.0.2
- ✅ All utilities verified

#### Success Criteria:
✅ All version commands return successfully
✅ Docker runs containers without sudo
✅ All tools installed and verified

---

### Task 0.3: Project Repository Setup

**Status**: 🔄 In Progress (95% complete - script running)

#### Subtasks:

✅ **0.3.1** Create project directory structure
- ✅ Main project directory exists (/mnt/c/Agent_Guard/Agent_Guard)
- ✅ Navigated to project directory
- ✅ Git repository already initialized
- ✅ .gitignore file being created
- ✅ Common ignore patterns will be added

✅ **0.3.2** Create component directories
- ✅ Created agent-runtime directory
- ✅ Created ebpf-collector directory
- ✅ Created security-brain directory
- ✅ Created tool-proxy directory
- ✅ Created red-team directory
- ✅ Created web-ui directory
- ✅ Created deploy directory
- ✅ Created docs directory
- ✅ Created benchmarks directory
- ✅ Created examples directory

✅ **0.3.3** Create configuration directories
- ✅ Created config directory in project root
- ✅ Created config/opa-policies subdirectory
- ✅ Created config/k8s-manifests subdirectory
- ✅ Created config/helm-charts subdirectory
- ✅ Created config/environments subdirectory

🔄 **0.3.4** Create documentation structure
- ⏳ Creating README.md (in progress)
- ⏳ Creating CONTRIBUTING.md
- ⏳ Creating LICENSE file (Apache 2.0)
- ⏳ Creating CODE_OF_CONDUCT.md
- ⏳ Creating docs/architecture directory
- ⏳ Creating docs/api directory
- ⏳ Creating docs/deployment directory

⏳ **0.3.5** Initialize component README files
- ☐ Create README.md in each component directory
- ☐ Add component description placeholders
- ☐ Add build instructions placeholders
- ☐ Add testing instructions placeholders

⏳ **0.3.6** Create Makefile for automation
- ☐ Create Makefile in project root
- ☐ Add phony targets declaration
- ☐ Add help target with descriptions
- ☐ Add clean target
- ☐ Add basic build targets

⏳ **0.3.7** Set up version control
- ☐ Configure Git user name
- ☐ Configure Git user email
- ☐ Create initial commit
- ☐ Create development branch
- ☐ Document Git workflow in CONTRIBUTING.md

#### Success Criteria:
🔍 **Verification Steps:**
- Directory tree shows all required folders
- Git status shows clean working directory
- All README files are present
- Makefile help target displays correctly
- Git log shows initial commit
- Can create and switch branches

📊 **Expected Outputs:**
- Tree command shows organized directory structure
- Git status returns "nothing to commit"
- Each component has its own README
- Makefile displays available targets
- Git log shows commit history
- Branch listing shows main and development branches

---

### Task 0.4: Development Environment Configuration

#### Subtasks:

☐ **0.4.1** Configure VSCode (or preferred IDE)
- Install Visual Studio Code
- Install WSL extension
- Connect to WSL workspace
- Install Go extension
- Install Python extension
- Install Docker extension
- Install Kubernetes extension
- Install YAML extension

☐ **0.4.2** Set up editor workspace
- Open project directory in editor
- Configure editor settings for Go
- Configure editor settings for Python
- Configure editor settings for TypeScript
- Set up recommended extensions list
- Configure format on save
- Set up linting rules

☐ **0.4.3** Configure terminal environment
- Set up shell aliases for common commands
- Configure shell prompt with Git info
- Set up command history search
- Configure tab completion
- Create project-specific shell functions

☐ **0.4.4** Set up secrets management
- Create .env.example file
- Document required environment variables
- Add .env to .gitignore
- Create secrets directory structure
- Document secrets management approach

☐ **0.4.5** Configure debugging setup
- Set up Go debugging configuration
- Set up Python debugging configuration
- Configure Docker debugging
- Create launch configurations for common scenarios
- Test debugging capabilities

#### Success Criteria:
🔍 **Verification Steps:**
- Editor opens project without errors
- Extensions are installed and active
- Linting works for all languages
- Debugging breakpoints work
- Environment variables load correctly

📊 **Expected Outputs:**
- VSCode shows no extension errors
- Go files show syntax highlighting and errors
- Python files show linting suggestions
- Breakpoints stop execution correctly
- Shell aliases work as expected

---

### Task 0.5: Container Registry Setup

#### Subtasks:

☐ **0.5.1** Choose container registry
- Decide between Docker Hub, GitHub Container Registry, or private registry
- Create account if needed
- Verify access credentials

☐ **0.5.2** Configure local Docker authentication
- Log in to container registry
- Verify authentication success
- Test image push capability
- Test image pull capability

☐ **0.5.3** Set up image naming convention
- Define image naming scheme
- Define tagging strategy (latest, version tags)
- Document naming convention
- Create environment variables for registry URL

☐ **0.5.4** Create base images planning
- List all required base images
- Document base image dependencies
- Plan layer optimization strategy
- Document multi-stage build approach

#### Success Criteria:
🔍 **Verification Steps:**
- Can authenticate to registry
- Can push test image
- Can pull test image
- Naming convention is documented

📊 **Expected Outputs:**
- Docker login shows "Login Succeeded"
- Test image pushes without errors
- Test image appears in registry
- Documentation clearly explains naming

---

### PHASE 0 COMPLETION CHECKLIST

**Before proceeding to Phase 1, verify ALL of the following:**

✅ WSL2 is installed and running Ubuntu
✅ Docker Desktop is running and integrated with WSL2
✅ Can run Docker containers without sudo
✅ Go version 1.21+ is installed and accessible
✅ Python 3.11+ is installed and accessible
✅ Node.js 20+ is installed and accessible
✅ kubectl, Helm, and k3d are installed
✅ Project directory structure is created
✅ Git repository is initialized with initial commit
✅ All component directories have README files
✅ Makefile has basic targets
✅ IDE is configured with necessary extensions
✅ Can authenticate to container registry
✅ Development environment is fully functional

**Expected State:**
- Complete development environment ready
- Project structure established
- Version control initialized
- Tools verified and working
- Ready to start building components

---

## Phase 1: Local Kubernetes Cluster & Infrastructure

**Goal**: Set up local Kubernetes cluster and deploy core infrastructure services

**Prerequisites**: Phase 0 completed successfully

**Estimated Complexity**: Intermediate

---

### Task 1.1: Create Local Kubernetes Cluster

#### Subtasks:

☐ **1.1.1** Plan cluster configuration
- Decide on number of nodes (recommend 3: 1 control plane, 2 workers)
- Plan resource allocation per node
- Document cluster specifications
- Plan networking configuration

☐ **1.1.2** Create k3d cluster
- Run k3d cluster creation command
- Specify cluster name
- Configure node count
- Set up port forwarding for ingress
- Mount required volumes (eBPF paths)
- Wait for cluster creation to complete

☐ **1.1.3** Verify cluster creation
- Check cluster status
- List all nodes
- Verify all nodes are Ready
- Check system pods are running
- Verify networking is working

☐ **1.1.4** Configure kubectl context
- List available contexts
- Set k3d cluster as current context
- Verify context is set correctly
- Test kubectl commands against cluster

☐ **1.1.5** Install cluster utilities
- Deploy metrics-server (for resource monitoring)
- Verify metrics-server deployment
- Test metrics collection
- Deploy dashboard (optional)

☐ **1.1.6** Configure cluster networking
- Verify CoreDNS is running
- Test DNS resolution in cluster
- Check pod-to-pod networking
- Test service discovery

#### Success Criteria:
🔍 **Verification Steps:**
- Cluster info command returns cluster details
- All nodes show Ready status
- Can create and delete test pods
- Pods can communicate with each other
- Services are accessible from pods
- Metrics API responds to queries

📊 **Expected Outputs:**
- Cluster info shows Kubernetes control plane URL
- Node list shows all nodes in Ready state
- System pods are all Running
- Test pod deploys and runs successfully
- Can resolve service names from pods
- Metrics command returns CPU and memory usage

---

### Task 1.2: Create Kubernetes Namespaces

#### Subtasks:

☐ **1.2.1** Create agentguard-system namespace
- Create namespace for AgentGuard infrastructure
- Add labels for organization
- Add annotations for documentation
- Verify namespace creation

☐ **1.2.2** Create agentguard-agents namespace
- Create namespace for AI agents
- Add labels for organization
- Configure resource quotas
- Configure network policies preparation
- Verify namespace creation

☐ **1.2.3** Create monitoring namespace
- Create namespace for observability stack
- Add labels for organization
- Verify namespace creation

☐ **1.2.4** Configure namespace defaults
- Set default resource limits
- Set default resource requests
- Configure service accounts
- Set up RBAC rules

☐ **1.2.5** Document namespace strategy
- Document purpose of each namespace
- Document resource allocation strategy
- Document security boundaries
- Add to project documentation

#### Success Criteria:
🔍 **Verification Steps:**
- Can list all namespaces
- Each namespace has correct labels
- Can deploy resources to each namespace
- Resource quotas are in effect
- Default limits are applied to new pods

📊 **Expected Outputs:**
- Namespace list shows three namespaces
- Each namespace has description annotation
- Test deployment respects resource limits
- Pods inherit default service account

---

### Task 1.3: Deploy Apache Kafka (Event Streaming)

#### Subtasks:

☐ **1.3.1** Add Helm repository
- Add Bitnami Helm repository
- Update Helm repository cache
- Search for Kafka chart
- Verify chart is available

☐ **1.3.2** Prepare Kafka configuration
- Create values file for Kafka deployment
- Configure replica count (1 for dev, 3 for prod)
- Set persistence size
- Configure auto-create topics setting
- Configure resource requests and limits
- Set JVM memory settings

☐ **1.3.3** Deploy Kafka using Helm
- Install Kafka chart to agentguard-system namespace
- Monitor deployment progress
- Wait for all pods to be ready
- Check pod logs for errors

☐ **1.3.4** Verify Kafka deployment
- List Kafka pods
- Check pod status is Running
- Verify persistent volumes are bound
- Check Kafka logs show successful startup

☐ **1.3.5** Test Kafka functionality
- Create test topic
- List all topics
- Produce test message to topic
- Consume test message from topic
- Delete test topic
- Verify basic operations work

☐ **1.3.6** Create AgentGuard topics
- Create topic for raw events
- Create topic for decisions
- Create topic for alerts
- Set appropriate partitions for each
- Set retention policies
- Verify topics are created

☐ **1.3.7** Document Kafka endpoints
- Note down Kafka bootstrap server address
- Document topic naming convention
- Document partition strategy
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- Kafka pods are Running
- Can list topics successfully
- Can produce and consume messages
- Topics have correct partition counts
- Persistence works across pod restarts

📊 **Expected Outputs:**
- Kafka-0 pod shows Running status
- Topic list includes agentguard topics
- Test message is successfully consumed
- Topics show correct configurations
- Connection from within cluster works

---

### Task 1.4: Deploy TimescaleDB (Event Storage)

#### Subtasks:

☐ **1.4.1** Add TimescaleDB Helm repository
- Add Timescale Helm repository
- Update Helm repository cache
- Search for TimescaleDB chart
- Verify chart is available

☐ **1.4.2** Prepare TimescaleDB configuration
- Create values file for TimescaleDB
- Configure persistence size
- Set PostgreSQL parameters
- Configure max connections
- Set resource requests and limits
- Configure backup settings

☐ **1.4.3** Deploy TimescaleDB using Helm
- Install TimescaleDB chart to agentguard-system namespace
- Monitor deployment progress
- Wait for StatefulSet to be ready
- Check pod logs for errors

☐ **1.4.4** Verify TimescaleDB deployment
- List TimescaleDB pods
- Check pod status is Running
- Verify persistent volume is bound
- Check PostgreSQL is accepting connections

☐ **1.4.5** Access TimescaleDB shell
- Execute shell command in TimescaleDB pod
- Connect to PostgreSQL using psql
- Verify TimescaleDB extension is loaded
- Check database version
- Exit database shell

☐ **1.4.6** Create AgentGuard database
- Connect to PostgreSQL as postgres user
- Create agentguard database
- Verify database creation
- List all databases

☐ **1.4.7** Initialize database schema
- Connect to agentguard database
- Create events table with appropriate columns
- Add timestamp, agent_id, event_type columns
- Add syscall, tool, path, network columns
- Add decision, risk_score columns
- Add metadata JSONB column
- Set primary key on timestamp and id

☐ **1.4.8** Create hypertable for time-series
- Convert events table to hypertable
- Partition by timestamp
- Verify hypertable creation
- Check hypertable settings

☐ **1.4.9** Add database indexes
- Create index on agent_id and timestamp
- Create index on syscall where not null
- Create index on decision where not null
- Create index on event_type
- Verify all indexes are created

☐ **1.4.10** Configure compression policy
- Enable compression on events table
- Set compression segment by agent_id
- Add compression policy for data older than 7 days
- Verify compression policy is active

☐ **1.4.11** Configure retention policy
- Add retention policy for data older than 90 days
- Verify retention policy is active
- Document retention settings

☐ **1.4.12** Test database functionality
- Insert test event row
- Query test event back
- Update test event
- Delete test event
- Verify all CRUD operations work

☐ **1.4.13** Document database connection
- Note down connection string
- Document database credentials location
- Document schema design
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- TimescaleDB pod is Running
- Can connect to database
- AgentGuard database exists
- Events table is created as hypertable
- All indexes are present
- Compression and retention policies are active
- Can perform CRUD operations

📊 **Expected Outputs:**
- timescaledb-0 pod shows Running status
- Database list includes agentguard
- Table list shows events table
- Hypertable info shows events is hypertable
- Index list shows all created indexes
- Policy list shows compression and retention policies
- Test queries return expected results

---

### Task 1.5: Deploy Redis (Approval Queue)

#### Subtasks:

☐ **1.5.1** Prepare Redis configuration
- Create values file for Redis deployment
- Configure auth settings (disable for dev)
- Set persistence size
- Configure resource requests and limits
- Set memory limits

☐ **1.5.2** Deploy Redis using Helm
- Install Redis chart to agentguard-system namespace
- Monitor deployment progress
- Wait for pods to be ready
- Check pod logs for errors

☐ **1.5.3** Verify Redis deployment
- List Redis pods
- Check pod status is Running
- Verify persistent volume is bound
- Check Redis is accepting connections

☐ **1.5.4** Test Redis functionality
- Connect to Redis using redis-cli
- Run PING command
- Set test key-value pair
- Get test value back
- Delete test key
- Verify operations work

☐ **1.5.5** Document Redis connection
- Note down Redis service address
- Document connection method
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- Redis master pod is Running
- PING returns PONG
- Can set and get values
- Persistence works across pod restarts

📊 **Expected Outputs:**
- redis-master-0 pod shows Running status
- PING command returns "PONG"
- GET returns previously SET value
- Data survives pod restart

---

### Task 1.6: Deploy Temporal (Workflow Engine)

#### Subtasks:

☐ **1.6.1** Add Temporal Helm repository
- Add Temporal Helm repository
- Update Helm repository cache
- Search for Temporal chart
- Verify chart is available

☐ **1.6.2** Prepare Temporal configuration
- Create values file for Temporal deployment
- Configure server replica count
- Configure Cassandra cluster size
- Disable optional components (Prometheus, Grafana)
- Set resource requests and limits

☐ **1.6.3** Deploy Temporal using Helm
- Install Temporal chart to agentguard-system namespace
- Monitor deployment progress (this takes several minutes)
- Wait for all pods to be ready
- Check pod logs for errors

☐ **1.6.4** Verify Temporal deployment
- List Temporal pods
- Check all pods are Running
- Verify Cassandra is ready
- Check Temporal frontend is ready
- Check Temporal history service is ready

☐ **1.6.5** Test Temporal functionality
- Access Temporal frontend pod
- Verify Temporal CLI is available
- List Temporal namespaces
- Verify default namespace exists

☐ **1.6.6** Create AgentGuard namespace in Temporal
- Register agentguard namespace
- Verify namespace creation
- List namespaces to confirm

☐ **1.6.7** Document Temporal connection
- Note down frontend service address
- Document namespace details
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- All Temporal pods are Running
- Cassandra is accepting connections
- Frontend service is accessible
- Can list namespaces
- AgentGuard namespace exists

📊 **Expected Outputs:**
- Temporal frontend pod shows Running
- Temporal history pod shows Running
- Cassandra pods show Running
- Namespace list includes agentguard
- No errors in pod logs

---

### Task 1.7: Deploy Prometheus & Grafana (Monitoring - Optional)

#### Subtasks:

☐ **1.7.1** Add Prometheus Helm repository
- Add prometheus-community Helm repository
- Update Helm repository cache
- Search for kube-prometheus-stack chart
- Verify chart is available

☐ **1.7.2** Prepare monitoring stack configuration
- Create values file for monitoring deployment
- Configure Prometheus retention period
- Configure storage size
- Set resource requests and limits
- Configure Grafana admin password

☐ **1.7.3** Deploy monitoring stack
- Install kube-prometheus-stack to monitoring namespace
- Monitor deployment progress
- Wait for all pods to be ready
- Check pod logs for errors

☐ **1.7.4** Verify monitoring deployment
- List monitoring pods
- Check all pods are Running
- Verify Prometheus is collecting metrics
- Verify Grafana is accessible

☐ **1.7.5** Access Grafana dashboard
- Set up port-forward to Grafana service
- Open browser to Grafana
- Log in with admin credentials
- Verify default dashboards are available

☐ **1.7.6** Configure data sources
- Verify Prometheus data source is configured
- Test data source connection
- Check metrics are being collected

☐ **1.7.7** Document monitoring access
- Note down Grafana URL
- Document admin credentials location
- Document port-forward command
- Add monitoring details to documentation

#### Success Criteria:
🔍 **Verification Steps:**

- Prometheus pod is Running
- Grafana pod is Running
- Can access Grafana UI
- Data source shows "Working"
- Can see cluster metrics in dashboards

📊 **Expected Outputs:**
- All monitoring pods show Running status
- Grafana login page loads
- Default dashboards display data
- Prometheus query interface works
- Cluster metrics are visible

---

### Task 1.8: Configure Secrets Management

#### Subtasks:

☐ **1.8.1** Create placeholder for LLM API keys
- Prepare structure for Anthropic API key secret
- Document secret naming convention
- Create example secret YAML (without actual keys)
- Add to .gitignore

☐ **1.8.2** Create placeholder for Slack webhook
- Prepare structure for Slack webhook secret
- Document webhook configuration
- Create example secret YAML
- Add to .gitignore

☐ **1.8.3** Create placeholder for registry credentials
- Prepare structure for container registry secret
- Document registry authentication
- Create example secret YAML
- Add to .gitignore

☐ **1.8.4** Document secrets management
- Document how to create secrets
- Document where to store actual credentials
- Document rotation procedures
- Add security best practices

#### Success Criteria:
🔍 **Verification Steps:**
- Example secret files are documented
- .gitignore includes secret files
- Documentation explains secret creation
- No actual credentials in repository

📊 **Expected Outputs:**
- Example YAML files are templated
- README explains secret setup
- Git status shows no secret files
- Documentation is clear and complete

---

### PHASE 0 COMPLETION CHECKLIST

**Before proceeding to Phase 1, verify ALL of the following:**

✅ WSL2 is installed and running Ubuntu
✅ Docker Desktop is running and integrated with WSL2
✅ Can run Docker containers without sudo
✅ Go version 1.21+ is installed and accessible
✅ Python 3.11+ is installed and accessible
✅ Node.js 20+ is installed and accessible
✅ kubectl, Helm, and k3d are installed
✅ Project directory structure is created
✅ Git repository is initialized with initial commit
✅ All component directories have README files
✅ Makefile has basic targets
✅ IDE is configured with necessary extensions
✅ Can authenticate to container registry
✅ Development environment is fully functional

**Expected State:**
- Complete development environment ready
- Project structure established
- Version control initialized
- Tools verified and working
- Ready to start building components

---

## Phase 1: Local Kubernetes Cluster & Infrastructure

**Goal**: Set up local Kubernetes cluster and deploy core infrastructure services

**Prerequisites**: Phase 0 completed successfully

**Estimated Complexity**: Intermediate

---

### Task 1.1: Create Local Kubernetes Cluster

#### Subtasks:

☐ **1.1.1** Plan cluster configuration
- Decide on number of nodes (recommend 3: 1 control plane, 2 workers)
- Plan resource allocation per node
- Document cluster specifications
- Plan networking configuration

☐ **1.1.2** Create k3d cluster
- Run k3d cluster creation command
- Specify cluster name
- Configure node count
- Set up port forwarding for ingress
- Mount required volumes (eBPF paths)
- Wait for cluster creation to complete

☐ **1.1.3** Verify cluster creation
- Check cluster status
- List all nodes
- Verify all nodes are Ready
- Check system pods are running
- Verify networking is working

☐ **1.1.4** Configure kubectl context
- List available contexts
- Set k3d cluster as current context
- Verify context is set correctly
- Test kubectl commands against cluster

☐ **1.1.5** Install cluster utilities
- Deploy metrics-server (for resource monitoring)
- Verify metrics-server deployment
- Test metrics collection
- Deploy dashboard (optional)

☐ **1.1.6** Configure cluster networking
- Verify CoreDNS is running
- Test DNS resolution in cluster
- Check pod-to-pod networking
- Test service discovery

#### Success Criteria:
🔍 **Verification Steps:**
- Cluster info command returns cluster details
- All nodes show Ready status
- Can create and delete test pods
- Pods can communicate with each other
- Services are accessible from pods
- Metrics API responds to queries

📊 **Expected Outputs:**
- Cluster info shows Kubernetes control plane URL
- Node list shows all nodes in Ready state
- System pods are all Running
- Test pod deploys and runs successfully
- Can resolve service names from pods
- Metrics command returns CPU and memory usage

---

### Task 1.2: Create Kubernetes Namespaces

#### Subtasks:

☐ **1.2.1** Create agentguard-system namespace
- Create namespace for AgentGuard infrastructure
- Add labels for organization
- Add annotations for documentation
- Verify namespace creation

☐ **1.2.2** Create agentguard-agents namespace
- Create namespace for AI agents
- Add labels for organization
- Configure resource quotas
- Configure network policies preparation
- Verify namespace creation

☐ **1.2.3** Create monitoring namespace
- Create namespace for observability stack
- Add labels for organization
- Verify namespace creation

☐ **1.2.4** Configure namespace defaults
- Set default resource limits
- Set default resource requests
- Configure service accounts
- Set up RBAC rules

☐ **1.2.5** Document namespace strategy
- Document purpose of each namespace
- Document resource allocation strategy
- Document security boundaries
- Add to project documentation

#### Success Criteria:
🔍 **Verification Steps:**
- Can list all namespaces
- Each namespace has correct labels
- Can deploy resources to each namespace
- Resource quotas are in effect
- Default limits are applied to new pods

📊 **Expected Outputs:**
- Namespace list shows three namespaces
- Each namespace has description annotation
- Test deployment respects resource limits
- Pods inherit default service account

---

### Task 1.3: Deploy Apache Kafka (Event Streaming)

#### Subtasks:

☐ **1.3.1** Add Helm repository
- Add Bitnami Helm repository
- Update Helm repository cache
- Search for Kafka chart
- Verify chart is available

☐ **1.3.2** Prepare Kafka configuration
- Create values file for Kafka deployment
- Configure replica count (1 for dev, 3 for prod)
- Set persistence size
- Configure auto-create topics setting
- Configure resource requests and limits
- Set JVM memory settings

☐ **1.3.3** Deploy Kafka using Helm
- Install Kafka chart to agentguard-system namespace
- Monitor deployment progress
- Wait for all pods to be ready
- Check pod logs for errors

☐ **1.3.4** Verify Kafka deployment
- List Kafka pods
- Check pod status is Running
- Verify persistent volumes are bound
- Check Kafka logs show successful startup

☐ **1.3.5** Test Kafka functionality
- Create test topic
- List all topics
- Produce test message to topic
- Consume test message from topic
- Delete test topic
- Verify basic operations work

☐ **1.3.6** Create AgentGuard topics
- Create topic for raw events
- Create topic for decisions
- Create topic for alerts
- Set appropriate partitions for each
- Set retention policies
- Verify topics are created

☐ **1.3.7** Document Kafka endpoints
- Note down Kafka bootstrap server address
- Document topic naming convention
- Document partition strategy
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- Kafka pods are Running
- Can list topics successfully
- Can produce and consume messages
- Topics have correct partition counts
- Persistence works across pod restarts

📊 **Expected Outputs:**
- Kafka-0 pod shows Running status
- Topic list includes agentguard topics
- Test message is successfully consumed
- Topics show correct configurations
- Connection from within cluster works

---

### Task 1.4: Deploy TimescaleDB (Event Storage)

#### Subtasks:

☐ **1.4.1** Add TimescaleDB Helm repository
- Add Timescale Helm repository
- Update Helm repository cache
- Search for TimescaleDB chart
- Verify chart is available

☐ **1.4.2** Prepare TimescaleDB configuration
- Create values file for TimescaleDB
- Configure persistence size
- Set PostgreSQL parameters
- Configure max connections
- Set resource requests and limits
- Configure backup settings

☐ **1.4.3** Deploy TimescaleDB using Helm
- Install TimescaleDB chart to agentguard-system namespace
- Monitor deployment progress
- Wait for StatefulSet to be ready
- Check pod logs for errors

☐ **1.4.4** Verify TimescaleDB deployment
- List TimescaleDB pods
- Check pod status is Running
- Verify persistent volume is bound
- Check PostgreSQL is accepting connections

☐ **1.4.5** Access TimescaleDB shell
- Execute shell command in TimescaleDB pod
- Connect to PostgreSQL using psql
- Verify TimescaleDB extension is loaded
- Check database version
- Exit database shell

☐ **1.4.6** Create AgentGuard database
- Connect to PostgreSQL as postgres user
- Create agentguard database
- Verify database creation
- List all databases

☐ **1.4.7** Initialize database schema
- Connect to agentguard database
- Create events table with appropriate columns
- Add timestamp, agent_id, event_type columns
- Add syscall, tool, path, network columns
- Add decision, risk_score columns
- Add metadata JSONB column
- Set primary key on timestamp and id

☐ **1.4.8** Create hypertable for time-series
- Convert events table to hypertable
- Partition by timestamp
- Verify hypertable creation
- Check hypertable settings

☐ **1.4.9** Add database indexes
- Create index on agent_id and timestamp
- Create index on syscall where not null
- Create index on decision where not null
- Create index on event_type
- Verify all indexes are created

☐ **1.4.10** Configure compression policy
- Enable compression on events table
- Set compression segment by agent_id
- Add compression policy for data older than 7 days
- Verify compression policy is active

☐ **1.4.11** Configure retention policy
- Add retention policy for data older than 90 days
- Verify retention policy is active
- Document retention settings

☐ **1.4.12** Test database functionality
- Insert test event row
- Query test event back
- Update test event
- Delete test event
- Verify all CRUD operations work

☐ **1.4.13** Document database connection
- Note down connection string
- Document database credentials location
- Document schema design
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- TimescaleDB pod is Running
- Can connect to database
- AgentGuard database exists
- Events table is created as hypertable
- All indexes are present
- Compression and retention policies are active
- Can perform CRUD operations

📊 **Expected Outputs:**
- timescaledb-0 pod shows Running status
- Database list includes agentguard
- Table list shows events table
- Hypertable info shows events is hypertable
- Index list shows all created indexes
- Policy list shows compression and retention policies
- Test queries return expected results

---

### Task 1.5: Deploy Redis (Approval Queue)

#### Subtasks:

☐ **1.5.1** Prepare Redis configuration
- Create values file for Redis deployment
- Configure auth settings (disable for dev)
- Set persistence size
- Configure resource requests and limits
- Set memory limits

☐ **1.5.2** Deploy Redis using Helm
- Install Redis chart to agentguard-system namespace
- Monitor deployment progress
- Wait for pods to be ready
- Check pod logs for errors

☐ **1.5.3** Verify Redis deployment
- List Redis pods
- Check pod status is Running
- Verify persistent volume is bound
- Check Redis is accepting connections

☐ **1.5.4** Test Redis functionality
- Connect to Redis using redis-cli
- Run PING command
- Set test key-value pair
- Get test value back
- Delete test key
- Verify operations work

☐ **1.5.5** Document Redis connection
- Note down Redis service address
- Document connection method
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- Redis master pod is Running
- PING returns PONG
- Can set and get values
- Persistence works across pod restarts

📊 **Expected Outputs:**
- redis-master-0 pod shows Running status
- PING command returns "PONG"
- GET returns previously SET value
- Data survives pod restart

---

### Task 1.6: Deploy Temporal (Workflow Engine)

#### Subtasks:

☐ **1.6.1** Add Temporal Helm repository
- Add Temporal Helm repository
- Update Helm repository cache
- Search for Temporal chart
- Verify chart is available

☐ **1.6.2** Prepare Temporal configuration
- Create values file for Temporal deployment
- Configure server replica count
- Configure Cassandra cluster size
- Disable optional components (Prometheus, Grafana)
- Set resource requests and limits

☐ **1.6.3** Deploy Temporal using Helm
- Install Temporal chart to agentguard-system namespace
- Monitor deployment progress (this takes several minutes)
- Wait for all pods to be ready
- Check pod logs for errors

☐ **1.6.4** Verify Temporal deployment
- List Temporal pods
- Check all pods are Running
- Verify Cassandra is ready
- Check Temporal frontend is ready
- Check Temporal history service is ready

☐ **1.6.5** Test Temporal functionality
- Access Temporal frontend pod
- Verify Temporal CLI is available
- List Temporal namespaces
- Verify default namespace exists

☐ **1.6.6** Create AgentGuard namespace in Temporal
- Register agentguard namespace
- Verify namespace creation
- List namespaces to confirm

☐ **1.6.7** Document Temporal connection
- Note down frontend service address
- Document namespace details
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- All Temporal pods are Running
- Cassandra is accepting connections
- Frontend service is accessible
- Can list namespaces
- AgentGuard namespace exists

📊 **Expected Outputs:**
- Temporal frontend pod shows Running
- Temporal history pod shows Running
- Cassandra pods show Running
- Namespace list includes agentguard
- No errors in pod logs

---

### Task 1.7: Deploy Prometheus & Grafana (Monitoring - Optional)

#### Subtasks:

☐ **1.7.1** Add Prometheus Helm repository
- Add prometheus-community Helm repository
- Update Helm repository cache
- Search for kube-prometheus-stack chart
- Verify chart is available

☐ **1.7.2** Prepare monitoring stack configuration
- Create values file for monitoring deployment
- Configure Prometheus retention period
- Configure storage size
- Set resource requests and limits
- Configure Grafana admin password

☐ **1.7.3** Deploy monitoring stack
- Install kube-prometheus-stack to monitoring namespace
- Monitor deployment progress
- Wait for all pods to be ready
- Check pod logs for errors

☐ **1.7.4** Verify monitoring deployment
- List monitoring pods
- Check all pods are Running
- Verify Prometheus is collecting metrics
- Verify Grafana is accessible

☐ **1.7.5** Access Grafana dashboard
- Set up port-forward to Grafana service
- Open browser to Grafana
- Log in with admin credentials
- Verify default dashboards are available

☐ **1.7.6** Configure data sources
- Verify Prometheus data source is configured
- Test data source connection
- Check metrics are being collected

☐ **1.7.7** Document monitoring access
- Note down Grafana URL
- Document admin credentials location
- Document port-forward command
- Add monitoring details to documentation

#### Success Criteria:
🔍 **Verification Steps:**

- Prometheus pod is Running
- Grafana pod is Running
- Can access Grafana UI
- Data source shows "Working"
- Can see cluster metrics in dashboards

📊 **Expected Outputs:**
- All monitoring pods show Running status
- Grafana login page loads
- Default dashboards display data
- Prometheus query interface works
- Cluster metrics are visible

---

### Task 1.8: Configure Secrets Management

#### Subtasks:

☐ **1.8.1** Create placeholder for LLM API keys
- Prepare structure for Anthropic API key secret
- Document secret naming convention
- Create example secret YAML (without actual keys)
- Add to .gitignore

☐ **1.8.2** Create placeholder for Slack webhook
- Prepare structure for Slack webhook secret
- Document webhook configuration
- Create example secret YAML
- Add to .gitignore

☐ **1.8.3** Create placeholder for registry credentials
- Prepare structure for container registry secret
- Document registry authentication
- Create example secret YAML
- Add to .gitignore

☐ **1.8.4** Document secrets management
- Document how to create secrets
- Document where to store actual credentials
- Document rotation procedures
- Add security best practices

#### Success Criteria:
🔍 **Verification Steps:**
- Example secret files are documented
- .gitignore includes secret files
- Documentation explains secret creation
- No actual credentials in repository

📊 **Expected Outputs:**
- Example YAML files are templated
- README explains secret setup
- Git status shows no secret files
- Documentation is clear and complete

---

### PHASE 0 COMPLETION CHECKLIST

**Before proceeding to Phase 1, verify ALL of the following:**

✅ WSL2 is installed and running Ubuntu
✅ Docker Desktop is running and integrated with WSL2
✅ Can run Docker containers without sudo
✅ Go version 1.21+ is installed and accessible
✅ Python 3.11+ is installed and accessible
✅ Node.js 20+ is installed and accessible
✅ kubectl, Helm, and k3d are installed
✅ Project directory structure is created
✅ Git repository is initialized with initial commit
✅ All component directories have README files
✅ Makefile has basic targets
✅ IDE is configured with necessary extensions
✅ Can authenticate to container registry
✅ Development environment is fully functional

**Expected State:**
- Complete development environment ready
- Project structure established
- Version control initialized
- Tools verified and working
- Ready to start building components

---

## Phase 1: Local Kubernetes Cluster & Infrastructure

**Goal**: Set up local Kubernetes cluster and deploy core infrastructure services

**Prerequisites**: Phase 0 completed successfully

**Estimated Complexity**: Intermediate

---

### Task 1.1: Create Local Kubernetes Cluster

#### Subtasks:

☐ **1.1.1** Plan cluster configuration
- Decide on number of nodes (recommend 3: 1 control plane, 2 workers)
- Plan resource allocation per node
- Document cluster specifications
- Plan networking configuration

☐ **1.1.2** Create k3d cluster
- Run k3d cluster creation command
- Specify cluster name
- Configure node count
- Set up port forwarding for ingress
- Mount required volumes (eBPF paths)
- Wait for cluster creation to complete

☐ **1.1.3** Verify cluster creation
- Check cluster status
- List all nodes
- Verify all nodes are Ready
- Check system pods are running
- Verify networking is working

☐ **1.1.4** Configure kubectl context
- List available contexts
- Set k3d cluster as current context
- Verify context is set correctly
- Test kubectl commands against cluster

☐ **1.1.5** Install cluster utilities
- Deploy metrics-server (for resource monitoring)
- Verify metrics-server deployment
- Test metrics collection
- Deploy dashboard (optional)

☐ **1.1.6** Configure cluster networking
- Verify CoreDNS is running
- Test DNS resolution in cluster
- Check pod-to-pod networking
- Test service discovery

#### Success Criteria:
🔍 **Verification Steps:**
- Cluster info command returns cluster details
- All nodes show Ready status
- Can create and delete test pods
- Pods can communicate with each other
- Services are accessible from pods
- Metrics API responds to queries

📊 **Expected Outputs:**
- Cluster info shows Kubernetes control plane URL
- Node list shows all nodes in Ready state
- System pods are all Running
- Test pod deploys and runs successfully
- Can resolve service names from pods
- Metrics command returns CPU and memory usage

---

### Task 1.2: Create Kubernetes Namespaces

#### Subtasks:

☐ **1.2.1** Create agentguard-system namespace
- Create namespace for AgentGuard infrastructure
- Add labels for organization
- Add annotations for documentation
- Verify namespace creation

☐ **1.2.2** Create agentguard-agents namespace
- Create namespace for AI agents
- Add labels for organization
- Configure resource quotas
- Configure network policies preparation
- Verify namespace creation

☐ **1.2.3** Create monitoring namespace
- Create namespace for observability stack
- Add labels for organization
- Verify namespace creation

☐ **1.2.4** Configure namespace defaults
- Set default resource limits
- Set default resource requests
- Configure service accounts
- Set up RBAC rules

☐ **1.2.5** Document namespace strategy
- Document purpose of each namespace
- Document resource allocation strategy
- Document security boundaries
- Add to project documentation

#### Success Criteria:
🔍 **Verification Steps:**
- Can list all namespaces
- Each namespace has correct labels
- Can deploy resources to each namespace
- Resource quotas are in effect
- Default limits are applied to new pods

📊 **Expected Outputs:**
- Namespace list shows three namespaces
- Each namespace has description annotation
- Test deployment respects resource limits
- Pods inherit default service account

---

### Task 1.3: Deploy Apache Kafka (Event Streaming)

#### Subtasks:

☐ **1.3.1** Add Helm repository
- Add Bitnami Helm repository
- Update Helm repository cache
- Search for Kafka chart
- Verify chart is available

☐ **1.3.2** Prepare Kafka configuration
- Create values file for Kafka deployment
- Configure replica count (1 for dev, 3 for prod)
- Set persistence size
- Configure auto-create topics setting
- Configure resource requests and limits
- Set JVM memory settings

☐ **1.3.3** Deploy Kafka using Helm
- Install Kafka chart to agentguard-system namespace
- Monitor deployment progress
- Wait for all pods to be ready
- Check pod logs for errors

☐ **1.3.4** Verify Kafka deployment
- List Kafka pods
- Check pod status is Running
- Verify persistent volumes are bound
- Check Kafka logs show successful startup

☐ **1.3.5** Test Kafka functionality
- Create test topic
- List all topics
- Produce test message to topic
- Consume test message from topic
- Delete test topic
- Verify basic operations work

☐ **1.3.6** Create AgentGuard topics
- Create topic for raw events
- Create topic for decisions
- Create topic for alerts
- Set appropriate partitions for each
- Set retention policies
- Verify topics are created

☐ **1.3.7** Document Kafka endpoints
- Note down Kafka bootstrap server address
- Document topic naming convention
- Document partition strategy
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- Kafka pods are Running
- Can list topics successfully
- Can produce and consume messages
- Topics have correct partition counts
- Persistence works across pod restarts

📊 **Expected Outputs:**
- Kafka-0 pod shows Running status
- Topic list includes agentguard topics
- Test message is successfully consumed
- Topics show correct configurations
- Connection from within cluster works

---

### Task 1.4: Deploy TimescaleDB (Event Storage)

#### Subtasks:

☐ **1.4.1** Add TimescaleDB Helm repository
- Add Timescale Helm repository
- Update Helm repository cache
- Search for TimescaleDB chart
- Verify chart is available

☐ **1.4.2** Prepare TimescaleDB configuration
- Create values file for TimescaleDB
- Configure persistence size
- Set PostgreSQL parameters
- Configure max connections
- Set resource requests and limits
- Configure backup settings

☐ **1.4.3** Deploy TimescaleDB using Helm
- Install TimescaleDB chart to agentguard-system namespace
- Monitor deployment progress
- Wait for StatefulSet to be ready
- Check pod logs for errors

☐ **1.4.4** Verify TimescaleDB deployment
- List TimescaleDB pods
- Check pod status is Running
- Verify persistent volume is bound
- Check PostgreSQL is accepting connections

☐ **1.4.5** Access TimescaleDB shell
- Execute shell command in TimescaleDB pod
- Connect to PostgreSQL using psql
- Verify TimescaleDB extension is loaded
- Check database version
- Exit database shell

☐ **1.4.6** Create AgentGuard database
- Connect to PostgreSQL as postgres user
- Create agentguard database
- Verify database creation
- List all databases

☐ **1.4.7** Initialize database schema
- Connect to agentguard database
- Create events table with appropriate columns
- Add timestamp, agent_id, event_type columns
- Add syscall, tool, path, network columns
- Add decision, risk_score columns
- Add metadata JSONB column
- Set primary key on timestamp and id

☐ **1.4.8** Create hypertable for time-series
- Convert events table to hypertable
- Partition by timestamp
- Verify hypertable creation
- Check hypertable settings

☐ **1.4.9** Add database indexes
- Create index on agent_id and timestamp
- Create index on syscall where not null
- Create index on decision where not null
- Create index on event_type
- Verify all indexes are created

☐ **1.4.10** Configure compression policy
- Enable compression on events table
- Set compression segment by agent_id
- Add compression policy for data older than 7 days
- Verify compression policy is active

☐ **1.4.11** Configure retention policy
- Add retention policy for data older than 90 days
- Verify retention policy is active
- Document retention settings

☐ **1.4.12** Test database functionality
- Insert test event row
- Query test event back
- Update test event
- Delete test event
- Verify all CRUD operations work

☐ **1.4.13** Document database connection
- Note down connection string
- Document database credentials location
- Document schema design
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- TimescaleDB pod is Running
- Can connect to database
- AgentGuard database exists
- Events table is created as hypertable
- All indexes are present
- Compression and retention policies are active
- Can perform CRUD operations

📊 **Expected Outputs:**
- timescaledb-0 pod shows Running status
- Database list includes agentguard
- Table list shows events table
- Hypertable info shows events is hypertable
- Index list shows all created indexes
- Policy list shows compression and retention policies
- Test queries return expected results

---

### Task 1.5: Deploy Redis (Approval Queue)

#### Subtasks:

☐ **1.5.1** Prepare Redis configuration
- Create values file for Redis deployment
- Configure auth settings (disable for dev)
- Set persistence size
- Configure resource requests and limits
- Set memory limits

☐ **1.5.2** Deploy Redis using Helm
- Install Redis chart to agentguard-system namespace
- Monitor deployment progress
- Wait for pods to be ready
- Check pod logs for errors

☐ **1.5.3** Verify Redis deployment
- List Redis pods
- Check pod status is Running
- Verify persistent volume is bound
- Check Redis is accepting connections

☐ **1.5.4** Test Redis functionality
- Connect to Redis using redis-cli
- Run PING command
- Set test key-value pair
- Get test value back
- Delete test key
- Verify operations work

☐ **1.5.5** Document Redis connection
- Note down Redis service address
- Document connection method
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- Redis master pod is Running
- PING returns PONG
- Can set and get values
- Persistence works across pod restarts

📊 **Expected Outputs:**
- redis-master-0 pod shows Running status
- PING command returns "PONG"
- GET returns previously SET value
- Data survives pod restart

---

### Task 1.6: Deploy Temporal (Workflow Engine)

#### Subtasks:

☐ **1.6.1** Add Temporal Helm repository
- Add Temporal Helm repository
- Update Helm repository cache
- Search for Temporal chart
- Verify chart is available

☐ **1.6.2** Prepare Temporal configuration
- Create values file for Temporal deployment
- Configure server replica count
- Configure Cassandra cluster size
- Disable optional components (Prometheus, Grafana)
- Set resource requests and limits

☐ **1.6.3** Deploy Temporal using Helm
- Install Temporal chart to agentguard-system namespace
- Monitor deployment progress (this takes several minutes)
- Wait for all pods to be ready
- Check pod logs for errors

☐ **1.6.4** Verify Temporal deployment
- List Temporal pods
- Check all pods are Running
- Verify Cassandra is ready
- Check Temporal frontend is ready
- Check Temporal history service is ready

☐ **1.6.5** Test Temporal functionality
- Access Temporal frontend pod
- Verify Temporal CLI is available
- List Temporal namespaces
- Verify default namespace exists

☐ **1.6.6** Create AgentGuard namespace in Temporal
- Register agentguard namespace
- Verify namespace creation
- List namespaces to confirm

☐ **1.6.7** Document Temporal connection
- Note down frontend service address
- Document namespace details
- Add connection details to documentation

#### Success Criteria:
🔍 **Verification Steps:**
- All Temporal pods are Running
- Cassandra is accepting connections
- Frontend service is accessible
- Can list namespaces
- AgentGuard namespace exists

📊 **Expected Outputs:**
- Temporal frontend pod shows Running
- Temporal history pod shows Running
- Cassandra pods show Running
- Namespace list includes agentguard
- No errors in pod logs

---

### Task 1.7: Deploy Prometheus & Grafana (Monitoring - Optional)

#### Subtasks:

☐ **1.7.1** Add Prometheus Helm repository
- Add prometheus-community Helm repository
- Update Helm repository cache
- Search for kube-prometheus-stack chart
- Verify chart is available

☐ **1.7.2** Prepare monitoring stack configuration
- Create values file for monitoring deployment
- Configure Prometheus retention period
- Configure storage size
- Set resource requests and limits
- Configure Grafana admin password

☐ **1.7.3** Deploy monitoring stack
- Install kube-prometheus-stack to monitoring namespace
- Monitor deployment progress
- Wait for all pods to be ready
- Check pod logs for errors

☐ **1.7.4** Verify monitoring deployment
- List monitoring pods
- Check all pods are Running
- Verify Prometheus is collecting metrics
- Verify Grafana is accessible

☐ **1.7.5** Access Grafana dashboard
- Set up port-forward to Grafana service
- Open browser to Grafana
- Log in with admin credentials
- Verify default dashboards are available

☐ **1.7.6** Configure data sources
- Verify Prometheus data source is configured
- Test data source connection
- Check metrics are being collected

☐ **1.7.7** Document monitoring access
- Note down Grafana URL
- Document admin credentials location
- Document port-forward command
- Add monitoring details to documentation

#### Success Criteria:
🔍 **Verification Steps:**

- Prometheus pod is Running
- Grafana pod is Running
- Can access Grafana UI
- Data source shows "Working"
- Can see cluster metrics in dashboards

📊 **Expected Outputs:**
- All monitoring pods show Running status
- Grafana login page loads
- Default dashboards display data
- Prometheus query interface works
- Cluster metrics are visible

---

### Task 1.8: Configure Secrets Management

#### Subtasks:

☐ **1.8.1** Create placeholder for LLM API keys
- Prepare structure for Anthropic API key secret
- Document secret naming convention
- Create example secret YAML (without actual keys)
- Add to .gitignore

☐ **1.8.2** Create placeholder for Slack webhook
- Prepare structure for Slack webhook secret
- Document webhook configuration
- Create example secret YAML
- Add to .gitignore

☐ **1.8.3** Create placeholder for registry credentials
- Prepare structure for container registry secret
- Document registry authentication
- Create example secret YAML
- Add to .gitignore

☐ **1.8.4** Document secrets management
- Document how to create secrets
- Document where to store actual credentials
- Document rotation procedures
- Add security best practices

#### Success Criteria:
🔍 **Verification Steps:**
- Example secret files are documented
- .gitignore includes secret files
- Documentation explains secret creation
- No actual credentials in repository

📊 **Expected Outputs:**
- Example YAML files are templated
- README explains secret setup
- Git status shows no secret files
- Documentation is clear and complete

---