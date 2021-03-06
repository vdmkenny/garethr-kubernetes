# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_endpoint_subset) do
  
  @doc = "EndpointSubset is a group of addresses with a common set of ports. The expanded set of endpoints is the Cartesian product of Addresses x Ports. For example, given:
  {
    Addresses: [{'ip': '10.10.1.1'}, {'ip': '10.10.2.2'}],
    Ports:     [{'name': 'a', 'port': 8675}, {'name': 'b', 'port': 309}]
  }
The resulting set of endpoints can be viewed as:
    a: [ 10.10.1.1:8675, 10.10.2.2:8675 ],
    b: [ 10.10.1.1:309, 10.10.2.2:309 ]"
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the endpoint_subset.'
  end
  
    
      newproperty(:addresses) do
        
        desc "IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:notReadyAddresses) do
        
        desc "IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:ports) do
        
        desc "Port numbers available on the related IP addresses."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
