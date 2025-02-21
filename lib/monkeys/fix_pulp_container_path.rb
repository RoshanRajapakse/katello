require 'pulp_container_client'
PulpContainerClient::ContainerRepositorySyncURL.class_eval do
  # Initializes the object
  # @param [Hash] attributes Model attributes in the form of hash
  def initialize(attributes = {})
    unless attributes.is_a?(Hash)
      fail ArgumentError, "The input argument (attributes) must be a hash in `PulpContainerClient::ContainerRepositorySyncURL` initialize method"
    end

    # check to see if the attribute exists and convert string to symbol for hash key
    attributes = attributes.each_with_object({}) do |(k, v), h|
      unless self.class.attribute_map.key?(k.to_sym)
        fail ArgumentError, "`#{k}` is not a valid attribute in `PulpContainerClient::ContainerRepositorySyncURL`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
      end
      h[k.to_sym] = v
    end

    if attributes.key?(:remote)
      self.remote = attributes[:remote]
    end

    if attributes.key?(:mirror)
      self.mirror = attributes[:mirror]
    else
      self.mirror = false
    end

    if attributes.key?(:signed_only)
      self.signed_only = attributes[:signed_only]
      # Monkey-patch here. Rest of the initializer is copied from the gem code.
      #else
      #  self.signed_only = false
    end
  end
end
