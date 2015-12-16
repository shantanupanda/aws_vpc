#
#Chef: Cookbook : aws_vpc
#attributes : default
#

default[:aws_vpc][:region] = 'aws::us-west-2'
default[:aws_vpc][:vpc] = 'final_vpc_cookbook'
default[:aws_vpc][:vpc_cidr] = '10.0.0.0/24'
default[:aws_vpc][:public_subnet] = 'final_vpc_subnet_cookbook'
default[:aws_vpc][:avail_zone] = 'us-west-2b'
default[:aws_vpc][:subnet_cidr] = '10.0.0.0/26'

