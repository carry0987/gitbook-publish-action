# GitHub Action for Automatically Build and Publish Gitbook

## Introduction

This GitHub Action is used to build GitBook static site files and deploy to GitHub Pages via gh-pages branch

## Usage
```yaml
name: Build and Publish My GitBook

on:
  workflow_dispatch:
  push:
    branches:
      - master

jobs:
  build-and-deploy:
    name: Build and deploy
    runs-on: ubuntu-latest
    env:
      MY_SECRET   : ${{secrets.GH_ACCESS_TOKEN}}
      USER_NAME   : <Your Git username>
      USER_EMAIL  : <Your Git email>
      BOOK_DIR    : your_book_sources_folder_name

    steps:
    - name: Checkout 🛎️
      uses: actions/checkout@v3.5.3

    - name: Build and Deploy 🚀
      uses: carry0987/gitbook-publish-action@v1.0.1
```
