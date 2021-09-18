# import React from 'react';
# import { Box, Chip, Grid, Typography, Button as MaterialButton, FormControl, FormLabel, Slider } from "@material-ui/core";

# export const SettingsPanel = () => {
#   return  (
#     <Box bgcolor="rgba(0, 0, 0, 0.06)" mt={2} px={2} py={2}>
#       <Grid container direction="column" spacing={0}>
#         <Grid item>
#           <Box pb={2}>
#             <Grid container alignItems="center">
#               <Grid item xs><Typography variant="subtitle1">Selected</Typography></Grid>
#               <Grid item><Chip size="small" color="primary" label="Selected" /></Grid>
#             </Grid>
#           </Box>
#         </Grid>
#         <FormControl size="small" component="fieldset">
#           <FormLabel component="legend">Prop</FormLabel>
#           <Slider
#             defaultValue={0}
#             step={1}
#             min={7}
#             max={50}
#             valueLabelDisplay="auto"
#           />
#         </FormControl>
#         <MaterialButton
#           variant="contained"
#           color="default"
#         >
#           Delete
#         </MaterialButton>
#       </Grid>
#     </Box>
#   )
# }

class SettingsPanel < HyperComponent
  render do
    MUI::Box(bgcolor: "rgba(0, 0, 0, 0.06)", mt: 2, px: 2, py: 2) do
      MUI::Grid(:container, direction: :column, spacing: 0) do
        MUI::Grid(:item) do
          MUI::Box(pb: 2) do
            MUI::Grid(:container, alignItems: :center) do
              MUI::Grid(:item, :xs) { MUI::Typography(variant: :subtitle1) { "Selected" } }
              MUI::Grid(:item) { MUI::Chip(size: :small, color: :primary, label: "Selected") }
            end
          end
        end
        MUI::FormControl(size: :small, component: :fieldset) do
          MUI::FormLabel(component: :legend) { "Prop" }
          MUI::Slider(
            defaultValue: 0,
            step: 1,
            min: 7,
            max: 50,
            valueLabelDisplay: :auto
          )
        end
        MUI::Button(variant: :contained, color: :default) { "Delete" }
      end
    end
  end
end
