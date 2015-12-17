# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_persistent_volume_claim) do
  
  @doc = "PersistentVolumeClaim is a user's request for and claim to a persistent volume"
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the persistent_volume_claim.'
  end
  
    
  
    
  
    
      newproperty(:metadata) do
        desc "Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:spec) do
        desc "Spec defines the desired characteristics of a volume requested by a pod author. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#persistentvolumeclaims"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:status) do
        desc "Status represents the current information/status of a persistent volume claim. Read-only. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#persistentvolumeclaims"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end