# Contributing to AgentGuard

Thank you for your interest in contributing to AgentGuard!

## 🎯 Project Vision

AgentGuard aims to be the **industry-standard open-source platform** for securing autonomous AI agents in production environments.

## 🚀 Getting Started

### Prerequisites

- Linux kernel 5.15+ (for eBPF development)
- Docker 20.10+
- Kubernetes 1.25+ (kind/minikube)
- Go 1.21+
- Python 3.11+
- Node.js 20+

### Development Setup

```bash
# Clone repository
git clone https://github.com/YOUR_USERNAME/agentguard.git
cd agentguard

# Install dependencies
make dev-setup

# Run tests
make test
```

## 📋 How to Contribute

### Reporting Issues

Before creating an issue:
1. Search existing issues to avoid duplicates
2. Check the Blueprint documentation
3. Provide detailed information:
   - AgentGuard version
   - Kubernetes version
   - Kernel version
   - Steps to reproduce
   - Expected vs actual behavior

### Submitting Pull Requests

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/amazing-feature`
3. Follow coding standards
4. Write/update tests
5. Update documentation
6. Commit: `git commit -m "feat: add amazing feature"`
7. Push: `git push origin feature/amazing-feature`
8. Open a Pull Request

**PR Title Format:**
```
[Component] Brief description

Examples:
[eBPF] Add support for io_uring syscalls
[Policy] Implement rate limiting for API calls
[Docs] Update installation guide
```

## 💻 Coding Standards

### Go Code
- Use `gofmt -s -w .`
- Follow [Effective Go](https://golang.org/doc/effective_go.html)

### Python Code
- Use `black .` for formatting
- Follow PEP 8
- Type hints required

### TypeScript/React
- Use Prettier
- Follow React best practices

## 🧪 Testing

```bash
# Run all tests
make test

# Run specific tests
make test-collector
make test-security-brain
```

## 🔒 Security

**DO NOT** open public issues for security vulnerabilities.

Email: security@agentguard.io

## 📄 License

By contributing, you agree that your contributions will be licensed under Apache License 2.0.

## 🙏 Recognition

Contributors will be:
- Listed in CONTRIBUTORS.md
- Acknowledged in research publications
- Credited in release notes

Thank you for contributing to AgentGuard! 🛡️
