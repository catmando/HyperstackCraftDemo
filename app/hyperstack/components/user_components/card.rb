class Card < HyperComponent
  param :background
  param padding: 20
  render do
    Container(background: background, padding: padding) do
      DIV(class: 'text-only') do
        Text(text: 'Title', style: {fontSize: 20})
        Text(text: 'Subtitle', style: {fontSize: 15})
      end
      DIV(class: 'buttons-only') do
        Button(size: :small, text: 'Learn more', variant: :contained, color: :primary)
      end
    end
  end
end
