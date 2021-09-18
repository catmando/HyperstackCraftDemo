# app/hyperstack/hyper_component.rb
class HyperComponent
  # All component classes must include Hyperstack::Component
  include Hyperstack::Component
  # The Observable module adds state handling
  include Hyperstack::State::Observable
  # The following turns on the new style param accessor
  # i.e. param :foo is accessed by the foo method
  param_accessor_style :accessors

  class CraftHooks < Hyperstack::Component::NativeLibrary

    %x{
      CraftHooks = {
        useNode: function({render}) {
          const { connectors: {connect, drag} } = Craft.useNode();
          return render(connect, drag);
        }
      }
    }

    imports 'CraftHooks'
  end

  def with_node(&block)
    CraftHooks::UseNode(render: block)
  end

  def self.render_with_node(&block)
    render do
      CraftHooks::UseNode(render: ->(connect, drag) { instance_exec(connect, drag, &block) })
    end
  end
end
