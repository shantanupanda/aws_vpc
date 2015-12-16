require 'chef/provisioning/aws_driver'

with_driver node[:aws_vpc][:region]
  aws_vpc node[:aws_vpc][:vpc] do
    cidr_block node[:aws_vpc][:vpc_cidr]
    internet_gateway true
    main_routes '0.0.0.0/0' => :internet_gateway
  end



  aws_subnet node[:aws_vpc][:public_subnet] do
   vpc node[:aws_vpc][:vpc]
   cidr_block node[:aws_vpc][:subnet_cidr] 
   availability_zone node[:aws_vpc][:avail_zone]
   map_public_ip_on_launch true
  end

