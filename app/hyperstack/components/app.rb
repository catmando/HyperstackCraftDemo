# import React from 'react';
# import {Typography, Paper, Grid} from '@material-ui/core';
#
# import { Toolbox } from '../components/Toolbox';
# import { SettingsPanel } from '../components/SettingsPanel';
# import { Topbar } from '../components/Topbar';
#
# import { Container } from '../components/user/Container';
# import { Button } from '../components/user/Button';
# import { Card } from '../components/user/Card';
# import { Text } from '../components/user/Text';
#
# export default function App() {
#   return (
#     <div style={{margin: "0 auto", width: "800px"}}>
#       <Typography variant="h5" align="center">A super simple page editor</Typography>
#       <Grid container spacing={3} style={{paddingTop: "10px"}}>
#         <Topbar />
#         <Grid item xs>
#           <Container padding={5} background="#eee">
#             <Card />
#           </Container>
#         </Grid>
#         <Grid item xs={3}>
#           <Paper>
#               <Toolbox />
#               <SettingsPanel />
#           </Paper>
#         </Grid>
#       </Grid>
#     </div>
#   );
# }

class App < HyperComponent
  render(DIV, style: { margin: "0 auto", width: "800px" }) do
    MUI::Typography(variant: :h5, align: :center) { "A super simple page editor" }
    Craft::Editor(resolver: {Card: Card.to_n, Button: Button.to_n, Text: Text.to_n, Container: Container.to_n}) do #Card, Button, Text, Container] ) do
      MUI::Grid(:container, spacing: 3, style: { paddingTop: "10px" }) do
        Topbar()
        MUI::Grid(:item, :xs) do
          Craft::Frame() do
            Craft::Element(
              :canvas,
              is: Container.to_n,
              padding: 5,
              background: "#eeeeee",
              'data-cy': "root-container"
            ) do
              Card()
              Button(size: :small, variant: :outlined) { "Click" }
              Text(size: :small, text: "Hi world!")
              Craft::Element(:canvas, is: Container.to_n, padding: 6, background: "#999") do
                Text(size: :small, text: "It's me again!")
              end
            end
          end
        end
        MUI::Grid(:item, xs: 3) do
          MUI::Paper() do
            Toolbox()
            SettingsPanel()
          end
        end
      end
    end
  end
end
