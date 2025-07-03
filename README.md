# Dependabot example [uv]

## Installation

1. **Install Python dependencies**

You can install the required dependencies for development or CI using the following commands:

```bash
make install
```

2. **Install Dependabot CLI**

Dependabot can be run locally using the official CLI. To install it, run:

You can use Docker (recommended by Dependabot):

```bash
docker pull dependabot/dependabot-core
```

See the [Dependabot CLI documentation](https://github.com/dependabot/dependabot-core#usage) for more details.

## Running Dependabot Update

To run the Dependabot update command locally, use:

```bash
make test
```

Make sure you have Dependabot installed and configured for your project. For more details, see the [Dependabot documentation](https://docs.github.com/en/code-security/supply-chain-security/keeping-your-dependencies-updated-automatically/configuration-options-for-dependency-updates).


## Findings

- `.python-file` file is used by dependabot to pick the python version and try to solve the dependencies. Any change or malformed version will cause dependabot to default the python version to who knows which.