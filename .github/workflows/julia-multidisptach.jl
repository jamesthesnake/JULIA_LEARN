name: Julia dispatch

on:
  push:
    branches:
      - main

jobs:
  check:
    runs-on: ubuntu-latest

    steps:
    - name: Set up Julia
      uses: julia-actions/setup-julia@v1
      with:
        version: "1" 

    - name: Clone repository
      uses: actions/checkout@v2

    - name: Run Julia script
      run: |
        julia -e 'include("julia_multibroadcast.jl")'

