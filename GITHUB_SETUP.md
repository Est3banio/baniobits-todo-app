# GitHub Repository Setup Guide

This document provides instructions for setting up the To-Do App GitHub repository with recommended settings to make it a proper open source project.

## Repository Settings

### General Settings

1. **Repository Name**: `to-do-app` (or a more descriptive name)
2. **Description**: "A modern and intuitive to-do application built with Ruby on Rails, featuring multiple lists and category organization"
3. **Topics**: Add relevant topics such as:
   - `rails`
   - `ruby`
   - `todo-app`
   - `task-management`
   - `productivity`
   - `tailwindcss`
   - `stimulus-js`
   - `turbo`

### Features

1. **Issues**: Enable issues for bug reports and feature requests
2. **Projects**: Enable if you want to use GitHub Projects for roadmap planning
3. **Discussions**: Enable for community engagement and questions
4. **Wiki**: Enable for additional documentation
5. **Sponsorships**: Set up if you want to receive financial support

### Access Settings

1. **Branch Protection Rules**:
   - Protect the `main` branch
   - Require pull request reviews before merging
   - Require status checks to pass before merging
   - Require branches to be up to date before merging

2. **Collaborators and Teams**:
   - Add maintainers with appropriate permissions
   - Set up teams if needed for different access levels

### Actions Settings

1. **Workflow Permissions**: Set to "Read and write permissions" to allow GitHub Actions to create PRs
2. **Actions Permissions**: Allow all actions
3. **Enable Actions**: Ensure GitHub Actions are enabled

## GitHub Pages

If you want to set up a project website:

1. Enable GitHub Pages from the repository settings
2. Choose the source branch (usually `gh-pages` or a `/docs` folder in `main`)
3. Configure a custom domain if desired

## Labels

Set up useful issue labels:

1. `bug`: Bugs and issues that need fixing
2. `enhancement`: New features or improvements
3. `documentation`: Documentation updates
4. `good first issue`: Easy tasks for newcomers
5. `help wanted`: Issues where help is specifically requested
6. `question`: Questions about the project
7. `wontfix`: Issues that won't be addressed

## Releases

When ready to create a release:

1. Create a tag with a version number (e.g., `v1.0.0`)
2. Write release notes highlighting major changes
3. Include any binary assets if applicable

## Community Health Files

The following files are already set up:

- README.md: Project overview and getting started guide
- LICENSE: MIT License
- CONTRIBUTING.md: Contribution guidelines
- SECURITY.md: Security policy
- .github/ISSUE_TEMPLATE: Templates for bug reports and feature requests
- .github/PULL_REQUEST_TEMPLATE.md: Template for pull requests
- .github/workflows/ci.yml: Continuous integration workflow

## Social Preview Image

Set a custom social preview image for your repository:

1. Use the ToDoApp.png image from `app/assets/images/` 
2. Upload it in the repository settings under "Social preview"

## Additional Recommendations

1. **Badges**: Add status badges to your README.md (CI status, code coverage, etc.)
2. **Community Guidelines**: Consider adding a code of conduct (CODE_OF_CONDUCT.md)
3. **Roadmap**: Create a roadmap document or project board outlining future plans
4. **Regular Maintenance**: Set up a schedule for reviewing issues and pull requests