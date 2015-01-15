
import codeanticode.syphon.*;
SyphonServer server;

int nClients = 4;
PGraphics[] canvas;
SyphonClient[] clients;
void setup() {
  size(800, 800, P3D);
  canvas = new PGraphics[nClients];
  server = new SyphonServer(this, "Processing Syphon");
  for (int i = 0; i < nClients; i++) {
    canvas[i] = createGraphics(400, 400, P2D);
  }

  // Create syhpon clients to receive the frames.
  clients = new SyphonClient[nClients];
  for (int i = 1; i <= nClients; i++) { 
    clients[i-1] = new SyphonClient(this, "Server"+i, "Processing Syphon."+i);
  }
}

void draw() {
  for (int i = 0; i < nClients; i++) {
    if (clients[i].available()) {
      canvas[i] = clients[i].getGraphics(canvas[i]);
      image(canvas[i], 400 * (i % 2), 400 * (i / 2)); 
    }
  }
  server.sendScreen();
}
