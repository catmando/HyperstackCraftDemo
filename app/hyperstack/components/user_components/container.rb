class Container < HyperComponent
  param :background
  param padding: 0

  render_with_node do |connect, drag|
    MUI::Paper(
      style: {margin: "5px 0", background: background, padding: "#{padding}px"},
      ref: ->(ref) { connect.call(drag.call(ref)) },
      &children
    )
  end
end
