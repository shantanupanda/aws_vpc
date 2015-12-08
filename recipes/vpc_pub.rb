#
#Chef: Cookbook : aws_vpc
#Recipe : vpc_pub
#

require 'chef/provisioning/aws_driver'

with_driver 'aws::#{node[:aws_vpc][:region]}'
  aws_vpc node[:aws_vpc][:vpc] do
    cidr_block node[:aws_vpc][:vpc_cidr]
    internet_gateway true
    main_routes '0.0.0.0/0' => :internet_gateway
  end


node[:aws_vpc][:public_subnet].each do |name,cidr_block|  
   puts("Inside the loop")
   aws_subnet name do
   vpc node[:aws_vpc][:vpc]
   cidr_block cidr_block
   availability_zone node[:aws_vpc][:region]
   map_public_ip_on_launch true
  end

