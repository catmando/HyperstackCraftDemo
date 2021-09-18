# import React from "react";
# import { Box, FormControlLabel, Switch, Grid, Button as MaterialButton } from "@material-ui/core";
#
# export const Topbar = () => {
#   return (
#     <Box px={1} py={1} mt={3} mb={1} bgcolor="#cbe8e7">
#       <Grid container alignItems="center">
#         <Grid item xs>
#           <FormControlLabel
#             control={<Switch checked={true} />}
#             label="Enable"
#           />
#         </Grid>
#         <Grid item>
#           <MaterialButton size="small" variant="outlined" color="secondary">Serialize JSON to console</MaterialButton>
#         </Grid>
#       </Grid>
#     </Box>
#   )
# };

class Topbar < HyperComponent
  render do
    MUI::Box(px: 1, py: 1, mt: 3, mb: 1, bgcolor: "#ffe8e7") do
      MUI::Grid(:container, align_items: :center) do
        MUI::Grid(:item, :xs) do
          MUI::FormControlLabel(control: MUI::Switch(:checked), label: "Enable")
        end
        MUI::Grid(:item) do
          MUI::Button(size: :small, variant: :outlined, color: :secondary) do
            "Serialize JSON to console"
          end
        end
      end
    end
  end
end
