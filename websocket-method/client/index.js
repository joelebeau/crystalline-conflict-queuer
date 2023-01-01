// Websocket source URL.
const WS_URL = "ws://localhost:8081"

const CLIENT_VERSION = "0.0.1"
const MESSAGE_ELEMENT_ID = "message";

window.onload = function() {
  // Create our websocket connection and attach a message listener to update the timer
  const ws = attemptWSConnection(WS_URL);
  ws.addEventListener("open", handleWSOpen);
  ws.addEventListener("message", handleWSMessage);
  ws.addEventListener("close", handleWSClose);
  ws.addEventListener("error", handleWSError);

  // Attempt to get a websocket connection - loop until successful
  function attemptWSConnection(url) {
    webSocket = new WebSocket(url); 

    return webSocket;
  }

  function handleWSOpen(_event) {
    setMessage("Connected!");
  }

  function handleWSClose(_event) {
    setMessage("Disconnected");
  }

  function handleWSError(_event) {
    setMessage("Error x_x");
  }

  // Process incoming messages and update the HTML display
  function handleWSMessage(event) {
    const eventData = JSON.parse(event.data);
    const message = eventData.m;

    setMessage(message);
  }

  function setMessage(msg) {
    const el = document.getElementById(MESSAGE_ELEMENT_ID);
    el.innerText = msg;
  }
}
