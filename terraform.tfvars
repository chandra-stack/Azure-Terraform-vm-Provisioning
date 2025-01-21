resource_group_name="app-grp"
location = "Central India"

network_security_group_rules=[
    {
      priority=300
      destination_port_range="22"
    },
    {
      priority=310
      destination_port_range="80"
    }
  ]

environment = {
  app-network = {
      virtual_network_address_space="10.0.0.0/16"
      subnets={
        web={
            subnet_address_prefix="10.0.0.0/24"
            network_interfaces=[
              {
              name="webinterface01"
              virtual_machine_name="webvm01"              
              }
            ]
            }        
        app={
            subnet_address_prefix="10.0.1.0/24"
            network_interfaces=[{
              name="appinterface01"
              virtual_machine_name="appvm01"              
            }]    
            }
      }
            
  }
}
      




