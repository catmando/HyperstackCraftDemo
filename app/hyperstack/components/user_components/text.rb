class Text < HyperComponent
  param :text
  others :others
  render_with_node do |connect, drag|
    DIV(ref: ->(ref) { connect.call(drag.call(ref)) }) do
      P(others) { text }
    end
  end
end

%x{
  #{Text.to_n}.craft = {
    rules: {
      canDrag: (node) => node.data.props.text != "Drag"
    }
  }
}
