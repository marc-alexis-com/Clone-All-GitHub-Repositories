# Clone All GitHub Repositories

A shell script to clone all public repositories of a GitHub user or organization via the command line on macOS.

## Prerequisites

- **Git**: Ensure that Git is installed on your system. If not, install it via Homebrew:

  ```bash
  brew install git
  ```

- **cURL**: This tool is typically pre-installed on macOS.

- **jq**: A utility for processing JSON in the command line. Install it via Homebrew:

  ```bash
  brew install jq
  ```

## Installation

1. **Clone this repository:**

   ```bash
   git clone https://github.com/marc-alexis-com/Clone-All-GitHub-Repositories.git
   ```

2. **Navigate to the repository directory:**

3. **Make the script executable:**

   ```bash
   chmod +x clone_all_repos.sh
   ```

## Usage

Run the script by providing the GitHub username or organization name:

```bash
./clone_all_repos.sh github_username
```

### Example:

```bash
./clone_all_repos.sh marc-alexis-com
```

The script will create a directory named after the user or organization and clone all public repositories into that directory.

## Notes

- This script only downloads public repositories.
- The GitHub API limits the number of results to 100 per page.
- Ensure you comply with GitHub's [Terms of Service](https://docs.github.com/en/github/site-policy/github-terms-of-service).

## Possible Improvements

- **Pagination Handling**: Currently, the script handles up to 100 repositories.
- **Private Repository Support**: By adding support for personal access tokens, the script can also clone private repositories.
- **User Interface**: Add additional options or a more user-friendly interface to configure cloning settings.

## License

This project is licensed has no license whatsoever. Stop asking about it please;
