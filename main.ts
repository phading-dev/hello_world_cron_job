import fetch = require("node-fetch");

async function main() {
  setInterval(async () => {
    let response = await (await fetch("http://10.128.0.42/hw")).text();
    console.log(`Calling phading-ingress-internal/hw: ${response}`);
  }, 1000);
}

main();
