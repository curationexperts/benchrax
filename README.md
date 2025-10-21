# BenchRax
Benchracx is a testing applicaiton to benchmark [Bulkrqax](https://github.com/samvera/bulkrax) import
performance in [Hyku](https://github.com/samvera/hyku)-based applications.

The application uses [Hyku Knapsack](https://github.com/samvera-labs/hyku_knapsack) to wrap overrides of existing Hyku features.

## Introduction

This is a very minimal app to allow baselining and testing of various performance modifications
for Bulkrax imports.

## Setup
The following instrucions assume you have RBENV installed on your enviornment 
and Ruby 3.3.8 installed via RBENV:

```bash
git clone --recurse https://github.com/curationexperts/benchrax.git
cd benchrax
git remote add prime https://github.com/samvera-labs/hyku_knapsack
git branch required_for_knapsack_instances prime/required_for_knapsack_instances
gem install stack_car
sc proxy cert
sc proxy up
sc up
```

Watch for the message web-1  | * Listening on 0.0.0.0:3000. Once you see this message, you can access the admin app in your browser.

> Visit https://admin-benchrax.localhost.direct/


## Contributing

While this codebase is open-sourced to allow anyone to reproduce benchmarking results, outside
contributions are generally not accepted.

## License

This coee may be used or modified under the terms of the [Apache 2.0](https://opensource.org/license/apache-2-0/) license.

<img align='right' height='100px' src='http://camp.curationexperts.com/sample-assets/DCE-Sm-Square.png' />  

## Contact

*This repository was built and is managed by [Data Curation Experts LLC](https://curationexperts.com)* 