class Button < HyperComponent
  others :others

  render_with_node do |connect, drag|
    MUI::Button(
      others,
      ref: ->(ref) { connect.call(drag.call(ref))},
      &children
    )
  end
end
