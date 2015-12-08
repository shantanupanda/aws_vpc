# aws_vpc cookbook

This cookbook will help to create AWS services like VPC, Subnets etc.

## Supported Platforms

AWS 

## Attributes

default[:aws_vpc][:region] = 'us-west-2'
default[:aws_vpc][:vpc] = ''
default[:aws_vpc][:vpc_cidr] = ''
default[:aws_vpc][:public_subnet] = []
default[:aws_vpc][:private_subnet] = []

## Usage

### aws_vpc::default

Include `aws_vpc` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[aws_vpc::default]"
  ]
}
```

## License and Authors

Author:: Shantanu Panda
