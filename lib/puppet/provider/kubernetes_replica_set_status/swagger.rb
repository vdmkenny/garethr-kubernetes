# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_replica_set_status).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        replicas: instance.replicas.respond_to?(:to_hash) ? instance.replicas.to_hash : instance.replicas,
      
    
      
        fullyLabeledReplicas: instance.fullyLabeledReplicas.respond_to?(:to_hash) ? instance.fullyLabeledReplicas.to_hash : instance.fullyLabeledReplicas,
      
    
      
        readyReplicas: instance.readyReplicas.respond_to?(:to_hash) ? instance.readyReplicas.to_hash : instance.readyReplicas,
      
    
      
        availableReplicas: instance.availableReplicas.respond_to?(:to_hash) ? instance.availableReplicas.to_hash : instance.availableReplicas,
      
    
      
        observedGeneration: instance.observedGeneration.respond_to?(:to_hash) ? instance.observedGeneration.to_hash : instance.observedGeneration,
      
    
      
        conditions: instance.conditions.respond_to?(:to_hash) ? instance.conditions.to_hash : instance.conditions,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_replica_set_status #{name}")
    create_instance_of('replica_set_status', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('replica_set_status', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_replica_set_status #{name}")
    destroy_instance_of('replica_set_status', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('replica_set_status')
  end

  def build_params
    params = {
    
      
        replicas: resource[:replicas],
      
    
      
        fullyLabeledReplicas: resource[:fullyLabeledReplicas],
      
    
      
        readyReplicas: resource[:readyReplicas],
      
    
      
        availableReplicas: resource[:availableReplicas],
      
    
      
        observedGeneration: resource[:observedGeneration],
      
    
      
        conditions: resource[:conditions],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end