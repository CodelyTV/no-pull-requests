<p align="center">
  <a href="http://codely.tv">
    <img src="https://codely.tv/wp-content/uploads/2016/05/cropped-logo-codelyTV.png" width="192px" height="192px"/>
  </a>
</p>

<h1 align="center">
  🙅 No Pull Requests
</h1>

<p align="center">
    <a href="https://github.com/CodelyTV"><img src="https://img.shields.io/badge/CodelyTV-OS-green.svg?style=flat-square" alt="codely.tv"/></a>
    <a href="https://pro.codely.tv"><img src="https://img.shields.io/badge/CodelyTV-PRO-black.svg?style=flat-square" alt="CodelyTV Courses"/></a>
    <a href="https://github.com/marketplace/actions/no-pull-requests"><img src="https://img.shields.io/github/v/release/CodelyTV/no-pull-requests?style=flat-square" alt="GitHub Action version"></a>
</p>

<p align="center">
    Useful if you do <code>trunk-based development</code> or <code>master-only git flow</code>
</pre>

## 🚀 Usage

Create a file named `close-pr.yml` inside the `.github/workflows` directory and paste:

```yml
name: PR Closer

on:
  pull_request:
    types: [opened, reopened]


jobs:
  close-pull-request:
    runs-on: ubuntu-latest
    name: Close Pull Request
    steps:
      - uses: codelytv/no-pull-requests@v1
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          message: 🙅 We don't accept Pull Requests!
```

## ⚖️ License

[MIT](LICENSE)
