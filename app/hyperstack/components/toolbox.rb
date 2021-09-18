# import React from "react";
# import { Box, Typography, Grid, Button as MaterialButton } from "@material-ui/core";
#
# export const Toolbox = () => {
#   return (
#     <Box px={2} py={2}>
#       <Grid container direction="column"  alignItems="center" justify="center" spacing={1}>
#         <Box pb={2}>
#           <Typography>Drag to add</Typography>
#         </Box>
#         <Grid container direction="column" item>
#           <MaterialButton variant="contained">Button</MaterialButton>
#         </Grid>
#         <Grid container direction="column" item>
#           <MaterialButton variant="contained">Text</MaterialButton>
#         </Grid>
#         <Grid container direction="column" item>
#           <MaterialButton variant="contained">Container</MaterialButton>
#         </Grid>
#         <Grid container direction="column" item>
#           <MaterialButton variant="contained">Card</MaterialButton>
#         </Grid>
#       </Grid>
#     </Box>
#   )
# };

class Toolbox < HyperComponent
  render do
    MUI::Box(px: 2, py: 2) do
      MUI::Grid(:container, direction: :column,  alignItems: :center, justify: :center, spacing: 1) do
        MUI::Box(pb: 2) { MUI::Typography() { "Drag to add" } }
        %w[Button Text Container Card].each do |item|
          MUI::Grid(:container, :item, direction: :column) do
            MUI::Button(variant: :contained) { item }
          end
        end
        # MUI::Grid(:container, :item, direction: :column) do
        #   MUI::Button(variant: :contained) { "Button" }
        # end
        # MUI::Grid(:container, :item, direction: :column) do
        #   MUI::Button(variant: :contained) { "Text" }
        # end
        # MUI::Grid(:container, :item, direction: :column) do
        #   MUI::Button(variant: :contained) { "Container" }
        # end
        # MUI::Grid(:container, :item, direction: :column) do
        #   MUI::Button(variant: :contained) { "Card" }
        # end
      end
    end
  end
end
